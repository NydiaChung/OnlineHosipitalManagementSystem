package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.AsignDAO;
import com.entity.Asign;
import com.service.AsignService;

@Service("asignService")
public class AsignServiceImpl implements AsignService {
	@Autowired
	@Resource
	private AsignDAO asignDAO;

	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertAsign(Asign asign) {
		return this.asignDAO.insertAsign(asign);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateAsign(Asign asign) {
		return this.asignDAO.updateAsign(asign);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteAsign(String asignid) {
		return this.asignDAO.deleteAsign(asignid);
	}

	@Override // 继承接口的查询全部
	public List<Asign> getAllAsign() {
		return this.asignDAO.getAllAsign();
	}

	@Override // 继承接口的按条件精确查询
	public List<Asign> getAsignByCond(Asign asign) {
		return this.asignDAO.getAsignByCond(asign);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Asign> getAsignByLike(Asign asign) {
		return this.asignDAO.getAsignByLike(asign);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Asign getAsignById(String asignid) {
		return this.asignDAO.getAsignById(asignid);
	}

}
