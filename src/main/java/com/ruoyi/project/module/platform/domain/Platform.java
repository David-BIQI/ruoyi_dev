package com.ruoyi.project.module.platform.domain;

import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 平台表 sys_platform
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
public class Platform extends BaseEntity {
	private static final long serialVersionUID = 1L;

	/** 编号 */
	private Integer id;
	/** 平台名称 */
	private String platformName;
	/** 关联平台类型 */
	private Integer platformTypeId;
	/** 官方网站 */
	private String officialWebsite;
	/** 平台logo */
	private String platformLogo;
	/**  */
	private Integer interTransaction;
	/** KYC类型 */
	private Integer kycType;
	/**  */
	private String createBy;
	/**  */
	private Date createTime;
	/**  */
	private String updateBy;
	/**  */
	private Date updateTime;

	private String platformTypeName;

	public String getPlatformTypeName() {
		return platformTypeName;
	}

	public void setPlatformTypeName(String platformTypeName) {
		this.platformTypeName = platformTypeName;
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
	 * 设置：平台名称
	 */
	public void setPlatformName(String platformName) {
		this.platformName = platformName;
	}

	/**
	 * 获取：平台名称
	 */
	public String getPlatformName() {
		return platformName;
	}

	/**
	 * 设置：关联平台类型
	 */
	public void setPlatformTypeId(Integer platformTypeId) {
		this.platformTypeId = platformTypeId;
	}

	/**
	 * 获取：关联平台类型
	 */
	public Integer getPlatformTypeId() {
		return platformTypeId;
	}

	/**
	 * 设置：官方网站
	 */
	public void setOfficialWebsite(String officialWebsite) {
		this.officialWebsite = officialWebsite;
	}

	/**
	 * 获取：官方网站
	 */
	public String getOfficialWebsite() {
		return officialWebsite;
	}

	/**
	 * 设置：平台logo
	 */
	public void setPlatformLogo(String platformLogo) {
		this.platformLogo = platformLogo;
	}

	/**
	 * 获取：平台logo
	 */
	public String getPlatformLogo() {
		return platformLogo;
	}

	/**
	 * 设置：
	 */
	public void setInterTransaction(Integer interTransaction) {
		this.interTransaction = interTransaction;
	}

	/**
	 * 获取：
	 */
	public Integer getInterTransaction() {
		return interTransaction;
	}

	/**
	 * 设置：KYC类型
	 */
	public void setKycType(Integer kycType) {
		this.kycType = kycType;
	}

	/**
	 * 获取：KYC类型
	 */
	public Integer getKycType() {
		return kycType;
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
