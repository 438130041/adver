package com.lx.practice.service.HoTaiService;

import org.springframework.stereotype.Service;

import com.lx.practice.entity.HuoDongUser;
import com.sun.tools.javac.util.List;

@Service
public interface YiYueHoTaiService {
		
	//��ѯ��ְҵҽʦ�ƹ�����Ϣ
			public   List<HuoDongUser>  selecttuiguangren(HuoDongUser  huodonguser);
		
}
