package com.lx.practice.controller.kaohodaan;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/daankemu")
public class DaanKemuController {
		
	
	
	@RequestMapping(value="/daankemu",method=RequestMethod.GET)
    public ModelAndView daankemu(ModelAndView model,HttpServletRequest request){
		//
        model.setViewName("cuotichonzuo/daankemu");
        return model;
    }
	
	
	
	
	@RequestMapping(value="/daanhedui",method=RequestMethod.GET)
    public ModelAndView daanhedui(ModelAndView model,HttpServletRequest request,String kemu){
		
		model.addObject("kemu", kemu);//点击科目
        model.setViewName("cuotichonzuo/daanhedui");
        return model;
    }
	
	
	//考前密押卷
	@RequestMapping(value="/miyakemu",method=RequestMethod.GET)
    public ModelAndView miyakemu(ModelAndView model,HttpServletRequest request){
		//
        model.setViewName("cuotichonzuo/miyakemu");
        return model;
    }
	
	
	
	@RequestMapping(value="/miyachakan",method=RequestMethod.GET)
    public ModelAndView miyachakan(ModelAndView model,HttpServletRequest request,String kemu){
		if(kemu == "YXY"){
			model.addObject("pdf", "/resources/admin/login/miyajuan/YXY.pdf");
		}
		
		model.addObject("kemu", kemu);//点击科目
        model.setViewName("cuotichonzuo/miyachakan");
        return model;
    }
	
	
	    @RequestMapping("/openAttach")
	    @ResponseBody
	    public void openAttach(HttpServletResponse response,HttpServletRequest request,String  trueFileName) {
	    	System.out.println("进入方法");
	    	
	        FileInputStream fIn = null;
	        OutputStream out = null;
	        String  path = null;
	        
	        System.out.println("文件名："+trueFileName);
	        try {
				String realPath = request.getSession().getServletContext().getRealPath("/");
				path = realPath + "resources/admin/uploads/miyajuan/" + trueFileName;
	        	System.out.println("path的值："+path);
	            response.addHeader("Content-Disposition",
	                    "filename=\"" + new String("C:\\pdf\\YXY.pdf".getBytes("gb2312"), "ISO8859-1") + "\"");
	            response.setHeader("Content-Type", "application/pdf");

	            File file = new File("C:\\pdf\\YXY.pdf");
	            if(!file.exists()){//如果不存在
	                return;
	            }
	            // 读取下载文件
	            fIn = new FileInputStream(file);
	            // 输出流
	            out = response.getOutputStream();
	            // 缓冲区
	            byte[] buffer = new byte[1024];
	            int len = 0;
	            while ((len = fIn.read(buffer, 0, buffer.length)) != -1) {
	                out.write(buffer, 0, len);
	            }
	            out.flush();
	            } catch (IOException ioe) {
	                ioe.printStackTrace();
	            } finally {
	                IOUtils.closeQuietly(fIn);
	                IOUtils.closeQuietly(out);
	            }
	        	return;
	    }
	
	
}
