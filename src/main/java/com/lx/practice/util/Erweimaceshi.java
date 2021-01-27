package com.lx.practice.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.zxing.qrcode.encoder.QRCode;

public class Erweimaceshi {
	
	
	protected    void    doGet(HttpServletRequest request,HttpServletResponse  response){
		 try {
			 String   parameter  = request.getParameter("uname");  
			 System.out.println(parameter);
			 if (parameter == null  || parameter.length() == 0) {
				 
				 parameter = "¶þÎ¬Âë²âÊÔ";
				 
			  }
			 
			 QRCode  qrCode = new QRCode();
			
			 
			 
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		
	}
	
	
}
