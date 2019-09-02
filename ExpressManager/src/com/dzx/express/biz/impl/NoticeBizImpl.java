package com.dzx.express.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dzx.express.biz.NoticeBiz;
import com.dzx.express.entity.Notice;
import com.dzx.express.mapper.NoticeMapper;

@Service(value="NoticeBiz")
public class NoticeBizImpl implements NoticeBiz{
	@Autowired
	NoticeMapper noticeMapper;

	@Override
	public int deleteByPrimaryKey(Integer noticeid) {
		return noticeMapper.deleteByPrimaryKey(noticeid);	
	}

	@Override
	public int insert(Notice record) {
		// TODO Auto-generated method stub
		return noticeMapper.insert(record);
	}

	@Override
	public int insertSelective(Notice record) {
		return noticeMapper.insertSelective(record);
	}

	//显示在客户上方的公告栏
	@Override
	public Notice selectByPrimaryKey(Integer noticeid) {
		return noticeMapper.selectByPrimaryKey(noticeid);
	}

	@Override
	public int updateByPrimaryKeySelective(Notice record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Notice record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Notice> findAllNotice() {
		// TODO Auto-generated method stub
		return noticeMapper.findAllNotice();
	}

	
	
	

}
