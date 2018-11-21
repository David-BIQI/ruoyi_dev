package com.ruoyi.project.module.payment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.common.support.Convert;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.payment.domain.Methods;
import com.ruoyi.project.module.payment.mapper.PaymentMethodsMapper;

/**
 * 支付方式 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
@Service
public class MethodsServiceImpl implements IMethodsService {
	@Autowired
	private PaymentMethodsMapper methodsMapper;

	/**
	 * 查询支付方式信息
	 * 
	 * @param id 支付方式ID
	 * @return 支付方式信息
	 */
	@Override
	public Methods selectMethodsById(Integer id) {
		return methodsMapper.selectMethodsById(id);
	}

	/**
	 * 查询支付方式列表
	 * 
	 * @param methods 支付方式信息
	 * @return 支付方式集合
	 */
	@Override
	public List<Methods> selectMethodsList(Methods methods) {
		return methodsMapper.selectMethodsList(methods);
	}

	/**
	 * 新增支付方式
	 * 
	 * @param methods 支付方式信息
	 * @return 结果
	 */
	@Override
	public int insertMethods(Methods methods) {
		return methodsMapper.insertMethods(methods);
	}

	/**
	 * 修改支付方式
	 * 
	 * @param methods 支付方式信息
	 * @return 结果
	 */
	@Override
	public int updateMethods(Methods methods) {
		return methodsMapper.updateMethods(methods);
	}

	/**
	 * 保存支付方式
	 * 
	 * @param methods 支付方式信息
	 * @return 结果
	 */
	@Override
	public int saveMethods(Methods methods) {
		Integer id = methods.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id)) {
			rows = methodsMapper.updateMethods(methods);
		} else {
			rows = methodsMapper.insertMethods(methods);
		}
		return rows;
	}

	/**
	 * 删除支付方式对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteMethodsByIds(String ids) {
		return methodsMapper.deleteMethodsByIds(Convert.toStrArray(ids));
	}

}
