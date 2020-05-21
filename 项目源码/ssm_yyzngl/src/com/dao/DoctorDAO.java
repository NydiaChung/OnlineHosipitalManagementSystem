package com.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.entity.Doctor;

@Repository("doctorDAO") // Repository标签定义数据库连接的访问 Spring中直接
public interface DoctorDAO {

	/**
	 * DoctorDAO 接口 可以按名称直接调用doctor.xml配置文件的SQL语句
	 */

	// 插入数据 调用entity包doctor.xml里的insertDoctor配置 返回值0(失败),1(成功)
	public int insertDoctor(Doctor doctor);

	// 更新数据 调用entity包doctor.xml里的updateDoctor配置 返回值0(失败),1(成功)
	public int updateDoctor(Doctor doctor);

	// 删除数据 调用entity包doctor.xml里的deleteDoctor配置 返回值0(失败),1(成功)
	public int deleteDoctor(String doctorid);

	// 查询全部数据 调用entity包doctor.xml里的getAllDoctor配置 返回List类型的数据
	public List<Doctor> getAllDoctor();

	// 按照Doctor类里面的值精确查询 调用entity包doctor.xml里的getDoctorByCond配置 返回List类型的数据
	public List<Doctor> getDoctorByCond(Doctor doctor);

	// 按照Doctor类里面的值模糊查询 调用entity包doctor.xml里的getDoctorByLike配置 返回List类型的数据
	public List<Doctor> getDoctorByLike(Doctor doctor);

	// 按主键查询表返回单一的Doctor实例 调用entity包doctor.xml里的getDoctorById配置
	public Doctor getDoctorById(String doctorid);

}
