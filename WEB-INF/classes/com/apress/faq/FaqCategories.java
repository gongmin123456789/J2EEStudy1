package com.apress.faq;

public class FaqCategories {
	private String[] categories = new String[3];
	
	public FaqCategories() {
		categories[0] = "Dates and Times";
		categories[1] = "Strings and StringBuffers";
		categories[2] = "Threading";
	}
	
	public String[] getAllCategories() {
		return categories;
	}
}