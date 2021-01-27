package com.lx.practice.controller.HoTailConterllor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.zxing.Result;
import com.lx.practice.entity.LogUser;
import com.lx.practice.service.ExcelService;


//Excel��������ݿ�
@Controller
@RequestMapping("/excel")
public class ExcelDaoRuController {
	@Autowired
	private  ExcelService   excelService;
	
	
    @RequestMapping(value="/excel",method={RequestMethod.GET,RequestMethod.POST})
    @ResponseBody
    public Map<String, String> ajaxUploadExcel(@RequestParam("file")MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws Exception {
    //    System.out.println("������");
        Map<String, String> map = new HashMap<>();
       /* excelService.ajaxUploadExcel(file, request, response);*/
        map.put("msg", "ok");
        return map;
    }
	
}
