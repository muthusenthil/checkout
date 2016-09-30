package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Cart;
import com.model.CartItems;
import com.model.PayOrder;
import com.model.Shipping;
import com.model.UserBean;
import com.service.ShippingService;

@Repository
@Transactional
public class PayOrderDaoImpl implements PayOrderDao {

	
	@Autowired(required=true)
	SessionFactory sf;
	@Autowired
	CartItemsDao cartitemsdao;
	@Autowired
	ShippingService shiper;
	@Override
	public void addcart(String username) {
		
		Cart cart=new Cart();
		UserBean userBean=new UserBean();
		userBean.setEmail(username);
		cart.setUserBean(userBean);
		
		List<CartItems> cil=cartitemsdao.getAllProduct();
		
		
		int tot=0;
		for(int i=0;i<cil.size();i++)
		{
			tot=(int) (tot+(cil.get(i).getTotalPrice()));
		}
		cart.setGrandTotal(tot);
		sf.getCurrentSession().save(cart);
		
	}

	@Override
	public void order(String username) {
		
		PayOrder payorder=new PayOrder();
		
		Cart cc=new Cart();
		
		UserBean userBean=new UserBean();
		userBean.setEmail(username);
		payorder.setUserBean(userBean);
		
		
		List<Cart> ca=sf.getCurrentSession().createQuery("from Cart where userName='"+username+"'").list();
		cc.setCartId(ca.get(0).getCartId());
		payorder.setCart(cc);
		
		
		List<Shipping> lsh=sf.getCurrentSession().createQuery("from Shipping where userName='"+username+"'").list();
		payorder.setShip(lsh.get(lsh.size()-1));
		Session session=sf.getCurrentSession();
		session.saveOrUpdate(payorder);
		
		
	}

}