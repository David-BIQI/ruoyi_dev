package com.ruoyi.project.module.address.domain;

import java.util.Date;

import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * 地址表 sys_address_fulladdress
 * 
 * @author ruoyi
 * @date 2018-07-07
 */
public class Fulladdress extends BaseEntity {
	private static final long serialVersionUID = 1L;

	/** 编号 */
	private Integer id;
	/** 国家编号 */
	private Integer countryId;
	/** 城市编号 */
	private Integer cityId;
	/** 地址 */
	private String address;
	/** 邮政编码 */
	private String zipCode;
	/** 状态 */
	private Integer status;
	/** 创建时间 */
	private Date createTime;
	/** 创建者 */
	private String createBy;
	/** 更新时间 */
	private Date updateTime;
	/** 更新者 */
	private String updateBy;
	/** 备注 */
	private String remark;
	
//	@Transient
	private String city;
	private String countryName;

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
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
	 * 设置：国家编号
	 */
	public void setCountryId(Integer countryId) {
		this.countryId = countryId;
	}

	/**
	 * 获取：国家编号
	 */
	public Integer getCountryId() {
		return countryId;
	}

	/**
	 * 设置：城市编号
	 */
	public void setCityId(Integer cityId) {
		this.cityId = cityId;
	}

	/**
	 * 获取：城市编号
	 */
	public Integer getCityId() {
		return cityId;
	}

	/**
	 * 设置：地址
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * 获取：地址
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * 设置：邮政编码
	 */
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	/**
	 * 获取：邮政编码
	 */
	public String getZipCode() {
		return zipCode;
	}

	/**
	 * 设置：状态
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

	/**
	 * 获取：状态
	 */
	public Integer getStatus() {
		return status;
	}

	/**
	 * 设置：创建时间
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * 获取：创建时间
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * 设置：创建者
	 */
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	/**
	 * 获取：创建者
	 */
	public String getCreateBy() {
		return createBy;
	}

	/**
	 * 设置：更新时间
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	/**
	 * 获取：更新时间
	 */
	public Date getUpdateTime() {
		return updateTime;
	}

	/**
	 * 设置：更新者
	 */
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	/**
	 * 获取：更新者
	 */
	public String getUpdateBy() {
		return updateBy;
	}

	/**
	 * 设置：备注
	 */
	public void setRemark(String remark) {
		this.remark = remark;
	}

	/**
	 * 获取：备注
	 */
	public String getRemark() {
		return remark;
	}

}
