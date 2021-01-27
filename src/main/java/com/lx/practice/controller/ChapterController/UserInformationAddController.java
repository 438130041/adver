package com.lx.practice.controller.ChapterController;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.lx.practice.entity.LogUser;
import com.lx.practice.service.LogUserService;



@Controller
@RequestMapping("/useradd")
public class UserInformationAddController {
		
	@Autowired
	private  LogUserService  logUserService;
	
	//用户信息注册
	@RequestMapping(value="/useradd",method=RequestMethod.POST)
	@ResponseBody
    public  Map<String, Object>  add(ModelAndView model,HttpServletRequest request,
    		LogUser   logUser
    		) throws UnsupportedEncodingException{
		Map<String, Object> queryMap = new HashMap<String, Object>();
		//
		System.out.println("number:"+logUser.getNumber());
		System.out.println("name:"+logUser.getUser_Name());
		
		//先将用户填写的信息添加到，微信信息表中去
		logUserService.updateList(logUser);
		/*sendPost2(logUser.getNumber(),logUser.getUser_Name());*/
	     System.out.println("查询学习系统用户表");
		 String   JSONObject  =  sendPost(logUser.getNumber());//查询学习系统表中是否已有该用户账号
		 String   JSONObject1=URLDecoder.decode(JSONObject,"UTF-8");
		 JSONObject json=JSON.parseObject(JSONObject1);
	     JSONObject dataJson =json.getJSONObject("data");
	     System.out.println("data:"+dataJson);
		if (dataJson == null) {//如果查询出的data值为空，说明学习系统表中没有该用户信息系
			System.out.println("如果查询出没有用户，就把用户信息添加进入");
			//将用户填写的信息添加进学习系统表中去
			sendPost2(logUser.getNumber(),logUser.getUser_Name());
			
		}
		queryMap.put("type", "success");
        return queryMap;
    }
	
	
	//接口查询学习系统表中是否有该用户
	   public static String sendPost(String number) throws UnsupportedEncodingException {//因为接口返回值是衣蛾String类型的字符串，所以方法的返回值也应该是String类型
	        //		pname= URLEncoder.encode(pname,"ISO-8859-1");
	       // gradename= URLEncoder.encode(gradename,"UTF-8");
	         /*openid= URLEncoder.encode(openid,"UTF-8");*/
	         // String url="http://crm.jingyaoshi.net/SysApi/ApiGetGradeInfo?gradename="+gradename;
		   			 // http://crm.jingyaoshi.net/SysApi/ApiGetUserInfo?phone=
		   String url="http://crm.jingyaoshi.net/SysApi/ApiGetUserInfo?phone="+number;//接口通路地址
	        PrintWriter out = null;
	        BufferedReader in = null;
	        String jsonObject = null;//jsonObject变量做为返回值的承接变量，返回值是String类型，因此变量定义为String类型
	        String result = "";
	        String results;
			try {
	            URL realUrl = new URL(url);
	            // �򿪺�URL֮�������
	            HttpURLConnection conn = (HttpURLConnection) realUrl.openConnection();
	            // ����ͨ�õ���������
	            conn.setRequestMethod("POST");
	            // ����POST��������������������
	            conn.setDoOutput(true);
	            conn.setDoInput(true);
	            conn.setUseCaches(false);
	            //������������
	            conn.setRequestProperty("Content-Type", "application/json; charset=utf-8");
	            conn.connect();
	            // ��ȡURLConnection�����Ӧ�������
	            out = new PrintWriter(conn.getOutputStream());
	            // �����������

//	            out.print(JSON.toJSONString(json));
	            // flush������Ļ���
	            out.flush();
	            // ����BufferedReader����������ȡURL����Ӧ
	            in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	            String line = "";
	            while ((line = in.readLine()) != null) {
	                result += line;
	            }
	            jsonObject=result;
	            //�����ؽ��ת��Ϊ�ַ���
	          /*  jsonObject = JSONObject.parseObject(result);*/
	            System.out.println("jsonObject:"+jsonObject);
	            
	        } catch (Exception e) {
	            throw new RuntimeException("通路异常" + e.toString());
	        }
	        // ʹ��finally�����ر��������������
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
	   	
	   
	   
	   //将用户信息添加进入学习系统表中
	    public static String sendPost2(String number,String User_Name) throws UnsupportedEncodingException {
	        // pname= URLEncoder.encode(pname,"ISO-8859-1");
	        // gradename= URLEncoder.encode(gradename,"UTF-8");
	       /*  openid= URLEncoder.encode(openid,"UTF-8");*/
	        // integral= URLEncoder.encode(integral,"UTF-8");
	        // String url="http://crm.jingyaoshi.net/SysApi/ApiGetGradeInfo?gradename="+gradename;
	       //http://crm.jingyaoshi.net/SysApi/APiAddUserInfo?phone=�ֻ���&&Name=����(��Ϊ��)
	    	String url="http://crm.jingyaoshi.net/SysApi/APiAddUserInfo?phone="+number+"&&Name="+User_Name;
	        PrintWriter out = null;
	        BufferedReader in = null;
	        String jsonObject = null;
	        String result = "";
	        String insertresult;
			try {
	            URL realUrl = new URL(url);
	            // �򿪺�URL֮�������
	            HttpURLConnection conn = (HttpURLConnection) realUrl.openConnection();
	            // ����ͨ�õ���������
	            conn.setRequestMethod("POST");
	            // ����POST��������������������
	            conn.setDoOutput(true);
	            conn.setDoInput(true);
	            conn.setUseCaches(false);
	            //������������
	            conn.setRequestProperty("Content-Type", "application/json; charset=utf-8");
	            conn.connect();
	            // ��ȡURLConnection�����Ӧ�������
	            out = new PrintWriter(conn.getOutputStream());
	            // �����������

//	            out.print(JSON.toJSONString(json));
	            // flush������Ļ���
	            out.flush();
	            // ����BufferedReader����������ȡURL����Ӧ
	            in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	            String line = "";
	            while ((line = in.readLine()) != null) {
	                result += line;
	            }
	            
	            jsonObject = result;
	            //�����ؽ��ת��Ϊ�ַ���
	           /* jsonObject = JSONObject.parseObject(result);*/
	            System.out.println("jsonObject:"+jsonObject);
	        } catch (Exception e) {
	            throw new RuntimeException("通路异常" + e.toString());
	        }
	        // ʹ��finally�����ر��������������
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
