package gpago.view;

import java.util.List;

import gpago.model.ModelFacade;
import gpago.model.entity.Greyhound;

public class ViewFacade {
	
	ModelFacade modelFacade = new ModelFacade();
	
	public ViewFacade() {
		
	}
	
	public List<Greyhound> getGreyhounds() {
		return modelFacade.getAllGreyhounds();
	}
}
