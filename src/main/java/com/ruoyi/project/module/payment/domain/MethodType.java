package com.ruoyi.project.module.payment.domain;

import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 支付方式类型表 sys_payment_method_type
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
public class MethodType extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 类型 */
	private String typeName;
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
	public void setId(Integer id) 
	{
		this.id = id;
	}
	
	/**
	 * 获取：编号
	 */
	public Integer getId() 
	{
		return id;
	}
	
	/**
	 * 设置：类型
	 */
	public void setTypeName(String typeName) 
	{
		this.typeName = typeName;
	}
	
	/**
	 * 获取：类型
	 */
	public String getTypeName() 
	{
		return typeName;
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
	
}
