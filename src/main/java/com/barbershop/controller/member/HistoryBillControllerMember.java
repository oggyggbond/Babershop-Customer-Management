package com.barbershop.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.barbershop.entity.ServiceEntity;
import com.barbershop.service.ImpBillDtailsService;
import com.barbershop.service.ImpBillService;
import com.barbershop.service.ImpCustomerService;
import com.barbershop.utils.SecurityUtil;

@Controller
public class HistoryBillControllerMember {

	@Autowired
	private ImpBillDtailsService impBillDetail;
	
	@Autowired
	private ImpBillService impBill;
	
	@Autowired
	private ImpCustomerService impCustom;
	
	@GetMapping(value = "/member-history")
	public ModelAndView bill(@ModelAttribute("service") ServiceEntity service) {
		ModelAndView mav = new ModelAndView("member/bill");
		mav.addObject("listBill", impBillDetail.findAllBillByEmail(SecurityUtil.getPrincipal().getEmail()));
		
		return mav;
	}
}
