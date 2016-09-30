
package com.controller;

	import java.util.List;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.ui.ModelMap;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;
	import com.model.CartItems;
	import com.model.ProductModel;
	import com.service.CartItemsService;
	import com.service.ProductService;

	@Controller
	public class CartController {
		
		@Autowired
		private CartItemsService cartService;                         //object creation
		@Autowired
		private ProductService productService;
		
	    @RequestMapping("/addtocart/{id}")                           //mapping id to get flow of addtocart
	   public String addtocart(@PathVariable("id")int id)
		{
			System.out.println("Entered cart adding controller");
			
			CartItems cart=new CartItems();
			ProductModel productModel=productService.getProductModel(id);
			List<CartItems> mycart =cartService.getAllProduct();
			for(int i=0;i<mycart.size();i++)
			{
				
				int tmid=mycart.get(i).getProductmodel().getId();
				if(tmid==id)
				{	System.out.println("inside if loop");
					int quantity=mycart.get(i).getQuantity()+1;
					mycart.get(i).setQuantity(quantity);
					double price=productModel.getPrice()*quantity;
					mycart.get(i).setTotalPrice(price);
				    cartService.update(mycart.get(i));
				 return "cate";
					
				}
			}
			
			cart.setQuantity(1);
			System.out.println("hyy");
			cart.setTotalPrice(productModel.getPrice());
			cart.setProductmodel(productModel);
		    cartService.add(cart);
		    return "cate";
		}
		
		@RequestMapping("delete/cart/{id}")
		public String delcart(@PathVariable("id")int id,ModelMap model)
		{	
			cartService.delete(id);
			return"redirect:/cart";
		}
		
		@RequestMapping("/cart")
		public String getcart(Model map )
		{
			CartItems cart=new CartItems();
			List<CartItems>mycart=cartService.getAllProduct();
			System.out.println("inside cart views");
			map.addAttribute("cart", cart);
			System.out.println("hoiii");
			map.addAttribute("cartList", cartService.getAllProduct());
			return "cartview";
		}
		
	}