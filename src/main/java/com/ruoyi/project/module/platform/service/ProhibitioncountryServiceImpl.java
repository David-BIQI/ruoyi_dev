package com.ruoyi.project.module.platform.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.platform.mapper.ProhibitioncountryMapper;
import com.ruoyi.project.module.platform.domain.Prohibitioncountry;
import com.ruoyi.project.module.platform.service.IProhibitioncountryService;
import com.ruoyi.common.support.Convert;

/**
 * 平台禁止国家_中间 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
@Service
public class ProhibitioncountryServiceImpl implements IProhibitioncountryService 
{
	@Autowired
	private ProhibitioncountryMapper prohibitioncountryMapper;

	/**
     * 查询平台禁止国家_中间信息
     * 
     * @param id 平台禁止国家_中间ID
     * @return 平台禁止国家_中间信息
     */
    @Override
	public Prohibitioncountry selectProhibitioncountryById(Integer id)
	{
	    return prohibitioncountryMapper.selectProhibitioncountryById(id);
	}
	
	/**
     * 查询平台禁止国家_中间列表
     * 
     * @param prohibitioncountry 平台禁止国家_中间信息
     * @return 平台禁止国家_中间集合
     */
	@Override
	public List<Prohibitioncountry> selectProhibitioncountryList(Prohibitioncountry prohibitioncountry)
	{
	    return prohibitioncountryMapper.selectProhibitioncountryList(prohibitioncountry);
	}
	
    /**
     * 新增平台禁止国家_中间
     * 
     * @param prohibitioncountry 平台禁止国家_中间信息
     * @return 结果
     */
	@Override
	public int insertProhibitioncountry(Prohibitioncountry prohibitioncountry)
	{
	    return prohibitioncountryMapper.insertProhibitioncountry(prohibitioncountry);
	}
	
	/**
     * 修改平台禁止国家_中间
     * 
     * @param prohibitioncountry 平台禁止国家_中间信息
     * @return 结果
     */
	@Override
	public int updateProhibitioncountry(Prohibitioncountry prohibitioncountry)
	{
	    return prohibitioncountryMapper.updateProhibitioncountry(prohibitioncountry);
	}
	
	/**
     * 保存平台禁止国家_中间
     * 
     * @param prohibitioncountry 平台禁止国家_中间信息
     * @return 结果
     */
	@Override
	public int saveProhibitioncountry(Prohibitioncountry prohibitioncountry)
	{
	    Integer id = prohibitioncountry.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id))
        {
		    rows = prohibitioncountryMapper.updateProhibitioncountry(prohibitioncountry);
		}
		else
        {
		    rows = prohibitioncountryMapper.insertProhibitioncountry(prohibitioncountry);
		}
		return rows;
	}
	
	/**
     * 删除平台禁止国家_中间对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteProhibitioncountryByIds(String ids)
	{
		return prohibitioncountryMapper.deleteProhibitioncountryByIds(Convert.toStrArray(ids));
	}
	
}
