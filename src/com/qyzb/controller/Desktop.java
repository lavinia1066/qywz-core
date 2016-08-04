package com.qyzb.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.qyzb.entiy.Details;
import com.qyzb.entiy.Yuyue;
import com.qyzb.service.DetailsService;
import com.qyzb.service.YuyueService;

@Controller
@RequestMapping
public class Desktop {

	@Autowired
	private YuyueService yuyueService;
	@Autowired
	private DetailsService detailsService;

	/**
	 * 登陆
	 * 
	 * @return
	 */
	@RequestMapping("/login")
	public String adminlogin() {
		return "/admin/login";
	}
	
	/**
	 * 查询预约列表
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/adminindex")
	public String getYuyueList(HttpServletRequest request) {

		request.setAttribute("yuyueList", yuyueService.getAllYuyues());

		return "/admin/index";
	}

	/**
	 * 查询预约详细信息
	 * 
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("/getYuyueLookId")
	public String getDetails(@RequestParam("id") String id,
			HttpServletRequest request) {
		request.setAttribute("yuyueId", yuyueService.getYuyue(id));
		request.setAttribute("detailsList", detailsService.getDetils(id));
		return "/admin/lookyuyue";
	}

	/**
	 * 请求跳转添加 洽谈信息页面
	 * 
	 * @param id
	 * @param yuyue
	 * @param request
	 * @return
	 */
	@RequestMapping("/adddetail")
	public String adddetail(@RequestParam("id") Integer id, Yuyue yuyue,
			HttpServletRequest request) {
		yuyue.setId(id);
		request.setAttribute("yuyueid", yuyue);
		return "/admin/details";
	}

	/**
	 * 添加洽谈信息
	 * 
	 * @param details
	 * @return
	 */
	@RequestMapping(value = "/okdetail", method = RequestMethod.POST)
	public String adddetil(Details details) {
		detailsService.addDetailsService(details);
		return "redirect:/adminindex";
	}

	/**
	 * 洽谈信息编辑
	 */
	@RequestMapping("/editdetails")
	public String editdetails(@RequestParam("id") String id,HttpServletRequest request) {
		request.setAttribute("detailsList", detailsService.getDetils(id));
		return "/admin/editdetails";
	}
	/**
	 * 洽谈信息编辑提交更新
	 */
	@RequestMapping("/adddetails")
	public String adddetails(Details details){
			detailsService.updateDetails(details);
		return "redirect:/adminindex";
	}
	 
	
}
