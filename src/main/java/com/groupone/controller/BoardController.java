package com.groupone.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.groupone.service.IF_boardservice;
import com.groupone.service.IF_memberservice;
import com.groupone.vo.BoardVO;
import com.groupone.vo.PageVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	@Inject
	IF_boardservice bsvs;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/boardview", method = RequestMethod.GET)	//寃�������硫대낫湲�
	public String boardview(Locale locale, Model model, @ModelAttribute("pageVO")PageVO pageVO) throws Exception {
		
		if(pageVO.getPage()==null) { //클라이언트가 페이지정보를 넘겨주지 않는다면 기본값 1로 셋팅
			pageVO.setPage(1);			
		}
		
		int totalpageCnt=bsvs.countBoard();
		System.out.println(totalpageCnt+"건 등록됨");
		pageVO.setTotalCount(totalpageCnt);
		
		List<BoardVO> list=bsvs.selectAll(pageVO);
		model.addAttribute("bList",list);
		model.addAttribute("pageVO",pageVO);
		
		return "board/board";
	}
	@RequestMapping(value = "/boardone", method = RequestMethod.GET)	//寃�������硫대낫湲�
	public String boardone(Locale locale, Model model,@RequestParam("bno") String bno) throws Exception {
		
		return "board/boardone";
	}
}
