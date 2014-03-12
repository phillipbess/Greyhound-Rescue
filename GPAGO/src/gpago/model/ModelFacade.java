package gpago.model;

import gpago.model.entity.Greyhound;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class ModelFacade {
	private static final Logger logger = Logger.getLogger(ModelFacade.class.getName());
	private static final String PERSISTENCE_UNIT_NAME = "GPAGO";
	private EntityManagerFactory emf;

	public ModelFacade() {
		logger.info("Initializing Entity Manager Factory");
		emf = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
		logger.info("Entity Manager Factory Initialized for persistence unit: " + PERSISTENCE_UNIT_NAME);
	}
	
	/**
	 * Retrieve all Greyhound records from the database.
	 * @return A list of all Greyhound entities in the database.
	 */
	public List<Greyhound> getAllGreyhounds() {
		EntityManager em = emf.createEntityManager();

		try {
			return emf.createEntityManager().createNamedQuery("Greyhound.findAll", Greyhound.class).getResultList();
		} finally {
			em.close();
		}
	}
	
	public Greyhound getGreyhound(Long id) {
		EntityManager em = emf.createEntityManager();

		try {
			return emf.createEntityManager().find(Greyhound.class, id);
		} finally {
			em.close();
		}
	}
	
	public void saveGreyhound(Greyhound greyhound) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction utx = em.getTransaction();

		try {
			utx.begin();
			
			if (greyhound.getId()==null) { // it's a new greyhound, persist it.
				em.persist(greyhound);
			} else { // Else, it's an existing greyhound that has been updated.  Just commit.
				em.merge(greyhound);
			}
			
			utx.commit();
		} catch (Throwable ex) {
			logger.log(Level.SEVERE, "Error while saving greyhound record.  The transaction is being rolled back.", ex);
			try {
				utx.rollback();
			} catch (Exception e) {
			}
		} finally {
			em.close();
		}
	}
	
	public void removeGreyhound(Greyhound greyhound) {
		if (greyhound.getId() == null) // Greyhound does not have id, probably because it was never persisted.
			return;

		EntityManager em = emf.createEntityManager();
		
		Greyhound g = em.find(Greyhound.class, greyhound.getId());
		
		if (g!=null) {
			EntityTransaction utx = em.getTransaction();

			try {
				utx.begin();
				em.remove(g);
				utx.commit();
			} catch (Throwable ex) {
				logger.log(Level.SEVERE, "Error while removing greyhound record.  The transaction is being rolled back.", ex);
				try {
					utx.rollback();
				} catch (Exception e) {
				}
			} finally {
				em.close();
			}
		}
	}
}
