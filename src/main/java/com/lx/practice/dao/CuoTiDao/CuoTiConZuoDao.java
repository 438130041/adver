package com.lx.practice.dao.CuoTiDao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.ExamQuestion;


@Repository
public interface CuoTiConZuoDao {
	
	
	//根据题目id查询出该题目信息
	public  List<ExamQuestion>  tmuchaxuen(ExamQuestion  examQuestion);
	
	//将错题数据存入错题库中
	public  void   cuoticuenru(ExamQuestion  examQuestion);
	
		
	//错题练习中删除错题库中做对了的题目
	public   void  cuotishanchus(ExamQuestion  examQuestion);
	
	//查询错题章节
	//中药一
	public   List<ExamQuestion>  cuotizZYY(ExamQuestion  examQuestion);
    //中药二
	public   List<ExamQuestion>  cuotizZYE(ExamQuestion  examQuestion);
    //中药综合
	public   List<ExamQuestion>  cuotizZYZH(ExamQuestion  examQuestion);
   //西药一
	public   List<ExamQuestion>  cuotizXYY(ExamQuestion  examQuestion);
   //西药二
	public   List<ExamQuestion>  cuotizXYE(ExamQuestion  examQuestion);
  //西药综合
	public   List<ExamQuestion>  cuotizXYZH(ExamQuestion  examQuestion);
  //法规
	public   List<ExamQuestion>  cuotizYS(ExamQuestion  examQuestion);
	
	
	//章节题目查询(中药都用这个，一个方法，通过传入不同的参数查询出不同数据)
    public  List<ExamQuestion>  cuotitimu(ExamQuestion  examQuestion);
    
   //查询出对应章节数
    public  List<ExamQuestion>  cuotizhangjieshu(ExamQuestion  examQuestion);
    
   //将章节信息存入数据库中
    public  void cuotizhanjiecucuen(ExamQuestion  examQuestion);
    
  //更改章节表中章节题目数
    public  void  cuotizhangjiegengai(ExamQuestion  examQuestion);
    
  //查询出错题表中某个章节下下有多少个题目
    public  List<ExamQuestion> cuotizhangjietimushu(ExamQuestion  examQuestion);
    
  //更具章节id查询出章节中的题目
   
    
    
   //查询章节表中是否已经有该章节
    public  List<ExamQuestion> chaxuensfygaizhangjie(ExamQuestion  examQuestion);
    
   
    
   //历史错题储存
    public  void  lishicuoticc(ExamQuestion  examQuestion);
    
    
   //历史错题章节储存
    public  void  lishicuotizhanjie(ExamQuestion  examQuestion);
    
    
    //查询出历史章节表中已有的章节题目数
    public   List<ExamQuestion> lishizhanjietimushu(ExamQuestion  examQuestion);
    
    
    
   //历史错题章节题目数更改
    public  void  lishicuotizhanjiegengai(ExamQuestion  examQuestion);
 
    
   //根据微信id和错题题目id查询出错题表中是否已经有了该题目信息
    public   List<ExamQuestion>   chaxuencuotisfcuenzai(ExamQuestion  examQuestion);
    
    
    
}
