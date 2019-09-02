package com.dzx.express.controller;


import javax.servlet.http.HttpSession;
import com.dzx.express.biz.ExpressBiz;
import com.dzx.express.biz.NoticeBiz;
import com.dzx.express.biz.UserBiz;
import com.dzx.express.entity.Express;
import com.dzx.express.entity.Notice;
import com.dzx.express.entity.User;
import com.dzx.express.util.DateUtil;

import org.aspectj.weaver.NewConstructorTypeMunger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	@Autowired
	ExpressBiz expressBiz;
	@Autowired
	UserBiz userBiz;
	@Autowired
	NoticeBiz noticeBiz;

	
	// 查看
	@RequestMapping("findAll")
	public String detailUI(HttpSession session) {
		List<Notice> noticelist = noticeBiz.findAllNotice();
		/*
		 * for(Notice n:noticelist) {
		 * System.out.println("***************************"+n.getTitle()+""+n.getDetails
		 * ()+""+n.getTime()+""+n.getNoticeid()); }
		 */
		System.out.println("--------进入findall方法中-------------");
		session.setAttribute("notice", noticelist);
		return "noticelist";
	}

		//插入
		@RequestMapping(value = "insert" )
		public String insert(Notice notice) {
			System.out.println("进入添加控制类。。。");
			notice.setTime(new Date());
			noticeBiz.insertSelective(notice);
			return "redirect:/notice/findAll.do";
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
		    public String delete(int noticeid){
			 System.out.println("-------删除的id+"+noticeid+"+-------------");
			 	noticeBiz.deleteByPrimaryKey(noticeid);
		        return "redirect:/notice/findAll.do";
		    }

}
