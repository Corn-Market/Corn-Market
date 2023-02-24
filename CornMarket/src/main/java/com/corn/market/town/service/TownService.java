package com.corn.market.town.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.corn.market.town.dao.TownDao;
import com.corn.market.town.domain.TownCertification;
import com.corn.market.town.domain.TownInfo;

@Service
public class TownService {
	
	private final TownDao townDao;

	public TownService(TownDao townDao) {
		this.townDao = townDao;
	}

	//town code 가져오기
	public String getTownCode(TownInfo townInfo) throws Exception {
		townInfo.setTown_name(townInfo.getTown_name().split(" ")[1]);
		String town_code = townDao.selectTownCode(townInfo);
		return town_code;
	}
	
	//동네인증 이전기록 삭제하고 새로운 인증 등록
	@Transactional(rollbackFor = Exception.class)
	public void deleteAndInputAddress(TownCertification town) throws Exception {
		//이전 인증기록 개수
		int count = townDao.selectCountAddress(town.getUser_id());
		if(count==0) {
			townDao.insertNewAddress(town);
		}else {
			townDao.deletePrevAddress(town.getUser_id());
			townDao.insertNewAddress(town);
		}

	}

}
