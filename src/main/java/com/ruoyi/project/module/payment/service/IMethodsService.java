package com.ruoyi.project.module.payment.service;

import com.ruoyi.project.module.payment.domain.Methods;
import java.util.List;

/**
 * 支付方式 服务层
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
public interface IMethodsService 
{
	/**
     * 查询支付方式信息
     * 
     * @param id 支付方式ID
     * @return 支付方式信息
     */
	public Methods selectMethodsById(Integer id);
	
	/**
     * 查询支付方式列表
     * 
     * @param methods 支付方式信息
     * @return 支付方式集合
     */
	public List<Methods> selectMethodsList(Methods methods);
	
	/**
     * 新增支付方式
     * 
     * @param methods 支付方式信息
     * @return 结果
     */
	public int insertMethods(Methods methods);
	
	/**
     * 修改支付方式
     * 
     * @param methods 支付方式信息
     * @return 结果
     */
	public int updateMethods(Methods methods);
	
	/**
     * 保存支付方式
     * 
     * @param methods 支付方式信息
     * @return 结果
     */
	public int saveMethods(Methods methods);
	
	
	/**
     * 删除支付方式信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteMethodsByIds(String ids);
	
}
