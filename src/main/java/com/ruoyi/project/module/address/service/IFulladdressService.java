package com.ruoyi.project.module.address.service;

import com.ruoyi.project.module.address.domain.Fulladdress;
import java.util.List;

/**
 * 地址 服务层
 * 
 * @author ruoyi
 * @date 2018-07-07
 */
public interface IFulladdressService 
{
	/**
     * 查询地址信息
     * 
     * @param id 地址ID
     * @return 地址信息
     */
	public Fulladdress selectFulladdressById(Integer id);
	
	/**
     * 查询地址列表
     * 
     * @param fulladdress 地址信息
     * @return 地址集合
     */
	public List<Fulladdress> selectFulladdressList(Fulladdress fulladdress);
	
	/**
     * 新增地址
     * 
     * @param fulladdress 地址信息
     * @return 结果
     */
	public int insertFulladdress(Fulladdress fulladdress);
	
	/**
     * 修改地址
     * 
     * @param fulladdress 地址信息
     * @return 结果
     */
	public int updateFulladdress(Fulladdress fulladdress);
	
	/**
     * 保存地址
     * 
     * @param fulladdress 地址信息
     * @return 结果
     */
	public int saveFulladdress(Fulladdress fulladdress);
	
	
	/**
     * 删除地址信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteFulladdressByIds(String ids);
	
}
