package gpago.view;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.*;

import javax.servlet.http.*;

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
	
	private static final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	
	
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
		
		setDateOfBirth(request.getParameter("dateOfBirth"));
		
		if (request.getParameter("gender")!=null){
			greyhound.setGender(request.getParameter("gender"));
		}
		
		if (request.getParameter("weight")!=null){
			if(!request.getParameter("weight").isEmpty()) {
				try {
					greyhound.setWeight(Integer.parseInt(request.getParameter("weight")));
				} catch (Throwable ex) {
				}
			} else {
				//if an empty string comes in, set the weight to 0, this will display as an empty box in the page.
				greyhound.setWeight(0);
			}
		}
	
		if (request.getParameter("color")!=null){
			greyhound.setColor(request.getParameter("color"));
		}
		
		if (request.getParameter("personality")!=null){
			greyhound.setPersonality(request.getParameter("personality"));
		}
		
		if (request.getParameter("moreInfo")!=null){
			greyhound.setMoreInfo(request.getParameter("moreInfo"));
		}
		
		if(request.getParameter("location")!=null){
			greyhound.setLocation(request.getParameter("location"));
		}
		
		if(request.getParameter("adoptionStatus")!=null){
			greyhound.setAdoptionStatus(request.getParameter("adoptionStatus"));
		}
		
		greyhound.setCatFriendly(request.getParameter("catFriendly")!=null);
		
		greyhound.setHomeAcclimated(request.getParameter("homeAcclimated")!=null);

		if (request.getParameterValues("sponsors[]")!=null){
			//puts all the selected sponsors ids into an Array of Strings
			String[] sponsors = request.getParameterValues("sponsors[]");
			//this still needs to be implemented
			//greyhound.setSponsors(sponsors);
		}
		
		// Only process image if content is multipart.
		if ((request.getContentType() != null) && (request.getContentType().toLowerCase().indexOf("multipart/form-data") > -1 )) {
				byte[] imageBytes = getImageBytes(request, "image1");
				if (imageBytes!=null)
					greyhound.setImage1(imageBytes);
				
				imageBytes = getImageBytes(request, "image2");
				if (imageBytes!=null)
					greyhound.setImage2(imageBytes);

				imageBytes = getImageBytes(request, "image3");
				if (imageBytes!=null)
					greyhound.setImage3(imageBytes);

				imageBytes = getImageBytes(request, "image4");
				if (imageBytes!=null)
					greyhound.setImage4(imageBytes);
				
				imageBytes = getImageBytes(request, "image5");
				if (imageBytes!=null)
					greyhound.setImage5(imageBytes);
				
		}
	}
	
	private byte[] getImageBytes(HttpServletRequest request, String partName) {
		try {
			Part filePart = request.getPart(partName);			
			
			if (filePart!=null) {
				String fileName = ServletUtils.getFileName(filePart);
				
				if ((fileName!=null) && (!fileName.isEmpty()))
					return IOUtils.toByteArray(filePart.getInputStream());
			}
			
		} catch (Exception e) {
			//Log exception, but there's not much else we can do.
			logger.log(Level.SEVERE, "Error while getting image bytes from multipart request.", e);
		}
		
		return null;
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
	
	public String getDateOfBirth() {
		if ((greyhound!=null) && (greyhound.getDateOfBirth()!=null)) {
			try {
				return format.format(greyhound.getDateOfBirth());
			} catch (Throwable e) {
			}
		}
		return null;
	}

	public void setDateOfBirth(String dateOfBirth) {
		if (dateOfBirth!=null) {
			try {
				greyhound.setDateOfBirth(format.parse(dateOfBirth));
			} catch (Throwable e) {
			}
		}
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
	
	public String getLocation(){
		return greyhound.getLocation();
	}
	
	public void setLocation(String location){
		greyhound.setLocation(location);
	}
	
	public String getAdoptionStatus(){
		return greyhound.getAdoptionStatus();
	}
	
	public void setAdoptionStatus(String adoptionStatus){
		greyhound.setAdoptionStatus(adoptionStatus);
	}
	
	public List<Sponsorship> getSponsors() {
		return greyhound.getSponsors();
	}
	
	public void setSponsors(List<Sponsorship> sponsors) {
		greyhound.setSponsors(sponsors);
	}
	
	public byte[] getImage1(){
		return greyhound.getImage1();
	}
	
	public boolean isImage1Exists() {
		return greyhound.getImage1()!=null;
	}
	
	public byte[] getImage2(){
		return greyhound.getImage2();
	}

	public boolean isImage2Exists() {
		return greyhound.getImage2()!=null;
	}
	
	public byte[] getImage3(){
		return greyhound.getImage3();
	}

	public boolean isImage3Exists() {
		return greyhound.getImage3()!=null;
	}
	
	public byte[] getImage4(){
		return greyhound.getImage4();
	}

	public boolean isImage4Exists() {
		return greyhound.getImage4()!=null;
	}
	
	public byte[] getImage5(){
		return greyhound.getImage5();
	}
	
	public boolean isImage5Exists() {
		return greyhound.getImage5()!=null;
	}
}
