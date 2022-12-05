package com.groupone.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.groupone.vo.MemberVO;
@Repository
public class MemberDAOImpl implements IF_memberDAO {
	private static String mapperQuery = "com.groupone.dao.IF_memberDAO";
	@Inject
	private SqlSession sqlsession;
	@Override
	public void member_insert(MemberVO mvo) throws Exception {
		sqlsession.insert(mapperQuery+".memberinsert", mvo);
	}
	@Override
	public MemberVO member_one(MemberVO mvo) throws Exception {
		return sqlsession.selectOne(mapperQuery+".memberone", mvo);
	}

}
