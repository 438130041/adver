package com.lx.practice.util;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

import net.sf.json.JSONObject;


public class WeiXinUnitl {
    public static WinXinEntity getWinXinEntity(String url) {
        WinXinEntity wx = new WinXinEntity();
        String access_token = getAccessToken();
        String ticket = getTicket(access_token);
        Map<String, String> ret = Sign.sign(ticket, url);
        wx.setTicket(ret.get("jsapi_ticket"));
        wx.setSignature(ret.get("signature"));
        wx.setNoncestr(ret.get("nonceStr"));
        wx.setTimestamp(ret.get("timestamp"));
        return wx;
    }

    // 鑾峰彇token
    private static String getAccessToken() {
        String access_token = "";
        String grant_type = "client_credential";//鑾峰彇access_token濉啓client_credential
        String AppId="wxbf8bce0d4f7e3ae3";//绗笁鏂圭敤鎴峰敮涓�鍑瘉
        String secret="0297d3b5d85db058cd50041478f81d10";//绗笁鏂圭敤鎴峰敮涓�鍑瘉瀵嗛挜锛屽嵆appsecret
        //杩欎釜url閾炬帴鍦板潃鍜屽弬鏁扮殕涓嶈兘鍙�

        String url = "https://api.weixin.qq.com/cgi-bin/token?grant_type="+grant_type+"&appid="+AppId+"&secret="+secret;  //璁块棶閾炬帴

        try {
            URL urlGet = new URL(url);
            HttpURLConnection http = (HttpURLConnection) urlGet.openConnection();
            http.setRequestMethod("GET"); // 蹇呴』鏄痝et鏂瑰紡璇锋眰
            http.setRequestProperty("Content-Type","application/x-www-form-urlencoded");
            http.setDoOutput(true);
            http.setDoInput(true);
            http.connect();
            InputStream is = http.getInputStream();
            int size = is.available();
            byte[] jsonBytes = new byte[size];
            is.read(jsonBytes);
            String message = new String(jsonBytes);
            JSONObject demoJson = JSONObject.fromObject(message);
            access_token = demoJson.getString("access_token");
            is.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("access_token:"+access_token);
        return access_token;
        //return "24_gcxt36ZpYuFN7B-kGzNFe3HseuYbVIDZpcQhBc6r29sA3fQ6C7Gff14iY-CFQKjHczlCh3ElJvI_NhI0BJtsJM6EG577dN8U61x1GuOjlHviiLoll9nQQhTRy28ySRDwv4bB0G_s0vQ26VaQTLKbADAZRQ";
    }

    // 鑾峰彇ticket
    private static String getTicket(String access_token) {
        String ticket = null;
        String url = "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token=" + access_token + "&type=jsapi";// 杩欎釜url閾炬帴鍜屽弬鏁颁笉鑳藉彉
        try {
            URL urlGet = new URL(url);
            HttpURLConnection http = (HttpURLConnection) urlGet.openConnection();
            http.setRequestMethod("GET"); // 蹇呴』鏄痝et鏂瑰紡璇锋眰
            http.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            http.setDoOutput(true);
            http.setDoInput(true);
            System.setProperty("sun.net.client.defaultConnectTimeout", "30000");// 杩炴帴瓒呮椂30绉�
            System.setProperty("sun.net.client.defaultReadTimeout", "30000"); // 璇诲彇瓒呮椂30绉�
            http.connect();
            InputStream is = http.getInputStream();
            int size = is.available();
            byte[] jsonBytes = new byte[size];
            is.read(jsonBytes);
            String message = new String(jsonBytes, "UTF-8");
            JSONObject demoJson = JSONObject.fromObject(message);
            ticket = demoJson.getString("ticket");
            is.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("ticket:"+ticket);
        return ticket;
    }
}

