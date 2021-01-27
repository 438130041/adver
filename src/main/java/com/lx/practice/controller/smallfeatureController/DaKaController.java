package com.lx.practice.controller.smallfeatureController;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.imageio.metadata.IIOMetadataController;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;
import com.lx.practice.util.ImageUtil;



@Controller
@RequestMapping("/daka")
public class DaKaController {
	
		private Logger logger = Logger.getLogger(IIOMetadataController.class);
	 
		@Autowired
		private  PaiHanService   paiHanService;
		
	 
	 //点击打卡后进入后台将图片存入数据库中
	 /**
	     * @param request
	     * @return 成功返回success，失败返回error
	 * @throws Exception 
	     */
		@RequestMapping(value="/daka",method=RequestMethod.POST)
		@ResponseBody
	    public Map<String, Object> upload(HttpServletRequest request,MultipartFile photo) throws Exception {
			logger.info("执行图片上传");
			Map<String, Object> queryMap = new HashMap<String, Object>();
 			request.setCharacterEncoding("UTF-8");
	        System.out.println("图片地址："+photo);
	        String url = null;//定义图片路径变量
	        if(!photo.isEmpty()) {
	            logger.info("成功获取照片");
	            String  fileName = photo.getOriginalFilename();
	            String  path = null;
	            String  type = null;
	            type = fileName.indexOf(".") != -1 ? fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()) : null;
	            logger.info("图片初始名称为：" + fileName + " 类型为：" + type);
	            if (type != null) {
	                /*if ("GIF".equals(type.toUpperCase())||"PNG".equals(type.toUpperCase())||"JPG".equals(type.toUpperCase())) {*/
	                    // 项目在容器中实际发布运行的根路径
	                    String realPath = request.getSession().getServletContext().getRealPath("/");
	                  /*  logger.info("项目在容器中实际发布运行的根路径"+realPath);*/
	                    // 自定义的文件名称（图片文件名）
	                    String trueFileName = String.valueOf(System.currentTimeMillis()) + fileName;
	                   /* String   fileName  = */ 
	                    
	                    
	                    
	                    
	                    System.out.println("trueFileName:"+trueFileName);
	                    // 设置存放图片文件的路径
	                    path = realPath + "resources/admin/uploads/" + trueFileName;
	                    File file = new File(path);
	                    logger.info("file:"+file);
	                    logger.info("文件的绝对路径:" + path);
	                    url = "../resources/admin/uploads/"+trueFileName;
	                   /* url = "http://localhost:8080/lx/resources/admin/uploads/"+trueFileName;*/
	                    logger.info("文件访问相对地址：" + url);
	                    photo.transferTo(new File(path));//把内存中的图片写入磁盘中
	                    BufferedImage img = ImageUtil.changeImage(file);
	                    ImageIO.write(img, trueFileName, file);
	                    logger.info("img:"+img);
	                    logger.info("文件成功上传成功");
	                    file.createNewFile();
	              /*}else {
	                	queryMap.put("type", "error");
	                    return queryMap;
	                }*/
	            }else {
	            	queryMap.put("type", "error");
	                return queryMap;
	            }
	        }
	        //Map存储图片相对地址和id
	        Map<String, Object> map = new HashMap<String, Object>();
	        map.put("imageurl", url);
	        /*map.put("imageid", id);*/
	        ObjectMapper mapper = new ObjectMapper();
	        //转化为Json字符串格式并返回
			String JsonImage = mapper.writeValueAsString(map);
			queryMap.put("JsonImage", JsonImage);//图片地址
			queryMap.put("type", "success");
	        System.out.println("ajax回调");
			return queryMap;
	    }
	
	
	
	
	//在跳转进入图片显示页面
	
	
	
}
