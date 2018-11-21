package com.ruoyi.project.module.ip.service;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.common.support.Convert;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.ip.domain.Ip;
import com.ruoyi.project.module.ip.mapper.IpMapper;

/**
 * IP地址管理 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-16
 */
@Service
public class IpServiceImpl implements IIpService {
	@Autowired
	private IpMapper ipMapper;

	/**
	 * 查询IP地址管理信息
	 * 
	 * @param id IP地址管理ID
	 * @return IP地址管理信息
	 */
	@Override
	public Ip selectIpById(Integer id) {
		return ipMapper.selectIpById(id);
	}

	/**
	 * 查询IP地址管理列表
	 * 
	 * @param ip IP地址管理信息
	 * @return IP地址管理集合
	 */
	@Override
	public List<Ip> selectIpList(Ip ip) {
		if (ip.getRenewalStatus() != null && ip.getRenewalStatus() == 3) {
			Date date = DateUtils.addDays(new Date(), 7);
			return ipMapper.selectIpRenewalList(date);
		}
		return ipMapper.selectIpList(ip);
	}

	/**
	 * 新增IP地址管理
	 * 
	 * @param ip IP地址管理信息
	 * @return 结果
	 */
	@Override
	public int insertIp(Ip ip) {
		return ipMapper.insertIp(ip);
	}

	/**
	 * 修改IP地址管理
	 * 
	 * @param ip IP地址管理信息
	 * @return 结果
	 */
	@Override
	public int updateIp(Ip ip) {
		return ipMapper.updateIp(ip);
	}

	/**
	 * 保存IP地址管理
	 * 
	 * @param ip IP地址管理信息
	 * @return 结果
	 */
	@Override
	public int saveIp(Ip ip) {
		Integer id = ip.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id)) {
			rows = ipMapper.updateIp(ip);
		} else {
			rows = ipMapper.insertIp(ip);
		}
		return rows;
	}

	/**
	 * 删除IP地址管理对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteIpByIds(String ids) {
		return ipMapper.deleteIpByIds(Convert.toStrArray(ids));
	}

}
