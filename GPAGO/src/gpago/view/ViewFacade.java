package gpago.view;

import java.util.ArrayList;
import java.util.List;

import gpago.model.ModelFacade;
import gpago.model.entity.Greyhound;
import gpago.model.entity.Sponsor;
import gpago.model.entity.Sponsorship;

public class ViewFacade {
	
	ModelFacade modelFacade;
	
	public ViewFacade(ModelFacade modelFacade) {
		this.modelFacade = modelFacade;
	}
	
	public List<GreyhoundFormBean> getGreyhounds() {
		List<GreyhoundFormBean> result = new ArrayList<GreyhoundFormBean>();
		for (Greyhound greyhound: modelFacade.getAllGreyhounds())
			result.add(new GreyhoundFormBean(greyhound));
		return result;
	}
	
	public List<Sponsorship> getSponsorships() {
		return modelFacade.getAllSponsorships();
	}
	
	public List<SponsorFormBean> getSponsors(){
		List<SponsorFormBean> result = new ArrayList<SponsorFormBean>();
		for (Sponsor sponsor: modelFacade.getAllSponsors())
			result.add(new SponsorFormBean(sponsor));
		return result;
	}
}
