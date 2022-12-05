package com.groupone.dao;

import com.groupone.vo.MemberVO;

public interface IF_memberDAO {
	public void member_insert(MemberVO mvo) throws Exception;
	public MemberVO member_one(MemberVO mvo) throws Exception;
}
