package gpago.view;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.*;

import javax.servlet.http.*;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;

import gpago.model.entity.Greyhound;
import gpago.model.entity.Sponsor;
import gpago.view.servlet.ServletUtils;

/**
 * The greyhoundFormBean provides specific information needed by the jsps to display
 * details of a greyhound .  This class is primarily a wrapper around the Greyhound entity object.
 * 
 */
public class GreyhoundFormBean {
	private static final Logger logger = Logger.getLogger(GreyhoundFormBean.class.getName());
	
	private static final SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	
	// Ids of sponsors for this greyhound.  It is held in this form bean temporarily to be used elsewhere.
	private List<Long> sponsorIds = new ArrayList<Long>();
	
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
		
		if (request.getParameter("dateOfBirth")!=null) {
			try {
				System.out.println(request.getParameter("dateOfBirth"));
				greyhound.setDateOfBirth(format.parse(request.getParameter("dateOfBirth")));
			} catch (Throwable e) {
			}
		}
		
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
		
		String[] strIds = request.getParameterValues("sponsors");
		if (strIds!=null) {
			for (String strId: strIds) {
				try {
					Long id = Long.parseLong(strId);
					
					if (id!=null) {
						sponsorIds.add(id);
					}
				} catch (Throwable ex) {
				}
			}
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

	public String getDateOfBirth() {
		if ((greyhound!=null) && (greyhound.getDateOfBirth()!=null)) {
			try {
				return format.format(greyhound.getDateOfBirth());
			} catch (Throwable e) {
			}
		}
		return null;
	}
	
	public String getGender() {
		return greyhound.getGender();
	}

	public int getWeight(){
		return greyhound.getWeight();
	}
	
	public String getColor(){
		return greyhound.getColor();
	}
	
	public boolean isCatFriendly() {
		return greyhound.isCatFriendly();
	}

	public String getPersonality() {
		return greyhound.getPersonality();
	}

	public String getMoreInfo() {
		return greyhound.getMoreInfo();
	}	
	
	public boolean isHomeAcclimated(){
		return greyhound.isHomeAcclimated();
	}
	
	public String getLocation(){
		return greyhound.getLocation();
	}
	
	public String getAdoptionStatus(){
		return greyhound.getAdoptionStatus();
	}
	
	public List<Sponsor> getSponsors() {
		return greyhound.getSponsors();
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
	
	public List<Long> getSponsorIds() {
		return sponsorIds;
	}
}
