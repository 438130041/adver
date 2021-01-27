package com.lx.practice.controller.smallfeatureController;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.LogUserService;
import com.lx.practice.service.smallfeatureservice.PaiHanService;
import com.lx.practice.util.Constant;
import com.lx.practice.util.EmojiFilter;
import com.lx.practice.util.IOEUtil;
import com.sun.tools.example.debug.expr.ParseException;

import net.sf.json.JSONObject;

@Controller
public class DaKaWXYanZhenController {
		
	@Autowired
	private  LogUserService logUserService;
	
	
	@Autowired
	private  PaiHanService  paiHanService;
	
	// ΢�Ź��ں���ҳ��Ȩ��¼
    @RequestMapping(value ="dakawxLogin",method=RequestMethod.GET)
    public String wxLogin(HttpServletRequest request,HttpServletResponse response,String lscodes,String prize,String fenxian) throws ParseException {
    			System.out.println("������Ȩ");
    			System.out.println("Ӫ����ʦ��ר������codes:"+lscodes);
    			System.out.println("fenxianֵ��"+fenxian);
            // ��һ�����û�ͬ����Ȩ����ȡcode
            //WXAuthUtil.APPID ΢�Ź��ںŵ�appenid �����΢�Ź��ںź�̨��ȡ��
            String url ="https://open.weixin.qq.com/connect/oauth2/authorize?appid="+Constant.APP_ID
                            + "&redirect_uri="+ URLEncoder.encode("http://practice.jingyaoshi.net/callBackss?lscodes="+lscodes+"&prize="+prize+"&fenxian="+fenxian+"")//��������ǻص��ĵ�ַ ��������г�����ȡ���û�����
                            + "&response_type=code"
                            + "&scope=snsapi_userinfo"
                            + "&state=STATE#wechat_redirect";
            	System.out.println("�¸�����");
            return "redirect:"+url;//�����ض��򣬷����ܳɹ�
    }
	
    
    
  //΢����Ȩ��ҳ�ص��ӿ�
    @RequestMapping(value ="callBackss",method=RequestMethod.GET)
    public ModelAndView callBack(ModelAndView model,ModelMap modelMap, HttpServletRequest req, HttpServletResponse resp,String lscodes,String prize,String fenxian) throws Exception {
        //����û�ͬ����Ȩ��ҳ�潫��ת�� redirect_uri/?code=CODE&state=STATE
        //https://xxxxx/xxxxx/callBackss.do?code=CODE&state=STATE
        //��ȡcode  code��Ϊ��ȡaccess_token��Ʊ��
    	
    	
        String code =req.getParameter("code");
        System.out.println("��Ȩ����code��Ϣ---------:"+lscodes);
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
        
        /*//���û�΢�������б��봦���ڴ������ݿ⣬ȡ����ʱ���н���
        // �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
        nickname = URLEncoder.encode(nickname, "ISO-8859-1");
       // �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
      	nickname = URLDecoder.decode(nickname, "UTF-8");*/
        /*prize = URLEncoder.encode(prize, "ISO-8859-1");
        // �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
        prize = URLDecoder.decode(prize, "UTF-8");*/
        
        System.out.println("prizeֵ��"+prize);
         System.out.println("ȥ��������΢������"+nickname);
         
         System.out.println("΢��ͷ��"+userInfo.getString("headimgurl"));
         
       //�Ȳ�ѯ�������û�,������ѯ������Ϣ����redis��ȥ
        /*java.util.List<LogUser>  loguserfind  = logUserService.findUsers(userInfo.getString("openid"));
         * 
         *ͨ��id��ѯ�����Ӧ��΢����Ϣ
         *ava.util.List<LogUser> loguser = logUserService.findbyuser(userInfo.getString("openid"));  
         * */
       //��ѯ�û������Ƿ��Ѿ����û���Ϣ
        java.util.List<LogUser> loguser = logUserService.findbyuser(userInfo.getString("openid"));
        
        System.out.println("Ӫ����ʦ��ר������codes:"+lscodes);
          if (loguser.size() == 0 ){//�������Ϊ0��˵��û�и��û�����
        	  //��ѧԱͨ��Ӫ����ʦ��������ӽ���ҳ�棨�򿨻ʱ�������ÿ��һ����ͬ��
          	if (!StringUtils.isEmpty(lscodes) && !lscodes.equals("null")) {//�����Ϊ��
  				System.out.println("ѧԱ����ʱ��ʦ��ר������codes��"+lscodes);
  				//�����û���¼��־
  	         	 SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
  	         	 LogUser  logUser  =  new LogUser();
  	         	 logUser.setOpenid(userInfo.getString("openid"));//�û�΢��id
  	         	 logUser.setNickname(nickname);//΢���û���
  	         	 logUser.setHeadimgurl(userInfo.getString("headimgurl"));//�û�΢��ͷ��
  	         	 logUser.setCreateTime(date.format(new Date()));//�û���¼ʱ��
  	         	 logUser.setTeacherCodes(lscodes);//ѧԱ������ʦ����
  	         	 logUser.setLv1state("������");//lv1������ȡ״̬����ʼֵΪ����ȡ����ȡ���Ϊ����ȡ��
  	         	 logUser.setLv2state("������");//lv2������ȡ״̬����ʼֵΪ����ȡ����ȡ���Ϊ����ȡ��
  	         	 logUser.setLv3state("������");//lv3������ȡ״̬����ʼֵΪ����ȡ����ȡ���Ϊ����ȡ��
  	         	 logUserService.insertusercodes(logUser);//���û���Ϣ��ӽ���־����
  	         	 if(fenxian.equals("fenxian")){
   	         		//�����ݴ������ݿ���
   	         			if (prize.equals("qiangfenglibao")) {
   	         					logUser.setDaima("551");
   	         				    logUser.setPrize("����������");
   	         			}
   	         			if (prize.equals("xitijiexi")) {
   	         					logUser.setDaima("552");
   	         				    logUser.setPrize("ϰ�������");
   	         			}
   	         			if (prize.equals("joumingqianfen")) {
   	         					logUser.setDaima("554");
   	         				    logUser.setPrize("�������ְ�");
   	         			}
   	         			if (prize.equals("shuafentiku")) {
   	         					logUser.setDaima("555");
   	         				    logUser.setPrize("vipˢ�����");
   	         			}
   	         			if (prize.equals("jixuenying")) {
   	         					logUser.setDaima("556");
   	         				    logUser.setPrize("16�켯ѵӪ");
   	         			}
   	         			if (prize.equals("miyajuan")) {
   	         					logUser.setDaima("557");
   	         				    logUser.setPrize("��Ѻ��");
   	         			} 
   	         			if (prize.equals("yatichoci")) {
   	         					logUser.setDaima("558");
   	         					logUser.setPrize("Ѻ���̰�");
   	         			}
   	         		SimpleDateFormat datemm = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
     	         	 logUser.setState("δ��ȡ");//��Ʒ��ȡ״̬
     	         	 logUser.setPrizetime(datemm.format(new Date()));
     	         	 //���������Ʒ�������ݿ���
     	         	 paiHanService.insertzjwupin(logUser);
     	         	 model.addObject("nickname", userInfo.getString("nickname"));
                     model.addObject("openid", userInfo.getString("openid"));
                     model.addObject("headimgurl", userInfo.getString("headimgurl"));
                     model.addObject("lqfenxianye", "lqfenxianye");
                     model.addObject("codes", lscodes);
                     model.addObject("fenxianzhojian", "fenxianzhojian");
                     model.setViewName("smallfeature/ZhonJianJiLu");
                     return model;
   	         	 }
  	         	 
  	         	 //��ʦר�����벻Ϊ��˵�������˴򿨻
           		  model.addObject("nickname", userInfo.getString("nickname"));
                  model.addObject("openid", userInfo.getString("openid"));
                  model.addObject("headimgurl", userInfo.getString("headimgurl"));
                  model.addObject("codes", lscodes);
                 //����ר�������ж������ĸ����ţ���ת���벻ͬ��ҳ��
                  
                  model.setViewName("smallfeature/huodonjiesao");
                  return model;
  			}
        	  
     	}else{
     		
     		if(fenxian.equals("fenxian")){
     			System.out.println("����");
     			 LogUser  logUser  =  new LogUser();
  	         	 logUser.setOpenid(userInfo.getString("openid"));//�û�΢��id
  	         	 logUser.setNickname(nickname);;
	         		//�����ݴ������ݿ���
  	         	if (prize.equals("qiangfenglibao")) {
    					logUser.setDaima("551");
    				    logUser.setPrize("����������");
    			}
    			if (prize.equals("xitijiexi")) {
    					logUser.setDaima("552");
    				    logUser.setPrize("ϰ�������");
    			}
    			if (prize.equals("joumingqianfen")) {
    					logUser.setDaima("554");
    				    logUser.setPrize("�������ְ�");
    			}
    			if (prize.equals("shuafentiku")) {
    					logUser.setDaima("555");
    				    logUser.setPrize("vipˢ�����");
    			}
    			if (prize.equals("jixuenying")) {
    					logUser.setDaima("556");
    				    logUser.setPrize("16�켯ѵӪ");
    			}
    			if (prize.equals("miyajuan")) {
    					logUser.setDaima("557");
    				    logUser.setPrize("��Ѻ��");
    			} 
    			if (prize.equals("yatichoci")) {
    					logUser.setDaima("558");
    					logUser.setPrize("Ѻ���̰�");
    			}
	         	SimpleDateFormat datemm = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
  	         	 logUser.setState("δ��ȡ");//��Ʒ��ȡ״̬
  	         	 logUser.setPrizetime(datemm.format(new Date()));
  	         	 //���������Ʒ�������ݿ���
  	         	 paiHanService.insertzjwupin(logUser);
  	         	 model.addObject("nickname", userInfo.getString("nickname"));
                 model.addObject("openid", userInfo.getString("openid"));
                 model.addObject("headimgurl", userInfo.getString("headimgurl"));
                 model.addObject("lqfenxianye", "lqfenxianye");
                 model.addObject("codes", lscodes);
                 model.addObject("fenxianzhojian", "fenxianzhojian");
                 model.setViewName("smallfeature/ZhonJianJiLu");
                 return model;
	         	 }
     		
     		//��ѧԱͨ��Ӫ����ʦ��������ӽ���ҳ��
        	if (!lscodes.equals("") && !lscodes.equals(null) && !lscodes.equals("null")) {
//        		System.out.println("��ʦ���벻Ϊ�ս���");
        		if (StringUtils.isEmpty(loguser.get(0).getNumber())  ||  StringUtils.isEmpty(loguser.get(0).getUser_Name())  ||  StringUtils.isEmpty(loguser.get(0).getTeacherCodes())) {//���Ϊ�ս���
        			System.out.println("û�б���");
        			//��ʦר�����벻Ϊ��˵�������˴򿨻
            		model.addObject("nickname", userInfo.getString("nickname"));
            		model.addObject("openid", userInfo.getString("openid"));
                 	model.addObject("headimgurl", userInfo.getString("headimgurl"));
                 	model.addObject("codes", lscodes);//��ʦ����
                 	LogUser  loguserupurl  =  new LogUser();
        			loguserupurl.setOpenid(userInfo.getString("openid"));
        			loguserupurl.setHeadimgurl(userInfo.getString("headimgurl"));
        			loguserupurl.setNickname(nickname);
        			loguserupurl.setTeacherCodes(lscodes);
        			logUserService.updateusercodes(loguserupurl);
        			//����ר�������ж������ĸ����ţ���ת���벻ͬ��ҳ��
        			model.setViewName("smallfeature/huodonjiesao");
        			return model;
				}else{
					//��ʦר�����벻Ϊ��˵�������˴򿨻
					System.out.println("��ת");
					model.addObject("nickname", userInfo.getString("nickname"));
					model.addObject("openid", userInfo.getString("openid"));
					model.addObject("headimgurl", userInfo.getString("headimgurl"));
					model.addObject("codes", lscodes);//��ʦ����
					model.setViewName("smallfeature/jianpinjieshao");
					return model;
				}
        		
			 }
     		
     	}
        return model;
    }
    
}
