/*package com.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.PayOrderService;

@Controller
public class PayOrderController {
	@Autowired
	private PayOrderService payorderservice;
	
	private String username;
	@ModelAttribute
	@RequestMapping("/success")
	public String getuserdata(HttpServletRequest hsr){
		
		Authentication authn = SecurityContextHolder.getContext().getAuthentication();
	      String name = authn.getName(); 
	      HttpSession hs=hsr.getSession();
	      hs.setAttribute("m", name);
	      username=(String)hs.getAttribute("m");
	      System.out.println((String)hs.getAttribute("m"));
	      payorderservice.add(username);
	      payorderservice.order(username);
	      return"success";
		
	}
	

}*/
