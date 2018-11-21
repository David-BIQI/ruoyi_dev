package com.ruoyi.project.module.platform.service;

import com.ruoyi.project.module.platform.domain.Securityquestion;
import java.util.List;

/**
 * 平台安全问题 服务层
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
public interface ISecurityquestionService 
{
	/**
     * 查询平台安全问题信息
     * 
     * @param id 平台安全问题ID
     * @return 平台安全问题信息
     */
	public Securityquestion selectSecurityquestionById(Integer id);
	
	/**
     * 查询平台安全问题列表
     * 
     * @param securityquestion 平台安全问题信息
     * @return 平台安全问题集合
     */
	public List<Securityquestion> selectSecurityquestionList(Securityquestion securityquestion);
	
	/**
     * 新增平台安全问题
     * 
     * @param securityquestion 平台安全问题信息
     * @return 结果
     */
	public int insertSecurityquestion(Securityquestion securityquestion);
	
	/**
     * 修改平台安全问题
     * 
     * @param securityquestion 平台安全问题信息
     * @return 结果
     */
	public int updateSecurityquestion(Securityquestion securityquestion);
	
	/**
     * 保存平台安全问题
     * 
     * @param securityquestion 平台安全问题信息
     * @return 结果
     */
	public int saveSecurityquestion(Securityquestion securityquestion);
	
	
	/**
     * 删除平台安全问题信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteSecurityquestionByIds(String ids);
	
}
