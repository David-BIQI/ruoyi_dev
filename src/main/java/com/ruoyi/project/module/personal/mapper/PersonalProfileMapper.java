package com.ruoyi.project.module.personal.mapper;

import java.util.List;

import com.ruoyi.project.module.personal.domain.PersonalProfile;	

/**
 * 个人 数据层
 * 
 * @author ruoyi
 * @date 2018-07-23
 */
public interface PersonalProfileMapper 
{
	/**
     * 查询个人信息
     * 
     * @param id 个人ID
     * @return 个人信息
     */
	public PersonalProfile selectProfileById(Integer id);
	
	/**
     * 查询个人列表
     * 
     * @param profile 个人信息
     * @return 个人集合
     */
	public List<PersonalProfile> selectProfileList(PersonalProfile profile);
	
	/**
     * 新增个人
     * 
     * @param profile 个人信息
     * @return 结果
     */
	public int insertProfile(PersonalProfile profile);
	
	/**
     * 修改个人
     * 
     * @param profile 个人信息
     * @return 结果
     */
	public int updateProfile(PersonalProfile profile);
	
	/**
     * 删除个人
     * 
     * @param id 个人ID
     * @return 结果
     */
	public int deleteProfileById(Integer id);
	
	/**
     * 批量删除个人
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteProfileByIds(String[] ids);
	
}