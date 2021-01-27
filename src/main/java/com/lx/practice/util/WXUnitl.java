package com.lx.practice.util;


import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;
//寰俊鍒嗕韩宸ュ叿绫�
public class WXUnitl {
    public static String getSignature(String jsapi_ticket, String nonce_str, String timestamp, String url) {
        // 娉ㄦ剰杩欓噷鍙傛暟鍚嶅繀椤诲叏閮ㄥ皬鍐欙紝涓斿繀椤绘湁搴�
        String string1 = "jsapi_ticket=" + jsapi_ticket + "&noncestr=" + nonce_str + "&timestamp=" + timestamp + "&url="
                + url;

        String signature = "";
        try {
            MessageDigest crypt = MessageDigest.getInstance("SHA-1");
            crypt.reset();
            crypt.update(string1.getBytes("UTF-8"));
            signature = byteToHex(crypt.digest());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return signature;
    }

    private static String byteToHex(final byte[] hash) {
        Formatter formatter = new Formatter();
        for (byte b : hash) {
            formatter.format("%02x", b);
        }
        String result = formatter.toString();
        formatter.close();
        return result;
    }
}
