package com.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Asign;

@Service("asignService")
public interface AsignService {
	// 插入数据 调用asignDAO里的insertAsign配置
	public int insertAsign(Asign asign);

	// 更新数据 调用asignDAO里的updateAsign配置
	public int updateAsign(Asign asign);

	// 删除数据 调用asignDAO里的deleteAsign配置
	public int deleteAsign(String asignid);

	// 查询全部数据 调用asignDAO里的getAllAsign配置
	public List<Asign> getAllAsign();

	// 按照Asign类里面的字段名称精确查询 调用asignDAO里的getAsignByCond配置
	public List<Asign> getAsignByCond(Asign asign);

	// 按照Asign类里面的字段名称模糊查询 调用asignDAO里的getAsignByLike配置
	public List<Asign> getAsignByLike(Asign asign);

	// 按主键查询表返回单一的Asign实例 调用asignDAO里的getAsignById配置
	public Asign getAsignById(String asignid);

}
