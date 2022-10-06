package gr.aueb.cf.booksapp.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gr.aueb.cf.booksapp.dao.BookDAOImpl;
import gr.aueb.cf.booksapp.dao.IBookDAO;
import gr.aueb.cf.booksapp.dto.BookDTO;
import gr.aueb.cf.booksapp.model.Book;
import gr.aueb.cf.booksapp.service.BookServiceImpl;
import gr.aueb.cf.booksapp.service.IBookService;
import gr.aueb.cf.booksapp.service.exceptions.EntityNotFoundException;

@WebServlet("/search")
public class BookSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	IBookDAO bookDAO = new BookDAOImpl();
	IBookService bookServ = new BookServiceImpl(bookDAO);
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		
		response.setContentType("text/html; charset=UTF-8");
		
		//Get the data
		String title = request.getParameter("title").trim();
		String author = request.getParameter("author").trim();
		
		List<Book> books = new ArrayList<>();

		// Construct DTO
		BookDTO bookDTO = new BookDTO();
		bookDTO.setTitle(title);
		bookDTO.setAuthor(author);
		
		try {
			if (title.length() ==0) {
				books = bookServ.getBooksByAuthor(author);
			} else {
				books = bookServ.getBooksByTitle(title);
			}
			
			request.setAttribute("books", books);
			request.getRequestDispatcher("/jsps/books.jsp").forward(request, response);
		}catch (EntityNotFoundException e) {
			e.printStackTrace();
			request.setAttribute("booksNotFound", true);
			request.getRequestDispatcher("/jsps/booksmenu.jsp").forward(request, response);
		}
	}

}
