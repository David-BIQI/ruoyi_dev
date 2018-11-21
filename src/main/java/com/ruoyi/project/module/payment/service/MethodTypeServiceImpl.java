package com.ruoyi.project.module.payment.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.payment.mapper.MethodTypeMapper;
import com.ruoyi.project.module.payment.domain.MethodType;
import com.ruoyi.project.module.payment.service.IMethodTypeService;
import com.ruoyi.common.support.Convert;

/**
 * 支付方式类型 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
@Service
public class MethodTypeServiceImpl implements IMethodTypeService 
{
	@Autowired
	private MethodTypeMapper methodMapper;

	/**
     * 查询支付方式类型信息
     * 
     * @param id 支付方式类型ID
     * @return 支付方式类型信息
     */
    @Override
	public MethodType selectMethodById(Integer id)
	{
	    return methodMapper.selectMethodById(id);
	}
	
	/**
     * 查询支付方式类型列表
     * 
     * @param method 支付方式类型信息
     * @return 支付方式类型集合
     */
	@Override
	public List<MethodType> selectMethodList(MethodType method)
	{
	    return methodMapper.selectMethodList(method);
	}
	
    /**
     * 新增支付方式类型
     * 
     * @param method 支付方式类型信息
     * @return 结果
     */
	@Override
	public int insertMethod(MethodType method)
	{
	    return methodMapper.insertMethod(method);
	}
	
	/**
     * 修改支付方式类型
     * 
     * @param method 支付方式类型信息
     * @return 结果
     */
	@Override
	public int updateMethod(MethodType method)
	{
	    return methodMapper.updateMethod(method);
	}
	
	/**
     * 保存支付方式类型
     * 
     * @param method 支付方式类型信息
     * @return 结果
     */
	@Override
	public int saveMethod(MethodType method)
	{
	    Integer id = method.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id))
        {
		    rows = methodMapper.updateMethod(method);
		}
		else
        {
		    rows = methodMapper.insertMethod(method);
		}
		return rows;
	}
	
	/**
     * 删除支付方式类型对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteMethodByIds(String ids)
	{
		return methodMapper.deleteMethodByIds(Convert.toStrArray(ids));
	}
	
}
