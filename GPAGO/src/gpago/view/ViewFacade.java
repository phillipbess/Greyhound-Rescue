package gpago.view;

import java.util.List;

import gpago.model.ModelFacade;
import gpago.model.entity.Greyhound;

public class ViewFacade {
	
	ModelFacade modelFacade;
	
	public ViewFacade(ModelFacade modelFacade) {
		this.modelFacade = modelFacade;
		
	}
	
	public List<Greyhound> getGreyhounds() {
		return modelFacade.getAllGreyhounds();
	}
}
