package gpago.model;

import gpago.model.entity.Greyhound;

import java.util.ArrayList;
import java.util.List;

public class ModelFacade {
	
	List<Greyhound> greyhounds = new ArrayList<Greyhound>();
	
	public List<Greyhound> getGreyhounds() {
		return greyhounds;
	}

}
