package com.gss.web.common.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gss.web.api.dto.BossDto;
import com.gss.web.common.mapper.BossMapper;

@Repository
public class BossDAOImpl implements BossDAO{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BossDto> list() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(BossMapper.class).list();
	}

	@Override
	public Integer insertBoss(Boss boss) {
		return sqlSession.getMapper(BossMapper.class).insertBoss(boss);
	}

	@Override
	public List<BossDto> selectAllBoss() {
		return sqlSession.getMapper(BossMapper.class).list();
	}

	@Override
	public BossDto deleteByBossName(String bossName) {
		return sqlSession.getMapper(BossMapper.class).deleteByBossName(bossName);
	}

	@Override
	public int selectByBoss(Map map) {
		return sqlSession.getMapper(BossMapper.class).selectByBoss(map);
	}
}
