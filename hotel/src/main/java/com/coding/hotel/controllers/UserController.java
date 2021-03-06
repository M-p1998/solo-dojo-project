package com.coding.hotel.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.coding.hotel.models.User;
import com.coding.hotel.services.UserService;
import com.coding.hotel.validators.UserValidator;

@Controller
public class UserController {
	private boolean login_error = false;
	
	@Autowired
	private UserService uService;
	
	@Autowired
	private UserValidator uValidator;
	
	
	@GetMapping("/registration")
	public String register(@ModelAttribute("register") User user) {
		return "/user/registration.jsp";
	}
	
	
	
	@PostMapping("/registration")
	public String registerUser(@Valid @ModelAttribute("register") User user, BindingResult results, HttpSession session) {
		uValidator.validate(user, results);
		if(results.hasErrors()) {
			return "/user/registration.jsp";
		}else {
			User newUser = uService.registerUser(user);
			session.setAttribute("userId", newUser.getId());
			return "redirect:/room";
		}
		
	}
	
	@GetMapping("/login")
	public String login(Model model) {
	model.addAttribute("login", login_error);
		return "/user/login.jsp";
	}
	
	@PostMapping("/login")
	public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session, RedirectAttributes redirectAttr) {
		if(uService.authenticateUser(email, password)) {
			User user = uService.findByEmail(email);
			session.setAttribute("userId", user.getId());
			return "redirect:/room";
			
		}else {
			redirectAttr.addFlashAttribute("error", "Invalid email/password");
			login_error = true;
			return "redirect:/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	
	}
}
