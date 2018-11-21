package com.ruoyi.project.module.platform.domain;

import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 平台类型管理表 sys_platform_type
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
public class PlatformType extends BaseEntity {
	private static final long serialVersionUID = 1L;

	/** 编号 */
	private Integer id;
	/** 平台类型名称 */
	private String platformTypeName;
	/** 平台货币 */
	private String platformCurrency;
	/**  */
	private String createBy;
	/**  */
	private Date createTime;
	/**  */
	private String updateBy;
	/**  */
	private Date updateTime;

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

	public String getPlatformCurrency() {
		return platformCurrency;
	}

	public void setPlatformCurrency(String platformCurrency) {
		this.platformCurrency = platformCurrency;
	}

	/**
	 * 设置：平台类型名称
	 */
	public void setPlatformTypeName(String platformTypeName) {
		this.platformTypeName = platformTypeName;
	}

	/**
	 * 获取：平台类型名称
	 */
	public String getPlatformTypeName() {
		return platformTypeName;
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
