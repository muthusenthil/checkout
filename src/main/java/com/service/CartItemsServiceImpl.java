package com.service;
	
	
	

	import java.util.List;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
	import org.springframework.transaction.annotation.Transactional;

	import com.dao.CartItemsDao;
import com.model.Cart;
import com.model.CartItems;
	@Service
	
	public class CartItemsServiceImpl implements CartItemsService {

		@Autowired
		private CartItemsDao cartDao;
		
		@Transactional
		public void add(CartItems cart) {
			System.out.println("adding in cart service");
			cartDao.add(cart);
			
		}

		@Transactional
		public List/*<CartItems>*/ getAllProduct() {/////change
			return cartDao.getAllProduct();
		}

		@Transactional
		public void update(CartItems cart) {
			cartDao.update(cart);
		}

		@Transactional
		public CartItems getProductById(int id) {
			
			return cartDao.getProductById(id);
		}

		@Transactional
		public void delete(int id) {
			 cartDao.delete(id);
		}

		@Override
		public void save(Cart cart) {
			cartDao.save(cart);
			// TODO Auto-generated method stub
			
		}

	}

	

