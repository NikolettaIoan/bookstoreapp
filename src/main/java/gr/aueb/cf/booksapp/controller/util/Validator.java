package gr.aueb.cf.booksapp.controller.util;

import gr.aueb.cf.booksapp.dto.BookDTO;

//utility helper class to validate DTO. It has only one method
public class Validator {
    
   private Validator() {} 
   
   
   public static BookDTO validate(String title, String author, String publisher, String cover,
           String priceStr,String yearStr, String pagesStr,String editionStr) {
       BookDTO bookDTO = new BookDTO();
       
       
       bookDTO.setTitle(title);
       bookDTO.setAuthor(author);
       bookDTO.setPublisher(publisher);
       bookDTO.setCover(cover);
       
       if((priceStr != null) && (priceStr.length() > 0)) {
          double price = Double.parseDouble(priceStr);
          bookDTO.setPrice(price);
       }
       
       if((yearStr != null) && (yearStr.length() > 0)) {
           int year = Integer.parseInt(yearStr);
           bookDTO.setYear(year);
       }
       
       if((pagesStr != null) && (pagesStr.length() > 0)) {
           int pages = Integer.parseInt(pagesStr);
           bookDTO.setPages(pages);
       }
       
       if((editionStr != null) && (editionStr.length() > 0)) {
           int edition = Integer.parseInt(editionStr);
           bookDTO.setEdition(edition);
       }
       
       
       return bookDTO;     
       
   }
    
}
