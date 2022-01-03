package com.barbershop.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.barbershop.entity.Bill;
import com.barbershop.service.ImpBillService;
import com.barbershop.service.ImpCustomerService;
import com.barbershop.service.ImpEmployeeService;
import com.barbershop.service.ImpServiceService;

@Controller
public class BillController {

	@Autowired
	private ImpBillService impBill;

	@Autowired
	private ImpEmployeeService impEmployee;

	@Autowired
	private ImpCustomerService impCustomer;

	@Autowired
	private ImpServiceService impService;

	@GetMapping(value = "/admin-bill")
	public ModelAndView adminAccount(@ModelAttribute("bill") Bill bill,
			@RequestParam(value = "id", required = false) Long id) {
		ModelAndView mav = new ModelAndView("admin/bill");

		mav.addObject("listBill", impBill.findAll());
		mav.addObject("listService", impService.findAll());
		mav.addObject("listEmployee", impEmployee.findAll());
		mav.addObject("listCustomer", impCustomer.findAll());
		return mav;
	}

	/*
	 * @PostMapping(value = "/admin-bill") public String
	 * addBill(@ModelAttribute("bill") Bill bill, BindingResult errors) {
	 * 
	 * impBill.save(bill); return "redirect:/admin-bill"; }
	 */

	@PostMapping(value = "/admin-edit-bill")
	public String editBill(Model model, @ModelAttribute("bill") Bill bill, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impBill.update(bill);
			model.addAttribute("message", "Success!");
		}
		return "redirect:/admin-bill";
	}

	@PostMapping(value = "/admin-delete-bill")
	public String deleteBill(Model model, @ModelAttribute("bill") Bill bill, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impBill.delete(bill);
			model.addAttribute("message", "Success!");
		}

		return "redirect:/admin-bill";
	}
}
