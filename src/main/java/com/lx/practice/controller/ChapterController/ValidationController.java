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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.lx.practice.entity.LogUser;
import com.lx.practice.service.LogUserService;


//�˺���֤
@Controller
@RequestMapping("/validation")
public class ValidationController {
	
	@Autowired
	private  LogUserService  logUserService;
	
	
	   //用户手机号验证
		@RequestMapping(value="/validation",method=RequestMethod.GET)
	    public  ModelAndView  index(ModelAndView model,HttpServletRequest request,
	    		@RequestParam(value="openid")String openid,
	    		@RequestParam(value="headimgurl")String headimgurl,
	    		@RequestParam(value="nickname")String nickname,
	    		@RequestParam(value="days")String days,
	    		@RequestParam(value="dateTime")String dateTime,
	    		@RequestParam(value="integral")String integral,
	    		@RequestParam(value="lv1state")String lv1state,
	    		@RequestParam(value="lv2state")String lv2state,
	    		@RequestParam(value="lv3state")String lv3state
	    		) throws UnsupportedEncodingException{
			
			System.out.println("进入手机号验证");
			model.addObject("openid", openid);
			model.addObject("headimgurl", headimgurl);
			model.addObject("nickname", nickname);
			model.addObject("days", days);
			model.addObject("dateTime", dateTime);
			model.addObject("integral", integral);
			model.addObject("lv1state", lv1state);
			model.addObject("lv2state", lv2state);
			model.addObject("lv3state", lv3state);
			model.setViewName("chapter/validation");
			return model;
	    }
	
		
		
		
		//用户信息验证
		@RequestMapping(value="/insert",method=RequestMethod.POST)
		@ResponseBody
	    public  Map<String, Object>  add(ModelAndView model,HttpServletRequest request,
	    		LogUser   logUser
	    		) throws UnsupportedEncodingException{
			Map<String, Object> queryMap = new HashMap<String, Object>();
			
			String   JSONObject  =  sendPost(logUser.getNumber());
			String   JSONObject1=URLDecoder.decode(JSONObject,"UTF-8");
			
			 JSONObject json=JSON.parseObject(JSONObject1);
		     JSONObject dataJson =json.getJSONObject("data");
			/*System.out.println("data:"+dataJson);*/
			 
		if (dataJson != null) {//如果查询出来的信息不为空那么说明在学习系统中有该用户，在将该用户的信息添加进微信信息表中
			     System.out.println("不为空，将用户信息添加进");	
			
				 logUserService.updateList(logUser);
			     
				 queryMap.put("type", "success");
		   	  }else{
		   		 queryMap.put("type", "error");
		   	  }
	        return queryMap;
	    }
		
		
		
		//接口查询用户在学习系统中的信息
		   public static String sendPost(String number) throws UnsupportedEncodingException {//��Ϊ�ӿ��з��ص���һ���ַ�������˽������ķ���ֵ��Ϊ�ַ�����ʽ����Ȼ�ᱨ���˷�������ֵҪ���ݡ��Է��ӿ��е����ݷ���ֵ������
		        //		pname= URLEncoder.encode(pname,"ISO-8859-1");
		       // gradename= URLEncoder.encode(gradename,"UTF-8");
		         /*openid= URLEncoder.encode(openid,"UTF-8");*/
		         // String url="http://crm.jingyaoshi.net/SysApi/ApiGetGradeInfo?gradename="+gradename;
		        String url="http://crm.jingyaoshi.net/SysApi/ApiGetUserInfo?phone="+number;
		        PrintWriter out = null;
		        BufferedReader in = null;
		        JSONObject jsonObject = null;
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

//		            out.print(JSON.toJSONString(json));
		            // flush������Ļ���
		            out.flush();
		            // ����BufferedReader����������ȡURL����Ӧ
		            in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		            String line = "";
		            while ((line = in.readLine()) != null) {
		                result += line;
		            }
		             results=result;
		            //�����ؽ��ת��Ϊ�ַ���
		          /*  jsonObject = JSONObject.parseObject(result);*/
		            System.out.println("jsonObject:"+results);
		            
		        } catch (Exception e) {
		            throw new RuntimeException("Զ��ͨ·�쳣" + e.toString());
		        }
		        // ʹ��finally�����ر��������������
		        finally {
		            try {
//		                if (out != null) {
//		                    out.close();
//		                }
		                if (in != null) {
		                    in.close();
		                }
		            } catch (IOException ex) {
		                ex.printStackTrace();
		            }
		        }
		        return results;

		    }
	
}
