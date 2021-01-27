package com.lx.practice.controller.JiFengDuiHuanController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.LogUserService;


//积分兑换控制层
@Controller
@RequestMapping("/code")
public class CodeController {
	
	@Autowired
	private  LogUserService logUserService;
	
	
	//处理积分的兑换
	@RequestMapping(value="/code",method=RequestMethod.POST)
	@ResponseBody
    public Map<String, Object> index(HttpServletRequest request,
    		LogUser  logUser
    		){
		/*System.out.println("opind:"+logUser.getOpenid());
		System.out.println("inputFileName:"+logUser.getExchange());*/
		Map<String, Object> queryMap = new HashMap<String, Object>();
//		System.out.println("开始查询");
		List<LogUser>   code = logUserService.finduserCode(logUser);//用兑换码去查询是否有信息
		/*System.out.println("查询成功");*/
		if (code.size() != 0 && code.get(0).getIntegral() != 0) {//说明是老学员，有兑换码
			/*System.out.println("进入判断");*/
			LogUser logUsers = new LogUser(); 
			LogUser logUsersc = new LogUser();
		  List<LogUser>  loguser = logUserService.findbyuser(logUser.getOpenid());//根据微信id查询出用户信息
		  logUsers.setOpenid(logUser.getOpenid());
		  logUsers.setIntegral(code.get(0).getIntegral()+loguser.get(0).getIntegral());//兑换码中的积分
		 /* System.out.println("id值:"+loguser.get(0).getOpenid());*/
		  logUsersc.setExchange(logUser.getExchange());
		  logUsersc.setIntegral(0);
		  
		  logUserService.updateintegral(logUsers);//将兑换码中的数据给与微信用户
		  logUserService.updateCode(logUsersc);//将兑换码中的数据该为0
		  queryMap.put("type", "success");
		  queryMap.put("integral", code.get(0).getIntegral()+loguser.get(0).getIntegral());
		  /*logUserDao.deleteCode(logUsers);*/
		}else if(code.size() == 0 || code == null){
/*		  System.out.println("兑换码错误");
*/		  queryMap.put("type", "erorr");
		}else if (code.size() != 0 && code.get(0).getIntegral() == 0) {
			//兑换码已兑换
			queryMap.put("type", "change");
		}
	    return queryMap;
		//跳转到开始页面
    }
	
	
	
}
