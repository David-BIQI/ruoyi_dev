package com.ruoyi.project.module.ip.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ruoyi.project.module.ip.domain.Ip;

/**
 * IP地址管理 数据层
 * 
 * @author ruoyi
 * @date 2018-07-16
 */
public interface IpMapper {
	/**
	 * 查询IP地址管理信息
	 * 
	 * @param id IP地址管理ID
	 * @return IP地址管理信息
	 */
	public Ip selectIpById(Integer id);

	/**
	 * 查询IP地址管理列表
	 * 
	 * @param ip IP地址管理信息
	 * @return IP地址管理集合
	 */
	public List<Ip> selectIpList(Ip ip);

	/**
	 * 新增IP地址管理
	 * 
	 * @param ip IP地址管理信息
	 * @return 结果
	 */
	public int insertIp(Ip ip);

	/**
	 * 修改IP地址管理
	 * 
	 * @param ip IP地址管理信息
	 * @return 结果
	 */
	public int updateIp(Ip ip);

	/**
	 * 删除IP地址管理
	 * 
	 * @param id IP地址管理ID
	 * @return 结果
	 */
	public int deleteIpById(Integer id);

	/**
	 * 批量删除IP地址管理
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteIpByIds(String[] ids);

	/**
	 * 查询续费IP列表
	 * 
	 * @param ip
	 * @return
	 */
	public List<Ip> selectIpRenewalList(@Param("renewalDate") Date renewalDate);

}