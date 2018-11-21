package com.ruoyi.project.module.address.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.security.ShiroUtils;
import com.ruoyi.project.module.address.mapper.CountryMapper;
import com.ruoyi.project.module.address.domain.Country;
import com.ruoyi.project.module.address.service.ICountryService;
import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.support.Convert;

/**
 * 国家 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-02
 */
@Service
public class CountryServiceImpl implements ICountryService {
	@Autowired
	private CountryMapper countryMapper;

	/**
	 * 查询国家信息
	 * 
	 * @param id 国家ID
	 * @return 国家信息
	 */
	@Override
	public Country selectCountryById(Long id) {
		return countryMapper.selectCountryById(id);
	}

	/**
	 * 查询国家列表
	 * 
	 * @param country 国家信息
	 * @return 国家集合
	 */
	@Override
	public List<Country> selectCountryList(Country country) {
		return countryMapper.selectCountryList(country);
	}

	/**
	 * 新增国家
	 * 
	 * @param country 国家信息
	 * @return 结果
	 */
	@Override
	public int insertCountry(Country country) {
		country.setCreateBy(ShiroUtils.getLoginName());
		ShiroUtils.clearCachedAuthorizationInfo();
		return countryMapper.insertCountry(country);
	}

	/**
	 * 修改国家
	 * 
	 * @param country 国家信息
	 * @return 结果
	 */
	@Override
	public int updateCountry(Country country) {
		country.setUpdateBy(ShiroUtils.getLoginName());
		ShiroUtils.clearCachedAuthorizationInfo();
		return countryMapper.updateCountry(country);
	}

	/**
	 * 保存国家
	 * 
	 * @param country 国家信息
	 * @return 结果
	 */
	@Override
	public int saveCountry(Country country) {
		Long id = country.getCountryId();
		int rows = 0;
		if (StringUtils.isNotNull(id)) {
			country.setUpdateBy(ShiroUtils.getLoginName());
			ShiroUtils.clearCachedAuthorizationInfo();
			rows = countryMapper.updateCountry(country);
		} else {
			country.setCreateBy(ShiroUtils.getLoginName());
			ShiroUtils.clearCachedAuthorizationInfo();

			rows = countryMapper.insertCountry(country);
		}
		return rows;
	}

	/**
	 * 删除国家对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteCountryByIds(String ids) {
		return countryMapper.deleteCountryByIds(Convert.toLongArray(ids));
	}

	@Override
	public String checkCountryCodeUnique(Long countryId, String countryCode) {

		if (countryId != null && countryId > 0) {
			Country country = this.selectCountryById(countryId);
			if (country.getCountryCode().equals(countryCode)) {
				return UserConstants.USER_NAME_UNIQUE;
			}
		}
		int count = countryMapper.checkCountryCodeUnique(countryCode);
		if (count > 0) {
			return UserConstants.USER_NAME_NOT_UNIQUE;
		}
		return UserConstants.USER_NAME_UNIQUE;
	}

}
