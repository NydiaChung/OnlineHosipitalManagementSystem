package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Doctor;
import com.service.DoctorService;
import com.entity.Dept;
import com.service.DeptService;
import com.util.PageHelper;

//定义为控制器
@Controller
// 设置路径
@RequestMapping("/doctor")
public class DoctorAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private DoctorService doctorService;
	@Autowired
	@Resource
	private DeptService deptService;

	// 准备添加数据
	@RequestMapping("createDoctor.action")
	public String createDoctor() {
		List<Dept> deptList = this.deptService.getAllDept();
		this.getRequest().setAttribute("deptList", deptList);
		return "admin/adddoctor";
	}

	// 添加数据
	@RequestMapping("addDoctor.action")
	public String addDoctor(Doctor doctor) {
		this.doctorService.insertDoctor(doctor);
		return "redirect:/doctor/createDoctor.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteDoctor.action")
	public String deleteDoctor(String id) {
		this.doctorService.deleteDoctor(id);
		return "redirect:/doctor/getAllDoctor.action";
	}

	// 批量删除数据
	@RequestMapping("deleteDoctorByIds.action")
	public String deleteDoctorByIds() {
		String[] ids = this.getRequest().getParameterValues("doctorid");
		for (String doctorid : ids) {
			this.doctorService.deleteDoctor(doctorid);
		}
		return "redirect:/doctor/getAllDoctor.action";
	}

	// 更新数据
	@RequestMapping("updateDoctor.action")
	public String updateDoctor(Doctor doctor) {
		this.doctorService.updateDoctor(doctor);
		return "redirect:/doctor/getAllDoctor.action";
	}

	// 显示全部数据
	@RequestMapping("getAllDoctor.action")
	public String getAllDoctor(String number) {
		List<Doctor> doctorList = this.doctorService.getAllDoctor();
		PageHelper.getPage(doctorList, "doctor", null, null, 10, number, this.getRequest(), null);
		return "admin/listdoctor";
	}
	
	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryDoctorByCond.action")
	public String queryDoctorByCond(String cond, String name, String number) {
		Doctor doctor = new Doctor();
		if (cond != null) {
			if ("username".equals(cond)) {
				doctor.setUsername(name);
			}
			if ("password".equals(cond)) {
				doctor.setPassword(name);
			}
			if ("realname".equals(cond)) {
				doctor.setRealname(name);
			}
			if ("deptid".equals(cond)) {
				doctor.setDeptid(name);
			}
			if ("image".equals(cond)) {
				doctor.setImage(name);
			}
			if ("sex".equals(cond)) {
				doctor.setSex(name);
			}
			if ("birthday".equals(cond)) {
				doctor.setBirthday(name);
			}
			if ("xueli".equals(cond)) {
				doctor.setXueli(name);
			}
			if ("biye".equals(cond)) {
				doctor.setBiye(name);
			}
			if ("themax".equals(cond)) {
				doctor.setThemax(name);
			}
			if ("contents".equals(cond)) {
				doctor.setContents(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.doctorService.getDoctorByLike(doctor), "doctor", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/querydoctor";
	}

	// 按主键查询数据
	@RequestMapping("getDoctorById.action")
	public String getDoctorById(String id) {
		Doctor doctor = this.doctorService.getDoctorById(id);
		this.getRequest().setAttribute("doctor", doctor);
		List<Dept> deptList = this.deptService.getAllDept();
		this.getRequest().setAttribute("deptList", deptList);
		return "admin/editdoctor";
	}

	public DoctorService getDoctorService() {
		return doctorService;
	}

	public void setDoctorService(DoctorService doctorService) {
		this.doctorService = doctorService;
	}

}
