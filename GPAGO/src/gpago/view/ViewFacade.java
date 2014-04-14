package gpago.view;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.servlet.http.HttpServletRequest;

import gpago.model.ModelFacade;
import gpago.model.entity.Greyhound;
import gpago.model.entity.Sponsor;
import gpago.view.servlet.ParamUtils;

public class ViewFacade {
	private static final Logger logger = Logger.getLogger(ViewFacade.class.getName());
	
	public static final String ACTION_SAVED = "saved";
	public static final String ACTION_UPDATED = "updated";
	
	ModelFacade modelFacade;
	
	//default constructor
	public ViewFacade(){
		modelFacade = new ModelFacade();
	}
	
	public ViewFacade(ModelFacade modelFacade) {
		this.modelFacade = modelFacade;
	}
	
	public Greyhound getGreyhound(Long id) {
		if (id==null) {
			return null;
		}
		
		return modelFacade.getGreyhound(id);
	}
	
	public List<GreyhoundFormBean> getGreyhounds() {
		List<GreyhoundFormBean> result = new ArrayList<GreyhoundFormBean>();
		for (Greyhound greyhound: modelFacade.getAllGreyhounds())
			result.add(new GreyhoundFormBean(greyhound));
		return result;
	}
	
	public void removeGreyhound(Greyhound greyhound) {
		modelFacade.removeGreyhound(greyhound);
	}
	

	public Sponsor getSponsor(Long id){
		if(id==null){
			return null;
		}
		
		return modelFacade.getSponsor(id);
	}
	
	public List<SponsorFormBean> getAllSponsors(){
		List<SponsorFormBean> result = new ArrayList<SponsorFormBean>();
		for (Sponsor sponsor: modelFacade.getAllSponsors())
			result.add(new SponsorFormBean(sponsor));
		return result;
	}
	
	public List<SponsorFormBean> getAvailableSponsors(){
		List<SponsorFormBean> result = new ArrayList<SponsorFormBean>();
		for (Sponsor sponsor: modelFacade.getAvailableSponsors())
			result.add(new SponsorFormBean(sponsor));
		return result;
	}
	
	public void saveSponsor(Sponsor sponsor) {
		modelFacade.saveSponsor(sponsor);
	}
	
	public void removeSponsor(Sponsor sponsor) {
		modelFacade.removeSponsor(sponsor);
	}
	
	
	
	public GreyhoundSaveResult saveOrUpdateGreyhound(HttpServletRequest request) {
		GreyhoundSaveResult result = new GreyhoundSaveResult();
		
		// We must update the greyhound record within the context on an application,
		// including the setting or sponsors.
		EntityManager em = modelFacade.getEntityManagerFactory().createEntityManager();
		EntityTransaction utx = em.getTransaction();

		try {
			utx.begin();
			
			Greyhound greyhound = null;
			Long id = ParamUtils.getLongParameter(request, "id");
			if (id!=null)
				greyhound = em.find(Greyhound.class, id);

			if (greyhound==null) {
				// No id was specified (or a greyhound with that id was not found in the database)
				// Therefore, we assume we're creating new greyhound.
				// Create a new greyhound object and initialize from parameters			
				greyhound = new Greyhound();
				em.persist(greyhound); // Make the greyhound object a managed JPA entity.
			}

			// Apply the request parameters to the greyhound object and return the greyhound
			// wrapped in a GreyhoundFormBean to be used by the jsp's.
			GreyhoundFormBean bean = new GreyhoundFormBean(request, greyhound);
			result.setGreyhoundBean(bean);
			
			if (bean.isValid()) { // Valid that the greyhound is valid (e.g. name not empty)
				
				// Set the greyhound sponsors to those passed in the form parameters.
				// The easiest way to do this is to just remove all sponsors from the greyhound and then
				// re-add all sponsors specified in the request parameters.
				greyhound.removeAllSponsors();
				
				for (Long sponsorId: bean.getSponsorIds()) {
					Sponsor sponsor = em.find(Sponsor.class, sponsorId);
					
					if (sponsor!=null) {
						greyhound.addSponsor(sponsor);
					}
				}
				
				result.setSuccessful(true);
				
				utx.commit();
			} else { // the greyhound is not valid.
				result.setSuccessful(false);
				utx.rollback(); // We're not saving any changes that were made
			}
		} catch (Throwable ex) {
			logger.log(Level.SEVERE, "Error while saving greyhound record.  The transaction is being rolled back.", ex);
			try {
				utx.rollback();
			} catch (Exception e) {
			}
		} finally {
			em.close();
		}
		return result;
	}
}
