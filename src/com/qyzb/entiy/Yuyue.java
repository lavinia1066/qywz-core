package com.qyzb.entiy;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

/**
 * Yuyue entity. @author MyEclipse Persistence Tools
 */
@Component
public class Yuyue implements java.io.Serializable {

	// Fields

	private Integer id;
	private String projectAddredd; // 项目地址
	private String projectRole;// 项目角色
	private String projectName;// 项目名字
	private String projectArea;// 项目面积
	private String projectCompleteDate;// 项目预计完成日期;
	private String projectExplain;// 项目说明
	private String name;// 客户姓名
	private String phoneNumber;// 客户电话

	// Constructors

	/** default constructor */
	public Yuyue() {
	}

	/** full constructor */
	public Yuyue(String projectAddredd, String projectRole, String projectName,
			String projectArea, String projectCompleteDate,
			String projectExplain, String name, String phoneNumber) {
		this.projectAddredd = projectAddredd;
		this.projectRole = projectRole;
		this.projectName = projectName;
		this.projectArea = projectArea;
		this.projectCompleteDate = projectCompleteDate;
		this.projectExplain = projectExplain;
		this.name = name;
		this.phoneNumber = phoneNumber;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProjectAddredd() {
		return this.projectAddredd;
	}

	public void setProjectAddredd(String projectAddredd) {
		this.projectAddredd = projectAddredd;
	}

	public String getProjectRole() {
		return this.projectRole;
	}

	public void setProjectRole(String projectRole) {
		this.projectRole = projectRole;
	}

	public String getProjectName() {
		return this.projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getProjectArea() {
		return this.projectArea;
	}

	public void setProjectArea(String projectArea) {
		this.projectArea = projectArea;
	}

	public String getProjectCompleteDate() {
		return this.projectCompleteDate;
	}

	public void setProjectCompleteDate(String projectCompleteDate) {
		this.projectCompleteDate = projectCompleteDate;
	}

	public String getProjectExplain() {
		return this.projectExplain;
	}

	public void setProjectExplain(String projectExplain) {
		this.projectExplain = projectExplain;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return this.phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

}