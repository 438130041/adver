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
	
	
	//����ѧϰϵͳ��������ѯ�Ƿ��и��û�
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
	            //�����ؽ��ת��Ϊ�ַ���
	            ss=result;
	          //  jsonObject = JSONObject.parseObject(result);
	            System.out.println("jsonObject:"+ss);
	        } catch (Exception e) {
	            throw new RuntimeException("Զ��ͨ·�쳣" + e.toString());
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
	        return ss;

	    }

	    public static String sendPost2(String number,String User_Name) throws UnsupportedEncodingException {
	        //		pname= URLEncoder.encode(pname,"ISO-8859-1");
	        // gradename= URLEncoder.encode(gradename,"UTF-8");
	       /* openid= URLEncoder.encode(openid,"UTF-8");*/
	        //integral= URLEncoder.encode(integral,"UTF-8");
	        // String url="http://crm.jingyaoshi.net/SysApi/ApiGetGradeInfo?gradename="+gradename;
	        
	    	String url="http://crm.jingyaoshi.net/SysApi/APiAddUserInfo?phone="+number+"&Name="+User_Name;
	    	System.out.println("������"+User_Name);
	    	System.out.println(url);
	    	PrintWriter out = null;
	        BufferedReader in = null;
	        String jsonObject = null;
	        String result = "";
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
	            /*jsonObject = JSONObject.parseObject(result);*/
	            System.out.println("jsonObject:"+jsonObject);
	        } catch (Exception e) {
	            throw new RuntimeException("Զ��ͨ·�쳣" + e.toString());
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
