package com.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.entity.Advice;

@Repository("adviceDAO") // Repository标签定义数据库连接的访问 Spring中直接
public interface AdviceDAO {

	/**
	 * AdviceDAO 接口 可以按名称直接调用advice.xml配置文件的SQL语句
	 */

	// 插入数据 调用entity包advice.xml里的insertAdvice配置 返回值0(失败),1(成功)
	public int insertAdvice(Advice advice);

	// 更新数据 调用entity包advice.xml里的updateAdvice配置 返回值0(失败),1(成功)
	public int updateAdvice(Advice advice);

	// 删除数据 调用entity包advice.xml里的deleteAdvice配置 返回值0(失败),1(成功)
	public int deleteAdvice(String adviceid);

	// 查询全部数据 调用entity包advice.xml里的getAllAdvice配置 返回List类型的数据
	public List<Advice> getAllAdvice();

	// 按照Advice类里面的值精确查询 调用entity包advice.xml里的getAdviceByCond配置 返回List类型的数据
	public List<Advice> getAdviceByCond(Advice advice);

	// 按照Advice类里面的值模糊查询 调用entity包advice.xml里的getAdviceByLike配置 返回List类型的数据
	public List<Advice> getAdviceByLike(Advice advice);

	// 按主键查询表返回单一的Advice实例 调用entity包advice.xml里的getAdviceById配置
	public Advice getAdviceById(String adviceid);

}
