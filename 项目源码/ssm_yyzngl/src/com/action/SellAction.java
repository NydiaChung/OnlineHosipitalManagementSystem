package com.action;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Sell;
import com.service.SellService;
import com.entity.Drugs;
import com.service.DrugsService;
import com.util.PageHelper;

//定义为控制器
@Controller
// 设置路径
@RequestMapping("/sell")
public class SellAction extends BaseAction {
	// 注入Service 由于标签的存在 所以不需要getter setter
	@Autowired
	@Resource
	private SellService sellService;
	@Autowired
	@Resource
	private DrugsService drugsService;

	// 准备添加数据
	@RequestMapping("createSell.action")
	public String createSell() {
		List<Drugs> drugsList = this.drugsService.getAllDrugs();
		this.getRequest().setAttribute("drugsList", drugsList);
		String id = this.getRequest().getParameter("id");
		this.getRequest().setAttribute("id", id);
		return "admin/addsell";
	}

	// 添加数据
	@RequestMapping("addSell.action")
	public String addSell(Sell sell) {
		this.sellService.insertSell(sell);
		return "redirect:/sell/createSell.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteSell.action")
	public String deleteSell(String id) {
		this.sellService.deleteSell(id);
		return "redirect:/sell/getAllSell.action";
	}

	// 批量删除数据
	@RequestMapping("deleteSellByIds.action")
	public String deleteSellByIds() {
		String[] ids = this.getRequest().getParameterValues("sellid");
		for (String sellid : ids) {
			this.sellService.deleteSell(sellid);
		}
		return "redirect:/sell/getAllSell.action";
	}

	// 更新数据
	@RequestMapping("updateSell.action")
	public String updateSell(Sell sell) {
		this.sellService.updateSell(sell);
		return "redirect:/sell/getAllSell.action";
	}

	// 显示全部数据
	@RequestMapping("getAllSell.action")
	public String getAllSell(String number) {
		List<Sell> sellList = this.sellService.getAllSell();
		PageHelper.getPage(sellList, "sell", null, null, 10, number, this.getRequest(), null);
		return "admin/listsell";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("querySellByCond.action")
	public String querySellByCond(String cond, String name, String number) {
		Sell sell = new Sell();
		if (cond != null) {
			if ("sno".equals(cond)) {
				sell.setSno(name);
			}
			if ("drugsid".equals(cond)) {
				sell.setDrugsid(name);
			}
			if ("num".equals(cond)) {
				sell.setNum(name);
			}
			if ("price".equals(cond)) {
				sell.setPrice(name);
			}
			if ("total".equals(cond)) {
				sell.setTotal(name);
			}
			if ("addtime".equals(cond)) {
				sell.setAddtime(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.sellService.getSellByLike(sell), "sell", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/querysell";
	}

	// 按主键查询数据
	@RequestMapping("getSellById.action")
	public String getSellById(String id) {
		Sell sell = this.sellService.getSellById(id);
		this.getRequest().setAttribute("sell", sell);
		List<Drugs> drugsList = this.drugsService.getAllDrugs();
		this.getRequest().setAttribute("drugsList", drugsList);
		return "admin/editsell";
	}

	public SellService getSellService() {
		return sellService;
	}

	public void setSellService(SellService sellService) {
		this.sellService = sellService;
	}

}
