package com.lx.practice.service.impl.smallfeatureimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.lx.practice.dao.smallfeaturedao.PaiHanDao;
import com.lx.practice.entity.DaKa;
import com.lx.practice.entity.General;
import com.lx.practice.entity.LogUser;
import com.lx.practice.service.smallfeatureservice.PaiHanService;
import com.lx.practice.util.DynamicDataSourceHolder;


@Service
/*@Transactional*//*  ï¿½ï¿½ï¿½ï¿½@Transactional×¢ï¿½ï¿½ï¿½ï¿½Üµï¿½ï¿½Â²ï¿½Ñ¯Ê±ï¿½ï¿½ï¿½Ý¿ï¿½ï¿½ï¿½ï¿½Ô­ï¿½ï¿½Ä¿Ç°ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½            */
public class PaiHanImpl  implements  PaiHanService{
	
	@Autowired
	private  PaiHanDao  paiHanDao;
	
	//ÅÅÐÐ°ñÇ°Èý
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findPaiHan'")*/
	public List<LogUser> findPaiHan() {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.findPaiHan();
	}

	//Ç°Ò»°Ù
	@Override
	/*@Cacheable(value = "redisCacheManager",key = "'findPaiHanyibai'")*/
	public List<LogUser> findPaiHanyibai() {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.findPaiHanyibai();
	}

	@Override
	public void insertStudents(LogUser logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		paiHanDao.insertStudents(logUser);
	}

	@Override
	public List<LogUser> selectlaoshi(LogUser  logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.selectlaoshi(logUser);
	}

	@Override
	public LogUser findPaiHansuoyuo(LogUser  logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.findPaiHansuoyuo(logUser);
	}

	@Override
	public void updatedakaurl(LogUser logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		paiHanDao.updatedakaurl(logUser);
	}

	@Override
	public List<LogUser> finddakauri(LogUser logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.finddakauri(logUser);
	}

	@Override
	public void insertdakaurl(LogUser logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		paiHanDao.insertdakaurl(logUser);
	}

	@Override
	public void updatetonyitian(LogUser logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		paiHanDao.updatetonyitian(logUser);
	}

	@Override
	public List<LogUser> finddaka(String str) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.finddaka(str);
	}

	@Override
	public void insertdaridakashu(DaKa  daKa) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		paiHanDao.insertdaridakashu(daKa);
	}

	@Override
	public void updatedanridakashu(DaKa  daKa) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		paiHanDao.updatedanridakashu(daKa);
	}

	@Override
	public List<DaKa> finddaKatonji(String  str) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.finddaKatonji(str);
	}

	@Override
	public List<LogUser> dajiadakashuju(LogUser  LogUsers) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.dajiadakashuju(LogUsers);
	}

	@Override
	public void addintegral(LogUser  logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		paiHanDao.addintegral(logUser);
	}

	@Override
	public List<LogUser> insertdaka(String  openid) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.insertdaka(openid);
	}

	@Override
	public void insertzjwupin(LogUser  logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		paiHanDao.insertzjwupin(logUser);
	}

	@Override
	public void updatezjwupin(LogUser  logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		paiHanDao.updatezjwupin(logUser);
	}

	@Override
	public List<LogUser> insertjilu(LogUser  logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.insertjilu(logUser);
	}

	@Override
	@Cacheable(value = "redisCacheManager",key = "'zhojianjilu'")
	public List<LogUser> zhojianjilu() {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.zhojianjilu();
	}

	@Override
	public void cojianjianpinzhuantai(LogUser  logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		paiHanDao.cojianjianpinzhuantai(logUser);
	}

	@Override
	public List<LogUser> chaxuenshojihao(String   number) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.chaxuenshojihao(number);
	}

	@Override
	public List<LogUser> sjihaohao(String openid) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.sjihaohao(openid);
	}

	@Override
	public void woddakajilu(LogUser  logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		  paiHanDao.woddakajilu(logUser);
	}

	@Override
/*	@Cacheable(value = "redisCacheManager",key = "'insertwoddaka'")*/
	public List<LogUser> selecttwoddaka(String openid) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.selecttwoddaka(openid);
	}

	@Override
	public List<LogUser> Pictureidea() {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.Pictureidea();
	}

	@Override
	public List<LogUser> sfyiykecheng(LogUser  logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.sfyiykecheng(logUser);
	}

	/*@Override
	public List<LogUser> laoshidaima(LogUser logUser) {
		DynamicDataSourceHolder.setDataSource("defultdataSource");
		// TODO Auto-generated method stub
		return paiHanDao.laoshidaima(logUser);
	}*/


}
