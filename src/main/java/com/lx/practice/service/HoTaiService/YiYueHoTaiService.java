package com.lx.practice.service.HoTaiService;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.HuoDongUser;
import com.sun.tools.javac.util.List;

@Service
public interface YiYueHoTaiService {
		
	//查询出职业医师推广人信息
			public   List<HuoDongUser>  selecttuiguangren(HuoDongUser  huodonguser);
		
}
