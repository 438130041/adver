package com.lx.practice.dao.HoTaiDao;

import org.springframework.stereotype.Repository;

import com.lx.practice.entity.HuoDongUser;
import com.sun.tools.javac.util.List;

@Repository
public interface YiYueHoTaiDao {
		
		//��ѯ��ְҵҽʦ�ƹ�����Ϣ
		public   List<HuoDongUser>  selecttuiguangren(HuoDongUser  huodonguser);
	
		
}
