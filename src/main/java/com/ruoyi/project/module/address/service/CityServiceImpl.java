package com.ruoyi.project.module.address.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.common.support.Convert;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.security.ShiroUtils;
import com.ruoyi.project.module.address.domain.City;
import com.ruoyi.project.module.address.mapper.CityMapper;

/**
 * 城市 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-07
 */
@Service
public class CityServiceImpl implements ICityService {
	@Autowired
	private CityMapper cityMapper;

//	@Autowired
//	private CountryMapper countryMapper;

	/**
	 * 查询城市信息
	 * 
	 * @param id 城市ID
	 * @return 城市信息
	 */
	@Override
	public City selectCityById(Integer id) {
		return cityMapper.selectCityById(id);
	}

	/**
	 * 查询城市列表
	 * 
	 * @param city 城市信息
	 * @return 城市集合
	 */
	@Override
	public List<City> selectCityList(City city) {
		List<City> list = cityMapper.selectCityList(city);
		// TODO 将国家的id转换成国家名字
//		list.forEach(item->{
//			int countryId = item.getCountryId();
//			Long id = Long.valueOf(String.valueOf(countryId));
//			Country country = countryMapper.selectCountryById(id);
//			item.(country.getCountryName());
//		});
		return list;
	}

	@Override
	public List<City> queryCityListByCountry(Integer countryId) {
		// TODO Auto-generated method stub
		City city = new City();
		city.setCountryId(countryId);

		List<City> list = this.cityMapper.selectCityList(city);
		return list;
	}

	/**
	 * 新增城市
	 * 
	 * @param city 城市信息
	 * @return 结果
	 */
	@Override
	public int insertCity(City city) {
		city.setCreateBy(ShiroUtils.getLoginName());
		ShiroUtils.clearCachedAuthorizationInfo();
		return cityMapper.insertCity(city);
	}

	/**
	 * 修改城市
	 * 
	 * @param city 城市信息
	 * @return 结果
	 */
	@Override
	public int updateCity(City city) {
		city.setUpdateBy(ShiroUtils.getLoginName());
		ShiroUtils.clearCachedAuthorizationInfo();
		return cityMapper.updateCity(city);
	}

	/**
	 * 保存城市
	 * 
	 * @param city 城市信息
	 * @return 结果
	 */
	@Override
	public int saveCity(City city) {
		Integer id = city.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id)) {
			city.setUpdateBy(ShiroUtils.getLoginName());
			ShiroUtils.clearCachedAuthorizationInfo();
			rows = cityMapper.updateCity(city);
		} else {
			city.setCreateBy(ShiroUtils.getLoginName());
			ShiroUtils.clearCachedAuthorizationInfo();
			rows = cityMapper.insertCity(city);
		}
		return rows;
	}

	/**
	 * 删除城市对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteCityByIds(String ids) {
		return cityMapper.deleteCityByIds(Convert.toIntArray(ids));
	}

}
