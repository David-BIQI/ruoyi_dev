package com.ruoyi.project.module.ip.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.common.support.Convert;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.ip.domain.IpProvider;
import com.ruoyi.project.module.ip.mapper.IpProviderMapper;

/**
 * ip供应商 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-16
 */
@Service
public class IpProviderServiceImpl implements IipProviderService {
	@Autowired
	private IpProviderMapper providerMapper;

	/**
	 * 查询ip供应商信息
	 * 
	 * @param id ip供应商ID
	 * @return ip供应商信息
	 */
	@Override
	public IpProvider selectProviderById(Integer id) {
		return providerMapper.selectProviderById(id);
	}

	/**
	 * 查询ip供应商列表
	 * 
	 * @param provider ip供应商信息
	 * @return ip供应商集合
	 */
	@Override
	public List<IpProvider> selectProviderList(IpProvider provider) {
		return providerMapper.selectProviderList(provider);
	}

	/**
	 * 新增ip供应商
	 * 
	 * @param provider ip供应商信息
	 * @return 结果
	 */
	@Override
	public int insertProvider(IpProvider provider) {
		return providerMapper.insertProvider(provider);
	}

	/**
	 * 修改ip供应商
	 * 
	 * @param provider ip供应商信息
	 * @return 结果
	 */
	@Override
	public int updateProvider(IpProvider provider) {
		return providerMapper.updateProvider(provider);
	}

	/**
	 * 保存ip供应商
	 * 
	 * @param provider ip供应商信息
	 * @return 结果
	 */
	@Override
	public int saveProvider(IpProvider provider) {
		Integer id = provider.getId();
		int rows = 0;

		if (provider.getStatus() == 1) {
			provider.setReason("");
			provider.setOptTime(null);
		} else {
			provider.setOptTime(new Date());
		}

		if (StringUtils.isNotNull(id)) {
			rows = providerMapper.updateProvider(provider);
		} else {
			rows = providerMapper.insertProvider(provider);
		}
		return rows;
	}

	/**
	 * 删除ip供应商对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteProviderByIds(String ids) {
		return providerMapper.deleteProviderByIds(Convert.toStrArray(ids));
	}

}
