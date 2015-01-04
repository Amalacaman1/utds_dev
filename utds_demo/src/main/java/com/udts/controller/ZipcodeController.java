package com.udts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.udts.model.Zipcode;
import com.udts.service.ZipcodeService;

@Controller
public class ZipcodeController {
	
	private ZipcodeService zipcodeService;

	@Autowired(required = true)
	@Qualifier(value = "zipcodeService")
	public void setZipcodeService(ZipcodeService ps) {
		this.zipcodeService = ps;
	}

	@RequestMapping(value = "/zipcode", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("zipcode", new Zipcode());
		model.addAttribute("list", this.zipcodeService.list());
		return "zipcode";
	}

	// For add and update both
	@RequestMapping(value = "/zipcode/add", method = RequestMethod.POST)
	public String add(@ModelAttribute("zipcode") Zipcode p) {

		if (p.getId() == 0) {
			// new, add it
			this.zipcodeService.add(p);
		} else {
			// existing, call update
			this.zipcodeService.update(p);
		}

		return "redirect:/zipcode";
	}

	@RequestMapping("/remove/{id}")
	public String remove(@PathVariable("id") int id) {

		this.zipcodeService.remove(id);
		return "redirect:/zipcode";
	}

	@RequestMapping("/edit/{id}")
	public String edit(@PathVariable("id") int id, Model model) {
		model.addAttribute("zipcode", this.zipcodeService.getObjectById(id));
		model.addAttribute("list", this.zipcodeService.list());
		return "zipcode";
	}
}
