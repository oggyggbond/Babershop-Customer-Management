package com.barbershop.controller.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.barbershop.service.ImpPromotionService;

@Controller
public class PromotionControllerEmployee {

	@Autowired
	private ImpPromotionService impPromotion;
	
	@GetMapping(value = "/employee-promotion")
	public ModelAndView promotion() {
		ModelAndView mav = new ModelAndView("employee/promotion");
		mav.addObject("listPromotion", impPromotion.findAll());
		return mav;
	}
}
