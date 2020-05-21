package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Asign;
import com.service.AsignService;
import com.entity.Users;
import com.entity.Dept;
import com.entity.Doctor;
import com.service.UsersService;
import com.service.DeptService;
import com.service.DoctorService;
import com.util.PageHelper;
import com.util.VeDate;

//定义为控制器
@Controller
// 设置路径
@RequestMapping("/asign")
public class AsignAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private AsignService asignService;
	@Autowired
	@Resource
	private UsersService usersService;
	@Autowired
	@Resource
	private DeptService deptService;
	@Autowired
	@Resource
	private DoctorService doctorService;

	// 准备添加数据
	@RequestMapping("createAsign.action")
	public String createAsign() {
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		List<Dept> deptList = this.deptService.getAllDept();
		this.getRequest().setAttribute("deptList", deptList);
		List<Doctor> doctorList = this.doctorService.getAllDoctor();
		this.getRequest().setAttribute("doctorList", doctorList);
		return "admin/addasign";
	}

	// 添加数据
	@RequestMapping("addAsign.action")
	public String addAsign(Asign asign) {
		this.asignService.insertAsign(asign);
		return "redirect:/asign/createAsign.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteAsign.action")
	public String deleteAsign(String id) {
		this.asignService.deleteAsign(id);
		return "redirect:/asign/getAllAsign.action";
	}

	// 批量删除数据
	@RequestMapping("deleteAsignByIds.action")
	public String deleteAsignByIds() {
		String[] ids = this.getRequest().getParameterValues("asignid");
		for (String asignid : ids) {
			this.asignService.deleteAsign(asignid);
		}
		return "redirect:/asign/getAllAsign.action";
	}

	// 更新数据
	@RequestMapping("updateAsign.action")
	public String updateAsign(Asign asign) {
		this.asignService.updateAsign(asign);
		return "redirect:/asign/getAllAsign.action";
	}

	// 显示全部数据
	@RequestMapping("getAllAsign.action")
	public String getAllAsign(String number) {
		List<Asign> asignList = this.asignService.getAllAsign();
		PageHelper.getPage(asignList, "asign", null, null, 10, number, this.getRequest(), null);
		return "admin/listasign";
	}

	@RequestMapping("getDoctorAsign.action")
	public String getDoctorAsign() {
		String doctorid = (String) this.getSession().getAttribute("adminid");
		Asign asign = new Asign();
		asign.setDoctorid(doctorid);
		asign.setOrderdate(VeDate.getStringDateShort());
		asign.setStatus("未完成");
		List<Asign> asignList = this.asignService.getAsignByCond(asign);
		this.getRequest().setAttribute("asignList", asignList);
		return "admin/xlistasign";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryAsignByCond.action")
	public String queryAsignByCond(String cond, String name, String number) {
		Asign asign = new Asign();
		if (cond != null) {
			if ("ano".equals(cond)) {
				asign.setAno(name);
			}
			if ("usersid".equals(cond)) {
				asign.setUsersid(name);
			}
			if ("deptid".equals(cond)) {
				asign.setDeptid(name);
			}
			if ("doctorid".equals(cond)) {
				asign.setDoctorid(name);
			}
			if ("orderdate".equals(cond)) {
				asign.setOrderdate(name);
			}
			if ("status".equals(cond)) {
				asign.setStatus(name);
			}
			if ("memo".equals(cond)) {
				asign.setMemo(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.asignService.getAsignByLike(asign), "asign", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/queryasign";
	}

	// 按主键查询数据
	@RequestMapping("getAsignById.action")
	public String getAsignById(String id) {
		Asign asign = this.asignService.getAsignById(id);
		this.getRequest().setAttribute("asign", asign);
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		List<Dept> deptList = this.deptService.getAllDept();
		this.getRequest().setAttribute("deptList", deptList);
		List<Doctor> doctorList = this.doctorService.getAllDoctor();
		this.getRequest().setAttribute("doctorList", doctorList);
		return "admin/editasign";
	}

	public AsignService getAsignService() {
		return asignService;
	}

	public void setAsignService(AsignService asignService) {
		this.asignService = asignService;
	}

}
