package com.lx.practice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/medicineone")
public class MedicineOneController {

	@RequestMapping(value="/medicineone",method=RequestMethod.GET)
    public ModelAndView medicineone(ModelAndView model, HttpServletRequest request){
		System.out.println("hahahahahaah");
        model.setViewName("tcm/medicineone");
        return model;
    }
	
	
	
	
}
