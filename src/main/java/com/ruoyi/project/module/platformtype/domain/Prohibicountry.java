package com.ruoyi.project.module.platformtype.domain;

import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 平台类型禁止的国家_中间表 sys_platformtype_prohibicountry
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
public class Prohibicountry extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 平台类型的编号 */
	private String platformTypeId;
	/** 国家编号 */
	private Integer countryId;
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
	 * 设置：平台类型的编号
	 */
	public void setPlatformTypeId(String platformTypeId) 
	{
		this.platformTypeId = platformTypeId;
	}
	
	/**
	 * 获取：平台类型的编号
	 */
	public String getPlatformTypeId() 
	{
		return platformTypeId;
	}
	
	/**
	 * 设置：国家编号
	 */
	public void setCountryId(Integer countryId) 
	{
		this.countryId = countryId;
	}
	
	/**
	 * 获取：国家编号
	 */
	public Integer getCountryId() 
	{
		return countryId;
	}
	
	/**
	 * 设置：状态
	 */
	public void setStatus(Integer status) 
	{
		this.status = status;
	}
	
	/**
	 * 获取：状态
	 */
	public Integer getStatus() 
	{
		return status;
	}
	
	/**
	 * 设置：创建时间
	 */
	public void setCreateTime(Date createTime) 
	{
		this.createTime = createTime;
	}
	
	/**
	 * 获取：创建时间
	 */
	public Date getCreateTime() 
	{
		return createTime;
	}
	
	/**
	 * 设置：创建者
	 */
	public void setCreateBy(String createBy) 
	{
		this.createBy = createBy;
	}
	
	/**
	 * 获取：创建者
	 */
	public String getCreateBy() 
	{
		return createBy;
	}
	
	/**
	 * 设置：更新时间
	 */
	public void setUpdateTime(Date updateTime) 
	{
		this.updateTime = updateTime;
	}
	
	/**
	 * 获取：更新时间
	 */
	public Date getUpdateTime() 
	{
		return updateTime;
	}
	
	/**
	 * 设置：更新者
	 */
	public void setUpdateBy(String updateBy) 
	{
		this.updateBy = updateBy;
	}
	
	/**
	 * 获取：更新者
	 */
	public String getUpdateBy() 
	{
		return updateBy;
	}
	
	/**
	 * 设置：备注
	 */
	public void setRemark(String remark) 
	{
		this.remark = remark;
	}
	
	/**
	 * 获取：备注
	 */
	public String getRemark() 
	{
		return remark;
	}
	
}
