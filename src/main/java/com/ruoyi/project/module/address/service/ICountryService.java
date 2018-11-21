package com.ruoyi.project.module.address.service;

import com.ruoyi.project.module.address.domain.Country;
import java.util.List;

/**
 * 国家 服务层
 * 
 * @author ruoyi
 * @date 2018-07-02
 */
public interface ICountryService {
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
	 * 保存国家
	 * 
	 * @param country 国家信息
	 * @return 结果
	 */
	public int saveCountry(Country country);

	/**
	 * 删除国家信息
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteCountryByIds(String ids);

	/**
	 * 校验国家码是否唯一
	 * 
	 * @param countryCode 国家码
	 * @return 结果
	 */
	public String checkCountryCodeUnique(Long countryId, String countryCode);

}
