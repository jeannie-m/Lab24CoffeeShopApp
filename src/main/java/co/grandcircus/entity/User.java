package co.grandcircus.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private String phone;
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	//Constructor
	public User(String firstName, String lastName, String email, String password, String phone) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.phone = phone;
	}


	//GS
	public String getPhone() {
		return phone;
	}
	
	public Long getId() {
		return id;
	}


	public String getFirstName() {
		return firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public String getEmail() {
		return email;
	}


	public String getPassword() {
		return password;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}

