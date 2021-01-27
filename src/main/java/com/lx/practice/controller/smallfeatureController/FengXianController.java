package com.lx.practice.controller.smallfeatureController;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;

@Controller
@RequestMapping("/fenxianyemian")
public class FengXianController {
		
	@Autowired
	private  PaiHanService   paiHanService;
	
	
	//锟斤拷锟斤拷锟斤拷锟揭筹拷锟�
			@RequestMapping(value="/fenxianwp",method=RequestMethod.GET)
		    public ModelAndView fenxian(ModelAndView model,HttpServletRequest request,String  openid,String  prize,String  codes) throws UnsupportedEncodingException{
				 
				
				//锟斤拷锟叫憋拷锟斤拷
				// 锟饺讹拷锟矫伙拷锟斤拷锟斤拷锟叫斤拷锟斤拷玫锟�%E7%8E%8B%E6%8C%AF%E5%9B%BD 锟斤拷锟斤拷锟斤拷锟斤拷式
			    prize = URLEncoder.encode(prize, "ISO-8859-1");
				// 锟劫斤拷锟斤拷utf-8锟斤拷锟斤拷 一锟轿得碉拷页锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷谋锟斤拷锟斤拷锟�
				prize = URLDecoder.decode(prize, "UTF-8");
				System.out.println("进入分享页面");
				
				model.addObject("openid", openid);
				model.addObject("prize", prize);
				model.addObject("codes", codes);
				model.setViewName("smallfeature/fenxian");
				System.out.println("跳转");
		        return model;
		    }
		
		
	//锟斤拷锟叫斤拷锟斤拷锟捷达拷锟斤拷锟斤拷锟捷匡拷锟斤拷
			@RequestMapping(value="/cuenruwp",method=RequestMethod.POST)
			@ResponseBody
		    public Map<String, Object> cuenru(ModelAndView model,HttpServletRequest request,LogUser   logUser,String  jifen) throws UnsupportedEncodingException{
				Map<String, Object> queryMap = new HashMap<String, Object>();
				//锟斤拷锟叫斤拷锟斤拷锟捷达拷锟斤拷锟斤拷锟捷匡拷锟斤拷
				/*System.out.println("jifen值:"+jifen);
				System.out.println("prize的类型"+logUser.getPrize());
				System.out.println("openid:"+logUser.getOpenid());*/
				List<LogUser> insertdaka = paiHanService.insertdaka(logUser.getOpenid());
				if (!StringUtils.isEmpty(jifen)){
					/*System.out.println("中的是积分");*/
					/*insertdaka.get(0).getIntegral();*/
					LogUser   addLogUser  =  new  LogUser();
					System.out.println("初始积分"+insertdaka.get(0).getIntegral());
				if (logUser.getPrize().equals("30积分")) {
						System.out.println("30");
						if (insertdaka.get(0).getIntegral().equals("") || insertdaka.get(0).getIntegral().equals(null)) {
							addLogUser.setIntegral(30);//原始锟斤拷锟街硷拷锟斤拷
						}else {
							addLogUser.setIntegral(insertdaka.get(0).getIntegral()+30);//原始锟斤拷锟街硷拷锟斤拷
						}
						
					}
					if (logUser.getPrize().equals("50积分")) {
						System.out.println("50");
						if (insertdaka.get(0).getIntegral().equals("") || insertdaka.get(0).getIntegral().equals(null)) {
							addLogUser.setIntegral(50);//原始锟斤拷锟街硷拷锟斤拷
						}else{
							addLogUser.setIntegral(insertdaka.get(0).getIntegral()+50);//原始锟斤拷锟街硷拷锟斤拷
						}
						
					}
					if (logUser.getPrize().equals("100积分")) {
						System.out.println("100");
						if (insertdaka.get(0).getIntegral().equals("") || insertdaka.get(0).getIntegral().equals(null)) {
							
							addLogUser.setIntegral(100);//原始锟斤拷锟街硷拷锟斤拷
						}else{
							addLogUser.setIntegral(insertdaka.get(0).getIntegral()+100);//原始锟斤拷锟街硷拷锟斤拷
						}
					}
					addLogUser.setOpenid(logUser.getOpenid());
				//锟斤拷锟斤拷微锟斤拷id锟斤拷锟矫伙拷锟接伙拷锟斤拷
				    paiHanService.addintegral(addLogUser);
					
				    queryMap.put("type", "success");
			        return queryMap;
					
				}else
				if(StringUtils.isEmpty(jifen)){//如果为空
					/*System.out.println("中的是课程");*/
					//查询该用户是否已经拥有该课程
					List<LogUser> sfyiykecheng = paiHanService.sfyiykecheng(logUser);
					if(sfyiykecheng.size() != 0 && sfyiykecheng.get(0).getPrize() != null && sfyiykecheng.get(0).getPrize() != "null"){
						//如果已经有了该课程
						queryMap.put("type", "Alreadyhave");
						return queryMap;
					}else{
						LogUser  logUsers = new  LogUser();
						SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
						System.out.println("时间："+date.format(new Date()));
						logUsers.setOpenid(logUser.getOpenid());//微锟斤拷id
						logUsers.setNickname(logUser.getNickname());//微锟斤拷锟角筹拷
						logUsers.setPrize(logUser.getPrize());//锟叫斤拷wupin
						logUsers.setPrizetime(date.format(new Date()));//时锟斤拷
						logUsers.setState("未领取");//锟斤拷品状态
						logUsers.setUser_Name(insertdaka.get(0).getUser_Name());
						logUsers.setNumber(insertdaka.get(0).getNumber());
						System.out.println("手机号："+insertdaka.get(0).getNumber());
						if (logUser.getPrize().equals("冲刺抢分礼包")) {
							logUsers.setDaima("551");
						}
						if (logUser.getPrize().equals("习题解析班")) {
							logUsers.setDaima("552");
						}
						if (logUser.getPrize().equals("最难科目突破班")) {
							logUsers.setDaima("553");
						}
						if (logUser.getPrize().equals("救命抢分班")) {
							logUsers.setDaima("554");
						}
						if (logUser.getPrize().equals("vip刷分题库")) {
							logUsers.setDaima("555");
						}
						if (logUser.getPrize().equals("16天集训营")) {
							logUsers.setDaima("556");
						}
						if (logUser.getPrize().equals("密押卷")) {
							logUsers.setDaima("557");
						}
						if (logUser.getPrize().equals("押题冲刺班")) {
							logUsers.setDaima("558");
						}
						if (logUser.getPrize().equals("VIP保过班")) {
							logUsers.setDaima("联系老师");
						}
						paiHanService.insertzjwupin(logUsers);
						queryMap.put("type", "success");
				        return queryMap;
						
					}
				}
				return queryMap;
				
				
		    }
	
	
			//锟斤拷锟叫斤拷锟斤拷锟捷达拷锟斤拷锟斤拷锟捷匡拷锟斤拷
			@RequestMapping(value="/fenxianzhuce",method=RequestMethod.POST)
			@ResponseBody
		    public Map<String, Object> fenxianzhuce(ModelAndView model,HttpServletRequest request,LogUser   logUser) throws UnsupportedEncodingException{
				Map<String, Object> queryMap = new HashMap<String, Object>();
				System.out.println("查询是否报名");
				System.out.println("id:"+logUser.getOpenid());
				//查询是否报名
				List<LogUser> sjihaohao = paiHanService.sjihaohao(logUser.getOpenid());
				System.out.println("手机号："+sjihaohao.get(0).getNumber());
				System.out.println("姓名："+sjihaohao.get(0).getUser_Name());
				if(sjihaohao.size() == 0  || StringUtils.isEmpty(sjihaohao.get(0).getUser_Name()) ||  StringUtils.isEmpty(sjihaohao.get(0).getNumber())){
					//如果没有报名信息
					System.out.println("没有报名");
					queryMap.put("type", "success");
				}else{
					System.out.println("报了名");
					queryMap.put("type", "error");
				}
				 return queryMap;
		    }
			
			
			
			//跳到报名页面
			@RequestMapping(value="/zhucebaoming",method=RequestMethod.GET)
		    public ModelAndView zhucebaoming(ModelAndView model,HttpServletRequest request,String  openid,String codes) throws UnsupportedEncodingException{
				 
				model.addObject("openid", openid);
				model.addObject("codes", codes);
				model.setViewName("smallfeature/ParticipateChallenge");
		        return model;
		    }
}
