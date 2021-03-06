package com.ruoyi.project.module.platform.mapper;

import com.ruoyi.project.module.platform.domain.Prohibitioncountry;
import java.util.List;	

/**
 * 平台禁止国家_中间 数据层
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
public interface ProhibitioncountryMapper 
{
	/**
     * 查询平台禁止国家_中间信息
     * 
     * @param id 平台禁止国家_中间ID
     * @return 平台禁止国家_中间信息
     */
	public Prohibitioncountry selectProhibitioncountryById(Integer id);
	
	/**
     * 查询平台禁止国家_中间列表
     * 
     * @param prohibitioncountry 平台禁止国家_中间信息
     * @return 平台禁止国家_中间集合
     */
	public List<Prohibitioncountry> selectProhibitioncountryList(Prohibitioncountry prohibitioncountry);
	
	/**
     * 新增平台禁止国家_中间
     * 
     * @param prohibitioncountry 平台禁止国家_中间信息
     * @return 结果
     */
	public int insertProhibitioncountry(Prohibitioncountry prohibitioncountry);
	
	/**
     * 修改平台禁止国家_中间
     * 
     * @param prohibitioncountry 平台禁止国家_中间信息
     * @return 结果
     */
	public int updateProhibitioncountry(Prohibitioncountry prohibitioncountry);
	
	/**
     * 删除平台禁止国家_中间
     * 
     * @param id 平台禁止国家_中间ID
     * @return 结果
     */
	public int deleteProhibitioncountryById(Integer id);
	
	/**
     * 批量删除平台禁止国家_中间
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteProhibitioncountryByIds(String[] ids);
	
}