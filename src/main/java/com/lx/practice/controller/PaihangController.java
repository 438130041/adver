package com.lx.practice.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.lx.practice.entity.User;
import com.lx.practice.service.PaiXuService;

//���а�ҳ����Ʋ�
@Controller
@RequestMapping("/paihang")
public class PaihangController {
	
	@Autowired
	private  PaiXuService  paixudao;
	
	
	//��ת�����а�ҳ��
	@RequestMapping(value="/paihang",method=RequestMethod.GET)
    public ModelAndView index(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="nickname")String nickname,
    		@RequestParam(value="openid")String openid,
    		@RequestParam(value="headimgurl")String headimgurl,
    		@RequestParam(value="Knowledge_Name")String Knowledge_Name,
    		@RequestParam(value="fractionPe")String fractionPe,
    		@RequestParam(value="int_second")String int_second
    		) throws UnsupportedEncodingException{
		//���б���
		// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		nickname = URLEncoder.encode(nickname, "ISO-8859-1");
		// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		nickname = URLDecoder.decode(nickname, "UTF-8");
	    
		//���б���
		// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
		Knowledge_Name = URLEncoder.encode(Knowledge_Name, "ISO-8859-1");
		// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
		Knowledge_Name = URLDecoder.decode(Knowledge_Name, "UTF-8");
	    
	    model.addObject("nickname", nickname);//΢����
	    model.addObject("openid", openid);//΢��id
	    model.addObject("headimgurl", headimgurl);//΢��ͷ��
	    model.addObject("Knowledge_Name", Knowledge_Name);//������
	    model.addObject("fractionPe", fractionPe);//����
	    model.addObject("int_second", int_second);//����
        model.setViewName("system/paihang");
        System.out.println("��ת");
        return model;
    }
	
	
	
	
	
	
	
	@RequestMapping(value="/paihang",method=RequestMethod.POST)
	@ResponseBody
    public Map<String, Object> paiming(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="openid")String openid
    		) throws UnsupportedEncodingException{
		    User user = new  User();
		    user.setOpenid(openid);
		//���ҳ�
		 Map<String, Object> queryMap = new HashMap<String, Object>();
		 List<User>  paming = paixudao.findPaiming(user);//��ѯ��redis�����д����΢���Լ�������Ϣ
		 String  weixing  = JSON.toJSONString(paming);//��redis�е��û�΢����Ϣ������ɹ���ȡ������ҳ����бȽ�
		 queryMap.put("type", "success");
		 queryMap.put("datas", weixing);
         return queryMap;
    }
	
}
