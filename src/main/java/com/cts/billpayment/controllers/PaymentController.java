package com.cts.billpayment.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cts.billpayment.entities.Credit;
import com.cts.billpayment.entities.Customer;
import com.cts.billpayment.entities.Dth;
import com.cts.billpayment.entities.Dthcredit;
import com.cts.billpayment.entities.Dthgpay;
import com.cts.billpayment.entities.Gpay;
import com.cts.billpayment.entities.Recordbills;
import com.cts.billpayment.entities.electricity;
import com.cts.billpayment.entities.telephone;
import com.cts.billpayment.service.Creditservice;
import com.cts.billpayment.service.Customerservice;
import com.cts.billpayment.service.Dthbillservice;
import com.cts.billpayment.service.Dthcreditservice;
import com.cts.billpayment.service.Dthgpayservice;
import com.cts.billpayment.service.Gpayservice;
import com.cts.billpayment.service.Recordbillsservice;
import com.cts.billpayment.service.Telegpayservice;
import com.cts.billpayment.service.Telephonebillservice;
import com.cts.billpayment.service.ebillservice;

@Controller
public class PaymentController {
	@Autowired
	private ebillservice ebs;
	@Autowired
	private Creditservice credits;

	@Autowired
	private Customerservice cs;
	@Autowired
	private Gpayservice gpays;
	@Autowired
	private Dthbillservice dths;
	@Autowired
	private Telephonebillservice tbs;
	@Autowired
	private Dthcreditservice dthcs;
	@Autowired
	private Dthgpayservice dthgs;
	@Autowired
	private Telegpayservice tgs;
	@Autowired
	private Recordbillsservice rbs;

	// for redirecting to bill payment home page
	@GetMapping("billpayhome")
	public String billhomepage(Model model) {
		return "billpaymenthome";
	}

	// electricity home page
	@GetMapping("electricity")
	public String elechomepage(Model model) {

		electricity e = new electricity();
		model.addAttribute("electricity", e);
		return "electricity";
	}

	// Telephone home page
	@GetMapping("telephone")
	public String telephonehomepage(Model model) {

		telephone t = new telephone();
		model.addAttribute("telephone", t);
		return "telephone";
	}

	// e-bill saving
	@PostMapping("ebillsave")
	public String saveebills(@Valid @ModelAttribute("electricity") electricity e, BindingResult result, Model model,
			HttpSession session) {
		e.setTransactionstatus("failure");
		if (result.hasErrors()) {
			return "electricity";
		}

		else {

			String custusername = (String) session.getAttribute("custusername");
			Customer c = cs.getCustomer(custusername);

			e.setCustomeruname(c);

			int res = ebs.savebill(e);

			if (res == 1) {

				model.addAttribute("billnumber", e.getBillnumber());
				return "electpaymentmethod";
			}
			return "electpaymentmethod";
		}

	}

	// elec pay mode
	@PostMapping("getPaymetMode")
	public String getPaymentmethod(Model model, @RequestParam("bl") String billnumber, RedirectAttributes redirects,
			@RequestParam("pmethod") String mode) {

		if (mode.equals("credit")) {
			redirects.addFlashAttribute("billno", billnumber);

			return "redirect:pay";
		} else if (mode.equals("gpay")) {
			redirects.addFlashAttribute("billno", billnumber);

			return "redirect:gpay";
		} else {
			redirects.addFlashAttribute("billno", billnumber);

			return "redirect:gpay";
		}
	}

	// gpay page
	@GetMapping("gpay")
	public String googlePayMode(Model model) {
		Gpay gp = new Gpay();
		model.addAttribute("vergpay", gp);
		return "Gpay";
	}

	// gpay verification
	@PostMapping("gverify")
	public String gpayverify(@Valid @ModelAttribute("vergpay") Gpay gpay, Model model, HttpSession session,
			BindingResult result, @RequestParam("bil") String billnumber) {
		if (result.hasErrors()) {
			return "Gpay";
		} else {
			boolean status = gpays.verify(gpay);
			if (status) {

				session.setAttribute("user", gpay.getContactNumber());
				gpays.status(billnumber);

				return "success";

			}

			else {

				return "payfailure";
			}

		}
	}

	// credit page
	@GetMapping("pay")
	public String paypagecred(Model model) {
		Credit credit = new Credit();
		model.addAttribute("verifypay", credit);
		return "credit";
	}

	// credit verification
	@PostMapping("verify")
	public String creditverify(@Valid @ModelAttribute("verifypay") Credit credit, Model model, HttpSession session,
			BindingResult result, @RequestParam("bil") String billnumber) {

		if (result.hasErrors()) {
			return "credit";
		} else {
			boolean status = credits.verify(credit);
			if (status) {

				session.setAttribute("user", credit.getCardnumber());

				credits.status(billnumber);
				return "success";

			} else {
				return "payfailure";
			}

		}
	}

	// electricity bill history
	@GetMapping("ebillhistory")
	public String display(HttpSession session, Model model) {
		List<electricity> elist = cs.geElectricities();
		model.addAttribute("ebill", elist);

		return "ebillhistory";
	}

	// dth home page
	@GetMapping("dth")
	public String dthpage(Model model) {
		Dth d = new Dth();
		model.addAttribute("dth", d);
		return "DTH";
	}

	// dth bill saving
	@PostMapping("dthsave")
	public String savedthbill(@Valid @ModelAttribute("dth") Dth d, BindingResult result, Model model,
			HttpSession session) {
		d.setTransactionstatus("failure");
		if (result.hasErrors()) {
			return "DTH";
		} else {
			String custusername = (String) session.getAttribute("custusername");
			Customer c = cs.getCustomer(custusername);
			d.setCustomeruname(c);

			int res = dths.savebill(d);
			
			if (res == 1) {

				model.addAttribute("billnumber", d.getServicenumber());
				return "dthpaymentmethod";
			}
			model.addAttribute("message", "You're already paid this bill");
			return "dthpaymentmethod";
		}

	}
	// dth payment method

	@PostMapping("getdthPaymetMode")
	public String getdthPaymentmethod(Model model, @RequestParam("bl") String billnumber, RedirectAttributes redirects,
			@RequestParam("pmethod") String mode) {

		if (mode.equals("credit")) {
			redirects.addFlashAttribute("billno", billnumber);

			return "redirect:dthcpay";
		} else if (mode.equals("gpay")) {
			redirects.addFlashAttribute("billno", billnumber);

			return "redirect:dthgpay";
		} else {
			redirects.addFlashAttribute("billno", billnumber);

			return "redirect:dthgpay";
		}
	}

	// dthgpay page
	@GetMapping("dthgpay")
	public String dthgooglePayMode(Model model) {
		Dthgpay gp = new Dthgpay();
		model.addAttribute("vergpay", gp);
		return "dthgpay";
	}

	// dthgpay verification
	@PostMapping("dthgverify")
	public String dthgpayverify(@Valid @ModelAttribute("vergpay") Dthgpay gpay, Model model, HttpSession session,
			BindingResult result, @RequestParam("bil") String billnumber) {
		if (result.hasErrors()) {
			return "dthgpay";
		} else {
			boolean status = dthgs.verify(gpay);
			if (status) {

				session.setAttribute("user", gpay.getContactNumber());
				dthgs.dstatus(billnumber);

				return "success";

			}

			else {

				return "payfailure";
			}

		}
	}

	// dthcredit page
	@GetMapping("dthcpay")
	public String dthpaypagecred(Model model) {
		Dthcredit credit = new Dthcredit();
		model.addAttribute("verifypay", credit);
		return "dthcredit";
	}

	// credit verification
	@PostMapping("dthcverify")
	public String dthcreditverify(@Valid @ModelAttribute("verifypay") Dthcredit credit, Model model,
			HttpSession session, BindingResult result, @RequestParam("bil") String billnumber) {

		if (result.hasErrors()) {
			return "dthcredit";
		} else {
			boolean status = dthcs.verify(credit);
			if (status) {

				session.setAttribute("user", credit.getCardnumber());

				dthcs.dthstatus(billnumber);
				return "success";

			}

			else {

				return "payfailure";
			}

		}
	}

	// dth bill history
	@GetMapping("dthbillhistory")
	public String ddisplay(HttpSession session, Model model) {
		List<Dth> dlist = cs.getDth();
		model.addAttribute("dbill", dlist);
		return "dthbillhistory";
	}

	// telephoneSave
	@PostMapping("telephoneSave")
	public String savetelephonebill(@Valid @ModelAttribute("telephone") telephone d, BindingResult result, Model model,
			HttpSession session) {
		d.setTransactionstatus("failure");
		if (result.hasErrors()) {
			return "telephone";
		} else {
			String custusername = (String) session.getAttribute("custusername");
			Customer c = cs.getCustomer(custusername);
			d.setCustomeruname(c);

			int res = tbs.savebill(d);

			if (res == 1) {

				model.addAttribute("telephonenumber", d.getTelephonenumber());
				return "telephonepaymentmethod";
			}
			return "telephonepaymentmethod";
		}
	}

	@PostMapping("/getTelephonePaymentMode")
	public String getTelephonePaymentmethod(Model model, @RequestParam("bl") String telephonenumber,
			RedirectAttributes redirects, @RequestParam("pmethod") String mode) {

		if (mode.equals("credit")) {
			redirects.addFlashAttribute("teleno", telephonenumber);

			return "dthcpay";
		} else if (mode.equals("gpay")) {
			redirects.addFlashAttribute("teleno", telephonenumber);

			return "telegpay";
		} else {
			redirects.addFlashAttribute("teleno", telephonenumber);

			return "telegpay";
		}
	}

	@PostMapping("telegverify")
	public String telegpayverify(@Valid @ModelAttribute("vergpay") Dthgpay gpay, Model model, HttpSession session,
			BindingResult result, @RequestParam("bil") String telephonenumber) {
		if (result.hasErrors()) {
			return "telegpay";
		} else {
			boolean status = tgs.verify(gpay);
			if (status) {

				session.setAttribute("user", gpay.getContactNumber());
				tgs.dstatus(telephonenumber);

				return "success";

			} else {

				return "payfailure";
			}

		}
	}

	@GetMapping("telegpay")
	public String telegooglePayMode(Model model) {
		Dthgpay gp = new Dthgpay();
		model.addAttribute("vergpay", gp);
		return "tele";
	}

	// recorded bills history
	@GetMapping("recbillhistory")
	public String recbdisplay(HttpSession session, Model model) {
		List<Recordbills> rlist = rbs.getRecordbills1();
		model.addAttribute("rbill", rlist);
		return "recbillhistory";
	}
}
