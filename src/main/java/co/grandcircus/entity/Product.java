package co.grandcircus.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="products")
public class Product {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String name;
	private String description;
	private Integer quantity;
	private Double price;
	private String imagePath;
	
	
	//Constructor
	public Product() {
		super();
	}


	public Product(String name, String description, Integer quantity, Double price, String imagePath) {
		super();
		this.name = name;
		this.description = description;
		this.quantity = quantity;
		this.price = price;
		this.imagePath = imagePath;
	}


	public Long getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getDescription() {
		return description;
	}


	public Integer getQuantity() {
		return quantity;
	}


	public Double getPrice() {
		return price;
	}
	
	public String getimagePath() {
		return imagePath;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}


	public void setPrice(Double price) {
		this.price = price;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	

	
	
	
	
	
	
}

