package com.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Advice;
import com.entity.Asign;
import com.entity.Doctor;
import com.entity.Users;
import com.service.AdviceService;
import com.service.AsignService;
import com.service.DoctorService;
import com.service.UsersService;
import com.util.PageHelper;
import com.util.VeDate;

//定义为控制器
@Controller
// 设置路径
@RequestMapping("/advice")
public class AdviceAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private AdviceService adviceService;
	@Autowired
	@Resource
	private UsersService usersService;
	@Autowired
	@Resource
	private DoctorService doctorService;
	@Autowired
	@Resource
	private AsignService asignService;

	// 准备添加数据
	@RequestMapping("createAdvice.action")
	public String createAdvice(String id) {
		Asign asign = this.asignService.getAsignById(id);
		this.getRequest().setAttribute("asign", asign);
		return "admin/addadvice";
	}

	// 添加数据
	@RequestMapping("addAdvice.action")
	public String addAdvice(Advice advice) {
		advice.setAddtime(VeDate.getStringDateShort());
		this.adviceService.insertAdvice(advice);
		String asignid = this.getRequest().getParameter("asignid");
		Asign asign = this.asignService.getAsignById(asignid);
		asign.setStatus("完成");
		this.asignService.updateAsign(asign);
		return "redirect:/asign/getDoctorAsign.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteAdvice.action")
	public String deleteAdvice(String id) {
		this.adviceService.deleteAdvice(id);
		return "redirect:/advice/getAllAdvice.action";
	}

	// 批量删除数据
	@RequestMapping("deleteAdviceByIds.action")
	public String deleteAdviceByIds() {
		String[] ids = this.getRequest().getParameterValues("adviceid");
		for (String adviceid : ids) {
			this.adviceService.deleteAdvice(adviceid);
		}
		return "redirect:/advice/getAllAdvice.action";
	}

	// 更新数据
	@RequestMapping("updateAdvice.action")
	public String updateAdvice(Advice advice) {
		this.adviceService.updateAdvice(advice);
		return "redirect:/advice/getAllAdvice.action";
	}

	// 显示全部数据
	@RequestMapping("getAllAdvice.action")
	public String getAllAdvice(String number) {
		List<Advice> adviceList = this.adviceService.getAllAdvice();
		PageHelper.getPage(adviceList, "advice", null, null, 10, number, this.getRequest(), null);
		return "admin/listadvice";
	}

	@RequestMapping("getDoctorAdvice.action")
	public String getDoctorAdvice() {
		String doctorid = (String) this.getSession().getAttribute("adminid");
		Advice advice = new Advice();
		advice.setDoctorid(doctorid);
		List<Advice> adviceList = this.adviceService.getAdviceByCond(advice);
		this.getRequest().setAttribute("adviceList", adviceList);
		return "admin/xlistadvice";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryAdviceByCond.action")
	public String queryAdviceByCond(String cond, String name, String number) {
		Advice advice = new Advice();
		if (cond != null) {
			if ("ano".equals(cond)) {
				advice.setAno(name);
			}
			if ("usersid".equals(cond)) {
				advice.setUsersid(name);
			}
			if ("doctorid".equals(cond)) {
				advice.setDoctorid(name);
			}
			if ("contents".equals(cond)) {
				advice.setContents(name);
			}
			if ("addtime".equals(cond)) {
				advice.setAddtime(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.adviceService.getAdviceByLike(advice), "advice", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/queryadvice";
	}

	// 按主键查询数据
	@RequestMapping("getAdviceById.action")
	public String getAdviceById(String id) {
		Advice advice = this.adviceService.getAdviceById(id);
		this.getRequest().setAttribute("advice", advice);
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		List<Doctor> doctorList = this.doctorService.getAllDoctor();
		this.getRequest().setAttribute("doctorList", doctorList);
		return "admin/editadvice";
	}

	public AdviceService getAdviceService() {
		return adviceService;
	}

	public void setAdviceService(AdviceService adviceService) {
		this.adviceService = adviceService;
	}

}
