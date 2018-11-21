package com.ruoyi.project.module.device.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import com.ruoyi.project.module.device.domain.Device;
import com.ruoyi.project.module.device.service.IDeviceService;
import com.github.pagehelper.PageInfo;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.page.PageData;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.framework.web.domain.AjaxResult;

/**
 * 设备管理 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-08
 */
@Controller
@RequestMapping("/module/device")
public class DeviceController extends BaseController {
	private String prefix = "resources/device";

	@Autowired
	private IDeviceService deviceService;

	@RequiresPermissions("module:device:view")
	@GetMapping()
	public String device() {
		return prefix + "/device";
	}

	/**
	 * 查询设备管理列表
	 */
	@RequiresPermissions("module:device:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Device device) {
		startPage();
		List<Device> list = deviceService.selectDeviceList(device);
		return getDataTable(list);
	}

	/**
	 * 查询设备管理列表
	 */
	@RequiresPermissions("module:device:list")
	@PostMapping("/page")
	@ResponseBody
	public PageData<Device> page(Device device) {
		String searchValue = device.getSearchValue();
		if (StringUtils.hasText(searchValue)) {
			device.setId(Integer.valueOf(searchValue));
		}
		startPage();
		List<Device> list = deviceService.selectDeviceList(device);
		return PageData.of(new PageInfo<Device>(list));
	}

	/**
	 * 新增设备管理
	 */
	@RequiresPermissions("module:device:add")
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 修改设备管理
	 */
	@RequiresPermissions("module:device:edit")
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model) {
		Device device = deviceService.selectDeviceById(id);
		model.addAttribute("device", device);
		return prefix + "/edit";
	}

	/**
	 * 保存设备管理
	 */
	@RequiresPermissions("module:device:save")
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(Device device) {
		if (deviceService.saveDevice(device) > 0) {
			return success();
		}
		return error();
	}

	/**
	 * 删除设备管理
	 */
	@RequiresPermissions("module:device:remove")
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		int rows = deviceService.deleteDeviceByIds(ids);
		if (rows > 0) {
			return success();
		}
		return error();
	}

}
