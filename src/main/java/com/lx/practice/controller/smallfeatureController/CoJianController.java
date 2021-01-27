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
	
	
	//进入抽奖页面
		@RequestMapping(value="/Luckydraw",method=RequestMethod.GET)
	    public ModelAndView tzcojian(ModelAndView model,HttpServletRequest request,String   openid,String  nickname,String  weidaka,String  dakarenshu,String codes) throws UnsupportedEncodingException{
			//进行编译
			// 先对用户名进行解码得到%E7%8E%8B%E6%8C%AF%E5%9B%BD 这样的形式
			nickname = URLEncoder.encode(nickname, "ISO-8859-1");
			// 再进行utf-8编码 一次得到页面上输入的文本内容
			nickname = URLDecoder.decode(nickname, "UTF-8");
			//根据openid查询该用户的手机号
			List<LogUser> sjihaohao = paiHanService.sjihaohao(openid);
			if(sjihaohao.size() != 0 && sjihaohao.get(0).getNumber() != null){
				//将查询出来的手机号，做为条件进入手机号表中查询是否有这条数据
				List<LogUser> chaxuenshojihao = paiHanService.chaxuenshojihao(sjihaohao.get(0).getNumber());
				if(chaxuenshojihao.size() != 0 && chaxuenshojihao.get(0).getNumber() != null ){
					System.out.println("是正式学员");
					model.addObject("zhengshixueyuan", "zhengshixueyuan");
				}else{
					System.out.println("非正式学员");
					model.addObject("zhengshixueyuan", "feizhenshixuayuan");
				}
			}
			//查询出已中奖数据
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
