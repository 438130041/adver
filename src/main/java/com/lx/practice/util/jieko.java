package com.lx.practice.util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class jieko {
	
	
	  public static void main(String[] args) throws UnsupportedEncodingException {
		   
		//  jiekoces  jk = new  jiekoces();
		  String  number = "13886649712";
		  String  User_Name = "张唐清"; 
		
		
		//  System.out.println("name:"+User_Name);
		  
		 String ss=jiekoces.sendPost2(number,User_Name);
		 ss=URLDecoder.decode(ss,"UTF-8");
		 
		 System.out.println(ss);
	}
	
	
}
