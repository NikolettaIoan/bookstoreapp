package gr.aueb.cf.booksapp.service;

import java.util.List;

import gr.aueb.cf.booksapp.dao.IBookDAO;
import gr.aueb.cf.booksapp.dto.BookDTO;
import gr.aueb.cf.booksapp.model.Book;
import gr.aueb.cf.booksapp.service.exceptions.EntityNotFoundException;
import gr.aueb.cf.booksapp.service.util.JPAHelper;

public class BookServiceImpl implements IBookService {
	private final IBookDAO bookDAO;
	
	public BookServiceImpl(IBookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}

	@Override
	public void insertBook(BookDTO bookDTO) {
		Book book;
		
		try {
			JPAHelper.beginTransaction();
			
			book = new Book();
			book.setTitle(bookDTO.getTitle());
			book.setAuthor(bookDTO.getAuthor());
			book.setPrice(bookDTO.getPrice());
			book.setPublisher(bookDTO.getPublisher());
			book.setYear(bookDTO.getYear());
			book.setCover(bookDTO.getCover());
			book.setPages(bookDTO.getPages());
			book.setEdition(bookDTO.getEdition());
			
			System.out.println(book.getTitle());
			System.out.println(book.getAuthor());
			System.out.println(book.getPrice());
			System.out.println(book.getId());
			
			if(bookDTO.getId() == null) {
				bookDAO.insert(book);
				System.out.println("Book Inserted");
			}  else {
				//AN option would be to call bookDAO.update(book);
				//otherwise do nothing
			}
			JPAHelper.commitTransaction();
			
		}catch(Exception e) {
			JPAHelper.rollbackTransaction();
			throw e;			
		}finally {
			JPAHelper.closeEntityManager();
		}		
	}

	@Override
	public void deleteBook(BookDTO bookDTO) throws EntityNotFoundException {
		Book bookToDelete;
		
		try {
			JPAHelper.beginTransaction();
			
			bookToDelete = new Book();
			bookToDelete.setId(bookDTO.getId());
			
			if(bookDAO.getBookById(bookToDelete.getId()) == null) {
				throw new EntityNotFoundException(Book.class, bookToDelete.getId());
			}
			
			bookDAO.delete(bookToDelete);	
			
			JPAHelper.commitTransaction();
		}catch(EntityNotFoundException e) {
			JPAHelper.rollbackTransaction();
			throw e;
		} finally {
			JPAHelper.closeEntityManager();
		}		
	}

	@Override
	public void updateBook(BookDTO bookDTO) throws EntityNotFoundException {
		Book bookToUpdate;
		
		try {
			JPAHelper.beginTransaction();
			
			bookToUpdate = new Book();
			bookToUpdate.setId(bookDTO.getId());
			bookToUpdate.setTitle(bookDTO.getTitle());
			bookToUpdate.setAuthor(bookDTO.getAuthor());
			bookToUpdate.setPrice(bookDTO.getPrice());
			bookToUpdate.setPublisher(bookDTO.getPublisher());
			bookToUpdate.setYear(bookDTO.getYear());
			bookToUpdate.setCover(bookDTO.getCover());
			bookToUpdate.setPages(bookDTO.getPages());
			bookToUpdate.setEdition(bookDTO.getEdition());
			
			if (bookDAO.getBookById(bookToUpdate.getId()) == null) {
				throw new EntityNotFoundException(Book.class, bookToUpdate.getId());
			}
			
			bookDAO.update(bookToUpdate);
			
			JPAHelper.commitTransaction();			
		}catch(Exception e) {
			JPAHelper.rollbackTransaction();
			throw e;
		}finally {
			JPAHelper.closeEntityManager();
		}
	}

	@Override
	public List<Book> getBooksByTitle(String title) throws EntityNotFoundException {
		List<Book> books = null;
		
		try {
			JPAHelper.beginTransaction();
			
			books = bookDAO.getBookByTitle(title);
			if(books.size() == 0) throw new EntityNotFoundException(Book.class, 0L);
			JPAHelper.commitTransaction();
		} catch (Exception e) {
			JPAHelper.rollbackTransaction();
			throw e;
		} finally {
			JPAHelper.closeEntityManager();
		}
		
		return books;
	}

	@Override
	public List<Book> getBooksByAuthor(String author) throws EntityNotFoundException {
		List<Book> books = null;
		
		try {
			JPAHelper.beginTransaction();
			
			books = bookDAO.getBookByAuthor(author);
			if(books.size() == 0) throw new EntityNotFoundException(Book.class, 0L);
			JPAHelper.commitTransaction();
		} catch (Exception e) {
			JPAHelper.rollbackTransaction();
			throw e;
		} finally {
			JPAHelper.closeEntityManager();
		}
		
		return books;
	}

}
