package com.dzx.express.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.com.WebXml.MobileCodeWSLocator;
import cn.com.WebXml.MobileCodeWSSoap;
import cn.com.WebXml.WeatherWebServiceLocator;
import cn.com.WebXml.WeatherWebServiceSoapStub;

@Controller
@RequestMapping("/web")
public class webController {

	@RequestMapping("provices") 
	public String provices(HttpSession session,Model model,String name) {
		session.setAttribute("name", name);
		WeatherWebServiceLocator locator = new WeatherWebServiceLocator();
		WeatherWebServiceSoapStub service;
		try {
			service = (WeatherWebServiceSoapStub) locator.getPort(WeatherWebServiceSoapStub.class);
			String[] cities = service.getSupportCity(name);
			String[] str1 = new String[cities.length];//必须初始化
			for (int i = 0; i < cities.length; i++) {
				String s=cities[i].substring(0, cities[i].indexOf("("));
				str1[i] = s;
				//System.out.println(s);
			}
			model.addAttribute("msg", str1);
			model.addAttribute("count", cities.length);
		} catch (Exception e) {
			return "404";
			//e.printStackTrace();		
		}		
		return "web";	
	}
	
	
	@RequestMapping("phone") 
	public String phone(HttpSession session,Model model,String phoneString) {
		System.out.println(phoneString);
		session.setAttribute("phoneString", phoneString);
		 //创建一个MobileCodeWS工厂
		MobileCodeWSLocator factory = new MobileCodeWSLocator();
		//根据工厂创建一个MobileCodeWSSoap对象
		MobileCodeWSSoap mobileCodeWSSoap;
		try {
			mobileCodeWSSoap = factory.getMobileCodeWSSoap();
			String searchResult = mobileCodeWSSoap.getMobileCodeInfo(phoneString, null);
			System.out.println(searchResult);
			session.setAttribute("searchResult", searchResult);
			//model.addAttribute("searchResult", searchResult);
		} catch (Exception e) {
			return "404";
			//e.printStackTrace();
		}//调用WebService提供的getMobileCodeInfo方法查询手机号码的归属地
		return "web";	
	}
	
	
	
}
