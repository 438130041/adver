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
		
	 
	 //����򿨺�����̨��ͼƬ�������ݿ���
	 /**
	     * @param request
	     * @return �ɹ�����success��ʧ�ܷ���error
	 * @throws Exception 
	     */
		@RequestMapping(value="/daka",method=RequestMethod.POST)
		@ResponseBody
	    public Map<String, Object> upload(HttpServletRequest request,MultipartFile photo) throws Exception {
			logger.info("ִ��ͼƬ�ϴ�");
			Map<String, Object> queryMap = new HashMap<String, Object>();
 			request.setCharacterEncoding("UTF-8");
	        System.out.println("ͼƬ��ַ��"+photo);
	        String url = null;//����ͼƬ·������
	        if(!photo.isEmpty()) {
	            logger.info("�ɹ���ȡ��Ƭ");
	            String  fileName = photo.getOriginalFilename();
	            String  path = null;
	            String  type = null;
	            type = fileName.indexOf(".") != -1 ? fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()) : null;
	            logger.info("ͼƬ��ʼ����Ϊ��" + fileName + " ����Ϊ��" + type);
	            if (type != null) {
	                /*if ("GIF".equals(type.toUpperCase())||"PNG".equals(type.toUpperCase())||"JPG".equals(type.toUpperCase())) {*/
	                    // ��Ŀ��������ʵ�ʷ������еĸ�·��
	                    String realPath = request.getSession().getServletContext().getRealPath("/");
	                  /*  logger.info("��Ŀ��������ʵ�ʷ������еĸ�·��"+realPath);*/
	                    // �Զ�����ļ����ƣ�ͼƬ�ļ�����
	                    String trueFileName = String.valueOf(System.currentTimeMillis()) + fileName;
	                   /* String   fileName  = */ 
	                    
	                    
	                    
	                    
	                    System.out.println("trueFileName:"+trueFileName);
	                    // ���ô��ͼƬ�ļ���·��
	                    path = realPath + "resources/admin/uploads/" + trueFileName;
	                    File file = new File(path);
	                    logger.info("file:"+file);
	                    logger.info("�ļ��ľ���·��:" + path);
	                    url = "../resources/admin/uploads/"+trueFileName;
	                   /* url = "http://localhost:8080/lx/resources/admin/uploads/"+trueFileName;*/
	                    logger.info("�ļ�������Ե�ַ��" + url);
	                    photo.transferTo(new File(path));//���ڴ��е�ͼƬд�������
	                    BufferedImage img = ImageUtil.changeImage(file);
	                    ImageIO.write(img, trueFileName, file);
	                    logger.info("img:"+img);
	                    logger.info("�ļ��ɹ��ϴ��ɹ�");
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
	        //Map�洢ͼƬ��Ե�ַ��id
	        Map<String, Object> map = new HashMap<String, Object>();
	        map.put("imageurl", url);
	        /*map.put("imageid", id);*/
	        ObjectMapper mapper = new ObjectMapper();
	        //ת��ΪJson�ַ�����ʽ������
			String JsonImage = mapper.writeValueAsString(map);
			queryMap.put("JsonImage", JsonImage);//ͼƬ��ַ
			queryMap.put("type", "success");
	        System.out.println("ajax�ص�");
			return queryMap;
	    }
	
	
	
	
	//����ת����ͼƬ��ʾҳ��
	
	
	
}
