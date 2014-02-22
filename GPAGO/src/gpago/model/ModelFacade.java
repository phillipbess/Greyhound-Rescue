package gpago.model;

import gpago.model.entity.Greyhound;

import java.util.List;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ModelFacade {
	private static final Logger logger = Logger.getLogger(ModelFacade.class.getName());
	private static final String PERSISTENCE_UNIT_NAME = "GPAGO";
	private EntityManagerFactory emf;
	private EntityManager em;

	public ModelFacade() {
		logger.info("Initializing Entity Manager Factory");
		emf = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
		logger.info("Entity Manager Factory Initialized for persistence unit: " + PERSISTENCE_UNIT_NAME);
		
		em = emf.createEntityManager();
	}
	
	public EntityManager getEntityManager() {
		return em;
	}

	/**
	 * Retrieve all Greyhound records from the database.
	 * @return A list of all Greyhound entities in the database.
	 */
	public List<Greyhound> getAllGreyhounds() {
		return getEntityManager().createNamedQuery("Greyhound.findAll").getResultList();
	}
	
	public Greyhound getGreyhound(Long id) {
		return getEntityManager().find(Greyhound.class, id);
	}
	
	public void saveGreyhound(Greyhound greyhound) {
		if (greyhound.getId()==null) { // Then it's a new greyhound, persist it.
			persistEntity(greyhound);
			em.getTransaction().begin();
			em.getTransaction().commit();
		} else { // Else, it's an existing greyhound that has been updated.  Just commit.
			// 
			em.getTransaction().begin();
			em.getTransaction().commit();
		}
	}
	
	public void removeGreyhound(Greyhound greyhound) {
		getEntityManager().remove(greyhound);
	}
	
	
	/**
	 * Persist (but not commit) the entity argument.
	 * The entity object that was passed in is returned to allow method chaining.
	 * @param entity Entity to persist.
	 * @return Entity object argument that was passed in.
	 */
	public Object persistEntity(Object entity) {
		getEntityManager().persist(entity);
		return entity;
	}
	
	/**
	 * Commit any changes to managed entities to the database.
	 */
	public void commitTransaction() {
		// JPA will persist any changes to managed entities when the transaction is committed.
		em.getTransaction().begin();
		em.getTransaction().commit();
	}
}
