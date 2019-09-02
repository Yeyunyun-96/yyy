package com.dzx.express.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dzx.express.biz.MemberBiz;
import com.dzx.express.entity.Member;
import com.dzx.express.util.PageUtil;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	MemberBiz memberBiz;
	
	//用户注册
	@RequestMapping(value ="regist" )
	public String regist(Member member,HttpServletRequest request) {
		    
		//拿到页面传过来的手动输入的验证码, 该验证码要和生成图片上的
		//文本验证码比较, 如果相同, 验证码输入成功!
         
        String imageText = request.getParameter("checkcode1");
        System.out.println("-------------------"+imageText);
        // 图片的验证码
	    String str = (String) request.getSession().getAttribute("randCheckCode");
		String text=str.toLowerCase();
        System.out.println("-------------------"+text);
        if(!(text.equals(imageText))) {
        	request.setAttribute("imageMess", "验证码输入错误!");
        	return "regist";
        }
        

		memberBiz.insertSelective(member);
		return "Jump";
	}
	
	//用户修改信息
	@RequestMapping(value = "updatemember")
	public String memberupdate(Member member) {
		//System.out.println("-------------------"+member);
		memberBiz.updateByPrimaryKeySelective(member);
		return "index";
	}
	
	// 分页显示列表
	@RequestMapping("list") 
	public ModelAndView list(HttpServletRequest request, Model model,HttpSession session,@RequestParam(value="name",required=false) String name) {
		System.out.println("--------------------+"+name+"++------------------------");
		session.setAttribute("name", name);
		int pageIndex = 1;// 设置初始的当前页，页面显示的都是第一页
		int pageSize = 5;// 设置每一页显示几条数据,用于计算总页数，此处设置的值必须与sql语句的limit最后的数值一样
		System.out.println("员工列表");
		PageUtil<Member> pageUtil = new PageUtil<Member>();// 初始化工具类
		if (request.getParameter("pageIndex") != null) {
			pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		} // 对页面上的分页标签传的值,进行获取,也是就点击'上一页或者下一页'传过来的pageindex
		pageUtil.setPageIndex(pageIndex);// 保存至工具类，当前页数
		int number = memberBiz.getRowCount();// 调用service层方法计算出总数据量，就是多少条数据.
		//System.out.println("------------------------------"+number);
		pageUtil.setPageNumber(number);// 保存至工具类,总记录数
		pageUtil.setPageSize(pageSize);// 保存至工具类，一页几条
		pageUtil.setPageCount((int) Math.ceil((double) (pageUtil.getPageNumber() / pageUtil.getPageSize())) + 1);// 计算出总页数,并封装到工具类
		int index = (pageIndex - 1) * pageSize;// 计算出每一页从数据库中第几条数据开始取值，也就是limit后面的第一个数字
			
			
		List<Member> list = memberBiz.findAllMember(name, index);// 调用service层的方法，取得数据库中的值
		pageUtil.setList(list);// 保存到工具类中的集合

		model.addAttribute("pageUtil", pageUtil);// 传递到页面，存入值栈中
		model.addAttribute("members", list);
		//System.out.println("-------------------------");
		//System.out.println(list);
		
		return new ModelAndView("memberlist");// 跳转的相关页面
	}
	
	//删除
	@RequestMapping(value = "delete")
    public String delete(Integer id){
	 	memberBiz.deleteByPrimaryKey(id);
        return "redirect:/member/list.do";
        
    }
	
	//回显信息
	@RequestMapping(value = "updateselect")
	public String updateselect(Integer id,HttpSession session) {
		Member member=memberBiz.selectByPrimaryKey(id);
		session.setAttribute("member", member);
		return "memberupdate";
		
	}
	
	//修改信息
	@RequestMapping(value = "update")
	public String update(Member member) {
		System.out.println("--------------"+member);
		memberBiz.updateByPrimaryKeySelective(member);
		return "redirect:/member/list.do";
	}
	
	//添加用户
	@RequestMapping(value = "add")
	public String add(Member member) {
		memberBiz.insertSelective(member);
		return "redirect:/member/list.do";
	}
	
}
