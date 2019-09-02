package com.dzx.express.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import org.junit.Test;

import com.dzx.express.biz.NoticeBiz;
import com.dzx.express.biz.impl.NoticeBizImpl;
import com.dzx.express.entity.Notice;



public class DateUtil {
	
	private static SimpleDateFormat sdf=new  SimpleDateFormat("yyyyMMddHHmmss");
	private static SimpleDateFormat sdf1=new  SimpleDateFormat("yyyyMMddHH");
public static String getId(){
	
	Random random=new Random();
	Date date=new Date();
	String resu=sdf.format(date)+(random.nextInt(1000)+1000);
	return resu;	
}

public static String getStaffId(){
	Random random=new Random();
	Date date=new Date();
	String resu=sdf.format(date)+(random.nextInt(10)+10);
	return resu;	
}

public static String getmemId(){
	Random random=new Random();
	Date date=new Date();
	String resu=(random.nextInt(10)+10)+sdf1.format(date);
	return resu;	
}


public static String getimgeName(){
	Date date=new Date();
	String s=sdf.format(date)+UUID.randomUUID().toString();
	return s;	
}



@Test
public void test() {
	Date date=new Date();
	String s=(sdf1.format(date))+(UUID.randomUUID().toString());
	System.out.println(s);
	//System.out.println(UUID.randomUUID().toString());
		/*
		 * Optional<Notice> userOp=
		 * noticelist.stream().max(Comparator.comparingInt(Employee ::getAge)); Employee
		 * maxEmp = userOp.get();
		 */
}

public static void main(String args[]){
	
	System.out.println(DateUtil.getId());
}

}
