package com.barbershop.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.barbershop.service.ImpPromotionService;

@Controller
public class PromotionControllerMember {

	@Autowired
	private ImpPromotionService impPromotion;
	
	@GetMapping(value = "/member-promotion")
	public ModelAndView promotion() {
		ModelAndView mav = new ModelAndView("member/promotion");
		mav.addObject("listPromotion", impPromotion.findAll());
		return mav;
	}
}
