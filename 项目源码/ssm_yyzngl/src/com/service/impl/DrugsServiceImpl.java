package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.DrugsDAO;
import com.entity.Drugs;
import com.service.DrugsService;

@Service("drugsService")
public class DrugsServiceImpl implements DrugsService {
	@Autowired
	@Resource
	private DrugsDAO drugsDAO;

	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertDrugs(Drugs drugs) {
		return this.drugsDAO.insertDrugs(drugs);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateDrugs(Drugs drugs) {
		return this.drugsDAO.updateDrugs(drugs);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteDrugs(String drugsid) {
		return this.drugsDAO.deleteDrugs(drugsid);
	}

	@Override // 继承接口的查询全部
	public List<Drugs> getAllDrugs() {
		return this.drugsDAO.getAllDrugs();
	}

	@Override // 继承接口的按条件精确查询
	public List<Drugs> getDrugsByCond(Drugs drugs) {
		return this.drugsDAO.getDrugsByCond(drugs);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Drugs> getDrugsByLike(Drugs drugs) {
		return this.drugsDAO.getDrugsByLike(drugs);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Drugs getDrugsById(String drugsid) {
		return this.drugsDAO.getDrugsById(drugsid);
	}

}
