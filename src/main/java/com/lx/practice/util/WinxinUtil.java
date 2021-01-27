package com.lx.practice.util;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

import net.sf.json.JSONObject;

public class WinxinUtil {
    /**
     * 缂栧啓Get璇锋眰鐨勬柟娉曘�備絾娌℃湁鍙傛暟浼犻�掔殑鏃跺�欙紝鍙互浣跨敤Get璇锋眰
     *
     * @param url 闇�瑕佽姹傜殑URL
     * @return 灏嗚姹俇RL鍚庤繑鍥炵殑鏁版嵁锛岃浆涓篔SON鏍煎紡锛屽苟return
     */
    public static JSONObject doGetStr(String url) throws IOException {
        DefaultHttpClient client = new DefaultHttpClient();//鑾峰彇DefaultHttpClient璇锋眰
        HttpGet httpGet = new HttpGet(url);//HttpGet灏嗕娇鐢℅et鏂瑰紡鍙戦�佽姹俇RL
        JSONObject jsonObject = null;
        HttpResponse response = client.execute(httpGet);//浣跨敤HttpResponse鎺ユ敹client鎵цhttpGet鐨勭粨鏋�
        HttpEntity entity = response.getEntity();//浠巖esponse涓幏鍙栫粨鏋滐紝绫诲瀷涓篐ttpEntity
        if (entity != null) {
            String result = EntityUtils.toString(entity, "UTF-8");//HttpEntity杞负瀛楃涓茬被鍨�
            jsonObject = JSONObject.fromObject(result);//瀛楃涓茬被鍨嬭浆涓篔SON绫诲瀷
        }
        return jsonObject;
    }

    /**
     * 缂栧啓Post璇锋眰鐨勬柟娉曘�傚綋鎴戜滑闇�瑕佸弬鏁颁紶閫掔殑鏃跺�欙紝鍙互浣跨敤Post璇锋眰
     *
     * @param url    闇�瑕佽姹傜殑URL
     * @param outStr 闇�瑕佷紶閫掔殑鍙傛暟
     * @return 灏嗚姹俇RL鍚庤繑鍥炵殑鏁版嵁锛岃浆涓篔SON鏍煎紡锛屽苟return
     */
    public static JSONObject doPostStr(String url, String outStr) throws IOException {
        DefaultHttpClient client = new DefaultHttpClient();//鑾峰彇DefaultHttpClient璇锋眰
        HttpPost httpost = new HttpPost(url);//HttpPost灏嗕娇鐢℅et鏂瑰紡鍙戦�佽姹俇RL
        JSONObject jsonObject = null;
        httpost.setEntity(new StringEntity(outStr, "UTF-8"));//浣跨敤setEntity鏂规硶锛屽皢鎴戜滑浼犺繘鏉ョ殑鍙傛暟鏀惧叆璇锋眰涓�
        HttpResponse response = client.execute(httpost);//浣跨敤HttpResponse鎺ユ敹client鎵цhttpost鐨勭粨鏋�
        String result = EntityUtils.toString(response.getEntity(), "UTF-8");//HttpEntity杞负瀛楃涓茬被鍨�
        jsonObject = JSONObject.fromObject(result);//瀛楃涓茬被鍨嬭浆涓篔SON绫诲瀷
        return jsonObject;
    }
}

