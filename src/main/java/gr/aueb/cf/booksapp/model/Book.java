package gr.aueb.cf.booksapp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 * Book Entity
 * @author N. Ioannopoulou
 * @version 0.1
 */
@Entity
@Table (name="BOOKS")
public class Book {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	private Long id;
	
	@Column(name="TITLE", length=512, nullable=false)
	private String title;
	
	@Column(name="AUTHOR", length=512, nullable=false)
	private String author;
	
	@Column(name="PRICE", nullable=false)
	private double price;
	
	@Column(name="PUBLISHER", length=512, nullable=true)
	private String publisher;
	
	@Column(name="YEAR_PUBLISHED")
	private int year;
	
	//url of string
	@Column(name="COVER", length=512, nullable=true)
	private String cover;
	
	@Column(name="PAGES", nullable=true)
	private int pages;
	
	@Column (name="EDITION", nullable=true)
	private int edition;
	
	public Book() {}
	
	

	public Book(Long id, String title, String author, double price, String publisher, int year, String cover, int pages,
			int edition) {
		
		this.id = id;
		this.title = title;
		this.author = author;
		this.price = price;
		this.publisher = publisher;
		this.year = year;
		this.cover = cover;
		this.pages = pages;
		this.edition = edition;
	}



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	public int getPages() {
		return pages;
	}

	public void setPages(int pages) {
		this.pages = pages;
	}

	public int getEdition() {
		return edition;
	}

	public void setEdition(int edition) {
		this.edition = edition;
	}

//	@Override
//	public String toString() {
//		return "Book [id=" + id + ", title=" + title + ", author=" + author + ", price=" + price + ", publisher="
//				+ publisher + ", year=" + year + ", cover=" + cover + ", pages=" + pages + ", edition=" + edition + "]";
//	}
	
		
	
}
