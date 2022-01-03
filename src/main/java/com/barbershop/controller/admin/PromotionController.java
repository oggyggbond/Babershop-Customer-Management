package com.barbershop.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.barbershop.entity.Promotion;
import com.barbershop.entity.ServiceEntity;
import com.barbershop.service.ImpPromotionService;
import com.barbershop.service.ImpServiceService;

@Controller
public class PromotionController {

	@Autowired
	private ImpPromotionService impPromotion;

	@Autowired
	private ImpServiceService impService;

	@GetMapping(value = "/admin-promotion")
	public ModelAndView promotion(@ModelAttribute("promotion") Promotion promotion,
			@ModelAttribute("service") ServiceEntity service) {
		ModelAndView mav = new ModelAndView("admin/promotion");
		mav.addObject("listPromotion", impPromotion.findAll());
		mav.addObject("listService", impService.findAll());
		return mav;
	}

	@PostMapping(value = "/admin-promotion")
	public String addPromotion(@ModelAttribute("promotion") Promotion promotion, BindingResult errors) {
			
			ServiceEntity service = new ServiceEntity();
			service.setMaDv(promotion.getTenDv().getMaDv());
			promotion.setTenDv(service);
			impPromotion.save(promotion);
		
		return "redirect:/admin-promotion";
	}

	@PostMapping(value = "/admin-edit-promotion")
	public String editPromotion(@ModelAttribute("promotion") Promotion promotion, BindingResult errors) {

		impPromotion.update(promotion);
		return "redirect:/admin-promotion";
	}

	@PostMapping(value = "/admin-delete-promotion")
	public String deletePromotion(@ModelAttribute("promotion") Promotion promotion, BindingResult errors) {

		impPromotion.delete(promotion);
		return "redirect:/admin-promotion";
	}
}
