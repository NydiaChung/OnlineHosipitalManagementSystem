package com.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Doctor;

@Service("doctorService")
public interface DoctorService {
	// 插入数据 调用doctorDAO里的insertDoctor配置
	public int insertDoctor(Doctor doctor);

	// 更新数据 调用doctorDAO里的updateDoctor配置
	public int updateDoctor(Doctor doctor);

	// 删除数据 调用doctorDAO里的deleteDoctor配置
	public int deleteDoctor(String doctorid);

	// 查询全部数据 调用doctorDAO里的getAllDoctor配置
	public List<Doctor> getAllDoctor();

	// 按照Doctor类里面的字段名称精确查询 调用doctorDAO里的getDoctorByCond配置
	public List<Doctor> getDoctorByCond(Doctor doctor);

	// 按照Doctor类里面的字段名称模糊查询 调用doctorDAO里的getDoctorByLike配置
	public List<Doctor> getDoctorByLike(Doctor doctor);

	// 按主键查询表返回单一的Doctor实例 调用doctorDAO里的getDoctorById配置
	public Doctor getDoctorById(String doctorid);

}
