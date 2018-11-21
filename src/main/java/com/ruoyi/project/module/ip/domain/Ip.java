package com.ruoyi.project.module.ip.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * IP地址管理表 sys_ip
 * 
 * @author ruoyi
 * @date 2018-07-16
 */
public class Ip extends BaseEntity {
	private static final long serialVersionUID = 1L;

	/** 编号 */
	private Integer id;
	/** IP地址 */
	private String ipAddress;
	/** 登录帐号 */
	private String userName;
	/** 登录密码 */
	private String password;
	/** 过期时间 */
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date expirationDate;
	/** 供应商编号 */
	private Integer providerId;
	/** 重要性 */
	private Integer ipLevel;
	/** 续费提醒状态 1. 不提醒 2. 提醒 */
	private Integer renewalStatus;
	/** 使用状态 1. 未使用 2. 已使用 */
	private Integer usageStatus;
	/**  */
	private String createBy;
	/**  */
	private Date createTime;
	/**  */
	private String updateBy;
	/**  */
	private Date updateTime;

	private String providerName;

	public Integer getIpLevel() {
		return ipLevel;
	}

	public void setIpLevel(Integer ipLevel) {
		this.ipLevel = ipLevel;
	}

	public String getProviderName() {
		return providerName;
	}

	public void setProviderName(String providerName) {
		this.providerName = providerName;
	}

	/**
	 * 设置：编号
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * 获取：编号
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * 设置：IP地址
	 */
	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	/**
	 * 获取：IP地址
	 */
	public String getIpAddress() {
		return ipAddress;
	}

	/**
	 * 设置：登录帐号
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * 获取：登录帐号
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * 设置：登录密码
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * 获取：登录密码
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * 设置：过期时间
	 */
	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}

	/**
	 * 获取：过期时间
	 */
	public Date getExpirationDate() {
		return expirationDate;
	}

	/**
	 * 设置：供应商编号
	 */
	public void setProviderId(Integer providerId) {
		this.providerId = providerId;
	}

	/**
	 * 获取：供应商编号
	 */
	public Integer getProviderId() {
		return providerId;
	}

	/**
	 * 设置：续费提醒状态 1. 不提醒 2. 提醒
	 */
	public void setRenewalStatus(Integer renewalStatus) {
		this.renewalStatus = renewalStatus;
	}

	/**
	 * 获取：续费提醒状态 1. 不提醒 2. 提醒
	 */
	public Integer getRenewalStatus() {
		return renewalStatus;
	}

	/**
	 * 设置：使用状态 1. 未使用 2. 已使用
	 */
	public void setUsageStatus(Integer usageStatus) {
		this.usageStatus = usageStatus;
	}

	/**
	 * 获取：使用状态 1. 未使用 2. 已使用
	 */
	public Integer getUsageStatus() {
		return usageStatus;
	}

	/**
	 * 设置：
	 */
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	/**
	 * 获取：
	 */
	public String getCreateBy() {
		return createBy;
	}

	/**
	 * 设置：
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * 获取：
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * 设置：
	 */
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	/**
	 * 获取：
	 */
	public String getUpdateBy() {
		return updateBy;
	}

	/**
	 * 设置：
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	/**
	 * 获取：
	 */
	public Date getUpdateTime() {
		return updateTime;
	}

}
