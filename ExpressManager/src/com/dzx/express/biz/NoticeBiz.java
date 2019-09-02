package com.dzx.express.biz;


import java.util.List;

import com.dzx.express.entity.Notice;


public interface NoticeBiz {
	
	int deleteByPrimaryKey(Integer noticeid);

    int insert(Notice record);

    int insertSelective(Notice record);

    Notice selectByPrimaryKey(Integer noticeid);

    int updateByPrimaryKeySelective(Notice record);

    int updateByPrimaryKey(Notice record);
    
    List<Notice> findAllNotice();//查询全部公告
}
