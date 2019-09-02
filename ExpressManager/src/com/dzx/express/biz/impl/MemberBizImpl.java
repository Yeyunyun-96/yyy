package com.dzx.express.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dzx.express.biz.MemberBiz;
import com.dzx.express.entity.Member;
import com.dzx.express.mapper.MemberMapper;
@Service(value="MemberBiz")
public class MemberBizImpl implements MemberBiz {
	
	@Autowired
	MemberMapper memberMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return memberMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Member record) {
		// TODO Auto-generated method stub
		return memberMapper.insert(record);
	}

	@Override
	public int insertSelective(Member record) {
		// TODO Auto-generated method stub
		return memberMapper.insertSelective(record);
	}

	@Override
	public Member selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return memberMapper.selectByPrimaryKey(id);
	}

	@Override
	public Member selectByUsername(String username) {
		// TODO Auto-generated method stub
		return memberMapper.selectByUsername(username);
	}

	
	@Override
	public int updateByPrimaryKeySelective(Member record) {
		// TODO Auto-generated method stub
		return memberMapper.updateByPrimaryKey(record);
	}

	@Override
	public int updateByPrimaryKey(Member record) {
		// TODO Auto-generated method stub
		return memberMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public List<Member> findAllMember(String name, int index) {
		// TODO Auto-generated method stub
		return memberMapper.findAllMember(name, index);
	}

	@Override
	public int getRowCount() {
		// TODO Auto-generated method stub
		return memberMapper.getRowCount();
	}

}
