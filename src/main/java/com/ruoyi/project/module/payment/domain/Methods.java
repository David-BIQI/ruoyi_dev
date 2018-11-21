package com.ruoyi.project.module.payment.domain;

import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 支付方式表 sys_payment_methods
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
public class Methods extends BaseEntity {
	private static final long serialVersionUID = 1L;

	/**  */
	private Integer id;
	/** 支付方式名称 */
	private String paymentName;
	/** 关联sys_payment_methods_type表 */
	private Integer paymentType;
	/** 支付方式的官网 */
	private String officialWebsite;
	/** Logo图标 */
	private String paymentLogo;
	/** 货币 */
	private Integer currencyId;
	/**  */
	private String createBy;
	/**  */
	private Date createTime;
	/**  */
	private String updateBy;
	/**  */
	private Date updateTime;

	private String typeName;

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	/**
	 * 设置：
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * 获取：
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * 设置：支付方式名称
	 */
	public void setPaymentName(String paymentName) {
		this.paymentName = paymentName;
	}

	/**
	 * 获取：支付方式名称
	 */
	public String getPaymentName() {
		return paymentName;
	}

	/**
	 * 设置：关联sys_payment_methods_type表
	 */
	public void setPaymentType(Integer paymentType) {
		this.paymentType = paymentType;
	}

	/**
	 * 获取：关联sys_payment_methods_type表
	 */
	public Integer getPaymentType() {
		return paymentType;
	}

	/**
	 * 设置：支付方式的官网
	 */
	public void setOfficialWebsite(String officialWebsite) {
		this.officialWebsite = officialWebsite;
	}

	/**
	 * 获取：支付方式的官网
	 */
	public String getOfficialWebsite() {
		return officialWebsite;
	}

	/**
	 * 设置：Logo图标
	 */
	public void setPaymentLogo(String paymentLogo) {
		this.paymentLogo = paymentLogo;
	}

	/**
	 * 获取：Logo图标
	 */
	public String getPaymentLogo() {
		return paymentLogo;
	}

	/**
	 * 设置：货币
	 */
	public void setCurrencyId(Integer currencyId) {
		this.currencyId = currencyId;
	}

	/**
	 * 获取：货币
	 */
	public Integer getCurrencyId() {
		return currencyId;
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
