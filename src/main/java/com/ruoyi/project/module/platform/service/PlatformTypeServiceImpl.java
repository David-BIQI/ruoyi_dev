package com.ruoyi.project.module.platform.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.platform.mapper.PlatformTypeMapper;
import com.ruoyi.project.module.platform.domain.PlatformType;
import com.ruoyi.project.module.platform.service.IPlatformTypeService;
import com.ruoyi.common.support.Convert;

/**
 * 平台类型管理 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
@Service
public class PlatformTypeServiceImpl implements IPlatformTypeService 
{
	@Autowired
	private PlatformTypeMapper typeMapper;

	/**
     * 查询平台类型管理信息
     * 
     * @param id 平台类型管理ID
     * @return 平台类型管理信息
     */
    @Override
	public PlatformType selectTypeById(Integer id)
	{
	    return typeMapper.selectTypeById(id);
	}
	
	/**
     * 查询平台类型管理列表
     * 
     * @param type 平台类型管理信息
     * @return 平台类型管理集合
     */
	@Override
	public List<PlatformType> selectTypeList(PlatformType type)
	{
	    return typeMapper.selectTypeList(type);
	}
	
    /**
     * 新增平台类型管理
     * 
     * @param type 平台类型管理信息
     * @return 结果
     */
	@Override
	public int insertType(PlatformType type)
	{
	    return typeMapper.insertType(type);
	}
	
	/**
     * 修改平台类型管理
     * 
     * @param type 平台类型管理信息
     * @return 结果
     */
	@Override
	public int updateType(PlatformType type)
	{
	    return typeMapper.updateType(type);
	}
	
	/**
     * 保存平台类型管理
     * 
     * @param type 平台类型管理信息
     * @return 结果
     */
	@Override
	public int saveType(PlatformType type)
	{
	    Integer id = type.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id))
        {
		    rows = typeMapper.updateType(type);
		}
		else
        {
		    rows = typeMapper.insertType(type);
		}
		return rows;
	}
	
	/**
     * 删除平台类型管理对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteTypeByIds(String ids)
	{
		return typeMapper.deleteTypeByIds(Convert.toStrArray(ids));
	}
	
}
