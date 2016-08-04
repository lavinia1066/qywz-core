package com.qyzb.entiy;

import org.springframework.stereotype.Component;

/**
 * Adminuser entity. @author MyEclipse Persistence Tools
 */
@Component
public class Adminuser implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username; // 登陆用户名
	private String password;// 登陆密码

	// Constructors

	/** default constructor */
	public Adminuser() {
	}

	/** full constructor */
	public Adminuser(String username, String password) {
		this.username = username;
		this.password = password;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}