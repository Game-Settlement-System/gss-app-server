package com.gss.web.common.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.stereotype.Service;

import com.gss.web.common.dao.BossDAO;
import com.gss.web.common.domain.Boss;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class BossServiceImpl implements BossService{
	@Autowired
	private final BossDAO bossDAO;
	
	@Autowired
	private ReloadableResourceBundleMessageSource res;
	
	@Override
	public List<Boss> list() {
		return bossDAO.list();
	}
	
	@Override
	public Integer insertBoss(Boss boss) {
		return bossDAO.insertBoss(boss);
	}
	
	@Override
	public int deleteByBossName(Map map) {
		return bossDAO.deleteByBossName(map);
	}
		
	@Override
	public List<Boss> selectAllBoss() {
		return bossDAO.selectAllBoss();
	}

	@Override
	public int selectByBoss(Map map) {
		return bossDAO.selectByBoss(map);
	}
	
	@Override
	public String bossExistence(Boss boss) {
		String urlPath="";
		Integer bossExistenceNum;
		Map<String, String> map= new HashMap<String, String>();
		
		map.put("bossName", boss.getBossName());
		map.put("bossGrade", boss.getBossGrade());
		bossExistenceNum=selectByBoss(map);
		if(bossExistenceNum.equals(0)) {
			insertBoss(boss);
			urlPath="redirect:/admin/boss";
		}else {
			urlPath="/admin/boss/insertBoss";
		}
		
		return urlPath;
	}
	
	@Override
	public Boss selectByBossNameAndGrade(Map map) {
		return bossDAO.selectByBossNameAndGrade(map);
	}
	
	@Override
	public List<Boss> selectAllBossPaging(Integer page){
		return bossDAO.selectAllBossPaging(page);
	}
	
	@Override
	public int selectBossCount() {
		int total = bossDAO.selectBossCount();
		int lastBlockNum=-1;
		
		if( total % 7 == 0 ) {
			lastBlockNum = (int)Math.floor(total/7);
        }
        else {
        	lastBlockNum = (int)Math.floor(total/7) + 1;
        }
		
		return lastBlockNum;
	}
}
