package gr.aueb.cf.booksapp.dao;

import java.util.List;

import gr.aueb.cf.booksapp.model.Book;

/**
 * 
 * @author Nik
 *
 */
public interface IBookDAO {
	void insert(Book book);
	void delete(Book book);
	void update(Book newBook);
	List<Book> getBookByTitle(String bookTitleInput);
	List<Book> getBookByAuthor(String authorInput);
	Book getBookById(Long id);
}
