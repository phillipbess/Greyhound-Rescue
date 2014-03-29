package gpago.view;

import java.util.List;

import gpago.model.ModelFacade;
import gpago.model.entity.Greyhound;
import gpago.model.entity.Sponsor;
import gpago.model.entity.Sponsorship;

public class ViewFacade {
	
	ModelFacade modelFacade;
	
	//default constructor 
	public ViewFacade(){
		modelFacade = new ModelFacade();
	}
		
	public ViewFacade(ModelFacade modelFacade) {
		this.modelFacade = modelFacade;	
	}
	
	public List<Greyhound> getGreyhounds() {
		return modelFacade.getAllGreyhounds();
	}
	
	public List<Sponsorship> getSponsorships() {
		return modelFacade.getAllSponsorships();
	}
	
	public List<Sponsor> getSponsors(){
		return modelFacade.getAllSponsors();
	}
}
