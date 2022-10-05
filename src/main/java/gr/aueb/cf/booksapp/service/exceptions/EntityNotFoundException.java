package gr.aueb.cf.booksapp.service.exceptions;

public class EntityNotFoundException extends Exception {
	private static final long serialVersionUID = 1L;
	
	public EntityNotFoundException(Class<?> clazz, Long id) {
		super("Entity " + clazz.getSimpleName() + " with id " + id + " was not found");
	}

}
