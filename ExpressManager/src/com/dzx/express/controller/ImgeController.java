package com.dzx.express.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import com.dzx.express.biz.ImgBiz;
import com.dzx.express.entity.Img;
import com.dzx.express.util.DateUtil;


@Controller
@RequestMapping("items")
public class ImgeController  {

	@Autowired
	ImgBiz imgBiz;
	
	@RequestMapping(value="jump")
	public String jump(Model model) {
		
		Img img = new Img();
		model.addAttribute("img", img);
		return "imge";
	}
	
	@RequestMapping(value="editItemsSubmit")
	public String editItemsSubmit(HttpSession session,Img img,MultipartFile items_pic) throws Exception{
		
		String orgFileName = items_pic.getOriginalFilename();
		System.out.println("=====orgFileName:"+orgFileName);
				
		//上传图片
		if(items_pic !=null && orgFileName !=null && orgFileName.length()>0) {
			//物理文件路径
			String pic_path = "D:\\img\\";
			
			//新文件名
			String newFileName =DateUtil.getimgeName()+orgFileName.substring(orgFileName.lastIndexOf("."));
			
			//新图片文件
			File newFile = new File(pic_path+newFileName);
			
			//写入磁盘文件
			items_pic.transferTo(newFile);
			
			img.setPic(newFileName);
			img.setCreatetime(new Date());
			
			imgBiz.insertSelective(img);//向数据库中插入信息
			
			session.setAttribute("img", img);
			
			System.out.println("--------进入findall方法中-------------");
		
			System.out.println("=====!!!!@@@@1----------------:"+img.toString());
		}
		return "imge";
		
	}
	
	
	// 查看
	@RequestMapping("findAll")
	public String detailUI(HttpSession session) {
		List<Img> imglist =imgBiz.findAllImg();//获取数据库中的信息
		
		for (Img n : imglist) {
			System.out.println("***************************"
		+ n.getId() + "" + n.getName() + "" +n.getDetail()
					+ "" + n.getPic()+n.getCreatetime());
		}
		 
	
		System.out.println("--------进入findall方法中-------------");
		session.setAttribute("img", imglist);
		return "imglist";
	}
	
	 //删除
	 @RequestMapping(value = "delete")
	    public String delete(int id){
		 System.out.println("-------删除的id+"+id+"+-------------");
		 	imgBiz.deleteByPrimaryKey(id);
	        return "redirect:/items/findAll.do";
	    }

}
