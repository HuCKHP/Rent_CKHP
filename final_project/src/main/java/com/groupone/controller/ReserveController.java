package com.groupone.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReserveController {
	@RequestMapping(value = "/reserve", method = RequestMethod.GET)	//회원가입화면으로 가기
	public String reserve(Locale locale, Model model) throws Exception {
		return "reserve/reserve";	//회원가입화면
	}
	@RequestMapping(value = "/pricing", method = RequestMethod.GET)	//회원가입화면으로 가기
	public String pricing(Locale locale, Model model) throws Exception {
		return "reserve/pricing";	//회원가입화면
	}
	@RequestMapping(value = "/cars", method = RequestMethod.GET)	//회원가입화면으로 가기
	public String cars(Locale locale, Model model) throws Exception {
		return "reserve/cars";	//회원가입화면
	}
}
