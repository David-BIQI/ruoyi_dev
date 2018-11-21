package com.ruoyi.project.module.platform.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.platform.mapper.PaymentmethodsMapper;
import com.ruoyi.project.module.platform.domain.Paymentmethods;
import com.ruoyi.project.module.platform.service.IPaymentmethodsService;
import com.ruoyi.common.support.Convert;

/**
 * 平台支付方式_中间 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
@Service
public class PaymentmethodsServiceImpl implements IPaymentmethodsService 
{
	@Autowired
	private PaymentmethodsMapper paymentmethodsMapper;

	/**
     * 查询平台支付方式_中间信息
     * 
     * @param id 平台支付方式_中间ID
     * @return 平台支付方式_中间信息
     */
    @Override
	public Paymentmethods selectPaymentmethodsById(Integer id)
	{
	    return paymentmethodsMapper.selectPaymentmethodsById(id);
	}
	
	/**
     * 查询平台支付方式_中间列表
     * 
     * @param paymentmethods 平台支付方式_中间信息
     * @return 平台支付方式_中间集合
     */
	@Override
	public List<Paymentmethods> selectPaymentmethodsList(Paymentmethods paymentmethods)
	{
	    return paymentmethodsMapper.selectPaymentmethodsList(paymentmethods);
	}
	
    /**
     * 新增平台支付方式_中间
     * 
     * @param paymentmethods 平台支付方式_中间信息
     * @return 结果
     */
	@Override
	public int insertPaymentmethods(Paymentmethods paymentmethods)
	{
	    return paymentmethodsMapper.insertPaymentmethods(paymentmethods);
	}
	
	/**
     * 修改平台支付方式_中间
     * 
     * @param paymentmethods 平台支付方式_中间信息
     * @return 结果
     */
	@Override
	public int updatePaymentmethods(Paymentmethods paymentmethods)
	{
	    return paymentmethodsMapper.updatePaymentmethods(paymentmethods);
	}
	
	/**
     * 保存平台支付方式_中间
     * 
     * @param paymentmethods 平台支付方式_中间信息
     * @return 结果
     */
	@Override
	public int savePaymentmethods(Paymentmethods paymentmethods)
	{
	    Integer id = paymentmethods.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id))
        {
		    rows = paymentmethodsMapper.updatePaymentmethods(paymentmethods);
		}
		else
        {
		    rows = paymentmethodsMapper.insertPaymentmethods(paymentmethods);
		}
		return rows;
	}
	
	/**
     * 删除平台支付方式_中间对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deletePaymentmethodsByIds(String ids)
	{
		return paymentmethodsMapper.deletePaymentmethodsByIds(Convert.toStrArray(ids));
	}
	
}
