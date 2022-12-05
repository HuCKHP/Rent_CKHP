package com.groupone.service;


import com.groupone.vo.MemberVO;

public interface IF_memberservice {
	public void member_insert(MemberVO mvo) throws Exception;
	public MemberVO member_one(MemberVO mvo) throws Exception;
}
