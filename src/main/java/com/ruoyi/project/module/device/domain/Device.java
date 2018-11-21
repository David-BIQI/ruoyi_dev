package com.ruoyi.project.module.device.domain;

import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 设备管理表 sys_device
 * 
 * @author ruoyi
 * @date 2018-07-08
 */
public class Device extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/**  */
	private Integer id;
	/**  */
	private String deviceMark;
	/**  */
	private String deviceColor;
	/**  */
	private String serialNumber;
	/** 
	 * 1.Available 2.Used
	 */
	private String usageStatus;
	/**  */
	private Date createTime;
	/**  */
	private String createBy;
	/**  */
	private Date updateTime;
	/**  */
	private String updateBy;
	/**  */
	private String remark;

	/**
	 * 设置：
	 */
	public void setId(Integer id) 
	{
		this.id = id;
	}
	
	/**
	 * 获取：
	 */
	public Integer getId() 
	{
		return id;
	}
	
	/**
	 * 设置：
	 */
	public void setDeviceMark(String deviceMark) 
	{
		this.deviceMark = deviceMark;
	}
	
	/**
	 * 获取：
	 */
	public String getDeviceMark() 
	{
		return deviceMark;
	}
	
	/**
	 * 设置：
	 */
	public void setDeviceColor(String deviceColor) 
	{
		this.deviceColor = deviceColor;
	}
	
	/**
	 * 获取：
	 */
	public String getDeviceColor() 
	{
		return deviceColor;
	}
	
	/**
	 * 设置：
	 */
	public void setSerialNumber(String serialNumber) 
	{
		this.serialNumber = serialNumber;
	}
	
	/**
	 * 获取：
	 */
	public String getSerialNumber() 
	{
		return serialNumber;
	}
	
	/**
	 * 设置： 1.Available 2.Used
	 */
	public void setUsageStatus(String usageStatus) 
	{
		this.usageStatus = usageStatus;
	}
	
	/**
	 * 获取：1.Available 2.Used
	 */
	public String getUsageStatus() 
	{
		return usageStatus;
	}
	
	/**
	 * 设置：
	 */
	public void setCreateTime(Date createTime) 
	{
		this.createTime = createTime;
	}
	
	/**
	 * 获取：
	 */
	public Date getCreateTime() 
	{
		return createTime;
	}
	
	/**
	 * 设置：
	 */
	public void setCreateBy(String createBy) 
	{
		this.createBy = createBy;
	}
	
	/**
	 * 获取：
	 */
	public String getCreateBy() 
	{
		return createBy;
	}
	
	/**
	 * 设置：
	 */
	public void setUpdateTime(Date updateTime) 
	{
		this.updateTime = updateTime;
	}
	
	/**
	 * 获取：
	 */
	public Date getUpdateTime() 
	{
		return updateTime;
	}
	
	/**
	 * 设置：
	 */
	public void setUpdateBy(String updateBy) 
	{
		this.updateBy = updateBy;
	}
	
	/**
	 * 获取：
	 */
	public String getUpdateBy() 
	{
		return updateBy;
	}
	
	/**
	 * 设置：
	 */
	public void setRemark(String remark) 
	{
		this.remark = remark;
	}
	
	/**
	 * 获取：
	 */
	public String getRemark() 
	{
		return remark;
	}
	
}
