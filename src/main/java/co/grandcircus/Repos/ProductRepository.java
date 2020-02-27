package co.grandcircus.Repos;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import co.grandcircus.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {

	// We can add specific query methods.
	// Simply by the method name, Spring knows what JPQL query to use.
//	List<Product> findByNameContainingIgnoreCase(String keyword);
//	List<Product> findByPrice(Double price);
//	List<Product> orderByName(String keyword);
//	List<Product> orderByPrice(Double price);
//	List<Product> findByDescriptionContainingIgnoreCase(String keyword);

	
	
	// We can also specify query methods manually with HQL.
//	@Query("SELECT DISTINCT category FROM Food")
//	Set<String> findAllCategories();
}
