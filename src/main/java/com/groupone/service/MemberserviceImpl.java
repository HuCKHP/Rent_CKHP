package com.groupone.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.groupone.dao.IF_memberDAO;
import com.groupone.vo.BoardVO;
import com.groupone.vo.MemberVO;
import com.groupone.vo.PageVO;
@Service
public class MemberserviceImpl implements IF_memberservice{
	@Inject
	private IF_memberDAO memberdao;
	@Override
	public void member_insert(MemberVO mvo) throws Exception {
		memberdao.member_insert(mvo);
	}
	@Override
	public MemberVO member_one(MemberVO mvo) throws Exception {
		return memberdao.member_one(mvo);
	}



}
