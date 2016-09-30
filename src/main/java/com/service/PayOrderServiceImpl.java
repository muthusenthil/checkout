package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.PayOrderDao;

@Service
public class PayOrderServiceImpl implements PayOrderService  {
	@Autowired
	PayOrderDao payorderdao;

	@Transactional
	public void add(String username) {
		payorderdao.addcart(username);
		
		
		
	}

	@Transactional
	public void order(String username) {
		payorderdao.order(username);
	
		
	}

}
