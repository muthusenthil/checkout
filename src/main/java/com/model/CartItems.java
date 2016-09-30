/*package com.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;
@Entity
public class CartItems {


		 	@Id
		    @GeneratedValue
		    private int cartitemId;

		    @ManyToOne
		    @JoinColumn(name ="cartId")
		    @JsonIgnore
		    private Cart cart;

		    @ManyToOne
		    @JoinColumn(name = "Id")
		    private ProductModel productmodel;

		    private int quantity;
		    private double totalPrice;
			public int getCartItemId() {
				return cartitemId;
			}
			public void setCartItemId(int cartitemId) {
				this.cartitemId = cartitemId;
			}
			public Cart getCart() {
				return cart;
			}
			public void setCart(Cart cart) {
				this.cart = cart;
			}
			public ProductModel getProduct() {
				return productmodel;
			}
			public void setProduct(ProductModel product) {
				this.productmodel = product;
			}
			public int getQuantity() {
				return quantity;
			}
			public void setQuantity(int quantity) {
				this.quantity = quantity;
			}
			public double getTotalPrice() {
				return totalPrice;
			}
			public void setTotalPrice(double totalPrice) {
				this.totalPrice = totalPrice;
			}
			
			public List<CartItems> getCartItems()
			{
				return null;
			}

	}*/


package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="cartitems")
public class CartItems {
	
	@Id
	@GeneratedValue
	private int cartItemId;
    
	@ManyToOne
	@JoinColumn(name="cartId")
	@JsonIgnore
	private Cart cart;
	
	@ManyToOne
	@JoinColumn(name="Id")
	private ProductModel productmodel;
	
	private int quantity;
	private double totalPrice;
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	public ProductModel getProductmodel() {
		return productmodel;
	}
	public void setProductmodel(ProductModel productmodel) {
		this.productmodel = productmodel;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	

}




