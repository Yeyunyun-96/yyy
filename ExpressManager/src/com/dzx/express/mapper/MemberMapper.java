package com.dzx.express.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.dzx.express.entity.Member;

public interface MemberMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Member record);

    int insertSelective(Member record);

    Member selectByPrimaryKey(Integer id);
    
    Member selectByUsername(String username);
    
    //根据条件查找用户信息,带分页查询
    List<Member> findAllMember(@Param("name")String name,@Param("index")int index);
    /**获取总记录数*/
    int getRowCount();

    int updateByPrimaryKeySelective(Member record);

    int updateByPrimaryKey(Member record);
}