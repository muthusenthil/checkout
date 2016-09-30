package com.service;

import java.util.List;

import com.model.ProductModel;

public interface ProductService {

	
	public void add(ProductModel productmodel);
	public void edit(ProductModel productmodel);
	public void delete(int getId);
	public ProductModel getProductModel(int getId);
	public List getAllProductModel();
	public List getALLonear();

	public List getALLoverear();
	

	public List getALLbluetooth();
	

	public List getALLearbud();
}
	/*
	public Object listProducts();
	public Object listBrands();
	public void addProduct(ProductModel productDetails);
	public void removeProduct(int product_id);
	public ProductModel getProductById(int product_id);
	public void updateProduct(ProductModel productDetails);
	
}


/*package com.service;

import java.util.List;

import com.model.ProductDetails;

public interface ProductService {
	
	public void addProduct(ProductDetails productDetails);
	public void updateProduct(ProductDetails productDetails);
	public List<ProductDetails> listProducts();
	public ProductDetails getProductById(int productid);
	public void removeProduct(int productid);
}*/




