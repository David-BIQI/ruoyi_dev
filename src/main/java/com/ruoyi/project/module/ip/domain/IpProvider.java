package com.ruoyi.project.module.ip.domain;

import java.math.BigDecimal;
import java.util.Date;

import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * ip供应商表 sys_provider
 * 
 * @author ruoyi
 * @date 2018-07-16
 */
public class IpProvider extends BaseEntity {
	private static final long serialVersionUID = 1L;

	/** 编号 */
	private Integer id;
	/** 供应商名称 */
	private String providerName;
	/** 联系方式 - 旺旺 */
	private String wangwang;
	/** 联系方式 - 微信 */
	private String wechat;
	/** 联系方式 - QQ */
	private String qq;
	/** 联系方式 - 手机号码 */
	private String cellPhone;
	/** 关联国家 */
	private Integer countryId;
	/** 供应商可信状态 1. Available 2. Prohibition */
	private Integer status;
	/**  */
	private BigDecimal price;
	/**  */
	private String createBy;
	/**  */
	private Date createTime;
	/**  */
	private String updateBy;
	/**  */
	private Date updateTime;
	/** 禁用原因 */
	private String reason;
	/** 禁用时间 */
	private Date optTime;

	private String countryName;

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public boolean isStatusBool() {
		if (this.getStatus() == null) {
			return false;
		}
		return this.getStatus() == 1 ? true : false;
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
	 * 设置：供应商名称
	 */
	public void setProviderName(String providerName) {
		this.providerName = providerName;
	}

	/**
	 * 获取：供应商名称
	 */
	public String getProviderName() {
		return providerName;
	}

	/**
	 * 设置：联系方式 - 旺旺
	 */
	public void setWangwang(String wangwang) {
		this.wangwang = wangwang;
	}

	/**
	 * 获取：联系方式 - 旺旺
	 */
	public String getWangwang() {
		return wangwang;
	}

	/**
	 * 设置：联系方式 - 微信
	 */
	public void setWechat(String wechat) {
		this.wechat = wechat;
	}

	/**
	 * 获取：联系方式 - 微信
	 */
	public String getWechat() {
		return wechat;
	}

	/**
	 * 设置：联系方式 - QQ
	 */
	public void setQq(String qq) {
		this.qq = qq;
	}

	/**
	 * 获取：联系方式 - QQ
	 */
	public String getQq() {
		return qq;
	}

	/**
	 * 设置：联系方式 - 手机号码
	 */
	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}

	/**
	 * 获取：联系方式 - 手机号码
	 */
	public String getCellPhone() {
		return cellPhone;
	}

	/**
	 * 设置：关联国家
	 */
	public void setCountryId(Integer countryId) {
		this.countryId = countryId;
	}

	/**
	 * 获取：关联国家
	 */
	public Integer getCountryId() {
		return countryId;
	}

	/**
	 * 设置：供应商可信状态 1. Available 2. Prohibition
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

	/**
	 * 获取：供应商可信状态 1. Available 2. Prohibition
	 */
	public Integer getStatus() {
		return status;
	}

	/**
	 * 设置：
	 */
	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	/**
	 * 获取：
	 */
	public BigDecimal getPrice() {
		return price;
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

	/**
	 * 设置：禁用原因
	 */
	public void setReason(String reason) {
		this.reason = reason;
	}

	/**
	 * 获取：禁用原因
	 */
	public String getReason() {
		return reason;
	}

	/**
	 * 设置：禁用时间
	 */
	public void setOptTime(Date optTime) {
		this.optTime = optTime;
	}

	/**
	 * 获取：禁用时间
	 */
	public Date getOptTime() {
		return optTime;
	}

}
