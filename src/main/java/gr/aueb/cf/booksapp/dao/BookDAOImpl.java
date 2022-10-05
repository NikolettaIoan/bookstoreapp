package gr.aueb.cf.booksapp.dao;

import java.util.List;
import gr.aueb.cf.booksapp.service.util.JPAHelper;
import gr.aueb.cf.booksapp.model.Book;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.ParameterExpression;
import jakarta.persistence.criteria.Root;

public class BookDAOImpl implements IBookDAO{

	@Override
	public void insert(Book book) {
		EntityManager em = getEntityManager();
		em.persist(book);		
	}

	@Override
	public void delete(Book book) {
		EntityManager em = getEntityManager();
		Book bookToDelete = em.find(Book.class, book.getId());
		em.remove(bookToDelete);		
	}

	@Override
	public void update(Book newBook) {
		getEntityManager().merge(newBook);		
	}

	@Override
	public List<Book> getBookByTitle(String bookTitleInput) {
		//Create Criteria Builder instance
		CriteriaBuilder builder = getEntityManager().getCriteriaBuilder();
		
		//Define what is returned
		CriteriaQuery<Book> selectQuery = builder.createQuery(Book.class);
		
		// Define FROM clause
		Root<Book> root = selectQuery.from(Book.class);
		
		ParameterExpression<String> val = builder.parameter(String.class, "bookTitle");
		
		selectQuery.select(root).where(builder.like(root.get("title"), val));
		
		TypedQuery<Book> query = getEntityManager().createQuery(selectQuery).setParameter("bookTitle", bookTitleInput + "%");
		return query.getResultList();
	}

	@Override
	public List<Book> getBookByAuthor(String authorInput) {
		//Create Criteria Builder instance
		CriteriaBuilder builder = getEntityManager().getCriteriaBuilder();
		
		//Define what is returned
		CriteriaQuery<Book> selectQuery = builder.createQuery(Book.class);
		
		// Define FROM clause
		Root<Book> root = selectQuery.from(Book.class);
		
		ParameterExpression<String> val = builder.parameter(String.class, "bookAuthor");
		
		selectQuery.select(root).where(builder.like(root.get("author"), val));
		
		TypedQuery<Book> query = getEntityManager().createQuery(selectQuery).setParameter("bookAuthor", authorInput + "%");
		return query.getResultList();	}

	@Override
	public Book getBookById(Long id) {
		return getEntityManager().find(Book.class, id);
	}

	private EntityManager getEntityManager() {
		return JPAHelper.getEntityManager();
	}
}
