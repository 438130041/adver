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
     * �ļ����루�������룩
     * 
    public String ajaxUploadExcel(MultipartFile file, HttpServletRequest request, HttpServletResponse response) {
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        if(file.isEmpty()){
            try {
                throw new Exception("�ļ������ڣ�");
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

        //�ô��ɵ���service��Ӧ�����������ݱ��浽���ݿ��У���ֻ���������
        for (int i = 0; i < listob.size(); i++) {
            List<Object> lo = listob.get(i);
   //         System.out.println("����" + listob.get(i));
            LogUser vo = new LogUser();
            LogUser j = null;

            try {
                j = studentMapper.selectByPrimaryKey(Integer.valueOf(String.valueOf(lo.get(0))));
            } catch (NumberFormatException e) {
                System.out.println("û������");
            }

            vo.setId(Integer.valueOf(String.valueOf(lo.get(0))));
            vo.setStudentName(String.valueOf(lo.get(1)));
            vo.setStudentNumber(String.valueOf(lo.get(2)));
            vo.setClassroom(String.valueOf(lo.get(3)));
            vo.setPosition(String.valueOf(lo.get(4)));
            vo.setGradeId(Integer.valueOf(String.valueOf(lo.get(5))));
      //      System.out.println("�����ʼ");
      //      System.out.println(vo.toString());
      //      System.out.println("�������");
            if(j == null)
            {
               // System.out.println("�ж�jΪ�յĻ�");
                studentMapper.addStudent(vo);
            }
            else
            {
            //    System.out.println("�ж�jΪ���յĻ�");
                studentMapper.updateById(vo);
            }
        }
        return "success";
    }*/
}
