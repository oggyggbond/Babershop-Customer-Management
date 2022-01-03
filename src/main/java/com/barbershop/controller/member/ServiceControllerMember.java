package com.barbershop.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.barbershop.entity.ServiceEntity;
import com.barbershop.service.ImpServiceService;

@Controller
public class ServiceControllerMember {

	@Autowired
	private ImpServiceService impService;
	
	@GetMapping(value = "/member-service")
	public ModelAndView service(@ModelAttribute("service") ServiceEntity service) {
		ModelAndView mav = new ModelAndView("member/service");
		mav.addObject("listService", impService.findAll());
		return mav;
	}
}
