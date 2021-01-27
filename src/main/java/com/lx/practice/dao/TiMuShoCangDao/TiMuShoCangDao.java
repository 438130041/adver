package com.lx.practice.dao.TiMuShoCangDao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.ExamQuestion;


@Repository
public interface TiMuShoCangDao {
			
	//查询收藏题目章节
			//中药一
			public   List<ExamQuestion>  timushocangZYY(ExamQuestion  examQuestion);
		    //中药二
			public   List<ExamQuestion>  timushocangZYE(ExamQuestion  examQuestion);
		    //中药综合
			public   List<ExamQuestion>  timushocangZYZH(ExamQuestion  examQuestion);
		   //西药一
			public   List<ExamQuestion>  timushocangXYY(ExamQuestion  examQuestion);
		   //西药二
			public   List<ExamQuestion>  timushocangXYE(ExamQuestion  examQuestion);
		  //西药综合
			public   List<ExamQuestion>  timushocangXYZH(ExamQuestion  examQuestion);
		  //法规
			public   List<ExamQuestion>  timushocangYS(ExamQuestion  examQuestion);
			
			
		 //根据微信id和错题题目id查询收藏表中是否已经有了该题目信息
		    public   List<ExamQuestion>   chaxuenshocangfcuenzai(ExamQuestion  examQuestion);
		    
		 //如果收藏题库中没有该题目信息，那么将题目数据储存进收藏题库中
		    public   void   shocangtimucucuen(ExamQuestion  examQuestion);
		    
		 //去收藏题库中查询某个章节id下有多少到题目
		    public    List<ExamQuestion>  chaxuenshocangzhanjiexaitishu(ExamQuestion  examQuestion);
		    
		    
		  //查询收藏题库章节表是否已经有该章节
		    public   List<ExamQuestion>   chaxuneshocnagzhangjiesfyy(ExamQuestion  examQuestion);
		    
	     //将章节信息存入收藏章节表中去
		    public   void   cucuenshocangzhangjiexinxi(ExamQuestion  examQuestion);
		    
		//更改章节在题目数量信息
		    public   void  genggaizhanjietimushulian(ExamQuestion  examQuestion);
		    
		    
		//章节题目查询(中药都用这个，一个方法，通过传入不同的参数查询出不同数据)
			public   List<ExamQuestion>   shocangtimu(ExamQuestion  examQuestion);
			
			
	    //删除收藏题库中题目信息
			public   void  shanchushocangtimu(ExamQuestion  examQuestion);
			
	   
		//更改收藏题库章节表的题目数
			public   List<ExamQuestion>   gengaizhangjietimushu(ExamQuestion  examQuestion);
			
			
	   //查询出章节表中所有题目信息（判断是否已经进行过收藏）
			public   List<ExamQuestion>   chaxuenshuoyshocangtimu(ExamQuestion  examQuestion);
		    
}
