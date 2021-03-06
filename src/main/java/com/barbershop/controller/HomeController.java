package com.barbershop.controller;

import java.util.Date;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.barbershop.entity.Account;
import com.barbershop.entity.Role;
import com.barbershop.service.ImpAccountService;
import com.barbershop.service.ImpBillService;

@Controller
public class HomeController {

	@Autowired
	private ImpAccountService impAccount;

	@Autowired
	private ImpBillService impBill;

	@PostMapping(value = "/signup")
	public void registerMember(Model model, @ModelAttribute("account") Account account, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Fail!");
		} else {
			if (impAccount.findOneByEmail(account.getEmail()) != null) {
				model.addAttribute("message", "Fail!");

			} else {
				Role quyen = new Role();
				quyen.setMaQ(3);
				account.setMaQuyen(quyen);
				impAccount.register(account);
				model.addAttribute("message", "Signup Success!");
			}
		}
	}

	@GetMapping(value = "/login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}

	@GetMapping(value = "/signup")
	public ModelAndView signup(@ModelAttribute("account") Account account) {
		ModelAndView mav = new ModelAndView("signup");
		return mav;
	}
	
	@GetMapping(value = "/forgot")
	public ModelAndView forgot(@ModelAttribute("account") Account account) {
		ModelAndView mav = new ModelAndView("forgot");
		return mav;
	}
	
	@Autowired
	JavaMailSender mailer;
	
	@PostMapping(value = "/forgot")
	public String sendMail(ModelMap model, HttpServletRequest re) {
		try {
			List<Account> listTk = impAccount.findAll();
			boolean kt = true;
			for (int i = 0; i < listTk.size(); i++) {
				if (listTk.get(i).getEmail().equals(re.getParameter("email"))) {

					int random = (int) Math.floor(((Math.random() * 899999) + 100000));/// random sinh s??? c?? 6 ch??? s???
					String matkhaumoi = String.valueOf(random);
					String mailgui;
					mailgui = listTk.get(i).getEmail();
					listTk.get(i).setPassword(matkhaumoi);
					impAccount.update(listTk.get(i));
					kt = false;
					Date date = new Date();
					String from = "giangquach200400@gmail.com";
					String to = mailgui;
					String subject = "Qu??n m???t kh???u";
					String body = "B???n ???? b??o qu??n m???t kh???u v??o " + date + "  m???t kh???u m???i c???a b???n l?? " + matkhaumoi
							+ "\n N???u b???n kh??ng th???c hi???n y??u c???u tr??n , vui l??ng li??n h??? qu???n tr??? vi??n ngay!";

					try {
						System.out.println("t???o mail mailer");
						// t???o mail

						MimeMessage mail = this.mailer.createMimeMessage();

						// g???i l???p tr??? gi??p
						System.out.println("Tr??? gi??p");
						MimeMessageHelper helper = new MimeMessageHelper(mail);
						System.out.println("new");
						helper.setFrom(from, from);
						helper.setTo(to);
						helper.setReplyTo(from, from);
						helper.setSubject(subject);
						helper.setText(body, true);
						this.mailer.send(mail);
						System.out.println("g???i");
						model.addAttribute("tb", "M???t kh???u m???i ???? g???i ?????n email c???a b???n");
					} catch (Exception ex) {
						model.addAttribute("tb", "G???i mail th???t b???i");
					} finally {

					}
				}
			}
			if (kt == true) {
				model.addAttribute("tb", "T??i kho???n kh??ng t???n t???i");
			}
		} catch (Exception e) {

		}
		return "forgot";
	}

	@GetMapping(value = "/logout")
	public ModelAndView logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return new ModelAndView("login");
	}

	@GetMapping(value = "/admin-home")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("admin/index");
		mav.addObject("sumofday", impBill.sumOfDay());
		mav.addObject("sumofmonth", impBill.sumOfMonth());
		mav.addObject("sumofyear", impBill.sumOfYear());
		return mav;
	}

	@PostMapping(value = "/admin-home")
	public ModelAndView getDay(@RequestParam("startDate") String start, @RequestParam("endDate") String end) {
		ModelAndView mav = new ModelAndView("admin/index");
		mav.addObject("sumofday", impBill.sumOfDay());
		mav.addObject("sumofmonth", impBill.sumOfMonth());
		mav.addObject("sumofyear", impBill.sumOfYear());
		mav.addObject("sumofdaytoday",
				impBill.sumOfDayToDay(start  + " 00:00:00.000" , end  + " 23:59:00.000" ));
		return mav;
	}
}
