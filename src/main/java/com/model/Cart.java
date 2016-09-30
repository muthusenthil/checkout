/*package com.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@Component
public class Cart {
	@Id
    @GeneratedValue
    private int cartId;

    @OneToMany(mappedBy = "cart", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<CartItems> cartItems;

    @OneToOne
    @JoinColumn(name = "userName")
    @JsonIgnore
    private UserBean userBean;

    private double grandTotal;
    
    private int quantity;
    

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public List<CartItems> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<CartItems> cartItems) {
		this.cartItems = cartItems;
	}

	

	public UserBean getUserBean() {
		return userBean;
	}

	public void setUserDetails(UserBean userBean) {
		this.userBean = userBean;
	}

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	
	
	
	
}*/

package com.model;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@Table(name="cart")
public class Cart {
	@Id
    @GeneratedValue
    private int cartId;
	
	 /*@OneToMany(mappedBy = "cart", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	    private List<CartItems> cartItems;*/
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn
	private CartItems cartitems;
	
	
	

   /* @ManyToOne
    private ProductModel product;*/////////////change
    
    public CartItems getCartitems() {
		return cartitems;
	}

	public void setCartitems(CartItems cartitems) {
		this.cartitems = cartitems;
	}

	@ManyToOne(fetch=FetchType.EAGER,cascade = CascadeType.ALL, targetEntity = Shipping.class)
    private Shipping shipping;
    
    

    public Shipping getShipping() {
		return shipping;
	}

	public void setShipping(Shipping shipping) {
		this.shipping = shipping;
	}

	@OneToOne
    @JoinColumn(name = "userName")
    @JsonIgnore
    private UserBean userBean;

    private double grandTotal;

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	private double totalprice;

	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	private int quantity; 


	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	/*public ProductModel getProduct() {
		return product;
	}                                          ///////////change

	public void setProduct(ProductModel product) {
		this.product = product;
	}*/

	public UserBean getUserBean() {
		return userBean;
	}

	public void setUserBean(UserBean userBean) {
		this.userBean = userBean;
	}

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}
	
}

