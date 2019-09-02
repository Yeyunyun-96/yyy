package com.dzx.express.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.dzx.express.biz.ExpressBiz;
import com.dzx.express.biz.UserBiz;
import com.dzx.express.entity.Express;
import com.dzx.express.entity.User;
import com.dzx.express.util.DateUtil;
import com.dzx.express.util.PageUtil;
import com.dzx.express.util.StringUtil;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	ExpressBiz expressBiz;
	@Autowired
	UserBiz userBiz;

	// 分页显示列表
	@RequestMapping("list") 
	public ModelAndView list(HttpServletRequest request, Model model,HttpSession session,@RequestParam(value="name",required=false) String name) {
		System.out.println("--------------------+"+name+"++------------------------");
		session.setAttribute("username", name);
		int pageIndex = 1;// 设置初始的当前页，页面显示的都是第一页
		int pageSize = 5;// 设置每一页显示几条数据,用于计算总页数，此处设置的值必须与sql语句的limit最后的数值一样
		System.out.println("员工列表");

		PageUtil<User> pageUtil = new PageUtil<User>();// 初始化工具类
		if (request.getParameter("pageIndex") != null) {
			pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		} // 对页面上的分页标签传的值,进行获取,也是就点击'上一页或者下一页'传过来的pageindex
		pageUtil.setPageIndex(pageIndex);// 保存至工具类，当前页数
		int number = userBiz.getRowCount();// 调用service层方法计算出总数据量，就是多少条数据.

		pageUtil.setPageNumber(number);// 保存至工具类,总记录数
		pageUtil.setPageSize(pageSize);// 保存至工具类，一页几条
		pageUtil.setPageCount((int) Math.ceil((double) (pageUtil.getPageNumber() / pageUtil.getPageSize())) + 1);// 计算出总页数,并封装到工具类
		int index = (pageIndex - 1) * pageSize;// 计算出每一页从数据库中第几条数据开始取值，也就是limit后面的第一个数字
		
		
		List<User> list = userBiz.findAllUser(name,index);// 调用service层的方法，取得数据库中的值
		pageUtil.setList(list);// 保存到工具类中的集合

		model.addAttribute("pageUtil", pageUtil);// 传递到页面，存入值栈中
		model.addAttribute("users", list);
		System.out.println(index + "" + pageSize);
		System.out.println(index + "" + pageSize);
		return new ModelAndView("list");// 跳转的相关页面
	}

	// 查看
	@RequestMapping("details")
	public String detailUI(HttpSession session) {
		List<Express> orderList = expressBiz.selectall("");
		session.setAttribute("orderList", orderList);
		return "admin";
	}

	//插入
		@RequestMapping(value = "insert" )
		public String insert(User user) {
			System.out.println("进入添加控制类。。。");
			user.setId(DateUtil.getStaffId());
			System.out.println("======"+user.getId()+"======000======================================");
			userBiz.insertSelective(user);
			return "redirect:/user/list.do";
		}
		//回调
		 @RequestMapping(value = "updateselect")
		    public String updateSelect(String id,HttpSession session){
		        System.out.println("updateSelect"+id);
		        User user=userBiz.selectByPrimaryKey(id);
		        session.setAttribute("user", user);
		        return "adminupdate";
		    }
		 
		 //修改
		 @RequestMapping(value = "update")
		    public String update(User user){
			 	userBiz.updateByPrimaryKeySelective(user);
		        return "redirect:/user/list.do";
		    }
		 
		 //删除
		 @RequestMapping(value = "delete")
		    public String delete(String id){
			 	userBiz.deleteByPrimaryKey(id);
		        return "redirect:/user/list.do";
		    }

}
