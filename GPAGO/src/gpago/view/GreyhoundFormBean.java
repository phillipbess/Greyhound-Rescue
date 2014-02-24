package gpago.view;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;

import gpago.model.entity.Greyhound;

/**
 * The greyhoundFormBean provides specific information needed by the jsps to display
 * details of a greyhound .  This class is primarily a wrapper around the Greyhound entity object.
 * 
 */
public class GreyhoundFormBean {
	/**
	 * A reference to the greyhound object being added or edited.
	 */
	private Greyhound greyhound;
	
	public GreyhoundFormBean(Greyhound greyhound) {
		this.greyhound = greyhound;
	}
	
	public GreyhoundFormBean(HttpServletRequest request, Greyhound greyhound) {
		this.greyhound = greyhound;
		initFromRequest(request, greyhound);
	}
	
	private void initFromRequest(HttpServletRequest request, Greyhound greyhound) {
		if (request.getParameter("name")!=null)
			greyhound.setName(request.getParameter("name"));
		if (request.getParameter("description")!=null)
			greyhound.setDescription(request.getParameter("description"));
	}
	
	/**
	 * Determines if the state contained by the bean is valid.
	 * @return true if the state contained by the bean is valid, false otherwise.
	 */
	public boolean isValid() {
		if (getNameValidationText().length()>0)
			return false;
		return true;
	}
	
	public String toString() {
		return greyhound.toString();
	}
	
	public Greyhound getGreyhound() {
		return greyhound;
	}
	
	public Long getId() {
		return greyhound.getId();
	}
	
	public String getName() {
		return greyhound.getName();
	}
	
	public String getNameValidationText() {
		if (StringUtils.isEmpty(greyhound.getName()))
			return "Required";
		return "";
	}

	public void setName(String name) {
		greyhound.setName(name);
	}
	
	public String getDescription() {
		return greyhound.getDescription();
	}

	public void setDescription(String description) {
		greyhound.setDescription(description);
	}
	
	public boolean isCatFriendly() { 
		return greyhound.getIsCatFriendly();
	}

	public void setIsCatFriendly(Boolean isCatFriendly) {
		greyhound.setIsCatFriendly(isCatFriendly);
	}
}
