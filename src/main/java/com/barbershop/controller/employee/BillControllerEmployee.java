package com.barbershop.controller.employee;

import javax.transaction.Transactional;

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
import com.barbershop.entity.BillDetails;
import com.barbershop.entity.BillDetails2;
import com.barbershop.entity.Customer;
import com.barbershop.entity.Employee;
import com.barbershop.entity.Promotion;
import com.barbershop.entity.ServiceEntity;
import com.barbershop.repository.BillDetailsRepository;
import com.barbershop.repository.BillRepository;
import com.barbershop.repository.ServiceRepository;
import com.barbershop.service.ImpBillService;
import com.barbershop.service.ImpCustomerService;
import com.barbershop.service.ImpEmployeeService;
import com.barbershop.service.ImpPromotionService;
import com.barbershop.service.ImpServiceService;
import com.barbershop.utils.SecurityUtil;

@Transactional
@Controller
public class BillControllerEmployee {

	@Autowired
	private ImpBillService impBill;

	@Autowired
	private ImpServiceService impService;

	@Autowired
	private ServiceRepository serRepo;

	@Autowired
	private ImpEmployeeService impEmployee;

	@Autowired
	private BillRepository billRepo;

	@Autowired
	private ImpCustomerService impCus;

	@Autowired
	private BillDetailsRepository billDetailRepo;

	@Autowired
	private ImpBillService imBill;

	@Autowired
	private ImpPromotionService impPromotion;

	@GetMapping(value = "/employee-bill")
	public ModelAndView employeeBill(@ModelAttribute("billDetails2") BillDetails2 billDetails2,
			@RequestParam(value = "id", required = false) Long id) {
		ModelAndView mav = new ModelAndView("employee/bill");
		mav.addObject("listService", impService.findAll());
		mav.addObject("listBill", impBill.findAll());
		return mav;
	}

	@PostMapping(value = "/employee-bill")
	public String addBill(Model model, @ModelAttribute("billDetails2") BillDetails2 billDetails2,
			@RequestParam(value = "id", required = false) Long id, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			Employee em = impEmployee.findOneByEmail(SecurityUtil.getPrincipal().getEmail());// id em
			Customer cus = impCus.findOneByEmail(billDetails2.getEmailCus());
			ServiceEntity service = serRepo.findOne(Integer.parseInt(billDetails2.getTendv())); // id service
			Promotion promotion = impPromotion.findByMaDv(service.getMaDv(),
					java.time.LocalDate.now().toString() + " 00:00:00.000",
					java.time.LocalDate.now().toString() + " 00:00:00.000");
			Bill billAdd = new Bill();
			billAdd.setHoTenNv(em);
			long millis = System.currentTimeMillis();
			java.sql.Date date = new java.sql.Date(millis);
			billAdd.setNgay(date);
			if (promotion != null) {
				billAdd.setTongTien(
						service.getGia() - (service.getGia() * Integer.parseInt(promotion.getGiamGia()) / 100));
			} else {
				billAdd.setTongTien(service.getGia());
			}
			if (cus != null) {
				billAdd.setHoTenKh(cus);
				billRepo.save(billAdd);
			} else {
				billRepo.save(billAdd);
			}
			Bill bi = billRepo.findLastId();
			BillDetails bdt = new BillDetails();
			bdt.setTenDv(service);
			bdt.setIdBill(bi);
			bdt.setSoLuong(1);
			BillDetails billdt = billDetailRepo.save(bdt);
			model.addAttribute("message", "Success!");
		}

		return "redirect:/employee-bill";
	}
}
