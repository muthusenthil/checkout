package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Cart;
import com.model.Shipping;

@Repository
public class ShippingDaoImpl implements ShippingDao{
	
	@Autowired
	SessionFactory sf;
	
	

	@Override
	public void save(Shipping shipping) {
		sf.getCurrentSession().saveOrUpdate(shipping);
		
		
	}

	@Override
	public Shipping getbyid(int id) {
		
		return (Shipping)sf.getCurrentSession().get(Shipping.class,id);
	}
	}


	/*@Override
	public void savecart(Cart cart) {
		// TODO Auto-generated method stub
		sf.getCurrentSession().save(cart);///////////////change
	}
	*/
	


