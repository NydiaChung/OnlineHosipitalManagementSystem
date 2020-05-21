package com.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Advice;

@Service("adviceService")
public interface AdviceService {
	// 插入数据 调用adviceDAO里的insertAdvice配置
	public int insertAdvice(Advice advice);

	// 更新数据 调用adviceDAO里的updateAdvice配置
	public int updateAdvice(Advice advice);

	// 删除数据 调用adviceDAO里的deleteAdvice配置
	public int deleteAdvice(String adviceid);

	// 查询全部数据 调用adviceDAO里的getAllAdvice配置
	public List<Advice> getAllAdvice();

	// 按照Advice类里面的字段名称精确查询 调用adviceDAO里的getAdviceByCond配置
	public List<Advice> getAdviceByCond(Advice advice);

	// 按照Advice类里面的字段名称模糊查询 调用adviceDAO里的getAdviceByLike配置
	public List<Advice> getAdviceByLike(Advice advice);

	// 按主键查询表返回单一的Advice实例 调用adviceDAO里的getAdviceById配置
	public Advice getAdviceById(String adviceid);

}
