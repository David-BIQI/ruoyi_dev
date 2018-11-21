package com.ruoyi.project.module.personal.domain;

import com.ruoyi.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 个人表 sys_personal_profile
 * 
 * @author ruoyi
 * @date 2018-07-23
 */
public class PersonalProfile extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 编号 */
	private Integer id;
	/** 国家 */
	private Integer countryId;
	/** 国家 */
	private String countryTitle;
	/**  */
	private Integer cityId;
	/** 城市 */
	private String cityTitle;
	/**  */
	private Integer addressId;
	/** 地址 */
	private String addressTitle;
	/** 省份 */
	private String province;
	/** 持有者 */
	private String holder;
	/** 用户名称 */
	private String userName;
	/** 密码 */
	private String password;
	/** 性别 */
	private Integer gender;
	/**  */
	private Date birthday;
	/** 信息类型 */
	private Integer profileType;
	/** 可用状态 1.可用 2.不可用 */
	private Integer profileStatus;
	/** 重要性 1.主要的 2.其次的 3.合格的 */
	private Integer importance;
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
	 * 设置：国家
	 */
	public void setCountryId(Integer countryId) 
	{
		this.countryId = countryId;
	}
	
	/**
	 * 获取：国家
	 */
	public Integer getCountryId() 
	{
		return countryId;
	}
	
	/**
	 * 设置：国家
	 */
	public void setCountryTitle(String countryTitle) 
	{
		this.countryTitle = countryTitle;
	}
	
	/**
	 * 获取：国家
	 */
	public String getCountryTitle() 
	{
		return countryTitle;
	}
	
	/**
	 * 设置：
	 */
	public void setCityId(Integer cityId) 
	{
		this.cityId = cityId;
	}
	
	/**
	 * 获取：
	 */
	public Integer getCityId() 
	{
		return cityId;
	}
	
	/**
	 * 设置：城市
	 */
	public void setCityTitle(String cityTitle) 
	{
		this.cityTitle = cityTitle;
	}
	
	/**
	 * 获取：城市
	 */
	public String getCityTitle() 
	{
		return cityTitle;
	}
	
	/**
	 * 设置：
	 */
	public void setAddressId(Integer addressId) 
	{
		this.addressId = addressId;
	}
	
	/**
	 * 获取：
	 */
	public Integer getAddressId() 
	{
		return addressId;
	}
	
	/**
	 * 设置：地址
	 */
	public void setAddressTitle(String addressTitle) 
	{
		this.addressTitle = addressTitle;
	}
	
	/**
	 * 获取：地址
	 */
	public String getAddressTitle() 
	{
		return addressTitle;
	}
	
	/**
	 * 设置：省份
	 */
	public void setProvince(String province) 
	{
		this.province = province;
	}
	
	/**
	 * 获取：省份
	 */
	public String getProvince() 
	{
		return province;
	}
	
	/**
	 * 设置：持有者
	 */
	public void setHolder(String holder) 
	{
		this.holder = holder;
	}
	
	/**
	 * 获取：持有者
	 */
	public String getHolder() 
	{
		return holder;
	}
	
	/**
	 * 设置：用户名称
	 */
	public void setUserName(String userName) 
	{
		this.userName = userName;
	}
	
	/**
	 * 获取：用户名称
	 */
	public String getUserName() 
	{
		return userName;
	}
	
	/**
	 * 设置：密码
	 */
	public void setPassword(String password) 
	{
		this.password = password;
	}
	
	/**
	 * 获取：密码
	 */
	public String getPassword() 
	{
		return password;
	}
	
	/**
	 * 设置：性别
	 */
	public void setGender(Integer gender) 
	{
		this.gender = gender;
	}
	
	/**
	 * 获取：性别
	 */
	public Integer getGender() 
	{
		return gender;
	}
	
	/**
	 * 设置：
	 */
	public void setBirthday(Date birthday) 
	{
		this.birthday = birthday;
	}
	
	/**
	 * 获取：
	 */
	public Date getBirthday() 
	{
		return birthday;
	}
	
	/**
	 * 设置：信息类型
	 */
	public void setProfileType(Integer profileType) 
	{
		this.profileType = profileType;
	}
	
	/**
	 * 获取：信息类型
	 */
	public Integer getProfileType() 
	{
		return profileType;
	}
	
	/**
	 * 设置：可用状态 1.可用 2.不可用
	 */
	public void setProfileStatus(Integer profileStatus) 
	{
		this.profileStatus = profileStatus;
	}
	
	/**
	 * 获取：可用状态 1.可用 2.不可用
	 */
	public Integer getProfileStatus() 
	{
		return profileStatus;
	}
	
	/**
	 * 设置：重要性 1.主要的 2.其次的 3.合格的
	 */
	public void setImportance(Integer importance) 
	{
		this.importance = importance;
	}
	
	/**
	 * 获取：重要性 1.主要的 2.其次的 3.合格的
	 */
	public Integer getImportance() 
	{
		return importance;
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
