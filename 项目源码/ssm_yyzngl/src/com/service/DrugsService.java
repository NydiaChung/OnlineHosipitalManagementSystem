package com.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Drugs;

@Service("drugsService")
public interface DrugsService {
	// 插入数据 调用drugsDAO里的insertDrugs配置
	public int insertDrugs(Drugs drugs);

	// 更新数据 调用drugsDAO里的updateDrugs配置
	public int updateDrugs(Drugs drugs);

	// 删除数据 调用drugsDAO里的deleteDrugs配置
	public int deleteDrugs(String drugsid);

	// 查询全部数据 调用drugsDAO里的getAllDrugs配置
	public List<Drugs> getAllDrugs();

	// 按照Drugs类里面的字段名称精确查询 调用drugsDAO里的getDrugsByCond配置
	public List<Drugs> getDrugsByCond(Drugs drugs);

	// 按照Drugs类里面的字段名称模糊查询 调用drugsDAO里的getDrugsByLike配置
	public List<Drugs> getDrugsByLike(Drugs drugs);

	// 按主键查询表返回单一的Drugs实例 调用drugsDAO里的getDrugsById配置
	public Drugs getDrugsById(String drugsid);

}
