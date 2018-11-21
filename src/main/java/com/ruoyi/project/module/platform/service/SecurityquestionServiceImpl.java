package com.ruoyi.project.module.platform.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.platform.mapper.SecurityquestionMapper;
import com.ruoyi.project.module.platform.domain.Securityquestion;
import com.ruoyi.project.module.platform.service.ISecurityquestionService;
import com.ruoyi.common.support.Convert;

/**
 * 平台安全问题 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
@Service
public class SecurityquestionServiceImpl implements ISecurityquestionService 
{
	@Autowired
	private SecurityquestionMapper securityquestionMapper;

	/**
     * 查询平台安全问题信息
     * 
     * @param id 平台安全问题ID
     * @return 平台安全问题信息
     */
    @Override
	public Securityquestion selectSecurityquestionById(Integer id)
	{
	    return securityquestionMapper.selectSecurityquestionById(id);
	}
	
	/**
     * 查询平台安全问题列表
     * 
     * @param securityquestion 平台安全问题信息
     * @return 平台安全问题集合
     */
	@Override
	public List<Securityquestion> selectSecurityquestionList(Securityquestion securityquestion)
	{
	    return securityquestionMapper.selectSecurityquestionList(securityquestion);
	}
	
    /**
     * 新增平台安全问题
     * 
     * @param securityquestion 平台安全问题信息
     * @return 结果
     */
	@Override
	public int insertSecurityquestion(Securityquestion securityquestion)
	{
	    return securityquestionMapper.insertSecurityquestion(securityquestion);
	}
	
	/**
     * 修改平台安全问题
     * 
     * @param securityquestion 平台安全问题信息
     * @return 结果
     */
	@Override
	public int updateSecurityquestion(Securityquestion securityquestion)
	{
	    return securityquestionMapper.updateSecurityquestion(securityquestion);
	}
	
	/**
     * 保存平台安全问题
     * 
     * @param securityquestion 平台安全问题信息
     * @return 结果
     */
	@Override
	public int saveSecurityquestion(Securityquestion securityquestion)
	{
	    Integer id = securityquestion.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id))
        {
		    rows = securityquestionMapper.updateSecurityquestion(securityquestion);
		}
		else
        {
		    rows = securityquestionMapper.insertSecurityquestion(securityquestion);
		}
		return rows;
	}
	
	/**
     * 删除平台安全问题对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteSecurityquestionByIds(String ids)
	{
		return securityquestionMapper.deleteSecurityquestionByIds(Convert.toStrArray(ids));
	}
	
}
