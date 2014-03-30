package gpago.view;

import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;

import gpago.model.entity.Greyhound;
import gpago.model.entity.Sponsorship;
import gpago.view.servlet.ServletUtils;

/**
 * The greyhoundFormBean provides specific information needed by the jsps to display
 * details of a greyhound .  This class is primarily a wrapper around the Greyhound entity object.
 * 
 */
public class GreyhoundFormBean {
	private static final Logger logger = Logger.getLogger(GreyhoundFormBean.class.getName());
	
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
	
	private void initFromRequest(HttpServletRequest request, Greyhound greyhound){
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
		
		greyhound.setCatFriendly(request.getParameter("catFriendly")!=null);
		
		greyhound.setHomeAcclimated(request.getParameter("homeAcclimated")!=null);

		/*if (request.getParameterValues("sponsors[]")!=null){
			String[] sponsors = request.getParameterValues("sponsors[]");
			//this still needs to be implemented
			greyhound.setS.setSponsorsById(sponsors);
		}*/
		
		// Only process image if content is multipart.
		if ((request.getContentType() != null) && (request.getContentType().toLowerCase().indexOf("multipart/form-data") > -1 )) {
			try {
				Part filePart = request.getPart("image");
				
				if (filePart!=null) {
					String fileName = ServletUtils.getFileName(filePart);
					
					if ((fileName!=null) && (!fileName.isEmpty()))
						greyhound.setFirstImage(IOUtils.toByteArray(filePart.getInputStream()));
				}
			} catch (Exception e) {
				// TODO Log exception, but there's not much else we can do.
				logger.log(Level.SEVERE, "Error while getting image bytes from multipart request.", e);
			}
		}
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
	
	public boolean isCatFriendly() {
		return greyhound.isCatFriendly();
	}

	public void setCatFriendly(boolean catFriendly) {
		greyhound.setCatFriendly(catFriendly);
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
	
	public boolean isHomeAcclimated(){
		return greyhound.isHomeAcclimated();
	}
	
	public void setHomeAcclimated(boolean homeAcclimated){
		greyhound.setHomeAcclimated(homeAcclimated);
	}
	
	public List<Sponsorship> getSponsors() {
		return greyhound.getSponsors();
	}
	
	public void setSponsors(List<Sponsorship> sponsors) {
		greyhound.setSponsors(sponsors);
	}
	
	public void setMainImageLocal(byte[] firstImage){
		greyhound.setFirstImage(firstImage);
	}
	
	public byte[] getFirstImage(){
		return greyhound.getFirstImage();
	}
}
