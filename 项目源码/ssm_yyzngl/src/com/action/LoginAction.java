package com.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Admin;
import com.entity.Doctor;
import com.service.AdminService;
import com.service.DoctorService;

//定义为控制器
@Controller
// 设置路径
@RequestMapping("/login")
public class LoginAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private AdminService adminService;
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private DoctorService doctorService;

	// 管理员登录 1 验证用户名是否存在 2 验证密码是否正确
	@RequestMapping("login.action")
	public String login() {
		String username = this.getRequest().getParameter("username");
		String password = this.getRequest().getParameter("password");
		Admin adminEntity = new Admin();
		adminEntity.setUsername(username);
		List<Admin> adminlist = this.adminService.getAdminByCond(adminEntity);
		if (adminlist.size() == 0) {
			this.getSession().setAttribute("message", "用户名不存在");
		} else {
			Admin admin = adminlist.get(0);
			if (password.equals(admin.getPassword())) {
				this.getSession().setAttribute("adminid", admin.getAdminid());
				this.getSession().setAttribute("adminname", admin.getUsername());
				this.getSession().setAttribute("realname", admin.getRealname());
				this.getSession().setAttribute("role", "管理员");
				return "admin/main";
			} else {
				this.getSession().setAttribute("message", "密码错误");
			}
		}
		Doctor doctor = new Doctor();
		doctor.setUsername(username);
		List<Doctor> doctorList = this.doctorService.getDoctorByCond(doctor);
		if (doctorList.size() == 0) {
			this.getSession().setAttribute("message", "用户名不存在");
		} else {
			Doctor d = new Doctor();
			d = doctorList.get(0);
			if (password.equals(d.getPassword())) {
				this.getSession().setAttribute("adminid", d.getDoctorid());
				this.getSession().setAttribute("adminname", d.getUsername());
				this.getSession().setAttribute("realname", d.getRealname());
				this.getSession().setAttribute("role", "医生");
				return "admin/main";
			} else {
				this.getSession().setAttribute("message", "密码错误");
			}
		}
		return "admin/index";
	}
}
