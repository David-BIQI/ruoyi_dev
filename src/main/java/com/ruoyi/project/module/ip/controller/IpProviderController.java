package com.ruoyi.project.module.ip.controller;

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
import com.ruoyi.project.module.device.domain.Device;
import com.ruoyi.project.module.ip.domain.IpProvider;
import com.ruoyi.project.module.ip.service.IipProviderService;

/**
 * ip供应商 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-16
 */
@Controller
@RequestMapping("/module/ipMgt/provider")
public class IpProviderController extends BaseController {
	private String prefix = "resources/ipMgt/provider";

	@Autowired
	private IipProviderService providerService;

	@RequiresPermissions("module:provider:view")
	@GetMapping()
	public String provider() {
		return prefix + "/provider";
	}

	/**
	 * 查询ip供应商列表
	 */
	@RequiresPermissions("module:provider:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(IpProvider provider) {
		startPage();
		List<IpProvider> list = providerService.selectProviderList(provider);
		return getDataTable(list);
	}

	/**
	 * 查询ip供应商列表
	 */
	@RequiresPermissions("module:provider:list")
	@PostMapping("/page")
	@ResponseBody
	public PageData<IpProvider> page(IpProvider provider) {
		String searchValue = provider.getSearchValue();
		if (StringUtils.hasText(searchValue)) {
			provider.setId(Integer.valueOf(searchValue));
		}
		startPage();
		List<IpProvider> list = providerService.selectProviderList(provider);
		return PageData.of(new PageInfo<IpProvider>(list));
	}

	/**
	 * 新增ip供应商
	 */
	@RequiresPermissions("module:provider:add")
	@Log(title = "ip供应商", action = BusinessType.INSERT)
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 修改ip供应商
	 */
	@RequiresPermissions("module:provider:edit")
	@Log(title = "ip供应商", action = BusinessType.UPDATE)
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model) {
		IpProvider provider = providerService.selectProviderById(id);
		model.addAttribute("provider", provider);
		return prefix + "/edit";
	}

	/**
	 * 保存ip供应商
	 */
	@RequiresPermissions("module:provider:save")
	@Log(title = "ip供应商", action = BusinessType.SAVE)
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(IpProvider provider) {
		if (providerService.saveProvider(provider) > 0) {
			return success();
		}
		return error();
	}

	/**
	 * 删除ip供应商
	 */
	@RequiresPermissions("module:provider:remove")
	@Log(title = "ip供应商", action = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		int rows = providerService.deleteProviderByIds(ids);
		if (rows > 0) {
			return success();
		}
		return error();
	}

}
