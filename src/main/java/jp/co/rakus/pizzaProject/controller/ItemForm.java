package jp.co.rakus.pizzaProject.controller;

public class ItemForm {
	/**商品ID*/
	private String id;
	/**商品名*/
	private String name;
	/**商品説明*/
	private String description;
	/**Mサイズ価格*/
	private String priceM;
	/**Lサイズ価格*/
	private String priceL;
	/**画像のパス*/
	private String imagePath;
	/**販売フラグ*/
	private boolean deleted;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPriceM() {
		return priceM;
	}
	public void setPriceM(String priceM) {
		this.priceM = priceM;
	}
	public String getPriceL() {
		return priceL;
	}
	public void setPriceL(String priceL) {
		this.priceL = priceL;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public boolean isDeleted() {
		return deleted;
	}
	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}
	
	
}