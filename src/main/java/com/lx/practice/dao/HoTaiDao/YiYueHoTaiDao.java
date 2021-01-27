package com.lx.practice.dao.HoTaiDao;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.HuoDongUser;
import com.sun.tools.javac.util.List;

@Repository
public interface YiYueHoTaiDao {
		
		//查询出职业医师推广人信息
		public   List<HuoDongUser>  selecttuiguangren(HuoDongUser  huodonguser);
	
		
}
