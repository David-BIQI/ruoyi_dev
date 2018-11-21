package com.ruoyi.project.module.address.domain;

import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 国家表 sys_address_country
 * 
 * @author ruoyi
 * @date 2018-07-02
 */
public class Country extends BaseEntity {
	private static final long serialVersionUID = 1L;

	/**  */
	private Long countryId;
	/**  */
	private String countryName;
	/**  */
	private String phoneCode;
	/**  */
	private String countryCode;
	/**  */
	private String status;
	/**  */
	private String createBy;
	/**  */
	private Date createTime;
	/**  */
	private String updateBy;
	/**  */
	private Date updateTime;
	/**  */
	private String remark;

	public Long getCountryId() {
		return countryId;
	}

	public void setCountryId(Long countryId) {
		this.countryId = countryId;
	}

	/**
	 * 设置：
	 */
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	/**
	 * 获取：
	 */
	public String getCountryName() {
		return countryName;
	}

	/**
	 * 设置：
	 */
	public void setPhoneCode(String phoneCode) {
		this.phoneCode = phoneCode;
	}

	/**
	 * 获取：
	 */
	public String getPhoneCode() {
		return phoneCode;
	}

	/**
	 * 设置：
	 */
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}

	/**
	 * 获取：
	 */
	public String getCountryCode() {
		return countryCode;
	}

	/**
	 * 设置：
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * 获取：
	 */
	public String getStatus() {
		return status;
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
	 * 设置：
	 */
	public void setRemark(String remark) {
		this.remark = remark;
	}

	/**
	 * 获取：
	 */
	public String getRemark() {
		return remark;
	}

}
