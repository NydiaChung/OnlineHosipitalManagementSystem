package com.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.entity.Drugs;

@Repository("drugsDAO") // Repository标签定义数据库连接的访问 Spring中直接
public interface DrugsDAO {

	/**
	 * DrugsDAO 接口 可以按名称直接调用drugs.xml配置文件的SQL语句
	 */

	// 插入数据 调用entity包drugs.xml里的insertDrugs配置 返回值0(失败),1(成功)
	public int insertDrugs(Drugs drugs);

	// 更新数据 调用entity包drugs.xml里的updateDrugs配置 返回值0(失败),1(成功)
	public int updateDrugs(Drugs drugs);

	// 删除数据 调用entity包drugs.xml里的deleteDrugs配置 返回值0(失败),1(成功)
	public int deleteDrugs(String drugsid);

	// 查询全部数据 调用entity包drugs.xml里的getAllDrugs配置 返回List类型的数据
	public List<Drugs> getAllDrugs();

	// 按照Drugs类里面的值精确查询 调用entity包drugs.xml里的getDrugsByCond配置 返回List类型的数据
	public List<Drugs> getDrugsByCond(Drugs drugs);

	// 按照Drugs类里面的值模糊查询 调用entity包drugs.xml里的getDrugsByLike配置 返回List类型的数据
	public List<Drugs> getDrugsByLike(Drugs drugs);

	// 按主键查询表返回单一的Drugs实例 调用entity包drugs.xml里的getDrugsById配置
	public Drugs getDrugsById(String drugsid);

}
