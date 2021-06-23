package io.rnganga.productsandcategories.services;

import java.util.List;

import org.springframework.stereotype.Service;

import io.rnganga.productsandcategories.models.CategoryProduct;
import io.rnganga.productsandcategories.repositories.CategoryProductRepository;

@Service
public class CategoryProductService {
	private final CategoryProductRepository categoryProductRepository;
	
	public CategoryProductService(CategoryProductRepository categoryProductRepository) {
		this.categoryProductRepository = categoryProductRepository;
	}
	
	public List<CategoryProduct> findAll() {
		return categoryProductRepository.findAll();
	}
	
	public CategoryProduct create(CategoryProduct categoryProduct) {
		return categoryProductRepository.save(categoryProduct);
	}
}
