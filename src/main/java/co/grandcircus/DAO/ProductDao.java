package co.grandcircus.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.beans.Product;

@Repository
public class ProductDao {

	@Autowired
	private JdbcTemplate jdbc;
	
	public List<Product> findAll() {
		// BeanPropertyRowMapper uses the rows from the SQL result create
		// new Room objects and fill in the values by calling the setters.
		// Use .query for SQL SELECT statements.
		String sql = "SELECT * FROM products";
		
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Product.class));
	}
	

	public boolean addProduct(Product product) {
		boolean success = true;// change this to false if using checkemailexists
		// if (!checkEmailExists())
		String sql = "INSERT INTO `coffeeshop_db`.`products` "
				+ "(`name`, `price`, `description`, `quantity`) VALUES (?, ?, ?, ?)";
		jdbc.update(sql, product.getName(), product.getPrice(), product.getDescription(), product.getQuantity());
		return success;
	}

	public Product findById(Long id) {
		String sql = "SELECT * FROM products WHERE id = ?";
		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(Product.class), id);
	}
	
}
