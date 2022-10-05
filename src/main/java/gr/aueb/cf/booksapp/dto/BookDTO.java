package gr.aueb.cf.booksapp.dto;

public class BookDTO {
	private Long id;
	private String title;
	private String author;
	private double price;
	private String publisher;
	private int year;
	private String cover;
	private int pages;
	private int edition;
	
	public BookDTO() {}
	
	public BookDTO(Long id, String title, String author, double price, String publisher, int year, String cover,
			int pages, int edition) {
		super();
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
	};
	
	
}
