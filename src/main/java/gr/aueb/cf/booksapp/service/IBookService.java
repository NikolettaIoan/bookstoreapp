package gr.aueb.cf.booksapp.service;

import java.util.List;

import gr.aueb.cf.booksapp.dto.BookDTO;
import gr.aueb.cf.booksapp.model.Book;
import gr.aueb.cf.booksapp.service.exceptions.EntityNotFoundException;

public interface IBookService {
	/**
	 * Inserts a {@link Book} based on the data carried by the {@link BookDTO}
	 * @param bookDTO
	 * 			DTO object that contains the data
	 */
	void insertBook(BookDTO bookDTO);
	
	/**
	 * Removes a {@link Book} based on the data carried by the {@link BookDTO}
	 * 
	 * @param bookDTO
	 * 			DTO object that contains the data (mainly the id)
	 * 			
	 * @throws EntityNotFoundException
	 * 			if no Book was found to delete
	 */
	void deleteBook(BookDTO bookDTO) throws EntityNotFoundException;
	
	/**
	 * Updates a {@link Book} based on the data carried by the {@link BookDTO}
	 * 
	 * @param bookDTO
	 * 			DTO object that contains the data to update based on the id
	 * @throws EntityNotFoundException
	 * 			if no Book was found to update
	 */
	void updateBook(BookDTO bookDTO) throws EntityNotFoundException;
	
	/**
	 * Gets back to the caller a list of {@link Book} objects identified
	 * by the title's initial characters
	 * 
	 * @param title
	 * 			a string object that contains the title's initial characters
	 * @return
	 * 			a list of {@link Book} objects
	 * @throws EntityNotFoundException
	 * 			if no Book was found
	 */
	List<Book> getBooksByTitle(String title) throws EntityNotFoundException;
	
	/**
	 * Gets back to the caller a list of {@link Book} objects identified
	 * by the author's initial characters
	 * 
	 * @param author
	 * 			a string object that contains the author's initial characters
	 * @return
	 * 			a list of {@link Book} objects
	 * @throws EntityNotFoundException
	 * 			if no Book was found
	 */
	List<Book> getBooksByAuthor(String author) throws EntityNotFoundException;
}
