package com.groupone.service;


import java.util.List;

import com.groupone.vo.BoardVO;
import com.groupone.vo.MemberVO;
import com.groupone.vo.PageVO;

public interface IF_memberservice {
	public void member_insert(MemberVO mvo) throws Exception;
	public MemberVO member_one(MemberVO mvo) throws Exception;

	
}
