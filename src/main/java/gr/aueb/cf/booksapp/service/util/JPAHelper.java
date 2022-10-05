package gr.aueb.cf.booksapp.service.util;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

/**
 * A generic Helper class that provides access to JPA
 *
 */
public class JPAHelper {
	private static EntityManagerFactory emf;
	private static final ThreadLocal<EntityManager> threadLocal = new ThreadLocal<EntityManager>();
	
	private JPAHelper() {		
	}
	
	/**
	 * A EntityManagerFactory is an expensive to-create,
	 * thread-safe object intended to be shared by all application threads.
	 * It is created once (Singleton pattern)
	 * 
	 * @return an EntityManagerFactory thread-safe object
	 */
	public static EntityManagerFactory getEntityManagerFactory() {
		if ( (emf == null) || (!emf.isOpen())) {
			emf = Persistence.createEntityManagerFactory("booksPU");
		}
		return emf;
	}

	/**
	 * An EntityManager is an inexpensive, non-thread safe object that should be used once,
	 * for a single unit of work, and then discarded.
	 * 
	 * @return an entity manager singleton instance
	 */
	public static EntityManager getEntityManager() {
		EntityManager em = threadLocal.get();
		
		if ( (em == null) || (!em.isOpen())) {
			em = getEntityManagerFactory().createEntityManager();
			threadLocal.set(em);
			System.out.println(em);
		}
		
		return em;
	}
	
	public static void closeEntityManager() {
		getEntityManager().close();
	}
	
	
	public static void beginTransaction() {
		getEntityManager().getTransaction().begin();
	}
	
	public static void commitTransaction() {
		getEntityManager().getTransaction().commit();
	}
	
	public static void rollbackTransaction() {
		getEntityManager().getTransaction().rollback();
	}
	
	public static void closeEMF() {
		emf.close();
	}
	
}
