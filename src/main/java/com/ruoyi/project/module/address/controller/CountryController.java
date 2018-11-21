package com.ruoyi.project.module.address.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.PageData;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.module.address.domain.Country;
import com.ruoyi.project.module.address.service.ICountryService;

/**
 * 国家 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-02
 */
@Controller
@RequestMapping("/module/address/country")
public class CountryController extends BaseController {
	private String prefix = "resources/address/country";

	@Autowired
	private ICountryService countryService;

	@RequiresPermissions("module:country:view")
	@GetMapping()
	public String country() {
		return prefix + "/country";
	}

	/**
	 * 查询国家列表
	 */
	@RequiresPermissions("module:country:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Country country) {
		startPage();
		List<Country> list = countryService.selectCountryList(country);
		return getDataTable(list);
	}

	/**
	 * 查询国家列表
	 */
	@RequiresPermissions("module:country:list")
	@PostMapping("/page")
	@ResponseBody
	public PageData<Country> page(Country country) {
		String searchValue = country.getSearchValue();
		if (StringUtils.hasText(searchValue)) {
			country.setCountryId(Long.valueOf(searchValue));
		}
		startPage();
		List<Country> list = countryService.selectCountryList(country);
		return PageData.of(new PageInfo<Country>(list));
	}

	/**
	 * 新增国家
	 */
	@RequiresPermissions("module:country:add")
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 修改国家
	 */
	@RequiresPermissions("module:country:edit")
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Long id, Model model) {
		Country country = countryService.selectCountryById(id);
		model.addAttribute("country", country);
		return prefix + "/edit";
	}

	/**
	 * 保存国家
	 */
	@RequiresPermissions("module:country:save")
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(Country country) {
		if (countryService.saveCountry(country) > 0) {
			return success();
		}
		return error();
	}

	/**
	 * 删除国家
	 */
	@RequiresPermissions("module:country:remove")
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		int rows = countryService.deleteCountryByIds(ids);
		if (rows > 0) {
			return success();
		}
		return error();
	}

	/**
	 * 校验国家码
	 */
	@PostMapping("/checkCountryCodeUnique")
	@ResponseBody
	public String checkCountryCodeUnique(Country country) {
		String uniqueFlag = "0";
		if (StringUtils.hasText(country.getCountryCode())) {
			uniqueFlag = countryService.checkCountryCodeUnique(country.getCountryId(), country.getCountryCode());
		}
		return uniqueFlag;
	}
}
