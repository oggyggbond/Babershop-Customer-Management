package com.barbershop.controller.admin;

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
public class EmployeeController {

	@Autowired
	private ImpEmployeeService impEmployee;

	@Autowired
	private ImpPositionService impPosition;

	@GetMapping(value = "/admin-employee")
	public ModelAndView employee(@ModelAttribute("employee") Employee employee,
			@ModelAttribute("position") Position position) {
		ModelAndView mav = new ModelAndView("admin/employee");
		mav.addObject("listEmployee", impEmployee.findAll());
		mav.addObject("listPosition", impPosition.findAll());
		return mav;
	}

	@GetMapping(value = "/admin-profile")
	public ModelAndView employeeProfile(@ModelAttribute("employee") Employee employee,
			@ModelAttribute("position") Position position) {
		ModelAndView mav = new ModelAndView("admin/profile");
		mav.addObject("listEmployee", impEmployee.findAll());
		mav.addObject("profile", impEmployee.findOneByEmail(SecurityUtil.getPrincipal().getEmail()));
		return mav;
	}

	@PostMapping(value = "/admin-employee")
	public String addEmployee(Model model, @ModelAttribute("employee") Employee employee, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impEmployee.save(employee);
			model.addAttribute("message", "Success!");
		}

		return "redirect:/admin-employee";
	}

	@PostMapping(value = "/admin-edit-employee")
	public String editEmployee(Model model, @ModelAttribute("employee") Employee employee, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impEmployee.update(employee);
			model.addAttribute("message", "Success!");
		}

		return "redirect:/admin-employee";
	}

	@PostMapping(value = "/admin-delete-employee")
	public String deleteEmployee(Model model, @ModelAttribute("employee") Employee employee, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impEmployee.delete(employee);
			model.addAttribute("message", "Success!");
		}

		return "redirect:/admin-employee";
	}

	@PostMapping(value = "/admin-position")
	public String addPosition(Model model, @ModelAttribute("position") Position position, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impPosition.save(position);
			model.addAttribute("message", "Success!");
		}

		return "redirect:/admin-employee";
	}

	@PostMapping(value = "/admin-edit-position")
	public String editPosition(Model model, @ModelAttribute("position") Position position, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impPosition.update(position);
			model.addAttribute("message", "Success!");
		}

		return "redirect:/admin-employee";
	}

	@PostMapping(value = "/admin-delete-position")
	public String deletePosition(Model model, @ModelAttribute("position") Position position, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impPosition.delete(position);
			model.addAttribute("message", "Success!");
		}

		return "redirect:/admin-employee";
	}
}
