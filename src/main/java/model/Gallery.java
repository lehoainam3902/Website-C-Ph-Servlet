package model;

public class Gallery {
	private int id;
	private String thumbnail;
	private int product_id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public Gallery(int id, String thumbnail, int product_id) {
		super();
		this.id = id;
		this.thumbnail = thumbnail;
		this.product_id = product_id;
	}

	public Gallery() {
		super();
		// TODO Auto-generated constructor stub
	}

}
