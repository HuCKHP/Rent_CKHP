package com.groupone.dao;

import java.util.List;

import com.groupone.vo.BoardVO;
import com.groupone.vo.PageVO;

public interface IF_boardDAO {
	public List<BoardVO> selectAll(PageVO pageVO) throws Exception;
	public int countBoard() throws Exception;;
}
