package com.groupone.service;

import java.util.List;

import com.groupone.vo.BoardVO;
import com.groupone.vo.PageVO;

public interface IF_boardservice {
	public List<BoardVO> selectAll(PageVO pageVO) throws Exception;
	public int countBoard() throws Exception;
}
