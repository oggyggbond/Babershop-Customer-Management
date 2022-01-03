package com.barbershop.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.barbershop.entity.ServiceEntity;
import com.barbershop.service.ImpServiceService;

@Controller
public class ServiceController {

	@Autowired
	private ImpServiceService impService;

	@GetMapping(value = "/admin-service")
	public ModelAndView service(@ModelAttribute("service") ServiceEntity service) {
		ModelAndView mav = new ModelAndView("admin/service");
		mav.addObject("listService", impService.findAll());
		return mav;
	}

	@PostMapping(value = "/admin-service")
	public String addService(Model model, @ModelAttribute("service") ServiceEntity service, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impService.save(service);
			model.addAttribute("message", "Success!");
		}

		return "redirect:/admin-service";
	}

	@PostMapping(value = "/admin-edit-service")
	public String editService(Model model, @ModelAttribute("service") ServiceEntity service, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impService.update(service);
			model.addAttribute("message", "Success!");
		}

		return "redirect:/admin-service";
	}

	@PostMapping(value = "/admin-delete-service")
	public String deleteService(Model model, @ModelAttribute("service") ServiceEntity service, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impService.delete(service);
			model.addAttribute("message", "Success!");
		}

		return "redirect:/admin-service";
	}
}
