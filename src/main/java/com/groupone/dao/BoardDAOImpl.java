package com.groupone.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.groupone.vo.BoardVO;
import com.groupone.vo.PageVO;

@Repository
public class BoardDAOImpl implements IF_boardDAO{
	private static String mapperQuery = "com.groupone.dao.IF_boardDAO";
	@Inject
	private SqlSession sqlsession;
	@Override
	public List<BoardVO> selectAll(PageVO pageVO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery+".selectAll", pageVO);
	}
	@Override
	public int countBoard() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(mapperQuery+".countBoard");
	}
}
