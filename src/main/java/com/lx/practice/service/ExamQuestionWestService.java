package com.lx.practice.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.ExamQuestion;
//西药题目service层
@Service
public interface ExamQuestionWestService {
	
		//用题型中的id去查询对应的题目（药事管理与法规）
			public   List<ExamQuestion>  findByWestFG();

		//用题型中的id去查询对应的题目（药学专业知识一）
			public   List<ExamQuestion>  findByWestEQ();
			
		//用题型中的id去查询对应的题目（药学专业知识二）
			public   List<ExamQuestion>  findByWestZE();

		//用题型中的id去查询对应的题目（药学综合知识与技能）
			public   List<ExamQuestion>  findByWestZH();
			
			
			//章节精选dao层控制
		    //药学专业知识一
		    public  List<ExamQuestion>  findYXY();
		    
		    
		    //药学专业知识二
		    public  List<ExamQuestion>  findYXE();
		    
		    
		    //药学综合知识与技能
		    public  List<ExamQuestion>  findYXZH();	
		    
		    //章节题目查询(西药都用这个，一个方法，通过传入不同的参数查询出不同数据)
		    public  List<ExamQuestion>  findxyzuoti(String   knowledge_Id);
	
}
