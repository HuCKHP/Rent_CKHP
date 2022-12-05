package com.groupone.controller;

import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.groupone.service.IF_memberservice;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	@Inject
	IF_memberservice msvs;
	/**
	 * Simply selects the home view to render by returning its name.
	 */   
	@RequestMapping(value = "/boardview", method = RequestMethod.GET)	//게시판화면보기
	public String boardview(Locale locale, Model model) throws Exception {
		
		return "board/board";
	}
	@RequestMapping(value = "/boardone", method = RequestMethod.GET)	//게시판화면보기
	public String boardone(Locale locale, Model model,@RequestParam("bno") String bno) throws Exception {
		
		return "board/boardone";
	}
}
