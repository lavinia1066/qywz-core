package com.qyzb.entiy;

/**
 * Details entity. @author MyEclipse Persistence Tools
 */

public class Details implements java.io.Serializable {

	// Fields

	private Integer id;
	private String projectDetails; // 项目洽谈内容
	private String projectDate; // 项目洽谈日期
	private Integer yuyueId; // 客户预约ID

	// Constructors

	/** default constructor */
	public Details() {
	}

	/** full constructor */
	public Details(String projectDetails, String projectDate, Integer yuyueId) {
		this.projectDetails = projectDetails;
		this.projectDate = projectDate;
		this.yuyueId = yuyueId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProjectDetails() {
		return this.projectDetails;
	}

	public void setProjectDetails(String projectDetails) {
		this.projectDetails = projectDetails;
	}

	public String getProjectDate() {
		return this.projectDate;
	}

	public void setProjectDate(String projectDate) {
		this.projectDate = projectDate;
	}

	public Integer getYuyueId() {
		return this.yuyueId;
	}

	public void setYuyueId(Integer yuyueId) {
		this.yuyueId = yuyueId;
	}

}