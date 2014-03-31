package gpago.model.entity;

import java.io.Serializable;
import java.lang.String;
import java.util.Date;
import java.util.List;

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

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@OneToMany(mappedBy="greyhound")
	private List<Sponsorship> sponsors;
	
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

	@Lob
	private byte[] firstImage;

	@Temporal(TemporalType.TIMESTAMP)
	private Date entryDate;

	/*
	 * @Lob
	 * 
	 * @Column(length = 2048)
	 */
	private static final long serialVersionUID = 1L;

	//Default Constructor
	public Greyhound() {
		super();
	}
	
	//greyhound constructor without sponsorship parameter
	public Greyhound(String name, Date dateOfBirth, String gender, int weight,
			String color, boolean catFriendly, boolean homeAcclimated,
			String personality, String moreInfo, byte[] firstImage) {
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
		setFirstImage(firstImage);
	}

	public Greyhound(String name, Date dateOfBirth, String gender, int weight,
			String color, boolean catFriendly, boolean homeAcclimated,
			String personality, String moreInfo, List<Sponsorship> sponsors,
			byte[] firstImage) {
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
		setSponsors(sponsors);
		setFirstImage(firstImage);
	}

	public Greyhound(Long id, String name, Date dateOfBirth, String gender,
			int weight, String color, boolean catFriendly,
			boolean homeAcclimated, String personality, String moreInfo,
			List<Sponsorship> sponsors, byte[] firstImage) {
		this(name, dateOfBirth, gender, weight, color, catFriendly,
				homeAcclimated, personality, moreInfo, sponsors, firstImage);
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

	public List<Sponsorship> getSponsors() {
		return sponsors;
	}

	public void setSponsors(List<Sponsorship> sponsors) {
		this.sponsors = sponsors;
	}

	public byte[] getFirstImage() {
		return firstImage;
	}

	public void setFirstImage(byte[] firstImage) {
		this.firstImage = firstImage;
	}

	public String toString() {
		return name + " [id = " + id + "] ";
	}
}
