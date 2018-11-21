package com.ruoyi.project.module.address.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.project.module.address.domain.City;
import com.ruoyi.project.module.address.service.ICityService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.framework.web.domain.AjaxResult;

/**
 * 城市 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-07
 */
@Controller
@RequestMapping("/module/city")
public class CityController extends BaseController {
	private String prefix = "resources/address/city";

	@Autowired
	private ICityService cityService;

	@RequiresPermissions("module:city:view")
	@GetMapping()
	public String city() {
		return prefix + "/city";
	}

	/**
	 * 查询城市列表
	 */
	@RequiresPermissions("module:city:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(City city) {
		startPage();
		List<City> list = cityService.selectCityList(city);
		return getDataTable(list);
	}

	@RequiresPermissions("module:city:listbycountry")
	@GetMapping("/list/country")
	@ResponseBody
	public TableDataInfo listByCountry(Integer countryId) {
		if (countryId == null || countryId <= 0) {
			return new TableDataInfo();
		}
		List<City> list = this.cityService.queryCityListByCountry(countryId);
		return getDataTable(list);
	}

	/**
	 * 新增城市
	 */
	@RequiresPermissions("module:city:add")
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 修改城市
	 */
	@RequiresPermissions("module:city:edit")
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model) {
		City city = cityService.selectCityById(id);
		model.addAttribute("city", city);
		return prefix + "/edit";
	}

	/**
	 * 保存城市
	 */
	@RequiresPermissions("module:city:save")
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(City city) {
		if (cityService.saveCity(city) > 0) {
			return success();
		}
		return error();
	}

	/**
	 * 删除城市
	 */
	@RequiresPermissions("module:city:remove")
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		int rows = cityService.deleteCityByIds(ids);
		if (rows > 0) {
			return success();
		}
		return error();
	}

}
