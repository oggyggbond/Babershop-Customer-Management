package com.barbershop.controller.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.barbershop.entity.Customer;
import com.barbershop.entity.Employee;
import com.barbershop.entity.Position;
import com.barbershop.entity.TypeOfCustomer;
import com.barbershop.service.ImpCustomerService;
import com.barbershop.service.ImpEmployeeService;
import com.barbershop.service.ImpPositionService;
import com.barbershop.service.ImpTypeCustomerService;

@Controller
public class CustomerControllerEmployee {

	@Autowired
	private ImpTypeCustomerService impType;

	@Autowired
	private ImpCustomerService impCustomer;

	@GetMapping(value = "/employee-customer")
	public ModelAndView customer(@ModelAttribute("customer") Customer customer,
			@ModelAttribute("type") TypeOfCustomer type) {
		ModelAndView mav = new ModelAndView("employee/customer");
		mav.addObject("listCustomer", impCustomer.findAll());
		mav.addObject("listType", impType.findAll());
		return mav;
	}

	@PostMapping(value = "/employee-customer")
	public String addCustomer(Model model, @ModelAttribute("customer") Customer customer,
			@ModelAttribute("type") TypeOfCustomer type, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		}
		else {
			impCustomer.save(customer);
			model.addAttribute("message", "Success!");
		}
		
		return "redirect:/employee-customer";
	}

	@PostMapping(value = "/employee-edit-customer")
	public String editCustomer(Model model, @ModelAttribute("customer") Customer customer,
			@ModelAttribute("type") TypeOfCustomer type, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		}
		else {
			impCustomer.update(customer);
			model.addAttribute("message", "Success!");
		}
		
		return "redirect:/employee-customer";
	}
}
