package gr.aueb.cf.booksapp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gr.aueb.cf.booksapp.controller.util.Validator;
import gr.aueb.cf.booksapp.dao.BookDAOImpl;
import gr.aueb.cf.booksapp.dao.IBookDAO;
import gr.aueb.cf.booksapp.dto.BookDTO;
import gr.aueb.cf.booksapp.service.BookServiceImpl;
import gr.aueb.cf.booksapp.service.IBookService;
import gr.aueb.cf.booksapp.service.exceptions.EntityNotFoundException;

@WebServlet("/update")
public class BookUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	IBookDAO bookDAO = new BookDAOImpl();
	IBookService bookServ = new BookServiceImpl(bookDAO);
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		
		Long id = Long.parseLong(request.getParameter("id").trim());
		String title = request.getParameter("title").trim();
		String author = request.getParameter("author").trim();
		String publisher = request.getParameter("publisher").trim();
		String cover = request.getParameter("cover").trim();		
		String priceStr = request.getParameter("price").trim();
		String yearStr = request.getParameter("year").trim();		
		String pagesStr = request.getParameter("pages").trim();
		String editionStr = request.getParameter("edition").trim();
		
		BookDTO newBookDTO = Validator.validate(title, author, publisher, cover, priceStr, yearStr, pagesStr, editionStr);
		newBookDTO.setId(id);
		
		try {
			bookServ.updateBook(newBookDTO);
			request.setAttribute("insertedbook", newBookDTO);
			request.getRequestDispatcher("/jsps/bookupdated.jsp").forward(request, response);
		} catch (EntityNotFoundException e) {
			e.printStackTrace();
		}
	}

}
