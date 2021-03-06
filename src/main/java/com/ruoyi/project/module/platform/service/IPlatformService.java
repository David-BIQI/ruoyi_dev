package com.ruoyi.project.module.platform.service;

import com.ruoyi.project.module.platform.domain.Platform;
import java.util.List;

/**
 * 平台 服务层
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
public interface IPlatformService 
{
	/**
     * 查询平台信息
     * 
     * @param id 平台ID
     * @return 平台信息
     */
	public Platform selectPlatformById(Integer id);
	
	/**
     * 查询平台列表
     * 
     * @param platform 平台信息
     * @return 平台集合
     */
	public List<Platform> selectPlatformList(Platform platform);
	
	/**
     * 新增平台
     * 
     * @param platform 平台信息
     * @return 结果
     */
	public int insertPlatform(Platform platform);
	
	/**
     * 修改平台
     * 
     * @param platform 平台信息
     * @return 结果
     */
	public int updatePlatform(Platform platform);
	
	/**
     * 保存平台
     * 
     * @param platform 平台信息
     * @return 结果
     */
	public int savePlatform(Platform platform);
	
	
	/**
     * 删除平台信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deletePlatformByIds(String ids);
	
}
