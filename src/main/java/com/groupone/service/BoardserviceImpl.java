package com.groupone.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.groupone.dao.IF_boardDAO;
import com.groupone.vo.BoardVO;
import com.groupone.vo.PageVO;

@Service
public class BoardserviceImpl implements IF_boardservice{
	@Inject
	private IF_boardDAO boarddao;
	
	@Override
	public List<BoardVO> selectAll(PageVO pageVO) throws Exception {
		// TODO Auto-generated method stub
		return boarddao.selectAll(pageVO);
	}
	@Override
	public int countBoard() throws Exception {
		// TODO Auto-generated method stub
		return boarddao.countBoard();
	}
}
