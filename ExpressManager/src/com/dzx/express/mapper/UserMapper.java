package com.dzx.express.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.dzx.express.entity.User;

public interface UserMapper {
	List<User> selectbypt(String pt);
	
    int deleteByPrimaryKey(String id); //通过主键id删除

    int insert(User record);//插入所有记录

    int insertSelective(User record);

    User selectByPrimaryKey(String id);//通过主键查询

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);//通过主键修改
    /*admin权限使用*/
    //根据条件查找用户信息,带分页查询
      List<User> findAllUser(@Param("name")String name,@Param("index")int index);
    //List<User> findAllUser(String name,int index);
    /**获取总记录数*/
    int getRowCount();

	
}