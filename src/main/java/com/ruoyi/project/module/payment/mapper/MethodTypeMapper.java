package com.ruoyi.project.module.payment.mapper;

import java.util.List;

import com.ruoyi.project.module.payment.domain.MethodType;	

/**
 * 支付方式类型 数据层
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
public interface MethodTypeMapper 
{
	/**
     * 查询支付方式类型信息
     * 
     * @param id 支付方式类型ID
     * @return 支付方式类型信息
     */
	public MethodType selectMethodById(Integer id);
	
	/**
     * 查询支付方式类型列表
     * 
     * @param method 支付方式类型信息
     * @return 支付方式类型集合
     */
	public List<MethodType> selectMethodList(MethodType method);
	
	/**
     * 新增支付方式类型
     * 
     * @param method 支付方式类型信息
     * @return 结果
     */
	public int insertMethod(MethodType method);
	
	/**
     * 修改支付方式类型
     * 
     * @param method 支付方式类型信息
     * @return 结果
     */
	public int updateMethod(MethodType method);
	
	/**
     * 删除支付方式类型
     * 
     * @param id 支付方式类型ID
     * @return 结果
     */
	public int deleteMethodById(Integer id);
	
	/**
     * 批量删除支付方式类型
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteMethodByIds(String[] ids);
	
}