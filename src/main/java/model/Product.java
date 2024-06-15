package model;

public class Product {
	private int id;
	private String name;
	private double price;
	private double discount;
	private String thumbnail;
	private String description;
	private int category_id;
	private String created_at;
	private String updated_at;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public String getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
	}

	public Product(int id, String name, double price, double discount, String thumbnail, String description,
			int category_id, String created_at, String updated_at) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.discount = discount;
		this.thumbnail = thumbnail;
		this.description = description;
		this.category_id = category_id;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}

	public Product() {
		super();
	}

}
