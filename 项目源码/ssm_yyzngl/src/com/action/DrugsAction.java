package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Drugs;
import com.service.DrugsService;
import com.util.PageHelper;

//定义为控制器
@Controller
// 设置路径
@RequestMapping("/drugs")
public class DrugsAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private DrugsService drugsService;

	// 准备添加数据
	@RequestMapping("createDrugs.action")
	public String createDrugs() {
		return "admin/adddrugs";
	}

	// 添加数据
	@RequestMapping("addDrugs.action")
	public String addDrugs(Drugs drugs) {
		this.drugsService.insertDrugs(drugs);
		return "redirect:/drugs/createDrugs.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteDrugs.action")
	public String deleteDrugs(String id) {
		this.drugsService.deleteDrugs(id);
		return "redirect:/drugs/getAllDrugs.action";
	}

	// 批量删除数据
	@RequestMapping("deleteDrugsByIds.action")
	public String deleteDrugsByIds() {
		String[] ids = this.getRequest().getParameterValues("drugsid");
		for (String drugsid : ids) {
			this.drugsService.deleteDrugs(drugsid);
		}
		return "redirect:/drugs/getAllDrugs.action";
	}

	// 更新数据
	@RequestMapping("updateDrugs.action")
	public String updateDrugs(Drugs drugs) {
		this.drugsService.updateDrugs(drugs);
		return "redirect:/drugs/getAllDrugs.action";
	}

	// 显示全部数据
	@RequestMapping("getAllDrugs.action")
	public String getAllDrugs(String number) {
		List<Drugs> drugsList = this.drugsService.getAllDrugs();
		PageHelper.getPage(drugsList, "drugs", null, null, 10, number, this.getRequest(), null);
		return "admin/listdrugs";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryDrugsByCond.action")
	public String queryDrugsByCond(String cond, String name, String number) {
		Drugs drugs = new Drugs();
		if (cond != null) {
			if ("drugsname".equals(cond)) {
				drugs.setDrugsname(name);
			}
			if ("price".equals(cond)) {
				drugs.setPrice(name);
			}
			if ("productor".equals(cond)) {
				drugs.setProductor(name);
			}
			if ("memo".equals(cond)) {
				drugs.setMemo(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.drugsService.getDrugsByLike(drugs), "drugs", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/querydrugs";
	}

	// 按主键查询数据
	@RequestMapping("getDrugsById.action")
	public String getDrugsById(String id) {
		Drugs drugs = this.drugsService.getDrugsById(id);
		this.getRequest().setAttribute("drugs", drugs);
		return "admin/editdrugs";
	}

	public DrugsService getDrugsService() {
		return drugsService;
	}

	public void setDrugsService(DrugsService drugsService) {
		this.drugsService = drugsService;
	}

}
