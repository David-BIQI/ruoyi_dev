package com.ruoyi.project.module.platform.domain;

import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 平台安全问题表 sys_platform_securityquestion
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
public class Securityquestion extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 平台类型的编号 */
	private String platformId;
	/** 问题 */
	private String question;
	/** 答案 */
	private String answer;
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
	public void setPlatformId(String platformId) 
	{
		this.platformId = platformId;
	}
	
	/**
	 * 获取：平台类型的编号
	 */
	public String getPlatformId() 
	{
		return platformId;
	}
	
	/**
	 * 设置：问题
	 */
	public void setQuestion(String question) 
	{
		this.question = question;
	}
	
	/**
	 * 获取：问题
	 */
	public String getQuestion() 
	{
		return question;
	}
	
	/**
	 * 设置：答案
	 */
	public void setAnswer(String answer) 
	{
		this.answer = answer;
	}
	
	/**
	 * 获取：答案
	 */
	public String getAnswer() 
	{
		return answer;
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
