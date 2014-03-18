package gpago.view;

import java.util.Date;

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
		if (request.getParameter("name")!=null){
			greyhound.setName(request.getParameter("name"));
		}
		if (request.getParameter("dateOfBirth")!=null){
			/*SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			try {
				greyhound.setDateOfBirth(format.parse(request.getParameter("dateOfBirth")));
			} catch (ParseException e) {
				e.printStackTrace();
			}*/
		}
		if (request.getParameter("gender")!=null){
			greyhound.setGender(request.getParameter("gender"));
		}
		
		if (request.getParameter("weight")!=null){
			greyhound.setWeight(Integer.parseInt(request.getParameter("weight")));
		}
		
		if (request.getParameter("color")!=null){
			greyhound.setColor(request.getParameter("color"));
		}
		
		if (request.getParameter("isCatFriendly")!=null){
			greyhound.setIsCatFriendly(Boolean.parseBoolean(request.getParameter("isCatFriendly")));
		}		
		
/*		if (request.getParameter("firstImage")!=null){
			greyhound.setFirstImage(request.getPicture("firstImage"));
		}*/
		
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

	public Date getDateOfBirth() {
		return greyhound.getDateOfBirth();
	}

	public void setDateOfBirth(Date dateOfBirth) {
		greyhound.setDateOfBirth(dateOfBirth);
	}
	
	public String getGender(){
		return greyhound.getGender();
	}
	
	public void setGender(String gender){
		greyhound.setGender(gender);
	}
	
	public int getWeight(){
		return greyhound.getWeight();
	}
	
	public void setWeight(int weight){
		greyhound.setWeight(weight); 
	}
	
	public String getColor(){
		return greyhound.getColor();
	}
	
	public void setColor(String color){
		greyhound.setColor(color);
	}
	
	public boolean getIsCatFriendly() {
		return greyhound.getIsCatFriendly();
	}

	public void setIsCatFriendly(boolean isCatFriendly) {
		greyhound.setIsCatFriendly(isCatFriendly);
	}
	
	public String getPersonality() {
		return greyhound.getPersonality();
	}

	public void setPersonality(String personality) {
		greyhound.setPersonality(personality);
	}
	
	public void setMoreInfo(String moreInfo) {
		greyhound.setMoreInfo(moreInfo);
	}
	
	public String getMoreInfo() {
		return greyhound.getMoreInfo();
	}	
	
	public boolean getIsHomeAcclimated(){
		return greyhound.getIsHomeAcclimated();
	}
	
	public void setIsHomeAcclimated(boolean isHomeAcclimated){
		greyhound.setIsHomeAcclimated(isHomeAcclimated);
	}
	
	public void setMainImageLocal(byte[] firstImage){
		greyhound.setFirstImage(firstImage);
	}
	
	public byte[] getFirstImage(){
		return greyhound.getFirstImage();
	}
}
