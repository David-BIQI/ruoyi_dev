package com.ruoyi.project.module.address.mapper;

import com.ruoyi.project.module.address.domain.City;
import java.util.List;

/**
 * 城市 数据层
 * 
 * @author ruoyi
 * @date 2018-07-07
 */
public interface CityMapper {
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
	 * 批量删除城市
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	public int deleteCityByIds(Integer[] ids);

}