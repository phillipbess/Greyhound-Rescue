package gpago.model.entity;

import java.io.Serializable;
import java.lang.Integer;
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
	public Date entryDate;	

	@Lob
	@Column(length = 2048)
	private String description;
	
	private static final long serialVersionUID = 1L;

	public Greyhound() {
		super();
	}
	
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}   
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public Boolean getIsCatFriendly() {
		return isCatFriendly;
	}

	public void setIsCatFriendly(Boolean isCatFriendly) {
		this.isCatFriendly = isCatFriendly;
	}
   
}
