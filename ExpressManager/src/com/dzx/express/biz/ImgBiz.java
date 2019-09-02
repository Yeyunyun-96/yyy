package com.dzx.express.biz;


import java.util.List;

import com.dzx.express.entity.Img;

public interface ImgBiz {
	
	 int deleteByPrimaryKey(Integer id);

	    int insert(Img record);

	    int insertSelective(Img record);

	    Img selectByPrimaryKey(Integer id);

	    int updateByPrimaryKeySelective(Img record);

	    int updateByPrimaryKey(Img record);
	    
	    List<Img> findAllImg();//查询全部图片信息
}
