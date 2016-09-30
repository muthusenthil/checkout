package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import org.springframework.stereotype.Component;



/*@Entity
@Component*/
public class PayOrder {
	
	@Id
	@GeneratedValue
	private int payid;
	@JoinColumn(name="cartId")
	private Cart cart;
	@JoinColumn(name="userName")
	private UserBean userBean;
	@JoinColumn(name="shippmentid")
	private Shipping ship;
	public int getPayid() {
		return payid;
	}
	public void setPayid(int payid) {
		this.payid = payid;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public UserBean getUserBean() {
		return userBean;
	}
	public void setUserBean(UserBean userBean) {
		this.userBean = userBean;
	}
	public Shipping getShip() {
		return ship;
	}
	public void setShip(Shipping ship) {
		this.ship = ship;
	}
	
	
	
	

}
