package co.grandcircus.Repos;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import co.grandcircus.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

	// We can add specific query methods.
	// Simply by the method name, Spring knows what JPQL query to use.
	List<User> findByFirstNameContainingIgnoreCase(String keyword);	
	List<User> findByFirstNameContainingIgnoreCaseOrderByFirstName(String keyword);
	

	
	
	// We can also specify query methods manually with HQL.
//	@Query("SELECT DISTINCT category FROM Food")
//	Set<String> findAllCategories();
}
