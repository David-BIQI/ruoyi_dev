package com.ruoyi.project.module.mail.domain;

import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 邮箱管理	表 sys_mail
 * 
 * @author ruoyi
 * @date 2018-07-08
 */
public class Mail extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/**  */
	private Integer id;
	/** 邮箱地址 */
	private String mailAddress;
	/** 备用邮箱 */
	private String mailBackup;
	/** 联系电话 */
	private String cellPhone;
	/**  */
	private Integer usageStatus;
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
	 * 设置：邮箱地址
	 */
	public void setMailAddress(String mailAddress) 
	{
		this.mailAddress = mailAddress;
	}
	
	/**
	 * 获取：邮箱地址
	 */
	public String getMailAddress() 
	{
		return mailAddress;
	}
	
	/**
	 * 设置：备用邮箱
	 */
	public void setMailBackup(String mailBackup) 
	{
		this.mailBackup = mailBackup;
	}
	
	/**
	 * 获取：备用邮箱
	 */
	public String getMailBackup() 
	{
		return mailBackup;
	}
	
	/**
	 * 设置：联系电话
	 */
	public void setCellPhone(String cellPhone) 
	{
		this.cellPhone = cellPhone;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getCellPhone() 
	{
		return cellPhone;
	}
	
	/**
	 * 设置：
	 */
	public void setUsageStatus(Integer usageStatus) 
	{
		this.usageStatus = usageStatus;
	}
	
	/**
	 * 获取：
	 */
	public Integer getUsageStatus() 
	{
		return usageStatus;
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
