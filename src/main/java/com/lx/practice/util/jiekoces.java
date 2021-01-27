package com.lx.practice.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import com.alibaba.fastjson.JSONObject;

public class jiekoces {
	
	
	//调用学习系统方法，查询是否有该用户
	   public static String sendPost(String number) throws UnsupportedEncodingException {
	        //		pname= URLEncoder.encode(pname,"ISO-8859-1");
	       // gradename= URLEncoder.encode(gradename,"UTF-8");
		   /*number= URLEncoder.encode(number,"UTF-8");*/
	         // String url="http://crm.jingyaoshi.net/SysApi/ApiGetGradeInfo?gradename="+gradename;
	        
		   
		    String url="http://crm.jingyaoshi.net/SysApi/ApiGetUserInfo?phone="+number;
	        PrintWriter out = null;
	        BufferedReader in = null;
	        JSONObject jsonObject = null;
	        String result = "";
	        String ss="";
	        try {
	            URL realUrl = new URL(url);
	            // 打开和URL之间的连接
	            HttpURLConnection conn = (HttpURLConnection) realUrl.openConnection();
	            // 设置通用的请求属性
	            conn.setRequestMethod("POST");
	            // 发送POST请求必须设置下面的属性
	            conn.setDoOutput(true);
	            conn.setDoInput(true);
	            conn.setUseCaches(false);
	            //设置请求属性
	            conn.setRequestProperty("Content-Type", "application/json; charset=utf-8");
	            conn.connect();
	            // 获取URLConnection对象对应的输出流
	            out = new PrintWriter(conn.getOutputStream());
	            // 发送请求参数

//	            out.print(JSON.toJSONString(json));
	            // flush输出流的缓冲
	            out.flush();
	            // 定义BufferedReader输入流来读取URL的响应
	            in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	            String line = "";
	            while ((line = in.readLine()) != null) {
	                result += line;
	            }
	            //将返回结果转换为字符串
	            ss=result;
	          //  jsonObject = JSONObject.parseObject(result);
	            System.out.println("jsonObject:"+ss);
	        } catch (Exception e) {
	            throw new RuntimeException("远程通路异常" + e.toString());
	        }
	        // 使用finally块来关闭输出流、输入流
	        finally {
	            try {
//	                if (out != null) {
//	                    out.close();
//	                }
	                if (in != null) {
	                    in.close();
	                }
	            } catch (IOException ex) {
	                ex.printStackTrace();
	            }
	        }
	        return ss;

	    }

	    public static String sendPost2(String number,String User_Name) throws UnsupportedEncodingException {
	        //		pname= URLEncoder.encode(pname,"ISO-8859-1");
	        // gradename= URLEncoder.encode(gradename,"UTF-8");
	       /* openid= URLEncoder.encode(openid,"UTF-8");*/
	        //integral= URLEncoder.encode(integral,"UTF-8");
	        // String url="http://crm.jingyaoshi.net/SysApi/ApiGetGradeInfo?gradename="+gradename;
	        
	    	String url="http://crm.jingyaoshi.net/SysApi/APiAddUserInfo?phone="+number+"&Name="+User_Name;
	    	System.out.println("姓名："+User_Name);
	    	System.out.println(url);
	    	PrintWriter out = null;
	        BufferedReader in = null;
	        String jsonObject = null;
	        String result = "";
	        try {
	            URL realUrl = new URL(url);
	            // 打开和URL之间的连接
	            HttpURLConnection conn = (HttpURLConnection) realUrl.openConnection();
	            // 设置通用的请求属性
	            conn.setRequestMethod("POST");
	            // 发送POST请求必须设置下面的属性
	            conn.setDoOutput(true);
	            conn.setDoInput(true);
	            conn.setUseCaches(false);
	            //设置请求属性
	            conn.setRequestProperty("Content-Type", "application/json; charset=utf-8");
	            conn.connect();
	            // 获取URLConnection对象对应的输出流
	            out = new PrintWriter(conn.getOutputStream());
	            // 发送请求参数

//	            out.print(JSON.toJSONString(json));
	            // flush输出流的缓冲
	            out.flush();
	            // 定义BufferedReader输入流来读取URL的响应
	            in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	            String line = "";
	            while ((line = in.readLine()) != null) {
	                result += line;
	            }
	            
	            
	            jsonObject = result;
	            //将返回结果转换为字符串
	            /*jsonObject = JSONObject.parseObject(result);*/
	            System.out.println("jsonObject:"+jsonObject);
	        } catch (Exception e) {
	            throw new RuntimeException("远程通路异常" + e.toString());
	        }
	        // 使用finally块来关闭输出流、输入流
	        finally {
	            try {
//	                if (out != null) {
//	                    out.close();
//	                }
	                if (in != null) {
	                    in.close();
	                }
	            } catch (IOException ex) {
	                ex.printStackTrace();
	            }
	        }
	        return jsonObject;

	    }
	
	
}
