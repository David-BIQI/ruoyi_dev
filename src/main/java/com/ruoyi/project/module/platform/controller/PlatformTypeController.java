package com.ruoyi.project.module.platform.controller;

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
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.constant.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.PageData;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.module.platform.domain.PlatformType;
import com.ruoyi.project.module.platform.service.IPlatformTypeService;

/**
 * 平台类型管理 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
@Controller
@RequestMapping("/module/platform/type")
public class PlatformTypeController extends BaseController {
	private String prefix = "resources/platform/platformtype";

	@Autowired
	private IPlatformTypeService typeService;

	@RequiresPermissions("module:platformtype:view")
	@GetMapping()
	public String type() {
		return prefix + "/type";
	}

	/**
	 * 查询平台类型管理列表
	 */
	@RequiresPermissions("module:platformtype:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(PlatformType type) {
		startPage();
		List<PlatformType> list = typeService.selectTypeList(type);
		return getDataTable(list);
	}

	/**
	 * 查询平台类型管理列表
	 */
	@RequiresPermissions("module:platformtype:list")
	@PostMapping("/page")
	@ResponseBody
	public PageData<PlatformType> page(PlatformType type) {
		String searchValue = type.getSearchValue();
		if (StringUtils.hasText(searchValue)) {
			type.setId(Integer.valueOf(searchValue));
		}
		startPage();
		List<PlatformType> list = typeService.selectTypeList(type);
		return PageData.of(new PageInfo<PlatformType>(list));
	}

	/**
	 * 新增平台类型管理
	 */
	@RequiresPermissions("module:platformtype:add")
	@Log(title = "平台类型管理", action = BusinessType.INSERT)
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 修改平台类型管理
	 */
	@RequiresPermissions("module:platformtype:edit")
	@Log(title = "平台类型管理", action = BusinessType.UPDATE)
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model) {
		PlatformType type = typeService.selectTypeById(id);
		model.addAttribute("type", type);
		return prefix + "/edit";
	}

	/**
	 * 保存平台类型管理
	 */
	@RequiresPermissions("module:platformtype:save")
	@Log(title = "平台类型管理", action = BusinessType.SAVE)
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(PlatformType type) {
		if (typeService.saveType(type) > 0) {
			return success();
		}
		return error();
	}

	/**
	 * 删除平台类型管理
	 */
	@RequiresPermissions("module:platformtype:remove")
	@Log(title = "平台类型管理", action = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		int rows = typeService.deleteTypeByIds(ids);
		if (rows > 0) {
			return success();
		}
		return error();
	}

}
