package com.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.DoctorDAO;
import com.entity.Doctor;
import com.service.DoctorService;

@Service("doctorService")
public class DoctorServiceImpl implements DoctorService {
	@Autowired
	@Resource
	private DoctorDAO doctorDAO;

	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertDoctor(Doctor doctor) {
		return this.doctorDAO.insertDoctor(doctor);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateDoctor(Doctor doctor) {
		return this.doctorDAO.updateDoctor(doctor);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteDoctor(String doctorid) {
		return this.doctorDAO.deleteDoctor(doctorid);
	}

	@Override // 继承接口的查询全部
	public List<Doctor> getAllDoctor() {
		return this.doctorDAO.getAllDoctor();
	}

	@Override // 继承接口的按条件精确查询
	public List<Doctor> getDoctorByCond(Doctor doctor) {
		return this.doctorDAO.getDoctorByCond(doctor);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Doctor> getDoctorByLike(Doctor doctor) {
		return this.doctorDAO.getDoctorByLike(doctor);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Doctor getDoctorById(String doctorid) {
		return this.doctorDAO.getDoctorById(doctorid);
	}

}
