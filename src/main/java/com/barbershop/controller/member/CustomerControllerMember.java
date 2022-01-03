package com.barbershop.controller.member;

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
import com.barbershop.utils.SecurityUtil;

@Controller
public class CustomerControllerMember {

	@Autowired
	private ImpTypeCustomerService impType;

	@Autowired
	private ImpCustomerService impCustomer;

	@GetMapping(value = "/member-customer")
	public ModelAndView customer(@ModelAttribute("customer") Customer customer,
			@ModelAttribute("type") TypeOfCustomer type) {
		ModelAndView mav = new ModelAndView("member/customer");
		mav.addObject("listCustomer", impCustomer.findAll());
		mav.addObject("listType", impType.findAll());
		return mav;
	}

	@GetMapping(value = "/member-profile")
	public ModelAndView customerProfile(@ModelAttribute("customer") Customer customer) {
		ModelAndView mav = new ModelAndView("member/profile");
		mav.addObject("customerProfile", impCustomer.findOneByEmail(SecurityUtil.getPrincipal().getEmail()));
		return mav;
	}

	@PostMapping(value = "/member-edit-profile")
	public String customerEditProfile(Model model, @ModelAttribute("customer") Customer customer,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			TypeOfCustomer type = new TypeOfCustomer();
			type.setMaLoai(customer.getLoaiKh().getMaLoai());
			customer.setLoaiKh(type);
			impCustomer.save(customer);
			// mav.addObject("customerProfile",
			// impCustomer.findOneByEmail(SecurityUtil.getPrincipal().getEmail()));
		}

		return "redirect:/member-profile";
	}
}
