package com.lx.practice.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.lx.practice.entity.ExcelUtils;
import com.lx.practice.entity.LogUser;

@Service
public class ExcelService {
	/*
     * 文件导入（批量导入）
     * 
    public String ajaxUploadExcel(MultipartFile file, HttpServletRequest request, HttpServletResponse response) {
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        if(file.isEmpty()){
            try {
                throw new Exception("文件不存在！");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        InputStream in =null;
        try {
            in = file.getInputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }
        List<List<Object>> listob = null;
        try {
            listob = new ExcelUtils().getBankListByExcel(in,file.getOriginalFilename());
        } catch (Exception e) {
            e.printStackTrace();
        }

        //该处可调用service相应方法进行数据保存到数据库中，现只对数据输出
        for (int i = 0; i < listob.size(); i++) {
            List<Object> lo = listob.get(i);
   //         System.out.println("遍历" + listob.get(i));
            LogUser vo = new LogUser();
            LogUser j = null;

            try {
                j = studentMapper.selectByPrimaryKey(Integer.valueOf(String.valueOf(lo.get(0))));
            } catch (NumberFormatException e) {
                System.out.println("没有新增");
            }

            vo.setId(Integer.valueOf(String.valueOf(lo.get(0))));
            vo.setStudentName(String.valueOf(lo.get(1)));
            vo.setStudentNumber(String.valueOf(lo.get(2)));
            vo.setClassroom(String.valueOf(lo.get(3)));
            vo.setPosition(String.valueOf(lo.get(4)));
            vo.setGradeId(Integer.valueOf(String.valueOf(lo.get(5))));
      //      System.out.println("这个开始");
      //      System.out.println(vo.toString());
      //      System.out.println("这个结束");
            if(j == null)
            {
               // System.out.println("判断j为空的话");
                studentMapper.addStudent(vo);
            }
            else
            {
            //    System.out.println("判断j为不空的话");
                studentMapper.updateById(vo);
            }
        }
        return "success";
    }*/
}
