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
		
		//ͼƬ����·��������һ���ļ��У�����ͼƬ�����ļ����У�
	    String realPath = request.getSession().getServletContext().getRealPath("/");
	    String path = realPath + "resources/admin/login/imgs/";
	    String fileDirPath = new String(path);
	    
	    //���ɶ�ά�벢�����ļ����У�����ֵ��һ��ͼƬ��
	    Object  imgs = QrCodeUtil.encode(url, null, fileDirPath, true);
	    System.out.println("ͼƬ��"+imgs);
	    //�������ݿ��ͼƬ·��
		String   imgurl = "login/imgs/"+imgs;
		LogUser  logusr  =  new  LogUser();
		logusr.setImgs(imgurl);
		logusr.setCodes(codes);
		
		
		//����һ������������ڣ�
		 UUID  uuid = UUID.randomUUID();
	     String  guid1 = uuid.toString().substring(0, 30);
		 System.out.println("���ɵ��������"+guid1);
		
		//�Ȳ�ѯ�Ƿ��д���
		/* List<LogUser>  findimg = logUserService.findimg(codes);*/
		//��ͼƬ��Ϣ�������ݿ���
		logUserService.updataimg(logusr);
		queryMap.put("type", "success");
		queryMap.put("codes", codes);
        return queryMap;
    }
	
	
	
	
	//ajax��ѯ����Ӧ��΢��id��Ӧ�Ķ�ά��ͼƬ
	@RequestMapping(value="/imgs",method=RequestMethod.POST)
	@ResponseBody
    public Map<String, Object> imgs(ModelAndView model,HttpServletRequest request,
    		@RequestParam(value="codes")String codes
    		) throws Exception{
			Map<String, Object> queryMap = new HashMap<String, Object>();
			//��ѯ��ͼƬ����
			List<LogUser>  findimg  =  logUserService.findimg(codes);
			//
			System.out.println("ͼƬ��ַ��"+findimg.get(0).getImgs());
			queryMap.put("imgsx", findimg.get(0).getImgs());
			queryMap.put("type","success");
			return queryMap;
    }
	
	
	
	
	//���뺣��ҳ�棨ԭʼ��
		@RequestMapping(value="/haibao",method=RequestMethod.GET)
	    public  ModelAndView  haibao(ModelAndView model,HttpServletRequest request,
	    		@RequestParam(value="codes")String codes,String  feizhenshixueyuan
	    		) throws Exception{
				System.out.println("feizhenshixueyuan:"+feizhenshixueyuan);
			    model.addObject("codes", codes);
			    System.out.println("��ʼ�Ƚ�");
			  //���ݲ�ͬ�Ĵ��룬��ת����ͬ�ĺ�����ʾҳ��
			    if(feizhenshixueyuan.equals("feizhenshixueyuan")){
			    	System.out.println("����ʽѧԱ");
			    	model.setViewName("smallfeature/yinyecopywriter");
			    }
				if(feizhenshixueyuan.equals("zhenshixueyuan")){
					 model.setViewName("smallfeature/copywriter");
				}
				return model;
	    }
	
}
