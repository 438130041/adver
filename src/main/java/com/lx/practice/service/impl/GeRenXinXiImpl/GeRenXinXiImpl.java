package com.lx.practice.service.impl.GeRenXinXiImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lx.practice.dao.GeRenXinXiDao.GeRenXinXiDao;
import com.lx.practice.entity.UserinFormation;
import com.lx.practice.service.GeRenXinXiService.GeRenXinXiService;
import com.lx.practice.util.DynamicDataSourceHolder;


@Service
public class GeRenXinXiImpl  implements  GeRenXinXiService{

	@Autowired
	private  GeRenXinXiDao  gerenxinxidao;
	
	
	
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'user'+ #openid")*/
	public void insertgerenxinxi(UserinFormation   userinformation) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		gerenxinxidao.insertgerenxinxi(userinformation);
	}



	@Override
	public List<UserinFormation> selectuser(String  openid) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return  gerenxinxidao.selectuser(openid);
	}

}
