package com.lx.practice.controller.smallfeatureController;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;

@Controller
@RequestMapping("/Luckydraw")
public class CoJianController {
		
	 @Autowired
	 private  PaiHanService  paiHanService;
	
	
	//����齱ҳ��
		@RequestMapping(value="/Luckydraw",method=RequestMethod.GET)
	    public ModelAndView tzcojian(ModelAndView model,HttpServletRequest request,String   openid,String  nickname,String  weidaka,String  dakarenshu,String codes) throws UnsupportedEncodingException{
			//���б���
			// �ȶ��û������н���õ�%E7%8E%8B%E6%8C%AF%E5%9B%BD ��������ʽ
			nickname = URLEncoder.encode(nickname, "ISO-8859-1");
			// �ٽ���utf-8���� һ�εõ�ҳ����������ı�����
			nickname = URLDecoder.decode(nickname, "UTF-8");
			//����openid��ѯ���û����ֻ���
			List<LogUser> sjihaohao = paiHanService.sjihaohao(openid);
			if(sjihaohao.size() != 0 && sjihaohao.get(0).getNumber() != null){
				//����ѯ�������ֻ��ţ���Ϊ���������ֻ��ű��в�ѯ�Ƿ�����������
				List<LogUser> chaxuenshojihao = paiHanService.chaxuenshojihao(sjihaohao.get(0).getNumber());
				if(chaxuenshojihao.size() != 0 && chaxuenshojihao.get(0).getNumber() != null ){
					System.out.println("����ʽѧԱ");
					model.addObject("zhengshixueyuan", "zhengshixueyuan");
				}else{
					System.out.println("����ʽѧԱ");
					model.addObject("zhengshixueyuan", "feizhenshixuayuan");
				}
			}
			//��ѯ�����н�����
			List<LogUser> zhojianjilu = paiHanService.zhojianjilu();
			/*System.out.println("weidaka:"+weidaka);*/
			model.addObject("size", zhojianjilu.size());
			model.addObject("zhojianjilu", zhojianjilu);
			model.addObject("weidaka", weidaka);
			model.addObject("dakarenshu", dakarenshu);
			model.addObject("nickname", nickname);
			model.addObject("openid", openid);
			model.addObject("codes", codes);
			model.setViewName("smallfeature/draw");
	        return model;
	    }
		
		
		
		
}
