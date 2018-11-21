package com.ruoyi.project.module.platformtype.mapper;

import com.ruoyi.project.module.platformtype.domain.Prohibicountry;
import java.util.List;	

/**
 * 平台类型禁止的国家_中间 数据层
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
public interface ProhibicountryMapper 
{
	/**
     * 查询平台类型禁止的国家_中间信息
     * 
     * @param id 平台类型禁止的国家_中间ID
     * @return 平台类型禁止的国家_中间信息
     */
	public Prohibicountry selectProhibicountryById(Integer id);
	
	/**
     * 查询平台类型禁止的国家_中间列表
     * 
     * @param prohibicountry 平台类型禁止的国家_中间信息
     * @return 平台类型禁止的国家_中间集合
     */
	public List<Prohibicountry> selectProhibicountryList(Prohibicountry prohibicountry);
	
	/**
     * 新增平台类型禁止的国家_中间
     * 
     * @param prohibicountry 平台类型禁止的国家_中间信息
     * @return 结果
     */
	public int insertProhibicountry(Prohibicountry prohibicountry);
	
	/**
     * 修改平台类型禁止的国家_中间
     * 
     * @param prohibicountry 平台类型禁止的国家_中间信息
     * @return 结果
     */
	public int updateProhibicountry(Prohibicountry prohibicountry);
	
	/**
     * 删除平台类型禁止的国家_中间
     * 
     * @param id 平台类型禁止的国家_中间ID
     * @return 结果
     */
	public int deleteProhibicountryById(Integer id);
	
	/**
     * 批量删除平台类型禁止的国家_中间
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteProhibicountryByIds(String[] ids);
	
}