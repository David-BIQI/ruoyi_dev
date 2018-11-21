package com.ruoyi.project.module.platformtype.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.platformtype.mapper.ProhibicountryMapper;
import com.ruoyi.project.module.platformtype.domain.Prohibicountry;
import com.ruoyi.project.module.platformtype.service.IProhibicountryService;
import com.ruoyi.common.support.Convert;

/**
 * 平台类型禁止的国家_中间 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
@Service
public class ProhibicountryServiceImpl implements IProhibicountryService 
{
	@Autowired
	private ProhibicountryMapper prohibicountryMapper;

	/**
     * 查询平台类型禁止的国家_中间信息
     * 
     * @param id 平台类型禁止的国家_中间ID
     * @return 平台类型禁止的国家_中间信息
     */
    @Override
	public Prohibicountry selectProhibicountryById(Integer id)
	{
	    return prohibicountryMapper.selectProhibicountryById(id);
	}
	
	/**
     * 查询平台类型禁止的国家_中间列表
     * 
     * @param prohibicountry 平台类型禁止的国家_中间信息
     * @return 平台类型禁止的国家_中间集合
     */
	@Override
	public List<Prohibicountry> selectProhibicountryList(Prohibicountry prohibicountry)
	{
	    return prohibicountryMapper.selectProhibicountryList(prohibicountry);
	}
	
    /**
     * 新增平台类型禁止的国家_中间
     * 
     * @param prohibicountry 平台类型禁止的国家_中间信息
     * @return 结果
     */
	@Override
	public int insertProhibicountry(Prohibicountry prohibicountry)
	{
	    return prohibicountryMapper.insertProhibicountry(prohibicountry);
	}
	
	/**
     * 修改平台类型禁止的国家_中间
     * 
     * @param prohibicountry 平台类型禁止的国家_中间信息
     * @return 结果
     */
	@Override
	public int updateProhibicountry(Prohibicountry prohibicountry)
	{
	    return prohibicountryMapper.updateProhibicountry(prohibicountry);
	}
	
	/**
     * 保存平台类型禁止的国家_中间
     * 
     * @param prohibicountry 平台类型禁止的国家_中间信息
     * @return 结果
     */
	@Override
	public int saveProhibicountry(Prohibicountry prohibicountry)
	{
	    Integer id = prohibicountry.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id))
        {
		    rows = prohibicountryMapper.updateProhibicountry(prohibicountry);
		}
		else
        {
		    rows = prohibicountryMapper.insertProhibicountry(prohibicountry);
		}
		return rows;
	}
	
	/**
     * 删除平台类型禁止的国家_中间对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteProhibicountryByIds(String ids)
	{
		return prohibicountryMapper.deleteProhibicountryByIds(Convert.toStrArray(ids));
	}
	
}
