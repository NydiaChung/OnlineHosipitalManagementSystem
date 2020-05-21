package com.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Drugs;
import com.entity.Sell;
import com.service.DrugsService;
import com.service.SellService;
import com.util.VeDate;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/ajax")
public class AjaxAction extends BaseAction {
	@Autowired
	@Resource
	private SellService sellService;
	@Autowired
	@Resource
	private DrugsService drugsService;

	@RequestMapping("save.action")
	public void save(HttpServletResponse response) {
		String str = this.getRequest().getParameter("str");
		System.out.println(str);
		String[] s = str.split(",");// 接收参数并转化成数组
		PrintWriter out = null;
		Drugs drugs = this.drugsService.getDrugsById(s[0]);
		Sell sell = new Sell();
		sell.setSellid("S" + VeDate.getStringId());
		sell.setDrugsid(s[0]);
		sell.setNum(s[1]);
		sell.setSno(s[2]);
		sell.setPrice(drugs.getPrice());
		sell.setTotal("" + (Double.parseDouble(sell.getNum()) * Double.parseDouble(sell.getPrice())));
		sell.setAddtime(VeDate.getStringDateShort());
		this.sellService.insertSell(sell);
		try {
			response.setCharacterEncoding("UTF-8");
			out = response.getWriter();
		} catch (IOException ex) {
		}
		out.write(sell.getSellid());
		out.close();
	}
}
