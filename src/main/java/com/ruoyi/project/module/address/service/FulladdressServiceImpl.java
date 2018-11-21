package com.ruoyi.project.module.address.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.security.ShiroUtils;
import com.ruoyi.project.module.address.mapper.FulladdressMapper;
import com.ruoyi.project.module.address.domain.Fulladdress;
import com.ruoyi.project.module.address.service.IFulladdressService;
import com.ruoyi.common.support.Convert;

/**
 * 地址 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-07
 */
@Service
public class FulladdressServiceImpl implements IFulladdressService 
{
	@Autowired
	private FulladdressMapper fulladdressMapper;

	/**
     * 查询地址信息
     * 
     * @param id 地址ID
     * @return 地址信息
     */
    @Override
	public Fulladdress selectFulladdressById(Integer id)
	{
	    return fulladdressMapper.selectFulladdressById(id);
	}
	
	/**
     * 查询地址列表
     * 
     * @param fulladdress 地址信息
     * @return 地址集合
     */
	@Override
	public List<Fulladdress> selectFulladdressList(Fulladdress fulladdress)
	{
	    return fulladdressMapper.selectFulladdressList(fulladdress);
	}
	
    /**
     * 新增地址
     * 
     * @param fulladdress 地址信息
     * @return 结果
     */
	@Override
	public int insertFulladdress(Fulladdress fulladdress)
	{
		fulladdress.setCreateBy(ShiroUtils.getLoginName());
		ShiroUtils.clearCachedAuthorizationInfo();
		return fulladdressMapper.insertFulladdress(fulladdress);
	}
	
	/**
     * 修改地址
     * 
     * @param fulladdress 地址信息
     * @return 结果
     */
	@Override
	public int updateFulladdress(Fulladdress fulladdress)
	{
		fulladdress.setUpdateBy(ShiroUtils.getLoginName());
		ShiroUtils.clearCachedAuthorizationInfo();
		return fulladdressMapper.updateFulladdress(fulladdress);
	}
	
	/**
     * 保存地址
     * 
     * @param fulladdress 地址信息
     * @return 结果
     */
	@Override
	public int saveFulladdress(Fulladdress fulladdress)
	{
	    Integer id = fulladdress.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id))
        {
			fulladdress.setUpdateBy(ShiroUtils.getLoginName());
			ShiroUtils.clearCachedAuthorizationInfo();
		    rows = fulladdressMapper.updateFulladdress(fulladdress);
		}
		else
        {
			fulladdress.setCreateBy(ShiroUtils.getLoginName());
			ShiroUtils.clearCachedAuthorizationInfo();
		    rows = fulladdressMapper.insertFulladdress(fulladdress);
		}
		return rows;
	}
	
	/**
     * 删除地址对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteFulladdressByIds(String ids)
	{
		return fulladdressMapper.deleteFulladdressByIds(Convert.toIntArray(ids));
	}
	
}
