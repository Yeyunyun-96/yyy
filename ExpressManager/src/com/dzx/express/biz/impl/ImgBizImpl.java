package com.dzx.express.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dzx.express.biz.ImgBiz;
import com.dzx.express.biz.NoticeBiz;
import com.dzx.express.entity.Img;
import com.dzx.express.entity.Notice;
import com.dzx.express.mapper.ImgMapper;
import com.dzx.express.mapper.NoticeMapper;

@Service(value="ImgBiz")
public class ImgBizImpl implements ImgBiz{
	@Autowired
	ImgMapper imgMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {	
		return imgMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Img record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Img record) {
		return imgMapper.insertSelective(record);
	}

	@Override
	public Img selectByPrimaryKey(Integer id) {
		
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Img record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Img record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Img> findAllImg() {
		return imgMapper.findAllImg();
	}

	
	
	
	

}
