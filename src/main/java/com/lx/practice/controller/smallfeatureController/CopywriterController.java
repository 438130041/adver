package com.lx.practice.controller.smallfeatureController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lx.practice.entity.LogUser;
import com.lx.practice.service.LogUserService;
import com.lx.practice.util.QrCodeUtil;

@Controller
@RequestMapping("/copywriter")
public class CopywriterController {

	@Autowired
	private  LogUserService  logUserService;
	
	
	@RequestMapping(value="/copywriter",method=RequestMethod.POST)
	@ResponseBody
    public Map<String, Object> index(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="url")String url,
    		@RequestParam(value="codes")String codes
    		) throws Exception{
		Map<String, Object> queryMap = new HashMap<String, Object>();
		
		//图片储存路径（创建一个文件夹，并将图片存入文件夹中）
	    String realPath = request.getSession().getServletContext().getRealPath("/");
	    String path = realPath + "resources/admin/login/imgs/";
	    String fileDirPath = new String(path);
	    
	    //生成二维码并存入文件夹中（返回值是一个图片）
	    Object  imgs = QrCodeUtil.encode(url, null, fileDirPath, true);
	    System.out.println("图片："+imgs);
	    //存入数据库的图片路径
		String   imgurl = "login/imgs/"+imgs;
		LogUser  logusr  =  new  LogUser();
		logusr.setImgs(imgurl);
		logusr.setCodes(codes);
		
		
		//给与一个随机数（用于）
		 UUID  uuid = UUID.randomUUID();
	     String  guid1 = uuid.toString().substring(0, 30);
		 System.out.println("生成的随机数："+guid1);
		
		//先查询是否有此人
		/* List<LogUser>  findimg = logUserService.findimg(codes);*/
		//将图片信息存入数据库中
		logUserService.updataimg(logusr);
		queryMap.put("type", "success");
		queryMap.put("codes", codes);
        return queryMap;
    }
	
	
	
	
	//ajax查询出对应的微信id对应的二维码图片
	@RequestMapping(value="/imgs",method=RequestMethod.POST)
	@ResponseBody
    public Map<String, Object> imgs(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="codes")String codes
    		) throws Exception{
			Map<String, Object> queryMap = new HashMap<String, Object>();
			//查询出图片数据
			List<LogUser>  findimg  =  logUserService.findimg(codes);
			//
			System.out.println("图片地址："+findimg.get(0).getImgs());
			queryMap.put("imgsx", findimg.get(0).getImgs());
			queryMap.put("type","success");
			return queryMap;
    }
	
	
	
	
	//进入海报页面（原始）
		@RequestMapping(value="/haibao",method=RequestMethod.GET)
	    public  ModelAndView  haibao(ModelAndView model,HttpServletRequest request,
	    		@RequestParam(value="codes")String codes,String  feizhenshixueyuan
	    		) throws Exception{
				System.out.println("feizhenshixueyuan:"+feizhenshixueyuan);
			    model.addObject("codes", codes);
			    System.out.println("开始比较");
			  //根据不同的代码，跳转进步同的海报显示页面
			    if(feizhenshixueyuan.equals("feizhenshixueyuan")){
			    	System.out.println("非正式学员");
			    	model.setViewName("smallfeature/yinyecopywriter");
			    }
				if(feizhenshixueyuan.equals("zhenshixueyuan")){
					 model.setViewName("smallfeature/copywriter");
				}
				return model;
	    }
	
}
