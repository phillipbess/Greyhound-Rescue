package gpago.model.entity;

import java.io.Serializable;
import java.lang.String;
import java.util.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: GreyHound
 *
 */
@Entity
@NamedQueries({
	@NamedQuery(name = "Greyhound.findAll", query = "SELECT e FROM Greyhound e"),
	@NamedQuery(name = "Greyhound.findById", query = "SELECT e FROM Greyhound e WHERE e.id = :id")
})
public class Greyhound implements Serializable {

	   
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private String name;
	
	@Temporal(TemporalType.TIMESTAMP) 
	private Date dateOfBirth;
	
	private String gender;
	
	private int weight;
	
	private String color;
	
	private Boolean isCatFriendly;
	
	private Boolean isHomeAcclimated;
	
	private String personality;
	
	private String moreInfo;
	
	private String[] sponsors;
	
	@Temporal(TemporalType.TIMESTAMP) 
	private Date entryDate;	

	@Lob
	@Column(length = 2048)
	private String description;
	
	private static final long serialVersionUID = 1L;

	public Greyhound() {
		super();
	}
	
	public Greyhound(String name, String description) {
		this();
		this.name = name;
		this.description = description;
	}
	
	public Greyhound(Long id, String name, String description) {
		this(name, description);
		this.id = id;
	}
	
	
	
	public Long getId() {
		return this.id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public Boolean isCatFriendly() { 
		return isCatFriendly;
	}

	public void setIsCatFriendly(Boolean isCatFriendly) {
		this.isCatFriendly = isCatFriendly;
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

	public Boolean getIsHomeAcclimated() {
		return isHomeAcclimated;
	}

	public void setIsHomeAcclimated(Boolean isHomeAcclimated) {
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

	public String[] getSponsors() {
		return sponsors;
	}

	public void setSponsors(String[] sponsors) {
		this.sponsors = sponsors;
	}

	public String toString() {
		return name + " [id = " + id + "] ";
	}
   
}
