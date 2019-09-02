package com.dzx.express.biz;

import java.util.List;

import com.dzx.express.entity.User;

public interface UserBiz {
	
	List<User> selectbypt(String pt);
	 int deleteByPrimaryKey(String id);
	 	//insert用户
	    int insert(User record);

	    int insertSelective(User record);

	    User selectByPrimaryKey(String id);

	    int updateByPrimaryKeySelective(User record);
	    
	    //通过主键修改
	    int updateByPrimaryKey(User record);
	    
	    //根据条件查找用户信息,带分页查询
	    List<User> findAllUser(String name,int index);
	    /**获取总记录数*/
	    int getRowCount();
}
