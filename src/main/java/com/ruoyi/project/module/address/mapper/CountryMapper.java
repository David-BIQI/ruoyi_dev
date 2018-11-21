package com.ruoyi.project.module.address.mapper;

import com.ruoyi.project.module.address.domain.Country;
import java.util.List;

/**
 * 国家 数据层
 * 
 * @author ruoyi
 * @date 2018-07-02
 */
public interface CountryMapper {
	/**
	 * 查询国家信息
	 * 
	 * @param id 国家ID
	 * @return 国家信息
	 */
	public Country selectCountryById(Long id);

	/**
	 * 查询国家列表
	 * 
	 * @param country 国家信息
	 * @return 国家集合
	 */
	public List<Country> selectCountryList(Country country);

	/**
	 * 新增国家
	 * 
	 * @param country 国家信息
	 * @return 结果
	 */
	public int insertCountry(Country country);

	/**
	 * 修改国家
	 * 
	 * @param country 国家信息
	 * @return 结果
	 */
	public int updateCountry(Country country);

	/**
	 * 批量删除国家
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteCountryByIds(Long[] ids);

	/**
	 * 校验国家码是否唯一
	 * 
	 * @param countryCode 
	 * @return 结果
	 */
	public int checkCountryCodeUnique(String countryCode);

}