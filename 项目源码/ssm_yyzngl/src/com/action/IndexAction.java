package com.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Advice;
import com.entity.Article;
import com.entity.Asign;
import com.entity.Banner;
import com.entity.Bbs;
import com.entity.Doctor;
import com.entity.Rebbs;
import com.entity.Sell;
import com.entity.Users;
import com.service.AdviceService;
import com.service.ArticleService;
import com.service.AsignService;
import com.service.BannerService;
import com.service.BbsService;
import com.service.DeptService;
import com.service.DoctorService;
import com.service.DrugsService;
import com.service.RebbsService;
import com.service.SellService;
import com.service.UsersService;
import com.util.VeDate;

//定义为控制器
@Controller
// 设置路径
@RequestMapping("/index")
public class IndexAction extends BaseAction {

	@Autowired
	@Resource
	private DeptService deptService;
	@Autowired
	@Resource
	private DoctorService doctorService;
	@Autowired
	@Resource
	private UsersService usersService;
	@Autowired
	@Resource
	private BannerService bannerService;
	@Autowired
	@Resource
	private ArticleService articleService;
	@Autowired
	@Resource
	private AsignService asignService;
	@Autowired
	@Resource
	private DrugsService drugsService;
	@Autowired
	@Resource
	private AdviceService adviceService;
	@Autowired
	@Resource
	private SellService sellService;
	@Autowired
	@Resource
	private BbsService bbsService;
	@Autowired
	@Resource
	private RebbsService rebbsService;

	// 公共方法 提供公共查询数据
	private void front() {
		this.getRequest().setAttribute("title", "医院智能管理系统");
		List<Banner> bannerList = this.bannerService.getAllBanner();
		this.getRequest().setAttribute("bannerList", bannerList);
	}

	// 首页显示
	@RequestMapping("index.action")
	public String index() {
		this.front();
		List<Banner> bannerList = this.bannerService.getAllBanner();
		List<Banner> frontList = new ArrayList<Banner>();
		for (Banner banner : bannerList) {
			List<Article> articleList = this.articleService.getArticleByBanner(banner.getBannerid());
			banner.setArticleList(articleList);
			frontList.add(banner);
		}
		this.getRequest().setAttribute("frontList", frontList);
		List<Article> topList = this.articleService.getTopArticle();
		List<Article> favList = this.articleService.getFlvArticle();
		this.getRequest().setAttribute("topList", topList);
		this.getRequest().setAttribute("favList", favList);
		return "users/index";
	}

	// 新闻公告
	@RequestMapping("article.action")
	public String article(String id) {
		this.front();
		Article article = new Article();
		article.setBannerid(id);
		List<Article> articleList = this.articleService.getArticleByCond(article);
		this.getRequest().setAttribute("articleList", articleList);
		Banner banner = this.bannerService.getBannerById(id);
		this.getRequest().setAttribute("banner", banner);
		return "users/article";
	}

	// 阅读公告
	@RequestMapping("read.action")
	public String read(String id) {
		this.front();
		Article article = this.articleService.getArticleById(id);
		article.setHits("" + (Integer.parseInt(article.getHits()) + 1));
		this.articleService.updateArticle(article);
		this.getRequest().setAttribute("article", article);
		return "users/read";
	}

	// 科室医生
	@RequestMapping("dept.action")
	public String dept(String id) {
		this.front();
		Doctor doctor = new Doctor();
		doctor.setDeptid(id);
		List<Doctor> doctorList = this.doctorService.getDoctorByCond(doctor);
		this.getRequest().setAttribute("doctorList", doctorList);
		return "users/doctor";
	}

	// 全部医生
	@RequestMapping("doctor.action")
	public String doctor() {
		this.front();
		List<Doctor> doctorList = this.doctorService.getAllDoctor();
		this.getRequest().setAttribute("doctorList", doctorList);
		return "users/doctor";
	}

	// 医生详细
	@RequestMapping("doctorDetail.action")
	public String doctorDetail(String id) {
		this.front();
		Doctor doctor = this.doctorService.getDoctorById(id);
		this.getRequest().setAttribute("doctor", doctor);
		return "users/doctorDetail";
	}

	// 准备登录
	@RequestMapping("preLogin.action")
	public String prelogin() {
		this.front();
		return "users/login";
	}

	// 用户登录
	@RequestMapping("login.action")
	public String login() {
		this.front();
		String username = this.getRequest().getParameter("username");
		String password = this.getRequest().getParameter("password");
		Users u = new Users();
		u.setUsername(username);
		List<Users> usersList = this.usersService.getUsersByCond(u);
		if (usersList.size() == 0) {
			this.getSession().setAttribute("message", "用户名不存在");
			return "redirect:/index/preLogin.action";
		} else {
			Users users = usersList.get(0);
			if (password.equals(users.getPassword())) {
				this.getSession().setAttribute("userid", users.getUsersid());
				this.getSession().setAttribute("username", users.getUsername());
				this.getSession().setAttribute("users", users);
				return "redirect:/index/index.action";
			} else {
				this.getSession().setAttribute("message", "密码错误");
				return "redirect:/index/preLogin.action";
			}
		}
	}

	// 准备注册
	@RequestMapping("preReg.action")
	public String preReg() {
		this.front();
		return "users/register";
	}

	// 用户注册
	@RequestMapping("register.action")
	public String register(Users users) {
		this.front();
		Users u = new Users();
		u.setUsername(users.getUsername());
		List<Users> usersList = this.usersService.getUsersByCond(u);
		if (usersList.size() == 0) {
			users.setRegdate(VeDate.getStringDateShort());
			this.usersService.insertUsers(users);
		} else {
			this.getSession().setAttribute("message", "用户名已存在");
			return "redirect:/index/preReg.action";
		}

		return "redirect:/index/preLogin.action";
	}

	// 退出登录
	@RequestMapping("exit.action")
	public String exit() {
		this.front();
		this.getSession().removeAttribute("userid");
		this.getSession().removeAttribute("username");
		this.getSession().removeAttribute("users");
		return "index";
	}

	// 准备修改密码
	@RequestMapping("prePwd.action")
	public String prePwd() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		return "users/editpwd";
	}

	// 修改密码
	@RequestMapping("editpwd.action")
	public String editpwd() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		String password = this.getRequest().getParameter("password");
		String repassword = this.getRequest().getParameter("repassword");
		Users users = this.usersService.getUsersById(userid);
		if (password.equals(users.getPassword())) {
			users.setPassword(repassword);
			this.usersService.updateUsers(users);
		} else {
			this.getSession().setAttribute("message", "旧密码错误");
			return "redirect:/index/prePwd.action";
		}
		return "redirect:/index/prePwd.action";
	}

	@RequestMapping("usercenter.action")
	public String usercenter() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		return "users/usercenter";
	}

	@RequestMapping("userinfo.action")
	public String userinfo() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		this.getSession().setAttribute("users", this.usersService.getUsersById(userid));
		return "users/userinfo";
	}

	@RequestMapping("personal.action")
	public String personal(Users users) {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		this.usersService.updateUsers(users);
		return "redirect:/index/userinfo.action";
	}

	// 准备挂号
	@RequestMapping("preAsign.action")
	public String preAsign(String doctorid) {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		Doctor doctor = this.doctorService.getDoctorById(doctorid);
		this.getRequest().setAttribute("doctor", doctor);
		this.getRequest().setAttribute("ano", "A" + VeDate.getStringId());
		return "users/addAsign";
	}

	// 挂号
	@RequestMapping("addAsign.action")
	public String addAsign(Asign asign) {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		asign.setStatus("未完成");
		asign.setUsersid(userid);
		Doctor doctor = this.doctorService.getDoctorById(asign.getDoctorid());
		Asign a = new Asign();
		a.setDoctorid(asign.getDoctorid());
		a.setOrderdate(asign.getOrderdate());
		List<Asign> list = this.asignService.getAsignByCond(a);
		if (Integer.parseInt(doctor.getThemax()) > list.size()) {
			this.asignService.insertAsign(asign);
		} else {
			this.getSession().setAttribute("message", "当日医生预约上限已到");
			return "redirect:/index/preAsign.action?doctorid=" + doctor.getDoctorid();
		}
		return "redirect:/index/myAsign.action";
	}

	// 我的挂号
	@RequestMapping("myAsign.action")
	public String myAsign() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		Asign asign = new Asign();
		asign.setUsersid(userid);
		List<Asign> asignList = this.asignService.getAsignByCond(asign);
		this.getRequest().setAttribute("asignList", asignList);
		return "users/myAsign";
	}

	@RequestMapping("detail.action")
	public String detail() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String id = this.getRequest().getParameter("id");
		Advice advice = new Advice();
		advice.setAno(id);
		List<Advice> adviceList = this.adviceService.getAdviceByCond(advice);
		Sell sell = new Sell();
		sell.setSno(id);
		List<Sell> sellList = this.sellService.getSellByCond(sell);
		this.getRequest().setAttribute("adviceList", adviceList);
		this.getRequest().setAttribute("sellList", sellList);
		return "users/myDetail";
	}

	// 留言板
	@RequestMapping("bbs.action")
	public String bbs() {
		this.front();
		List<Bbs> bbsList = this.bbsService.getAllBbs();
		this.getRequest().setAttribute("bbsList", bbsList);
		return "users/bbs";
	}

	// 发布留言
	@RequestMapping("addbbs.action")
	public String addbbs() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		Bbs bbs = new Bbs();
		bbs.setAddtime(VeDate.getStringDate());
		bbs.setContents(getRequest().getParameter("contents"));
		bbs.setHits("0");
		bbs.setRepnum("0");
		bbs.setTitle(getRequest().getParameter("title"));
		bbs.setUsersid(userid);
		this.bbsService.insertBbs(bbs);
		return "redirect:/index/bbs.action";
	}

	// 查看留言
	@RequestMapping("readbbs.action")
	public String readbbs() {
		this.front();
		Bbs bbs = this.bbsService.getBbsById(getRequest().getParameter("id"));
		bbs.setHits("" + (Integer.parseInt(bbs.getHits()) + 1));
		this.bbsService.updateBbs(bbs);
		this.getRequest().setAttribute("bbs", bbs);
		Rebbs rebbs = new Rebbs();
		rebbs.setBbsid(bbs.getBbsid());
		List<Rebbs> rebbsList = this.rebbsService.getRebbsByCond(rebbs);
		this.getRequest().setAttribute("rebbsList", rebbsList);
		return "users/readbbs";
	}

	// 回复留言
	@RequestMapping("rebbs.action")
	public String rebbs() {
		this.front();
		if (this.getSession().getAttribute("userid") == null) {
			return "redirect:/index/preLogin.action";
		}
		String userid = (String) this.getSession().getAttribute("userid");
		Rebbs rebbs = new Rebbs();
		rebbs.setAddtime(VeDate.getStringDate());
		rebbs.setContents(getRequest().getParameter("contents"));
		rebbs.setBbsid(getRequest().getParameter("bbsid"));
		rebbs.setUsersid(userid);
		this.rebbsService.insertRebbs(rebbs);
		Bbs bbs = this.bbsService.getBbsById(rebbs.getBbsid());
		bbs.setRepnum("" + (Integer.parseInt(bbs.getRepnum()) + 1));
		this.bbsService.updateBbs(bbs);
		String path = "redirect:/index/readbbs.action?id=" + bbs.getBbsid();
		return path;
	}

}
