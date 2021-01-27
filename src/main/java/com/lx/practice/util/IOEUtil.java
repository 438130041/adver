package com.lx.practice.util;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

import net.sf.json.JSONObject;


public class IOEUtil {
	
	public static JSONObject doGetJson(String url) throws Exception, IOException {
        JSONObject jsonObject=null;
        //��ʼ��httpClient
        DefaultHttpClient client=new DefaultHttpClient();
        //��Get��ʽ�����ύ
        HttpGet httpGet=new HttpGet(url);
        //��������
        HttpResponse response= client.execute(httpGet);
        //��ȡ����
        HttpEntity entity=response.getEntity();
        //��ʽת��
        if (entity!=null) {
                String result= EntityUtils.toString(entity,"UTF-8");
                jsonObject=JSONObject.fromObject(result);
        }
        //�ͷ�����
        httpGet.releaseConnection();
        return jsonObject;
}
	
}
