package com.dzx.express.biz;

import java.util.List;

import com.dzx.express.entity.Member;

public interface MemberBiz {
	
    int deleteByPrimaryKey(Integer id);

    int insert(Member record);

    int insertSelective(Member record);

    Member selectByPrimaryKey(Integer id);
    
    Member selectByUsername(String username);
    
    //根据条件查找用户信息,带分页查询
    List<Member> findAllMember(String name,int index);
    /**获取总记录数*/
    int getRowCount();

    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);
}
