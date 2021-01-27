package com.lx.practice.util;

public class Constant {
	/**
	 * 公众号AppId//wxbf8bce0d4f7e3ae3
	 */
	public static final String APP_ID = "wx8a884bef921ec086";

	/**
	 * 公众号AppSecret//0297d3b5d85db058cd50041478f81d10
	 */
	public static final String APP_SECRET = "69fc303cac71d7912a629220136b6d87";

	/**
	 * 微信支付商户�?
	 */
	public static final String MCH_ID = "1225930102";

	/**
	 * 微信支付API秘钥
	 */
	public static final String KEY = "0297d3b5d85db058cd50041478f81d10";

	/**
	 * 微信交易类型:公众号支�?
	 */
	public static final String TRADE_TYPE_JSAPI = "JSAPI";

	/**
	 * WEB
	 */
	public static final String WEB = "WEB";

	/**
	 * 返回成功字符�?
	 */
	public static final String RETURN_SUCCESS = "SUCCESS";

	/**
	 * 支付地址(包涵回调地址)
	 */
	//public static final String PAY_URL = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxbf8bce0d4f7e3ae3&redirect_uri=http://shop.jingyaoshi.net/wxpay/m/weChat/unifiedOrder&response_type=code&scope=snsapi_base#wechat_redirect";
	public static final String PAY_URL = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxbf8bce0d4f7e3ae3&redirect_uri=http://shop.jingyaoshi.net/unifiedOrder&response_type=code&scope=snsapi_userinfo#wechat_redirect";
	/**
	 * 微信统一下单url
	 */
	public static final String UNIFIED_ORDER_URL = "https://api.mch.weixin.qq.com/pay/unifiedorder";

	/**
	 * 微信申请�?款url
	 */
	public static final String REFUND_URL = "https://api.mch.weixin.qq.com/secapi/pay/refund";

	/**
	 * 微信支付通知url
	 */
	//public static final String NOTIFY_URL = "http://wxpay.pes-soft.com/wxpay/";
	public static final String NOTIFY_URL = "http://shop.jingyaoshi.net/chaxun/";
	/**
	 * 证书位置
	 */
	public static final String CERT_PATH = "H:/Ws/pes-wxpay/src/main/webapp/cert/apiclient_cert.p12";

	/**
	 * 通过code获取授权access_token的URL
	 */
	public static String Authtoken_URL(String code) {
		StringBuffer url = new StringBuffer();
		url.append("https://api.weixin.qq.com/sns/oauth2/access_token?appid=");
		url.append(Constant.APP_ID);
		url.append("&secret=");
		url.append(Constant.APP_SECRET);
		url.append("&code=");
		url.append(code);
		url.append("&grant_type=authorization_code");
		return url.toString();
	}
}
