package com.coding.hotel.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.coding.hotel.models.Hotel;
import com.coding.hotel.models.Review;
import com.coding.hotel.models.User;
import com.coding.hotel.services.HotelService;
import com.coding.hotel.services.ReviewService;
import com.coding.hotel.services.UserService;

@Controller
public class HotelController {

	@Autowired
	private HotelService hService;

	@Autowired
	private UserService uService;

	@Autowired
	private ReviewService rService;

	@GetMapping("/")
	public String home(@ModelAttribute("PostAReview") Review review, Model model) {
		model.addAttribute("write", rService.getAll());
		return "/hotel/home.jsp";
	}

	@GetMapping("/room")
	public String room(@ModelAttribute("createARoom") Hotel hotel, HttpSession session, Model model) {
		if (session.getAttribute("userId") != null) {

			User user = uService.findById((Long) session.getAttribute("userId"));
			model.addAttribute("user", user);
			return "/hotel/room.jsp";
		} else {
			return "redirect:/";

		}

	}

	@PostMapping("/create")
	public String createRoom(@Valid @ModelAttribute("createARoom") Hotel hotel, BindingResult results,
			HttpSession session, Model model) {
		if (results.hasErrors()) {
			User user = uService.findById((Long) session.getAttribute("userId"));
			model.addAttribute("user", user);
			return "/hotel/room.jsp";
		} else {
			Hotel newHotel = hService.createARoom(hotel);
			return "redirect:/details/" + newHotel.getId();
		}
	}

	@GetMapping("/details/{id}")
	public String details(@PathVariable("id") Long id, Model model) {
		model.addAttribute("One", hService.getOne(id));
		model.addAttribute("GetUser", uService.findById(id));
		return "/user/details.jsp";
	}

	@GetMapping("/edit/{id}")
	public String edit( @ModelAttribute("Edit") Hotel hotel, @PathVariable("id") Long id, Model model) {

		model.addAttribute("EditOne", hService.getOne(id));

		model.addAttribute("GetUser", uService.findById(id));
//		model.addAttribute("One", hService.getOne(id));
		return "/hotel/edit.jsp";
	}

	@PutMapping("/update/{id}")
	public String update(@Valid @ModelAttribute("Edit") Hotel hotel, BindingResult results, @PathVariable("id") Long id,
			Model model) {
		if (results.hasErrors()) {
			model.addAttribute("EditOne", hService.getOne(id));
			return "/hotel/edit.jsp";
		} else {
			model.addAttribute("update", hService.update(hotel));
			model.addAttribute("One", hService.getOne(id));
			
			return "redirect:/details/{id}";
		}
	}

	@DeleteMapping("/delete/{id}")
	public String deleteRoom(@PathVariable("id") Long id) {
		hService.delete(id);
		return "redirect:/room";
	}

	@GetMapping("/myAccount")
	public String myAccount(Model model, HttpSession session) {
		if (session.getAttribute("userId") != null) {
			User user = uService.findById((Long) session.getAttribute("userId"));
			model.addAttribute("user", user);
			return "/user/myAccount.jsp";
		} else {
			return "redirect:/";
//		
		}
	}

	@GetMapping("/reviews")
	public String reviews(@ModelAttribute("PostAReview") Review review, Model model) {
		model.addAttribute("write", rService.getAll());
		return "/hotel/reviews.jsp";
	}

	@PostMapping("/createReviews")
	public String createReview(@Valid @ModelAttribute("PostAReview") Review review, BindingResult results,
			Model model) {
		if (results.hasErrors()) {
			model.addAttribute("write", rService.getAll());
			return "/hotel/home.jsp";
		}

		model.addAttribute("writeReview", rService.createReview(review));
		return "redirect:/";
	}

}
