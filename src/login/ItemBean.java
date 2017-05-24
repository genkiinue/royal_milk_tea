package login;

public class ItemBean {
	private String item_id;
	private String item_name;
	private String price;
	private int quantity;


	public int getQuantity() {
		return quantity;
	}
	public void getQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getItem_id() {
		System.out.println("item_id9:"+item_id);
		return item_id;
	}
	public void getItem_id(String item_id) {
		this.item_id = item_id;
		System.out.println("item_id5:"+item_id);
	}

	public String getItem_name() {
		return item_name;
	}
	public void getItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getPrice() {
		return price;
	}
	public void getPrice(String price) {
		this.price = price;
	}

}
