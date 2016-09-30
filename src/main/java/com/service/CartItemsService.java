package com.service;


import java.util.List;

import com.model.Cart;
import com.model.CartItems;
public interface CartItemsService {

		public void add(CartItems cart);
		public List/*<CartItems>*/ getAllProduct();
		public CartItems getProductById(int id);
		public void update(CartItems cart);
		public void delete(int id);
		public void save(Cart cart);
		
	}


