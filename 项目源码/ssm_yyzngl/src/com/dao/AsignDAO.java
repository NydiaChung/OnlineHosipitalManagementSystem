package com.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.entity.Asign;

@Repository("asignDAO") // Repository标签定义数据库连接的访问 Spring中直接
public interface AsignDAO {

	/**
	 * AsignDAO 接口 可以按名称直接调用asign.xml配置文件的SQL语句
	 */

	// 插入数据 调用entity包asign.xml里的insertAsign配置 返回值0(失败),1(成功)
	public int insertAsign(Asign asign);

	// 更新数据 调用entity包asign.xml里的updateAsign配置 返回值0(失败),1(成功)
	public int updateAsign(Asign asign);

	// 删除数据 调用entity包asign.xml里的deleteAsign配置 返回值0(失败),1(成功)
	public int deleteAsign(String asignid);

	// 查询全部数据 调用entity包asign.xml里的getAllAsign配置 返回List类型的数据
	public List<Asign> getAllAsign();

	// 按照Asign类里面的值精确查询 调用entity包asign.xml里的getAsignByCond配置 返回List类型的数据
	public List<Asign> getAsignByCond(Asign asign);

	// 按照Asign类里面的值模糊查询 调用entity包asign.xml里的getAsignByLike配置 返回List类型的数据
	public List<Asign> getAsignByLike(Asign asign);

	// 按主键查询表返回单一的Asign实例 调用entity包asign.xml里的getAsignById配置
	public Asign getAsignById(String asignid);

}
