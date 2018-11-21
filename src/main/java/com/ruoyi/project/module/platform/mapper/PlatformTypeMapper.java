package com.ruoyi.project.module.platform.mapper;

import com.ruoyi.project.module.platform.domain.PlatformType;
import java.util.List;	

/**
 * 平台类型管理 数据层
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
public interface PlatformTypeMapper 
{
	/**
     * 查询平台类型管理信息
     * 
     * @param id 平台类型管理ID
     * @return 平台类型管理信息
     */
	public PlatformType selectTypeById(Integer id);
	
	/**
     * 查询平台类型管理列表
     * 
     * @param type 平台类型管理信息
     * @return 平台类型管理集合
     */
	public List<PlatformType> selectTypeList(PlatformType type);
	
	/**
     * 新增平台类型管理
     * 
     * @param type 平台类型管理信息
     * @return 结果
     */
	public int insertType(PlatformType type);
	
	/**
     * 修改平台类型管理
     * 
     * @param type 平台类型管理信息
     * @return 结果
     */
	public int updateType(PlatformType type);
	
	/**
     * 删除平台类型管理
     * 
     * @param id 平台类型管理ID
     * @return 结果
     */
	public int deleteTypeById(Integer id);
	
	/**
     * 批量删除平台类型管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteTypeByIds(String[] ids);
	
}