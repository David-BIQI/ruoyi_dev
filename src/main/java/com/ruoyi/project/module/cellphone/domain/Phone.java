package com.ruoyi.project.module.cellphone.domain;

import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 联系电话表 sys_cell_phone
 * 
 * @author ruoyi
 * @date 2018-07-10
 */
public class Phone extends BaseEntity {
	private static final long serialVersionUID = 1L;

	/**  */
	private Integer id;
	/** 电话区号 */
	private String phoneCode;
	/** 电话号码 */
	private String phoneNumber;
	/** 关联sys_country表 */
	private Integer countryId;
	/** 号码的重要性，分为1.Priority 2.Regular 3.Temporary */
	private Integer phoneType;
	/** 关联的sys_device表 */
	private Integer deviceId;
	/** 使用情况 1.未使用 2. 使用中 */
	private Integer usageStatus;
	/**  */
	private String createBy;
	/**  */
	private Date createTime;
	/**  */
	private String updateBy;
	/**  */
	private Date updateTime;

	private String countryName;

	private String deviceName;

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public String getDeviceName() {
		return deviceName;
	}

	public void setDeviceName(String deviceName) {
		this.deviceName = deviceName;
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
	 * 设置：电话区号
	 */
	public void setPhoneCode(String phoneCode) {
		this.phoneCode = phoneCode;
	}

	/**
	 * 获取：电话区号
	 */
	public String getPhoneCode() {
		return phoneCode;
	}

	/**
	 * 设置：电话号码
	 */
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	/**
	 * 获取：电话号码
	 */
	public String getPhoneNumber() {
		return phoneNumber;
	}

	/**
	 * 设置：关联sys_country表
	 */
	public void setCountryId(Integer countryId) {
		this.countryId = countryId;
	}

	/**
	 * 获取：关联sys_country表
	 */
	public Integer getCountryId() {
		return countryId;
	}

	/**
	 * 设置：号码的重要性，分为1.Priority 2.Regular 3.Temporary
	 */
	public void setPhoneType(Integer phoneType) {
		this.phoneType = phoneType;
	}

	/**
	 * 获取：号码的重要性，分为1.Priority 2.Regular 3.Temporary
	 */
	public Integer getPhoneType() {
		return phoneType;
	}

	/**
	 * 设置：关联的sys_device表
	 */
	public void setDeviceId(Integer deviceId) {
		this.deviceId = deviceId;
	}

	/**
	 * 获取：关联的sys_device表
	 */
	public Integer getDeviceId() {
		return deviceId;
	}

	/**
	 * 设置：使用情况 1.未使用 2. 使用中
	 */
	public void setUsageStatus(Integer usageStatus) {
		this.usageStatus = usageStatus;
	}

	/**
	 * 获取：使用情况 1.未使用 2. 使用中
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
