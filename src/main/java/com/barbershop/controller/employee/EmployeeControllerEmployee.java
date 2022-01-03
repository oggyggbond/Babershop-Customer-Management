package com.barbershop.controller.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.barbershop.entity.Employee;
import com.barbershop.entity.Position;
import com.barbershop.service.ImpEmployeeService;
import com.barbershop.service.ImpPositionService;
import com.barbershop.utils.SecurityUtil;

@Controller
public class EmployeeControllerEmployee {

	@Autowired
	private ImpEmployeeService impEmployee;

	@Autowired
	private ImpPositionService impPosition;

	@GetMapping(value = "/employee-employee")
	public ModelAndView employee(@ModelAttribute("employee") Employee employee,
			@ModelAttribute("position") Position position) {
		ModelAndView mav = new ModelAndView("employee/employee");
		mav.addObject("listEmployee", impEmployee.findAll());
		mav.addObject("listPosition", impPosition.findAll());
		return mav;
	}

	@GetMapping(value = "/employee-profile")
	public ModelAndView employeeProfile(@ModelAttribute("employee") Employee employee) {
		ModelAndView mav = new ModelAndView("employee/profile");
		mav.addObject("employeeProfile", impEmployee.findOneByEmail(SecurityUtil.getPrincipal().getEmail()));
		
		return mav;
	}

	@PostMapping(value = "/employee-edit-profile")
	public String employeeEditProfile(Model model, @ModelAttribute("employee") Employee employee, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			model.addAttribute("message", "Fail!");
		}
		else {
			Position position = new Position();
			position.setMaCv(employee.getChucVu().getMaCv());
			employee.setChucVu(position);
			impEmployee.save(employee);
			model.addAttribute("message", "Success!");
		}
		
		return "redirect:/employee-profile";
	}
}
