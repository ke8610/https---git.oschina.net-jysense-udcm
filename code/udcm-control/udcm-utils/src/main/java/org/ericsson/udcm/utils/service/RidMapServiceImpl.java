package org.ericsson.udcm.utils.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ericsson.udcm.utils.dao.RidMapDao;
import org.ericsson.udcm.utils.model.RidMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("RidMapService")
public class RidMapServiceImpl extends BaseServiceImpl implements RidMapService{

	@Autowired
	private RidMapDao ridmapdao;

	@Override
	public RidMap isUserExist(RidMap ridmap) {
		// TODO Auto-generated method stub
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("locate", ridmap.getLocate());
		List<RidMap> ridmapList = ridmapdao.findByParams(RidMap.class, params);
		if(ridmapList!=null&&ridmapList.size()>0){
			 return ridmapList.get(0);
		}
		return null;
	}
}

