package com.dao;



import java.util.List;

import com.model.Cart;
import com.model.CartItems;

public interface CartItemsDao {
	



		
		public void add(CartItems CartItems);
		public List<CartItems> getAllProduct(); 
		public void update(CartItems CartItems);
		public CartItems getProductById(int id);
		public void delete(int id);
		public void save(Cart cart);
			
		


	}



