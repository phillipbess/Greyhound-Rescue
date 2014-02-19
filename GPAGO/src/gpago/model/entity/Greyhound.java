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
	
	private String name_race;
	
	private Boolean isCatFriendly;
	
	

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
		super();
		this.name = name;
		this.description = description;
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
	
	public Boolean getIsCatFriendly() { 
		return isCatFriendly;
	}

	public void setIsCatFriendly(Boolean isCatFriendly) {
		this.isCatFriendly = isCatFriendly;
	}
	
	public String toString() {
		return name + " [id = " + id + "] ";
	}
   
}
