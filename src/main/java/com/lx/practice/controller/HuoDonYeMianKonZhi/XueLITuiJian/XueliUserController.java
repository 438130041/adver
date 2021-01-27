package com.lx.practice.controller.HuoDonYeMianKonZhi.XueLITuiJian;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.HuoDongUser;
import com.lx.practice.service.huodongservice.XueLiTuiGuangService;
import com.lx.practice.util.Constant;
import com.lx.practice.util.EmojiFilter;
import com.lx.practice.util.IOEUtil;
import com.sun.tools.example.debug.expr.ParseException;

import net.sf.json.JSONObject;

/*@Slf4j*/
@Controller
@RequestMapping("/xuelituijian")
public class XueliUserController {
	
	@Autowired
	private  XueLiTuiGuangService xuelituiguangservice;
	
    
	// ΢�Ź��ں���ҳ��Ȩ��¼
    @RequestMapping(value ="wxLoginss",method=RequestMethod.GET)
    public String wxLogin(HttpServletRequest request,HttpServletResponse response,String  redeems,String gift) throws ParseException {
    		 System.out.println("����ѧ��������Ȩ");
            // ��һ�����û�ͬ����Ȩ����ȡcode
            //WXAuthUtil.APPID ΢�Ź��ںŵ�appenid �����΢�Ź��ںź�̨��ȡ��
            String url ="https://open.weixin.qq.com/connect/oauth2/authorize?appid="+Constant.APP_ID
                            + "&redirect_uri="+ URLEncoder.encode("http://practice.jingyaoshi.net/xuelituijian/callBackss?redeem="+redeems+"&gift="+gift+"")//��������ǻص��ĵ�ַ ��������г�����ȡ���û�����
                            + "&response_type=code"
                            + "&scope=snsapi_userinfo"
                            + "&redeem="+redeems
                            + "&state=STATE#wechat_redirect";
            	System.out.println("�¸�����");
            
          /*  qq��Ȩ����    String  urlqq ="https://api.q.qq.com/sns/jscode2session?appid=APPID&secret=SECRET&js_code=JSCODE&grant_type=authorization_code";*/
            	
            return "redirect:"+url;//�����ض��򣬷����ܳɹ�
    }
 
    
    

    //΢����Ȩ��ҳ�ص��ӿ�
    @RequestMapping(value ="callBackss",method=RequestMethod.GET)
    public ModelAndView callBack(ModelAndView model,ModelMap modelMap, HttpServletRequest req, HttpServletResponse resp,String redeem,String gift) throws Exception {
        //����û�ͬ����Ȩ��ҳ�潫��ת�� redirect_uri/?code=CODE&state=STATE
        //https://xxxxx/xxxxx/callBackss.do?code=CODE&state=STATE
        //��ȡcode  code��Ϊ��ȡaccess_token��Ʊ��
    	System.out.println("������Ȩ�ӿ�");
    	
        String code =req.getParameter("code");
        //�ڶ�����ͨ��code��ȡ��ҳ��Ȩaccess_token (��ȡopenid�ӿ�)
        //WXAuthUtil.APPID ���ںŵ�Appid
        //WXAuthUtil.APPSECRET ���ںŵ�APPSECRET ������΢�Ź��ںź�̨��ȡ
        String url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid="+Constant.APP_ID
                        + "&secret="+Constant.APP_SECRET
                        + "&code="+code
                        + "&grant_type=authorization_code";

        //�������� get�ύ ��codeƾ֤ȥ��ȡopenid��access_token
        JSONObject jsonObject = IOEUtil.doGetJson(url);

        String openid = jsonObject.getString("openid");
        String access_token = jsonObject.getString("access_token");
        String refresh_token = jsonObject.getString("refresh_token");

        //�õ��û�openid ��access_token ȥ��ȡ�û���Ϣ
        //���岽,��֤access_token�Ƿ����
        String chickUrl="https://api.weixin.qq.com/sns/auth?access_token="+access_token+"&openid="+openid;
        JSONObject chickuserInfo = IOEUtil.doGetJson(chickUrl);

        //����access_tokenӵ�н϶̵���Ч�ڣ���access_token��ʱ�󣬿���ʹ��refresh_token����ˢ�£�refresh_token��Ч��Ϊ30�죬��refresh_tokenʧЧ֮����Ҫ�û�������Ȩ
        //������ʹ��󣬾��п�����access_token������ errcode ��ֵ�� 0 ��ô����û�����⣬access_tokenû�й���,������0���ǹ��ڣ���ô����Ҫȥˢ��access_token
        if(!"0".equals(chickuserInfo.getString("errcode"))){
                //������ˢ��access_token(ˢ��access_token�ӿ�)
                String refreshTokenUrl="https://api.weixin.qq.com/sns/oauth2/refresh_token?appid="+openid+"&grant_type=refresh_token&refresh_token="+refresh_token;

                JSONObject refreshInfo = IOEUtil.doGetJson(chickUrl);

                access_token=refreshInfo.getString("access_token");
        }

        //��ȡ�û��õ�openid ��access_tokenȥ��ȡ�û���Ϣ����ҳ���н���ҵ������ȡ�洢�����ݿ���:
        //���Ĳ�(��ȡ�û��ӿ�)
        String infoUrl = "https://api.weixin.qq.com/sns/userinfo?access_token="+access_token
                        + "&openid="+openid
                        + "&lang=zh_CN";

        JSONObject userInfo = IOEUtil.doGetJson(infoUrl);
        userInfo.getString("openid");
        userInfo.getString("nickname");
        userInfo.getString("city");
        userInfo.getString("province");
        userInfo.getString("sex");
        userInfo.getString("country");
        userInfo.getString("headimgurl");
        userInfo.getString("language");
        userInfo.getString("privilege");
        System.out.println("userInfo------:"+userInfo.toString());
        /*System.out.println("΢������"+URLDecoder.decode(userInfo.getString("nickname"), "UTF-8"));*/
        
        String  nickname = EmojiFilter.filterEmoji(URLDecoder.decode(userInfo.getString("nickname"), "UTF-8"));
        HuoDongUser  huodonguser  = new  HuoDongUser();
        huodonguser.setOpenid(userInfo.getString("openid"));
        huodonguser.setNickname(userInfo.getString("nickname"));
        huodonguser.setHeadimgurl(userInfo.getString("headimgurl"));
        /*//���û�΢�������б��봦���ڴ������ݿ⣬ȡ����ʱ���н���
        // �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
        nickname = URLEncoder.encode(nickname, "ISO-8859-1");
       // �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
      	nickname = URLDecoder.decode(nickname, "UTF-8");*/
         System.out.println("ȥ��������΢������"+nickname);
       //�Ȳ�ѯ�������û�,������ѯ������Ϣ����redis��ȥ
        /*java.util.List<LogUser>  loguserfind  = logUserService.findUsers(userInfo.getString("openid"));
         * 
         *ͨ��id��ѯ�����Ӧ��΢����Ϣ
         *java.util.List<LogUser> loguser = logUserService.findbyuser(userInfo.getString("openid"));  
         * */
       //��ѯ�û������Ƿ��Ѿ����û���Ϣ
         System.out.println("��ѯ�Ƽ������Ƿ��и��û���Ϣ");
        java.util.List<HuoDongUser> HuoDongUser = xuelituiguangservice.selectxuelituiguangren(huodonguser);
         //userInfo.getString("unionid");
         /*Map<String, Object> map = new HashMap<String, Object>();
         map.put("openId", userInfo.getString("openid"));
         modelMap.put("nickname", userInfo.getString("nickname"));//������Ȩ�û�
         String baoqing = EmojiFilter.filterEmoji(userInfo.getString("nickname"));
         String wxUser=xueliUserService.findByxueopenid(openid);*/
        System.out.println("���ݳ��ȣ�"+HuoDongUser.size());
         if (HuoDongUser.size() == 0 ){//��������(��Ϊ����Ϊ�գ����д˴�������HuoDongUser.get(0)...�����ж�)
        	 //��������ڽ��û�΢����Ϣ�������ݿ���ȥ
        	 xuelituiguangservice.insetwxxinxi(huodonguser);
             model.addObject("headimgurl", userInfo.getString("headimgurl"));
             model.addObject("openid",userInfo.getString("openid"));
             model.addObject("nickname", userInfo.getString("nickname"));
             model.setViewName("huodongyemian/xuelituijian/zuduipage");
        	 
         } else {
        	 model.addObject("openid", userInfo.getString("openid"));
             model.addObject("headimgurl", userInfo.getString("headimgurl"));
             model.addObject("nickname", userInfo.getString("nickname"));
             model.setViewName("huodongyemian/xuelituijian/zudui");
         }
         
         return model;
    }
    
    
    
    
    
   @RequestMapping(value="/xuelituijian",method=RequestMethod.GET)
    public ModelAndView chakanhuodonguize(ModelAndView model,HttpServletRequest request,String  openid) throws UnsupportedEncodingException{
		System.out.println("����鿴�����");
		System.out.println("openid:"+openid);
		model.addObject("openid", openid);
		model.setViewName("huodongyemian/xuelituijian/zuduipage");
		//zuduipage��һ��ҳ��,zudui�ڶ���ҳ�棬zutixian����ҳ�棬
        return model;
    }

}