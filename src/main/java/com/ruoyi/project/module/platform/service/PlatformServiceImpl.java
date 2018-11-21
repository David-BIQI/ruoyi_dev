package com.ruoyi.project.module.platform.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.platform.mapper.PlatformMapper;
import com.ruoyi.project.module.platform.domain.Platform;
import com.ruoyi.project.module.platform.service.IPlatformService;
import com.ruoyi.common.support.Convert;

/**
 * 平台 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
@Service
public class PlatformServiceImpl implements IPlatformService 
{
	@Autowired
	private PlatformMapper platformMapper;

	/**
     * 查询平台信息
     * 
     * @param id 平台ID
     * @return 平台信息
     */
    @Override
	public Platform selectPlatformById(Integer id)
	{
	    return platformMapper.selectPlatformById(id);
	}
	
	/**
     * 查询平台列表
     * 
     * @param platform 平台信息
     * @return 平台集合
     */
	@Override
	public List<Platform> selectPlatformList(Platform platform)
	{
	    return platformMapper.selectPlatformList(platform);
	}
	
    /**
     * 新增平台
     * 
     * @param platform 平台信息
     * @return 结果
     */
	@Override
	public int insertPlatform(Platform platform)
	{
	    return platformMapper.insertPlatform(platform);
	}
	
	/**
     * 修改平台
     * 
     * @param platform 平台信息
     * @return 结果
     */
	@Override
	public int updatePlatform(Platform platform)
	{
	    return platformMapper.updatePlatform(platform);
	}
	
	/**
     * 保存平台
     * 
     * @param platform 平台信息
     * @return 结果
     */
	@Override
	public int savePlatform(Platform platform)
	{
	    Integer id = platform.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id))
        {
		    rows = platformMapper.updatePlatform(platform);
		}
		else
        {
		    rows = platformMapper.insertPlatform(platform);
		}
		return rows;
	}
	
	/**
     * 删除平台对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deletePlatformByIds(String ids)
	{
		return platformMapper.deletePlatformByIds(Convert.toStrArray(ids));
	}
	
}
