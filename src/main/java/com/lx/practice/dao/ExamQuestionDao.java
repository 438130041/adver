package com.lx.practice.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.ExamQuestion;

//题目dao层
@Repository
public interface ExamQuestionDao {
	
	//用题型中的id去查询对应的题目（药事管理与法规）
		public   List<ExamQuestion>  findByFG();

	//用题型中的id去查询对应的题目（中药学专业知识一）
		public   List<ExamQuestion>  findByEQ();
		
	//用题型中的id去查询对应的题目（中药学专业知识二）
		public   List<ExamQuestion>  findByZE();

	//用题型中的id去查询对应的题目（中药学综合知识与技能）
		public   List<ExamQuestion>  findByZH();
		
	//根据题目id查询出该题对应的题型
		public  List<ExamQuestion>  findidList();
		
    //测试b型题
	    public  List<ExamQuestion>  findcs();
	    
	    
	//章节精选dao层控制
	    
	    //中药学专业知识一
	    public  List<ExamQuestion>  findZYY();
	    
	    
	    //中药学专业知识二
	    public  List<ExamQuestion>  findZYE();
	    
	    
	    //中药学综合知识与技能
	    public  List<ExamQuestion>  findZYZH();
	    
	    
	    //药事管理与法规
	    public  List<ExamQuestion>  findYS();
	    
	//章节题目查询(中药都用这个，一个方法，通过传入不同的参数查询出不同数据)
	    public  List<ExamQuestion>  findzyzuoti(String   knowledge_Id);
	    
	    
	    //根据章节id查询出题目并筛选出不同题型
	      //单选题
	    public   List<ExamQuestion>  dangxuanti(String   knowledge_Id);
	    
	      //多选题
	    public   List<ExamQuestion>  duoxuanti(String   knowledge_Id);
	    
	      //b型题
	    public   List<ExamQuestion>  bxingti(String   knowledge_Id);
	    
	     //综合题
	    public   List<ExamQuestion>  zonheti(String   knowledge_Id);
	    
	   //查询出某个章节下的所有题目
	    /*public   List<ExamQuestion>  chaxuenzhanjieshuoyti(String   knowledge_Id);*/
	    
	    
	   //查询用户是否已经付费
	   public   List<ExamQuestion>  chaxuenyonhusff(ExamQuestion   examquestion);
	    
	    
 }
