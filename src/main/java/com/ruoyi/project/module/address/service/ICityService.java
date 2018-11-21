package com.ruoyi.project.module.address.service;

import com.ruoyi.project.module.address.domain.City;
import java.util.List;

/**
 * 城市 服务层
 * 
 * @author ruoyi
 * @date 2018-07-07
 */
public interface ICityService {
	/**
	 * 查询城市信息
	 * 
	 * @param id 城市ID
	 * @return 城市信息
	 */
	public City selectCityById(Integer id);

	/**
	 * 查询城市列表
	 * 
	 * @param city 城市信息
	 * @return 城市集合
	 */
	public List<City> selectCityList(City city);

	/**
	 * 新增城市
	 * 
	 * @param city 城市信息
	 * @return 结果
	 */
	public int insertCity(City city);

	/**
	 * 修改城市
	 * 
	 * @param city 城市信息
	 * @return 结果
	 */
	public int updateCity(City city);

	/**
	 * 保存城市
	 * 
	 * @param city 城市信息
	 * @return 结果
	 */
	public int saveCity(City city);

	/**
	 * 删除城市信息
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteCityByIds(String ids);

	public List<City> queryCityListByCountry(Integer countryId);

}
