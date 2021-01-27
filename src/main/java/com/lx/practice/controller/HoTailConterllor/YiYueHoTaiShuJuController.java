package com.lx.practice.controller.HoTailConterllor;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.HuoDongUser;
import com.lx.practice.service.HoTaiService.YiYueHoTaiService;

@Controller
@RequestMapping("/yiyuehotai")
public class YiYueHoTaiShuJuController {
	
	@Autowired
	private  YiYueHoTaiService   YiYueHoTaiService;
		
	
	//�ƹ�����Ϣ��ѯ
	@RequestMapping(value="/tuiguanren",method=RequestMethod.GET)
    public ModelAndView tuiguanren(ModelAndView model,HttpServletRequest request){
		
        model.setViewName("hotail/admintuiguanren");
        return model;
    }
	
	//���Ƽ�����Ϣ
	@RequestMapping(value="/beituijianren",method=RequestMethod.GET)
    public ModelAndView beituijianren(ModelAndView model,HttpServletRequest request){
		
        model.setViewName("hotail/beituijianren");
        return model;
    }
	
	//���ֲ�ѯ
	@RequestMapping(value="/tixianchaxuen",method=RequestMethod.GET)
    public ModelAndView tixianchaxuen(ModelAndView model,HttpServletRequest request){
		
        model.setViewName("hotail/tixianchaxuen");
        return model;
    }
	
	//�齱��Ϣ
	@RequestMapping(value="/chojiangxinxi",method=RequestMethod.GET)
    public ModelAndView chojiangxinxi(ModelAndView model,HttpServletRequest request){
		
        model.setViewName("hotail/chojiangxinxi");
        return model;
    }
	
	//�ɽ���Ϣ
	@RequestMapping(value="/cenjiaoxinxi",method=RequestMethod.GET)
    public ModelAndView cenjiaoxinxi(ModelAndView model,HttpServletRequest request){
		
        model.setViewName("hotail/cenjiaoxinxi");
        return model;
    }
	
	
	
	
	
	//��ѯ���ƹ�����Ϣ����
	@RequestMapping(value="/tuiguanren",method=RequestMethod.POST)
	@ResponseBody
	public  Object  tuiguanrenfind(ModelAndView model,HttpServletRequest request,
			String  User_Name,String  nickname,String  number,String TeacherCodes
			) throws UnsupportedEncodingException{
		Map<String, Object> queryMap = new HashMap<String, Object>();
		HuoDongUser  logUser   =  new  HuoDongUser();
		
		
		return logUser ;
	}
	
	
	//��ѯ���Ƽ�����Ϣ
	@RequestMapping(value="/beituijianren",method=RequestMethod.POST)
	@ResponseBody
	public  Object  beituijianren(ModelAndView model,HttpServletRequest request,
			String  User_Name,String  nickname,String  number,String TeacherCodes
			) throws UnsupportedEncodingException{
		Map<String, Object> queryMap = new HashMap<String, Object>();
		HuoDongUser  logUser   =  new  HuoDongUser();
		
		
		return logUser ;
	}
	
	
	//������Ϣ��ѯ
	@RequestMapping(value="/tixianchaxuen",method=RequestMethod.POST)
	@ResponseBody
	public  Object  tixianchaxuen(ModelAndView model,HttpServletRequest request,
			String  User_Name,String  nickname,String  number,String TeacherCodes
			) throws UnsupportedEncodingException{
		Map<String, Object> queryMap = new HashMap<String, Object>();
		HuoDongUser  logUser   =  new  HuoDongUser();
		
		
		return logUser ;
	}
	
	//�齱��Ϣ��ѯ
	@RequestMapping(value="/chojiangxinxi",method=RequestMethod.POST)
	@ResponseBody
	public  Object  chojiangxinxi(ModelAndView model,HttpServletRequest request,
			String  User_Name,String  nickname,String  number,String TeacherCodes
			) throws UnsupportedEncodingException{
		Map<String, Object> queryMap = new HashMap<String, Object>();
		HuoDongUser  logUser   =  new  HuoDongUser();
		
		
		return logUser ;
	}
	
	
	//�ɽ���Ϣ��ѯ
	@RequestMapping(value="/cenjiaoxinxi",method=RequestMethod.POST)
	@ResponseBody
	public  Object  cenjiaoxinxi(ModelAndView model,HttpServletRequest request,
			String  User_Name,String  nickname,String  number,String TeacherCodes
			) throws UnsupportedEncodingException{
		Map<String, Object> queryMap = new HashMap<String, Object>();
		HuoDongUser  logUser   =  new  HuoDongUser();
		
		
		return logUser ;
	}
	
	
}
