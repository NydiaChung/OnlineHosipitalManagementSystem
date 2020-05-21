package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.AdviceDAO;
import com.entity.Advice;
import com.service.AdviceService;

@Service("adviceService")
public class AdviceServiceImpl implements AdviceService {
	@Autowired
	@Resource
	private AdviceDAO adviceDAO;

	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertAdvice(Advice advice) {
		return this.adviceDAO.insertAdvice(advice);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateAdvice(Advice advice) {
		return this.adviceDAO.updateAdvice(advice);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteAdvice(String adviceid) {
		return this.adviceDAO.deleteAdvice(adviceid);
	}

	@Override // 继承接口的查询全部
	public List<Advice> getAllAdvice() {
		return this.adviceDAO.getAllAdvice();
	}

	@Override // 继承接口的按条件精确查询
	public List<Advice> getAdviceByCond(Advice advice) {
		return this.adviceDAO.getAdviceByCond(advice);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Advice> getAdviceByLike(Advice advice) {
		return this.adviceDAO.getAdviceByLike(advice);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Advice getAdviceById(String adviceid) {
		return this.adviceDAO.getAdviceById(adviceid);
	}

}
