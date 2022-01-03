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

import com.barbershop.entity.Account;
import com.barbershop.entity.Role;
import com.barbershop.service.ImpAccountService;
import com.barbershop.service.ImpRoleService;

@Controller(value = "controllerOfAdmin")
public class AccountController {

	@Autowired
	private ImpAccountService impAccount;

	@Autowired
	private ImpRoleService impRole;

	@GetMapping(value = "/admin-account")
	public ModelAndView adminAccount(@ModelAttribute("account") Account account, @ModelAttribute("role") Role role,
			@RequestParam(value = "id", required = false) Long id) {
		ModelAndView mav = new ModelAndView("admin/account");

		mav.addObject("listAccount", impAccount.findAll());
		mav.addObject("listRole", impRole.findAll());
		return mav;
	}

	@PostMapping(value = "/admin-account")
	public String addAccount(Model model, @ModelAttribute("account") Account account, BindingResult errors) {

		if (impAccount.findOneByEmail(account.getEmail()) != null) {
			model.addAttribute("message", "Fail!");

		} else {
			Role quyen = new Role();
			quyen.setMaQ(account.getMaQuyen().getMaQ());

			account.setMaQuyen(quyen);
			impAccount.register(account);
			model.addAttribute("message", "Success!");
		}
		return "redirect:/admin-account";
	}

	@PostMapping(value = "/admin-edit-account")
	public String editAccount(Model model, @ModelAttribute("account") Account account, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impAccount.update(account);
			model.addAttribute("message", "Success!");
		}
		return "redirect:/admin-account";
	}

	@PostMapping(value = "/admin-delete-account")
	public String deleteAccount(Model model, @ModelAttribute("account") Account account, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impAccount.delete(account);
			model.addAttribute("message", "Success!");
		}
		return "redirect:/admin-account";
	}

	@PostMapping(value = "/admin-role")
	public String addRole(Model model, @ModelAttribute("role") Role role, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impRole.save(role);
			model.addAttribute("message", "Success!");
		}
		return "redirect:/admin-account";
	}

	@PostMapping(value = "/admin-edit-role")
	public String editRole(Model model, @ModelAttribute("role") Role role, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impRole.update(role);
			model.addAttribute("message", "Success!");
		}
		return "redirect:/admin-account";
	}

	@PostMapping(value = "/admin-delete-role")
	public String deleteRole(Model model, @ModelAttribute("role") Role role, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			impRole.delete(role);
			model.addAttribute("message", "Success!");
		}
		return "redirect:/admin-account";
	}
}
