package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Dept;
import com.service.DeptService;
import com.util.PageHelper;

//定义为控制器
@Controller
// 设置路径
@RequestMapping("/dept")
public class DeptAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private DeptService deptService;

	// 准备添加数据
	@RequestMapping("createDept.action")
	public String createDept() {
		return "admin/adddept";
	}

	// 添加数据
	@RequestMapping("addDept.action")
	public String addDept(Dept dept) {
		this.deptService.insertDept(dept);
		return "redirect:/dept/createDept.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteDept.action")
	public String deleteDept(String id) {
		this.deptService.deleteDept(id);
		return "redirect:/dept/getAllDept.action";
	}

	// 批量删除数据
	@RequestMapping("deleteDeptByIds.action")
	public String deleteDeptByIds() {
		String[] ids = this.getRequest().getParameterValues("deptid");
		for (String deptid : ids) {
			this.deptService.deleteDept(deptid);
		}
		return "redirect:/dept/getAllDept.action";
	}

	// 更新数据
	@RequestMapping("updateDept.action")
	public String updateDept(Dept dept) {
		this.deptService.updateDept(dept);
		return "redirect:/dept/getAllDept.action";
	}

	// 显示全部数据
	@RequestMapping("getAllDept.action")
	public String getAllDept(String number) {
		List<Dept> deptList = this.deptService.getAllDept();
		PageHelper.getPage(deptList, "dept", null, null, 10, number, this.getRequest(), null);
		return "admin/listdept";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryDeptByCond.action")
	public String queryDeptByCond(String cond, String name, String number) {
		Dept dept = new Dept();
		if (cond != null) {
			if ("deptname".equals(cond)) {
				dept.setDeptname(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.deptService.getDeptByLike(dept), "dept", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/querydept";
	}

	// 按主键查询数据
	@RequestMapping("getDeptById.action")
	public String getDeptById(String id) {
		Dept dept = this.deptService.getDeptById(id);
		this.getRequest().setAttribute("dept", dept);
		return "admin/editdept";
	}

	public DeptService getDeptService() {
		return deptService;
	}

	public void setDeptService(DeptService deptService) {
		this.deptService = deptService;
	}

}
