package gpago.model.entity;

import java.io.Serializable;
import java.lang.String;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.lang3.StringEscapeUtils;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: GreyHound
 * 
 */
@Entity
@NamedQueries({
		@NamedQuery(name = "Greyhound.findAll", query = "SELECT e FROM Greyhound e"),
		@NamedQuery(name = "Greyhound.findById", query = "SELECT e FROM Greyhound e WHERE e.id = :id") })
public class Greyhound implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	private String name;

	@Temporal(TemporalType.TIMESTAMP)
	private Date dateOfBirth;

	private String gender;

	private int weight;

	private String color;

	private boolean isCatFriendly;

	private boolean isHomeAcclimated;

	private String personality;

	private String moreInfo;
	
	private String location;
	
	private String adoptionStatus;

	@Lob
	private byte[] image1;

	@Lob
	private byte[] image2;

	@Lob
	private byte[] image3;

	@Lob
	private byte[] image4;

	@Lob
	private byte[] image5;
	
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date entryDate;

	@OneToMany(mappedBy="greyhound")
	private List<Sponsor> sponsors = new ArrayList<Sponsor>();

	
	//Default Constructor
	public Greyhound() {
		super();
	}
	
	//greyhound constructor without sponsorship parameter
	public Greyhound(String name, Date dateOfBirth, String gender, int weight,
			String color, boolean catFriendly, boolean homeAcclimated,
			String personality, String moreInfo, String location, String adoptionStatus, byte[] image1) {
		this();
		setName(name);
		setDateOfBirth(dateOfBirth);
		setGender(gender);
		setWeight(weight);
		setColor(color);
		setCatFriendly(catFriendly);
		setHomeAcclimated(homeAcclimated);
		setPersonality(personality);
		setMoreInfo(moreInfo);
		setLocation(location);
		setAdoptionStatus(adoptionStatus);
		setImage1(image1);
	}

	public Long getId() {
		return this.id;
	}

	public String getName() {
		return StringEscapeUtils.escapeHtml4(this.name);
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isCatFriendly() {
		return isCatFriendly;
	}

	public void setCatFriendly(boolean catFriendly) {
		this.isCatFriendly = catFriendly;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public boolean isHomeAcclimated() {
		return isHomeAcclimated;
	}

	public void setHomeAcclimated(boolean isHomeAcclimated) {
		this.isHomeAcclimated = isHomeAcclimated;
	}

	public String getPersonality() {
		return personality;
	}

	public void setPersonality(String personality) {
		this.personality = personality;
	}

	public String getMoreInfo() {
		return moreInfo;
	}

	public void setMoreInfo(String moreInfo) {
		this.moreInfo = moreInfo;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getAdoptionStatus() {
		return adoptionStatus;
	}

	public void setAdoptionStatus(String adoptionStatus) {
		this.adoptionStatus = adoptionStatus;
	}

	public List<Sponsor> getSponsors() {
		return sponsors;
	}

	public void addSponsor(Sponsor sponsor) {
		sponsor.setGreyhound(this);
		sponsors.add(sponsor);
	}
	
	public boolean hasSponsor(Long sponsorId) {
		for (Sponsor sponsor: sponsors) {
			if (sponsor.getId()==sponsorId)
				return true;
		}
		return false;
	}
	
	public void removeSponsor(Sponsor sponsor) {
		sponsors.remove(sponsor); // Remove the sponsor from the list.
		sponsor.setGreyhound(null); // Remove the sponsor's reference to the greyhound
	}
	
	public void removeAllSponsors() {
		for (Iterator<Sponsor> iterator = sponsors.iterator(); iterator.hasNext(); ) {
			Sponsor sponsorToRemove = iterator.next();
			iterator.remove(); // safely remove an item from the collection while iterating over it.
			sponsorToRemove.setGreyhound(null);
		}
	}

	public byte[] getImage1() {
		return image1;
	}

	public void setImage1(byte[] image1) {
		this.image1 = image1;
	}
	
	
	
	public byte[] getImage2() {
		return image2;
	}

	public void setImage2(byte[] image2) {
		this.image2 = image2;
	}
	
	
	public byte[] getImage3() {
		return image3;
	}

	public void setImage3(byte[] image3) {
		this.image3 = image3;
	}
	
	public byte[] getImage4() {
		return image4;
	}

	public void setImage4(byte[] image4) {
		this.image4 = image4;
	}
	
	public byte[] getImage5() {
		return image5;
	}

	public void setImage5(byte[] image5) {
		this.image5 = image5;
	}
	
	public String toString() {
		return name + " [id = " + id + "] ";
	}
}
