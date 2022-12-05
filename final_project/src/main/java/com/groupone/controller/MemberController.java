package com.groupone.controller;

import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.groupone.dao.IF_memberDAO;
import com.groupone.vo.MemberVO;

@Controller
public class MemberController {
	@Inject
	IF_memberDAO msvs;
	@RequestMapping(value = "/memberjoinview", method = RequestMethod.GET)	//회원가입화면으로 가기
	public String memberjoinview(Locale locale, Model model) throws Exception {
		return "member/memberjoin";	//회원가입화면
	}
	
	@RequestMapping(value = "/memberinsert", method = RequestMethod.POST)	//회원가입하기
	public String memberinsert(Locale locale, Model model,MemberVO mvo) throws Exception {
		msvs.member_insert(mvo);
		return "index";
	}
}
