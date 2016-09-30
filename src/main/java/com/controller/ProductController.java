package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.model.ProductModel;
import com.service.ProductService;


@Controller
public class ProductController {
  @Autowired
	private ServletContext servletContext;
	@ModelAttribute("ob")
	public ProductModel construct(){
		return new ProductModel();
	}
	
	/*@RequestMapping("/prd")
	public @ResponseBody List<ProductModel>
	getAllProductModel(){
		List<ProductModel> l=null;
		try{
			l=productservice.getAllProductModel();
			}
		catch(Exception es){
			l=null;
		}
		return l;
	}
	*/
	
	
	@Autowired(required=true)
	private ProductService productservice;
	
	@RequestMapping(value="/next"/*{"/admin/next","/user/next"}*/)
	public String cat(Map<String, Object>map)
	{
		ProductModel productmodelResult = new ProductModel();
		 map.put("productmodel",productmodelResult);
		    map.put("productmodelList", productservice.getAllProductModel());
		return "cate";
	}
	
	
	
	
		

@RequestMapping(value={"/admin/productshow","/user/productshow"})
	public String setupForm(){
		return "productshow";
	}

@RequestMapping("/delete/{id}")
public String delete(@PathVariable("id")int id){
	
	productservice.delete(id);
	return"redirect:/productshow";
}
	
	@RequestMapping(value={"/edit/productmodel.do","/admin/productmodel.do","/edit/productmodel.do"}, method=RequestMethod.POST)
	public String doActions(@ModelAttribute("ob") ProductModel productmodel, BindingResult result, @RequestParam String action, Map<String, Object>map){
	    if(result.hasErrors())
	    {
	    	return "productshow";
	    
	    }else{
		ProductModel productmodelResult = new ProductModel();
	    
	    switch(action.toLowerCase()){
	    case "add":
	    	
	    MultipartFile file = productmodel.getFilename();

			if (!file.isEmpty()) {

				try {

					// Creating the directory to store file

					
					/*String rootPath = "D:/ Workspace/ SHOPPINGCART/MusicWorld/src/main/webapp/resources/";*/
					File rootPath=new File(servletContext.getRealPath("/"));
					File dir = new File(rootPath + File.separator + "resources/admin/upload");
					if (!dir.exists())
						dir.mkdirs();
					

					// Create the file on server
					File serverFile = new File(dir + File.separator + productmodel.getImgname() + ".jpg");
					System.out.println(serverFile);
					file.transferTo(serverFile);

				} catch (Exception e) {

				}

			}
	    
	    
	    	productservice.add(productmodel);
	    	productmodelResult = productmodel;
	    	
	    	break;
	    	
	    case "edit":
	    	productservice.edit(productmodel);
	    	productmodelResult = productmodel;
	    	break;
	    	
	    case "delete":
	    	productservice.delete(productmodel.getId());
	    	productmodelResult = new ProductModel();
	    	break;
	    	
	    case "search":
	    	ProductModel searchedProductModel = productservice.getProductModel(productmodel.getId());
	    	productmodelResult = searchedProductModel!=null ? searchedProductModel : new ProductModel();
	    	break;
	    }
	    map.put("productmodel",productmodelResult);
	    map.put("productmodelList", productservice.getAllProductModel());
	    
		return "cate";
	}
}
}
