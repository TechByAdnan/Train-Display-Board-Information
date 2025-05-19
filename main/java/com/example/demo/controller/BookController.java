package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookController {
	@GetMapping("/book")
	public String getBookData(Model model) {
		Book bookobj = new Book(101,"Java",500.00);
		model.addAttribute("book",bookobj);
		return "book";
	}

}
