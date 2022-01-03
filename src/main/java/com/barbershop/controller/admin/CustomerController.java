package com.barbershop.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.barbershop.entity.Customer;
import com.barbershop.entity.TypeOfCustomer;
import com.barbershop.service.ImpCustomerService;
import com.barbershop.service.ImpTypeCustomerService;

@Controller
public class CustomerController {

	
	@Autowired
	private ImpTypeCustomerService impType;
	
	@Autowired
	private ImpCustomerService impCustomer;
	
	@GetMapping(value = "/admin-customer")
	public ModelAndView customer(@ModelAttribute("customer") Customer customer,@ModelAttribute("type") TypeOfCustomer type) {
		ModelAndView mav = new ModelAndView("admin/customer");
		mav.addObject("listCustomer", impCustomer.findAll());
		mav.addObject("listType", impType.findAll());
		return mav;
	}
	
	@PostMapping(value = "/admin-customer")
	public String addCustomer(Model model, @ModelAttribute("customer") Customer customer, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		}
		else {
			impCustomer.save(customer);
			model.addAttribute("message", "Success!");
		}
		
		return "redirect:/admin-customer";
	}
	
	@PostMapping(value = "/admin-edit-customer")
	public String editCustomer(Model model, @ModelAttribute("customer") Customer customer, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		}
		else {
			impCustomer.update(customer);
			model.addAttribute("message", "Success!");
		}
		
		return "redirect:/admin-customer";
	}
	
	@PostMapping(value = "/admin-delete-customer")
	public String deleteCustomer(Model model, @ModelAttribute("customer") Customer customer, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		}
		else {
			impCustomer.delete(customer);
			model.addAttribute("message", "Success!");
		}
			
		return "redirect:/admin-customer";
	}
	
	@PostMapping(value = "/admin-type")
	public String addType(Model model, @ModelAttribute("type") TypeOfCustomer type, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		}
		else {
			impType.save(type);
			model.addAttribute("message", "Success!");
		}
		
		return "redirect:/admin-customer";
	}
	
	@PostMapping(value = "/admin-edit-type")
	public String editType(Model model, @ModelAttribute("position") TypeOfCustomer type, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		}
		else {
			impType.update(type);
			model.addAttribute("message", "Success!");
		}
		
		return "redirect:/admin-customer";
	}
	
	@PostMapping(value = "/admin-delete-type")
	public String deleteType(Model model, @ModelAttribute("type") TypeOfCustomer type, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		}
		else {
			impType.delete(type);
			model.addAttribute("message", "Success!");
		}
			
		return "redirect:/admin-customer";
	}
}
