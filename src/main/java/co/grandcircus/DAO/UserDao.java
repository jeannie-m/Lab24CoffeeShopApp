package co.grandcircus.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.beans.User;

@Repository
public class UserDao {
	
	@Autowired
	private JdbcTemplate jdbc;
	
	public boolean addUser(User user) {
		boolean success = true;//change this to false if using checkemailexists
		//if (!checkEmailExists())
		String sql = "INSERT INTO `coffeeshop_db`.`users` "
				+ "(`first_name`, `last_name`, `email`, `password`, phone) VALUES (?, ?, ?, ?,?)";
		
		jdbc.update(sql, user.getFirstName(), user.getLastName(), user.getEmail(), user.getPassword(), user.getPhone());
		
		return success;
	}
	
	public User findById(Long id) {
		String sql = "SELECT * FROM users WHERE id = ?";
		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), id);
	}
}
