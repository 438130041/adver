package com.lx.practice.controller;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.entity.UserinFormation;
import com.lx.practice.service.LogUserService;
import com.lx.practice.service.GeRenXinXiService.GeRenXinXiService;
import com.lx.practice.util.Constant;
import com.lx.practice.util.EmojiFilter;
import com.lx.practice.util.IOEUtil;
import com.sun.tools.example.debug.expr.ParseException;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/wxlogin")
public  class   WxLogin {//
		
	@Autowired
	private  LogUserService logUserService;

    @Autowired
    private  GeRenXinXiService  gerenxinxiservice;
    		
	
    
    
    
    
    
    
	
	// ΢�Ź��ں���ҳ��Ȩ��¼
    @RequestMapping(value ="wxLoginss",method=RequestMethod.GET)
    public String wxLogin(HttpServletRequest request,HttpServletResponse response,String  redeems,String gift) throws ParseException {
    			System.out.println("��Ȩ�����е�redeem:"+redeems);
    			//
            // ��һ�����û�ͬ����Ȩ����ȡcode
            //WXAuthUtil.APPID ΢�Ź��ںŵ�appenid �����΢�Ź��ںź�̨��ȡ��
            String url ="https://open.weixin.qq.com/connect/oauth2/authorize?appid="+Constant.APP_ID
                            + "&redirect_uri="+ URLEncoder.encode("http://practice.jingyaoshi.net/wxlogin/callBackss?redeem="+redeems+"&gift="+gift+"")//��������ǻص��ĵ�ַ ��������г�����ȡ���û�����
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
    	System.out.println("����ӿ�");
    	
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
         *ava.util.List<LogUser> loguser = logUserService.findbyuser(userInfo.getString("openid"));  
         * */
       //��ѯ�û������Ƿ��Ѿ����û���Ϣ
        java.util.List<LogUser> loguser = logUserService.findbyuser(userInfo.getString("openid"));
        System.out.println("redeems��ֵ��"+redeem);
        System.out.println("gift��ֵ��"+gift);
          if (loguser.size() == 0){//�������Ϊ0��˵��û�и��û�����
         	/* System.out.println("������״ε�¼�������ݴ������ݿ���");*/
  			//�����û���¼��־
  	         	 SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
  	         	 LogUser  logUser  =  new LogUser();
  	         	 UserinFormation  userinformation = new  UserinFormation();
  	         	 logUser.setCreateTime(date.format(new Date()));//�û���¼ʱ��
  	         	 logUser.setDays(1);//��¼����(��ʼֵΪ1)
  	         	 logUser.setOpenid(userInfo.getString("openid"));//�û�΢��id
  	         	 logUser.setNickname(nickname);//΢���û���
  	         	 logUser.setHeadimgurl(userInfo.getString("headimgurl"));//�û�΢��ͷ��
  	         	 logUser.setIntegral(5);//�����ۼƻ��ֳ�ʼֵ
  	         	 logUser.setLv1state("������");//lv1������ȡ״̬����ʼֵΪ����ȡ����ȡ���Ϊ����ȡ��
  	         	 logUser.setLv2state("������");//lv2������ȡ״̬����ʼֵΪ����ȡ����ȡ���Ϊ����ȡ��
  	         	 logUser.setLv3state("������");//lv3������ȡ״̬����ʼֵΪ����ȡ����ȡ���Ϊ����ȡ��
  	         	 userinformation.setOpenid(userInfo.getString("openid"));
  	         	 userinformation.setNickname(nickname);
  	         	 userinformation.setHeadimgurl(userInfo.getString("headimgurl"));
  	         	 logUserService.insertuser(logUser);//���û���Ϣ��ӽ���־����
  	         	/*gerenxinxiservice.insertgerenxinxi(userinformation);*///���û���Ϣ�����û���Ϣ���У��������û���Ϣ����ѧԱ������Ϣ��
  	         	String	  dateTime = date.format(new Date()).replace("-","");//ȥ�������ַ�
  	         	if ("redeem".equals(redeem)){//�û�����һ���һ�����
  	         		  model.addObject("openid", userInfo.getString("openid"));
  	         		  model.addObject("redeem", "redeem");
  	                  model.setViewName("system/homepage");
  	                  return model;
  	     		}
  	         	
  	         	if ("gift".equals(gift)){//�����̳Ƕһ���Ʒ
  	         		model.addObject("gifts", "gifts");
  	         		model.setViewName("system/homepage");
  	                return model;
  				}
  	         	
  	         	if ("redeemphone".equals(redeem)){//�û�����һ���һ�����
  	         		  
  	                model.addObject("openid", userInfo.getString("openid"));
  	         		model.addObject("redeem", "redeemphone");
  	                model.setViewName("tcm/phonecode");
  	                return model;
  	           	}
  	         	
  	         	
  	         	/*java.util.List<LogUser> loguser0 = logUserService.findbyuser(userInfo.getString("openid"));*/
  	         	model.addObject("days", 1);
  	            model.addObject("nickname", userInfo.getString("nickname"));
  	            model.addObject("openid", userInfo.getString("openid"));
  	            model.addObject("headimgurl", userInfo.getString("headimgurl"));
  	            model.addObject("dateTime", dateTime);//��ǰ����
  	            model.addObject("integral",5);
  	            model.addObject("userInfo", userInfo);
  	            model.addObject("number", loguser.get(0).getNumber());//��������û�û����д�ֻ��žͻᱨ����̨����
  	            model.addObject("lv1state", "������");
  	            model.addObject("lv2state", "������");
  	            model.addObject("lv3state", "������");
  	            model.setViewName("chapter/jingxuantiku");
  				
        	  
     	}else{
     		
     		/*System.out.println("��Ϊ0˵�����ݿ��������ݣ�����������Ϣ");*/
    		 SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
    		 String   str = date.format(new  Date());//��ʱ������ת��ΪString����
    		 String	  strg = str.replace("-","");//ȥ�������ַ�
    		 String	  dateTime =str.replace("-","");//ȥ�������ַ�
    		 /*System.out.println("ȥ��-֮������ݣ�"+strg);
    		 System.out.println("��ʱ����������ת��Ϊint��");*/
    		 int    newdates =Integer.parseInt(strg);//����ʱ��ת��Ϊint���͵����ݣ��û���¼ʱ��ʱ�䣩
    		/* System.out.println("ת��Ϊint�����ݺ���µ�ʱ��ֵ��"+newdates);*/
    		 //��ѯ���û��ϴε�¼ʱ������
    		 String  strs  =  loguser.get(0).getCreateTime();
    		 //��String���͵�ʱ�����ݼ�ת��Ϊint��������
    		 String	  strsg = strs.replace("-","");//ȥ�������ַ�
    		 int  olddates = Integer.parseInt(strsg);
    		 /*System.out.println("ת��Ϊin�����ݺ�ľɵ�ʱ��ֵ"+olddates);*/
    		 //�µ�ʱ��ȥ��ȥ�ɵ�ʱ��
    		 int  k = newdates - olddates;
    		 System.out.println("k��ֵ��"+k);
     		
     		
     		if ("redeem".equals(redeem)){
       		    System.out.println("��ת����ҳ��");
       		    model.addObject("redeem", "redeem");
       		  	model.addObject("openid", userInfo.getString("openid"));
                model.setViewName("system/homepage");
                return model;
   		      }
     		
     		if ("redeemphone".equals(redeem)){//�û�����һ���һ�����
         		  model.addObject("openid", userInfo.getString("openid"));
         		 model.addObject("redeem", "redeemphone");
                  model.setViewName("tcm/phonecode");
                  return model;
           	}
     		if ("gift".equals(gift)){
         		System.out.println("��ת����ҳ��");
         		model.addObject("gifts", "gifts");
         		model.setViewName("system/homepage");
                return model;
			}
     		 if(k == 1 || k == 71 || k == 72 || k == 73 || k == 8870){//�µ�ʱ���ȥ�ɵ�ʱ���������һ��˵����¼�����������ģ����ĵ�¼�����͵�ǰ��¼ʱ�䣩
     			 LogUser  logUser  =  new LogUser();
     			 logUser.setDays(loguser.get(0).getDays()+1);//���k����һ��ô���ڵ������͵���ԭ����������һ
     			 logUser.setCreateTime(date.format(new  Date()));//����Ϊ�µ�ʱ��
     			 logUser.setNickname(nickname);
     			 logUser.setOpenid(userInfo.getString("openid"));//�����û�΢��id���и���
     			 logUser.setHeadimgurl(userInfo.getString("headimgurl"));//�û�΢��ͷ��
       			//����ÿ��һ����
         			 logUser.setIntegral(loguser.get(0).getIntegral()+5);//�����û����֣������û��Ƿ���������¼��ֻҪ��¼���־ͼ�30��
         			 /*System.out.println("���ĺ������"+logUser.getCreateTime());*/
         			 //��ԭ�ȵ��������ĵ�
         			 System.out.println("������ʦ��������ж�");
         			if(loguser.get(0).getDays()+1 >= 3 && !loguser.get(0).getLv1state().equals("����ȡ")){
         				logUser.setLv1state("����ȡ");//
         				logUser.setLv2state(loguser.get(0).getLv2state());
         				logUser.setLv3state(loguser.get(0).getLv3state());
         				model.addObject("lv1state", "����ȡ");//lv1������ȡ״̬
                        model.addObject("lv2state", loguser.get(0).getLv2state());//lv2������ȡ״̬
                        model.addObject("lv3state", loguser.get(0).getLv3state());//lv3������ȡ״̬
         			}else if (loguser.get(0).getDays()+1 >= 7 && !loguser.get(0).getLv2state().equals("����ȡ")) {
         				logUser.setLv1state(loguser.get(0).getLv1state());
         				logUser.setLv2state("����ȡ");//
         				logUser.setLv3state(loguser.get(0).getLv3state());
         				model.addObject("lv1state", loguser.get(0).getLv1state());//lv1������ȡ״̬
                        model.addObject("lv2state","����ȡ");//lv2������ȡ״̬
                        model.addObject("lv3state", loguser.get(0).getLv3state());//lv3������ȡ״̬
    				}else  if (loguser.get(0).getDays()+1 >= 15 && !loguser.get(0).getLv3state().equals("����ȡ")) {
         				logUser.setLv1state(loguser.get(0).getLv1state());
         				logUser.setLv2state(loguser.get(0).getLv2state());
         				logUser.setLv3state("����ȡ");
         				model.addObject("lv1state", loguser.get(0).getLv1state());//lv1������ȡ״̬
                        model.addObject("lv2state", loguser.get(0).getLv2state());//lv2������ȡ״̬
                        model.addObject("lv3state", "����ȡ");//lv3������ȡ״̬
    				}else{
    					logUser.setLv1state(loguser.get(0).getLv1state());
         				logUser.setLv2state(loguser.get(0).getLv2state());
         				logUser.setLv3state(loguser.get(0).getLv3state());
         				model.addObject("lv1state", loguser.get(0).getLv1state());//lv1������ȡ״̬
                        model.addObject("lv2state", loguser.get(0).getLv2state());//lv2������ȡ״̬
                        model.addObject("lv3state", loguser.get(0).getLv3state());//lv3������ȡ״̬
    				}
         			
         			if (loguser.get(0).getLv3state().equals("����ȡ") && loguser.get(0).getLv2state().equals("����ȡ") && loguser.get(0).getLv1state().equals("����ȡ")) {
         				logUser.setLv1state("������");
         				logUser.setLv2state("������");
         				logUser.setLv3state("������");
         				model.addObject("lv1state", "������");//lv1������ȡ״̬
                        model.addObject("lv2state", "������");//lv2������ȡ״̬
                        model.addObject("lv3state", "������");//lv3������ȡ״̬
    				}
         			logUserService.updateuser(logUser);
         		/*java.util.List<LogUser> loguser1 = logUserService.findbyuser(userInfo.getString("openid"));*/
                 	model.addObject("days", loguser.get(0).getDays()+1);
                    model.addObject("nickname", userInfo.getString("nickname"));
                    model.addObject("openid", userInfo.getString("openid"));
                    model.addObject("headimgurl", userInfo.getString("headimgurl"));
                    model.addObject("dateTime", dateTime);//��ǰ����
                    model.addObject("integral", loguser.get(0).getIntegral()+5);//�ۼƻ���
                    model.addObject("userInfo", userInfo);
                    model.addObject("number", loguser.get(0).getNumber());
                    model.setViewName("chapter/jingxuantiku");
       			 
     			 
     		 	}
     		 if (k > 1 && k != 71 && k != 72 && k != 73 && k != 8870) {//�µ�ʱ���ȥ�ɵ�ʱ���������һ��˵������һ�εĵ�¼ʱ�����ϴε�¼ʱ��֮������˼������ʱ�����µ�¼ʱ����Ϊ�µĳ�ʼʱ��
     			 SimpleDateFormat newdate = new SimpleDateFormat("yyyy-MM-dd");
     			 String   newstr = date.format(new  Date());//��ʱ������ת��ΪString����
     			 LogUser  logUsers  =  new LogUser();
     			 logUsers.setCreateTime(date.format(new Date()));//�û���¼ʱ��
     			 logUsers.setDays(1);//��¼����(��ʼֵΪ1���������򿨴ӳ�ʼֵ��ʼ����)
     			 logUsers.setOpenid(userInfo.getString("openid"));//�û�΢��id
     			 logUsers.setNickname(nickname);//΢���û���
     			 logUsers.setHeadimgurl(userInfo.getString("headimgurl"));//�û�΢��ͷ��
     			 
     			 logUsers.setLv1state("������");//lv1������ȡ״̬����ʼֵΪ����ȡ����ȡ���Ϊ����ȡ��
    			 logUsers.setLv2state("������");//lv2������ȡ״̬����ʼֵΪ����ȡ����ȡ���Ϊ����ȡ��
    			 logUsers.setLv3state("������");//lv3������ȡ״̬����ʼֵΪ����ȡ����ȡ���Ϊ����ȡ��
     			 
    			 
    			  logUsers.setIntegral(loguser.get(0).getIntegral()+5);//��������¼Ҳ��10�ֵĻ��֣�ֻҪû����ȡ�����ȥ��Ӧ�Ļ��־�һֱ���ڣ�
       			   logUserService.findupdateuser(logUsers);//���û���Ϣ��ӽ���־����
        	    	/*java.util.List<LogUser> loguser2 = logUserService.findbyuser(userInfo.getString("openid"));*/
                   model.addObject("days", 1);
                   model.addObject("nickname", userInfo.getString("nickname"));
                   model.addObject("openid", userInfo.getString("openid"));
                   model.addObject("headimgurl", userInfo.getString("headimgurl"));
                   model.addObject("dateTime",dateTime);//��ǰ����
                   model.addObject("integral",loguser.get(0).getIntegral()+5);
                   model.addObject("userInfo", userInfo);
                   model.addObject("number", loguser.get(0).getNumber());
                   model.addObject("lv1state", loguser.get(0).getLv1state());//lv1������ȡ״̬
                   model.addObject("lv2state", loguser.get(0).getLv2state());//lv2������ȡ״̬
                   model.addObject("lv3state", loguser.get(0).getLv3state());//lv3������ȡ״̬
                   model.setViewName("chapter/jingxuantiku");
    			 
     		}
     		if(k == 0){//ͬһ���ε�¼
            			
            			model.addObject("days", loguser.get(0).getDays());//������¼����
                        model.addObject("nickname", userInfo.getString("nickname"));
                        model.addObject("openid", userInfo.getString("openid"));
                        model.addObject("headimgurl", userInfo.getString("headimgurl"));
                        model.addObject("dateTime", loguser.get(0).getCreateTime());//��ǰ����
                        model.addObject("integral",loguser.get(0).getIntegral());
                        model.addObject("userInfo", userInfo);//
                        model.addObject("number", loguser.get(0).getNumber());
                        model.addObject("lv1state", loguser.get(0).getLv1state());//lv1������ȡ״̬
                        model.addObject("lv2state", loguser.get(0).getLv2state());//lv2������ȡ״̬
                        model.addObject("lv3state", loguser.get(0).getLv3state());//lv3������ȡ״̬
                        System.out.println("ͬһ���¼");
                        model.setViewName("chapter/jingxuantiku");
     			
     		} 
     	}
        return model;
    }

}
