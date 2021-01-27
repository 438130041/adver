package com.lx.practice.controller.JieKoContrller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;

@Controller
@RequestMapping("/cojianjilu")
public class CoJianssController {
		
		@Autowired
		private  PaiHanService   paiHanService;
		
		
	//�򿨳齱
		@RequestMapping(value="/cojianjilu")
		@ResponseBody
		public  String  numberquery(ModelAndView model,HttpServletRequest request,
				LogUser  logUser
				){
			System.out.println("���뷽��");
			System.out.println("openid:"+logUser.getOpenid());
			System.out.println("daima:"+logUser.getDaima());
			//����openid��String����integral��int��	
			//����id����û���Ϣ
			LogUser   logUserzhuantai  =  new  LogUser();
			logUserzhuantai.setOpenid(logUser.getOpenid());
			logUserzhuantai.setDaima(logUser.getDaima());
			logUserzhuantai.setState("����ȡ");
			paiHanService.cojianjianpinzhuantai(logUserzhuantai);
				 
			//����΢��id���û��ӻ���
			return  "success";
		}
		
	//��ʦ�����ѯ�ӿ�
		
		@RequestMapping(value="/laoshidaima")
		@ResponseBody
		public  String  laoshidaima(ModelAndView model,HttpServletRequest request,
				LogUser  logUser
				){
			String  fanhuizhi = "";
			System.out.println("���뷽��");
			//������ʦ��������ʦ���룬���д�����֤
			List<LogUser> selectlaoshi = paiHanService.selectlaoshi(logUser);
			if(selectlaoshi.size() == 0 || selectlaoshi.get(0).getCodes() == null || selectlaoshi.get(0).getCodes() == "null"){
				//��֤�ɹ�
				fanhuizhi = "error";
			}
			if(selectlaoshi.size() != 0 || selectlaoshi.get(0).getCodes() != null || selectlaoshi.get(0).getCodes() != "null"){
				
				fanhuizhi= selectlaoshi.get(0).getImgs();
			}
			return fanhuizhi;
			
			
		}
		
		
		
		
		
		/*@RequestMapping(value="/tu",method=RequestMethod.POST)
		@ResponseBody
		public Map<String, Object> tu(ModelAndView model,HttpServletRequest request,
				LogUser  logUser
				){
			System.out.println("���뷽��");
			Map<String, Object> queryMap = new HashMap<String, Object>();
			//������ʦ��������ʦ���룬���д�����֤
			List<LogUser> selectlaoshi = paiHanService.selectlaoshi(logUser);
			if(selectlaoshi.size() == 0 || selectlaoshi.get(0).getCodes() == null || selectlaoshi.get(0).getCodes() == "null"){
				//��֤�ɹ�
				queryMap.put("type", "error");
			}
			if(selectlaoshi.size() != 0 || selectlaoshi.get(0).getCodes() != null || selectlaoshi.get(0).getCodes() != "null"){
				queryMap.put("type", "success");
				queryMap.put("type", selectlaoshi.get(0).getImgs());
			}
			return queryMap;
			
			
		}*/
}
