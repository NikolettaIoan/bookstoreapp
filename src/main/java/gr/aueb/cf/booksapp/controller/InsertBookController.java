package gr.aueb.cf.booksapp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gr.aueb.cf.booksapp.dao.BookDAOImpl;
import gr.aueb.cf.booksapp.dao.IBookDAO;
import gr.aueb.cf.booksapp.dto.BookDTO;
import gr.aueb.cf.booksapp.service.BookServiceImpl;
import gr.aueb.cf.booksapp.service.IBookService;

@WebServlet("/insert")
public class InsertBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	IBookDAO bookDAO = new BookDAOImpl();
	IBookService bookServ = new BookServiceImpl(bookDAO);
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		
		response.setContentType("text/html; charset=UTF-8");
		
		//Get the data
		String title = request.getParameter("title").trim();
		String author = request.getParameter("author").trim();
		String publisher = request.getParameter("publisher").trim();
		String cover = request.getParameter("cover").trim();
		double price = 0;
		int year = 0;
		int pages = 0;
		int edition = 0;
		
		String priceStr = request.getParameter("price").trim();
		if((priceStr != null) && (priceStr.length() > 0)) {
			price = Double.parseDouble(priceStr);
		}
		String yearStr = request.getParameter("year").trim();
		if((yearStr != null) && (yearStr.length() > 0)) {
			year = Integer.parseInt(yearStr);
		}	
		
		String pagesStr = request.getParameter("pages").trim();
		if((pagesStr != null) && (pagesStr.length() > 0)) {
			pages = Integer.parseInt(pagesStr);
		}
		String editionStr = request.getParameter("edition").trim();
		if((editionStr != null) && (editionStr.length() > 0)) {
			edition = Integer.parseInt(editionStr);
		}
		
		System.out.println(title);
		
		// Construct DTO
		BookDTO bookDTO = new BookDTO();
		bookDTO.setTitle(title);
		bookDTO.setAuthor(author);
		bookDTO.setPrice(price);
		bookDTO.setPublisher(publisher);
		bookDTO.setYear(year);
		bookDTO.setCover(cover);
		bookDTO.setEdition(edition);
		bookDTO.setPages(pages);
		
		bookServ.insertBook(bookDTO);
		
		request.setAttribute("insertedbook", bookDTO);
		request.getRequestDispatcher("/jsps/bookinserted.jsp").forward(request, response);		
	}
}
