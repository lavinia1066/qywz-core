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
public class YuyueController {

	@Autowired
	private YuyueService yuyueService;
	@Autowired
	private DetailsService detailsService;

	/**
	 * 请求项目首页
	 * @return
	 */
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	/**
	 * 请求预约页面
	 * @return
	 */
	@RequestMapping("/yuyue")
	public String yuyue(){
		return "yuyue";
	}
	/**
	 * 添加预约信息
	 * @param yuyue
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addYuyue(Yuyue yuyue,HttpServletRequest request){
		yuyueService.addYuyueService(yuyue);
		return "yuyueresult";
	}


}
