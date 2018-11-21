package com.ruoyi.project.module.ip.mapper;

import java.util.List;

import com.ruoyi.project.module.ip.domain.IpProvider;	

/**
 * ip供应商 数据层
 * 
 * @author ruoyi
 * @date 2018-07-16
 */
public interface IpProviderMapper 
{
	/**
     * 查询ip供应商信息
     * 
     * @param id ip供应商ID
     * @return ip供应商信息
     */
	public IpProvider selectProviderById(Integer id);
	
	/**
     * 查询ip供应商列表
     * 
     * @param provider ip供应商信息
     * @return ip供应商集合
     */
	public List<IpProvider> selectProviderList(IpProvider provider);
	
	/**
     * 新增ip供应商
     * 
     * @param provider ip供应商信息
     * @return 结果
     */
	public int insertProvider(IpProvider provider);
	
	/**
     * 修改ip供应商
     * 
     * @param provider ip供应商信息
     * @return 结果
     */
	public int updateProvider(IpProvider provider);
	
	/**
     * 删除ip供应商
     * 
     * @param id ip供应商ID
     * @return 结果
     */
	public int deleteProviderById(Integer id);
	
	/**
     * 批量删除ip供应商
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteProviderByIds(String[] ids);
	
}