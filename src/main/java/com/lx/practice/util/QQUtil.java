/*package com.lx.practice.util;
import java.io.IOException;
import java.net.URLEncoder;

import org.apache.http.client.ClientProtocolException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.druid.util.HttpClientUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.lx.practice.entity.QQAccessToken;



public class QQUtil {
			
	private static final Logger log = LoggerFactory.getLogger(QQUtil.class);

	private static final String QQ_APP_ID="XXX";//�ĳ��Լ���
	private static final String QQ_APP_SECRET="XXX";//�ĳ��Լ���
	private static final String LOGIN_REDIRECT_URI="https://www.zwqh.top/account/qqLogin";	//�ĳ��Լ���
	private static final String BIND_REDIRECT_URI="https://www.zwqh.top/account/qqBind";									  //�ĳ��Լ���
	private static final String AUTH_CODE_URL="https://graph.qq.com/oauth2.0/authorize?response_type=code&client_id="+QQ_APP_ID+"&redirect_uri=REDIRECT_URI&state=STATE";
    private static final String ACCESS_TOKEN_URL="https://graph.qq.com/oauth2.0/token?client_id="+QQ_APP_ID+"&client_secret="+QQ_APP_SECRET+"&code=CODE&grant_type=authorization_code&redirect_uri=REDIRECT_URI";
    private static final String REFRESH_TOKEN_URL="https://graph.qq.com/oauth2.0/token?client_id="+QQ_APP_ID+"&client_secret="+QQ_APP_SECRET+"&grant_type=refresh_token&refresh_token=REFRESH_TOKEN";
    private static final String OPEN_ID_URL="https://graph.qq.com/oauth2.0/me?access_token=ACCESS_TOKEN";
    private static final String USER_INFO_URL="https://graph.qq.com/user/get_user_info?access_token=ACCESS_TOKEN&oauth_consumer_key="+QQ_APP_ID+"&openid=OPENID";
    
    public static JSONObject getJsonStrByQueryUrl(String paramStr){
        String[] params = paramStr.split("&");
        JSONObject obj = new JSONObject();
        for (int i = 0; i < params.length; i++) {
            String[] param = params[i].split("=");
            if (param.length >= 2) {
                String key = param[0];
                String value = param[1];
                for (int j = 2; j < param.length; j++) {
                    value += "=" + param[j];
                }
                try {
                    obj.put(key,value);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return obj;
    }
    *//**
     * ��ȡ��Ȩ��¼ҳ��url
     * @return
     *//*
    public static String getLoginConnectUrl(String state) {
    	String url=null;
    	try{
    		url=AUTH_CODE_URL.replace("REDIRECT_URI", URLEncoder.encode(LOGIN_REDIRECT_URI, "utf-8")).replace("STATE", state);
    	}catch (Exception e) {
			log.error(e.toString());
		}
		return url;
	}
    
    *//**
     * ��ȡ��Ȩ��ҳ��url
     * @return
     *//*
    public static String getBindConnectUrl() {
    	String url=null;
    	try{
    		url=AUTH_CODE_URL.replace("REDIRECT_URI", URLEncoder.encode(BIND_REDIRECT_URI, "utf-8"));
    	}catch (Exception e) {
			log.error(e.toString());
		}
		return url;
	}
      
    *//**
     * ��ȡAccessToken
     * @return �����õ���access_token����Ч��
     *//*
    public static QQAccessToken getQQLoginAccessToken(String code) throws ClientProtocolException, IOException{
    	QQAccessToken token = new QQAccessToken();
        String url = ACCESS_TOKEN_URL.replace("CODE", code).replace("REDIRECT_URI", URLEncoder.encode(LOGIN_REDIRECT_URI, "utf-8"));
        log.info("��������·����"+url);
        String result = HttpClientUtils.doGet(url);//
        JSONObject jsonObject=getJsonStrByQueryUrl(result);
        log.info("���Ƿ��ؽ����"+jsonObject);
        if(jsonObject!=null){ //������ز�Ϊ�գ������ؽ����װ��AccessTokenʵ����
            token.setAccessToken(jsonObject.getString("access_token"));//�ӿڵ���ƾ֤
            token.setExpiresIn(jsonObject.getInteger("expires_in"));//access_token�ӿڵ���ƾ֤��ʱʱ�䣬��λ���룩
            token.setRefreshToken(jsonObject.getString("refresh_token"));
        }
        return token;
    }
    
    *//**
     * ��ȡAccessToken
     * @return �����õ���access_token����Ч��
     *//*
    public static QQAccessToken getQQBindAccessToken(String code) throws ClientProtocolException, IOException{
    	QQAccessToken token = new QQAccessToken();
        String url = ACCESS_TOKEN_URL.replace("CODE", code).replace("REDIRECT_URI", URLEncoder.encode(BIND_REDIRECT_URI, "utf-8"));
        log.info("��������·����"+url);
        String result = HttpClientUtils.doGet(url);
        JSONObject jsonObject=getJsonStrByQueryUrl(result);
        log.info("���Ƿ��ؽ����"+jsonObject);
        if(jsonObject!=null){ //������ز�Ϊ�գ������ؽ����װ��AccessTokenʵ����
            token.setAccessToken(jsonObject.getString("access_token"));//�ӿڵ���ƾ֤
            token.setExpiresIn(jsonObject.getInteger("expires_in"));//access_token�ӿڵ���ƾ֤��ʱʱ�䣬��λ���룩
            token.setRefreshToken(jsonObject.getString("refresh_token"));
        }
        return token;
    }
    
    *//**
     * ˢ�»�����access_tokenʹ��
     * @return �����õ���access_token����Ч��
     *//*
    public static QQAccessToken refreshQQAccessToken(String refreshToken) throws ClientProtocolException, IOException{
    	QQAccessToken token = new QQAccessToken();
        String url = REFRESH_TOKEN_URL.replace("REFRESH_TOKEN",refreshToken);
        log.info("��������·����"+url);
        String result = HttpClientUtils.doGet(url);
        log.info("���Ƿ��ؽ����"+result);
        JSONObject jsonObject=getJsonStrByQueryUrl(result);
        log.info("����תΪjson�Ľ����"+jsonObject);
        if(jsonObject!=null){ //������ز�Ϊ�գ������ؽ����װ��AccessTokenʵ����
            token.setAccessToken(jsonObject.getString("access_token"));//�ӿڵ���ƾ֤
            token.setExpiresIn(jsonObject.getInteger("expires_in"));//access_token�ӿڵ���ƾ֤��ʱʱ�䣬��λ���룩
            token.setRefreshToken(jsonObject.getString("refresh_token"));
        }
        return token;
    }
    *//**
     * ��ȡQQopenId
     * @return QQopenId
     *//*
    public static String getQQOpenId(String accessToken) throws ClientProtocolException, IOException{
        String url = OPEN_ID_URL.replace("ACCESS_TOKEN",accessToken);
        log.info("��������·����"+url);
        String result = HttpClientUtils.doGet(url).replace("callback(", "").replace(");", "");
        log.info("���Ƿ��ؽ����"+result);
        JSONObject jsonObject=JSON.parseObject(result);
        log.info("����תΪjson�Ľ����"+jsonObject);
        if(jsonObject!=null&&jsonObject.getString("openid")!=null){ //������ز�Ϊ��
            return jsonObject.getString("openid");
        }
        return null;
    }  
    *//**
     * ��ȡQQ�û���Ϣ
     * @param accessToken
     * @param openId
     * @return
     * @throws IOException 
     * @throws ClientProtocolException 
     *//*
    public static JSONObject getUserInfo(String accessToken, String openId) throws ClientProtocolException, IOException {
        // ƴ�������ַ
        String url = USER_INFO_URL.replace("ACCESS_TOKEN", accessToken).replace("OPENID", openId);
        log.info("��������·����"+url);
        String result = HttpClientUtils.doGet(url);
        log.info("���Ƿ��ؽ����"+result);
        JSONObject jsonObject=JSONObject.parseObject(result);
        log.info("����תΪjson�Ľ����"+jsonObject);
        JSONObject json=new JSONObject();
        if (jsonObject!=null&&jsonObject.getInteger("ret").equals(0)) {
            try {
            	User user= new User();
                // �û��ı�ʶ
                user.setQqId(openId);
                // �ǳ�
                user.setNickname(jsonObject.getString("nickname"));
                if(jsonObject.getString("figureurl_2")!=null&&!jsonObject.getString("figureurl_2").isEmpty()) {
                	  // �û�ͷ��
                    user.setAvatar(jsonObject.getString("figureurl_qq_2"));
                }else {
                	  // �û�ͷ��
                    user.setAvatar(jsonObject.getString("figureurl_qq_1"));
                }
                json.put("success", true);
                json.put("msg", "success");
                json.put("user", user);
            } catch (Exception e) {
                int errorCode = jsonObject.getInteger("ret");
                String errorMsg = jsonObject.getString("msg");
                log.error("��ȡ�û���Ϣʧ�� errcode:{} errmsg:{}", errorCode, e.toString());
                json.put("success", false);
                json.put("msg", errorMsg);
                json.put("user", null);
            }
        }else {
        	  json.put("success", false);
              json.put("msg", "���ȵ�¼");
              json.put("user", null);
        }
        return json;
		
}
*/