package com.ruoyi.project.module.cellphone.mapper;

import java.util.List;

import com.ruoyi.project.module.cellphone.domain.Phone;

/**
 * 联系电话 数据层
 * 
 * @author ruoyi
 * @date 2018-07-10
 */
public interface CellPhoneMapper {
	/**
	 * 查询联系电话信息
	 * 
	 * @param id 联系电话ID
	 * @return 联系电话信息
	 */
	public Phone selectPhoneById(Integer id);

	/**
	 * 查询联系电话列表
	 * 
	 * @param phone 联系电话信息
	 * @return 联系电话集合
	 */
	public List<Phone> selectPhoneList(Phone phone);

	/**
	 * 新增联系电话
	 * 
	 * @param phone 联系电话信息
	 * @return 结果
	 */
	public int insertPhone(Phone phone);

	/**
	 * 修改联系电话
	 * 
	 * @param phone 联系电话信息
	 * @return 结果
	 */
	public int updatePhone(Phone phone);

	/**
	 * 删除联系电话
	 * 
	 * @param id 联系电话ID
	 * @return 结果
	 */
	public int deletePhoneById(Integer id);

	/**
	 * 批量删除联系电话
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deletePhoneByIds(String[] ids);

	public List<Phone> selectPhonePage(Phone phone);

}