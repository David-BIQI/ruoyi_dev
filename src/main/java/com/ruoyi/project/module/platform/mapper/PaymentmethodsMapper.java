package com.ruoyi.project.module.platform.mapper;

import com.ruoyi.project.module.platform.domain.Paymentmethods;
import java.util.List;	

/**
 * 平台支付方式_中间 数据层
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
public interface PaymentmethodsMapper 
{
	/**
     * 查询平台支付方式_中间信息
     * 
     * @param id 平台支付方式_中间ID
     * @return 平台支付方式_中间信息
     */
	public Paymentmethods selectPaymentmethodsById(Integer id);
	
	/**
     * 查询平台支付方式_中间列表
     * 
     * @param paymentmethods 平台支付方式_中间信息
     * @return 平台支付方式_中间集合
     */
	public List<Paymentmethods> selectPaymentmethodsList(Paymentmethods paymentmethods);
	
	/**
     * 新增平台支付方式_中间
     * 
     * @param paymentmethods 平台支付方式_中间信息
     * @return 结果
     */
	public int insertPaymentmethods(Paymentmethods paymentmethods);
	
	/**
     * 修改平台支付方式_中间
     * 
     * @param paymentmethods 平台支付方式_中间信息
     * @return 结果
     */
	public int updatePaymentmethods(Paymentmethods paymentmethods);
	
	/**
     * 删除平台支付方式_中间
     * 
     * @param id 平台支付方式_中间ID
     * @return 结果
     */
	public int deletePaymentmethodsById(Integer id);
	
	/**
     * 批量删除平台支付方式_中间
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deletePaymentmethodsByIds(String[] ids);
	
}