package com.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ShippingDao;
import com.model.Cart;
import com.model.Shipping;


@Service

public class ShippingServiceImpl implements ShippingService {
	
	@Autowired
	ShippingDao shippingdao;

	@Transactional
	public void save(Shipping shipping) {
		
		shippingdao.save(shipping);
	
		
	}

	@Transactional
	public Shipping getbyid(int id) {
		
		return shippingdao.getbyid(id);
	
		 
	}
	}

	/*@Override
	public void savecart(Cart cart) {
		// TODO Auto-generated method stub///////////////change
		shippingdao.savecart(cart);
	}*/

