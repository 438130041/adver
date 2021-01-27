package com.lx.practice.controller.smallfeatureController;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.DaKa;
import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;



//排行榜功能控制层
@Controller
@RequestMapping("/paihanban")
public class PaiHanPanController {
	
	@Autowired
	private   PaiHanService   paiHanService;
	
	
	
	//排行榜页面测试
	@RequestMapping(value="/paihanban",method=RequestMethod.GET)
    public ModelAndView paihanban(ModelAndView model,HttpServletRequest request,String  openid,String  fenxianzhojian,String codes){
		//跳转到开始页面
		/*System.out.println("跳转到排行榜页面");
        System.out.println("openid:"+openid);*/
		//查询出积分总数前三的数据	
		List<LogUser> findPaiHan = paiHanService.findPaiHan();
		//第一名
		model.addObject("Headimgurl1", findPaiHan.get(0).getHeadimgurl());
		model.addObject("Nickname1", findPaiHan.get(0).getNickname());
		model.addObject("Integral1", findPaiHan.get(0).getIntegral());
		//第二名
		model.addObject("Headimgurl2", findPaiHan.get(1).getHeadimgurl());
		model.addObject("Nickname2", findPaiHan.get(1).getNickname());
		model.addObject("Integral2", findPaiHan.get(1).getIntegral());
		//第三名
		model.addObject("Headimgurl3", findPaiHan.get(2).getHeadimgurl());
		model.addObject("Nickname3", findPaiHan.get(2).getNickname());
		model.addObject("Integral3", findPaiHan.get(2).getIntegral());
		
		//查询出用户前一百名的数据
		List<LogUser> findPaiHanyibai = paiHanService.findPaiHanyibai();
		
		//当前时间
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String   str = date.format(new  Date());//将时间类型转换为String类型
		//查看今天已打卡人数
		List<LogUser> finddaka = paiHanService.finddaka(str);
		/*System.out.println("查询出所有数据");
		System.out.println("数据的长度："+finddaka.size());*/
	 	String   strg = str.replace("-","");//去掉特殊字符
	 	/*int    newdates =Integer.parseInt(strg);*///现在时间转化为int类型的数据（用户登录时的时间）
		/*int  dakanumber = 0 */;//初始值为0,打卡人数
	 	//循环出打开时间
	 	/*for (int i = 0; i < finddaka.size(); i++) {*/
	 		/*System.out.println("进入循环");*/
	 		 /*String  strs  =  finddaka.get(i).getDakatime();*///用户最近一次打卡时间
	 		/* System.out.println("打卡时间strs："+strs);*/
	 		//将String类型的时间数据集转换为int类型数据
			/* if (!StringUtils.isEmpty(strs)) {*/
				/* String	  strsg = strs.replace("-","");*///最近一次打卡时间去掉特殊字符
				/* int  olddates = Integer.parseInt(strsg);*/
		 		 /*System.out.println("olddates:"+olddates);
		 		 System.out.println("newdates:"+newdates);*/
				/* if (olddates  == newdates) {*/
//		 			System.out.println("进行比较 ");
					//如果查询出来的打卡时间与现在时间相同，说明今天打过卡
		 			/* dakanumber ++;*/
		 			/*System.out.println("dakanumber的值："+dakanumber);*/
			/*	}
				 
			}
	 		 
		}*/
	 	System.out.println("打卡人数dakanumber："+finddaka.size());
	 	//当日打卡人数
	 	//使用当日时间去查询数据，判断当日是否有统计数据
	 	List<DaKa> finddaKatonji = paiHanService.finddaKatonji(str);
	 	System.out.println("查询完毕");
	 	if(finddaKatonji.size() == 0 ){
	 			//说明今天没有统计数据
	 			//添加今天统计数据
	 		System.out.println("统计数据");
	 		DaKa  daKa = new DaKa();
	 		daKa.setCreateTime(date.format(new  Date()));
	 		daKa.setDaynumbers(finddaka.size());
	 		//将数据添加进表中
	 		paiHanService.insertdaridakashu(daKa);
	 			
	 	 }
	 	if (finddaKatonji.size() != 0 && !finddaKatonji.get(0).getCreateTime().equals("") && !finddaKatonji.get(0).getCreateTime().equals(null)) {
			System.out.println("同一天跟新数据");
	 		//如果有,说明已经有人打过卡，已经统计过一次数据，因此将今天更改为新的人数
	 		DaKa  daKa = new DaKa();
	 		daKa.setCreateTime(date.format(new  Date()));
	 		daKa.setDaynumbers(finddaka.size());
	 		//更改统计数据
	 		paiHanService.updatedanridakashu(daKa);
	 		
		}
	 	
	 	System.out.println("开始查询当前用户排名");
		//查询出当前用户排名
	 	System.out.println("openid:"+openid);
	 	LogUser   logUser  =  new  LogUser();
	 	logUser.setOpenid(openid);
	 	LogUser findPaiHansuoyuo = paiHanService.findPaiHansuoyuo(logUser);
		System.out.println("查询完毕");
		List<LogUser> finddakauri = paiHanService.finddakauri(logUser);
		/*System.out.println("时间："+findPaiHansuoyuo.get(0).getDakatime());*/
		/*System.out.println( findPaiHansuoyuo.get(0).getDakatime());*/
		model.addObject("openid", finddakauri.get(0).getOpenid());//id
		model.addObject("headimgurl", finddakauri.get(0).getHeadimgurl());//头像
		model.addObject("nickname", finddakauri.get(0).getNickname());//昵称
		System.out.println("headimgurl:"+ finddakauri.get(0).getNickname()); 
		System.out.println("完毕");
		 //查询出用户上次登录时间数据
		 /*String  shijian  =  findPaiHansuoyuo.get(0).getDakatime();*/
		 System.out.println("上次登录时间");
		 //将String类型的时间数据集转换为int类型数据
		 if (finddakauri.get(0).getDakatime()  != "" && finddakauri.get(0).getDakatime() != null) {//如果不为空
			 System.out.println("进入");
			 String	  strsg = finddakauri.get(0).getDakatime().replace("-","");//去掉特殊字符
			 if(strsg.equals(strg)){//如果相等
				 //如果时间相同
				 model.addObject("yidaka", "今日已打卡");
			 }else{
				 model.addObject("yidaka", "前往学习打卡");
			 }
		}
		if (StringUtils.isEmpty(finddakauri.get(0).getDakatime())) {
			System.out.println("为空");
			model.addObject("yidaka", "前往学习打卡");
		}
		 
		
		model.addObject("dakanumber", finddaka.size());//当前打卡人数
	
		/*System.out.println("连续活动打卡天数："+findPaiHansuoyuo.get(0).getDakatishu());
		System.out.println("积分排名："+findPaiHansuoyuo.get(0).getRownum());*/
		
		model.addObject("shuanxing", "shuanxing");//刷新
		System.out.println("准备跳转");
		model.addObject("yonhuheadimgurl", finddakauri.get(0).getHeadimgurl());//用户头像
		model.addObject("yonhunickname", finddakauri.get(0).getNickname());//用户名
		model.addObject("yonhunintegral", finddakauri.get(0).getIntegral());//用户积分
		model.addObject("yonhunpaiming", findPaiHansuoyuo.getRownum());//用户排名
		model.addObject("yonhunactivityClock", finddakauri.get(0).getDakatishu());//连续打卡天数
		model.addObject("findPaiHanyibai", findPaiHanyibai);
		model.addObject("fenxianzhojian", fenxianzhojian);
		model.addObject("codes", codes);
		model.setViewName("smallfeature/paihanban");
        System.out.println("跳转");
        return model;
    }
	
	
	//活动说明页面
	@RequestMapping(value="/huodongshuoming",method=RequestMethod.GET)
    public ModelAndView huodongshuoming(ModelAndView model,HttpServletRequest request,String  openid){
		
		
		
		model.addObject("openid", openid);
		model.setViewName("smallfeature/huodonjiesao");
        return model;
    }
	
	
	
}
