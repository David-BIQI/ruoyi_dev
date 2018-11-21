package com.ruoyi.project.module.ip.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.constant.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.module.ip.domain.Ip;
import com.ruoyi.project.module.ip.service.IIpService;

/**
 * IP地址管理 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-16
 */
@Controller
@RequestMapping("/module/ipMgt/ip")
public class IpController extends BaseController {
	private String prefix = "resources/ipMgt/ip";

	@Autowired
	private IIpService ipService;

	@RequiresPermissions("module:ip:view")
	@GetMapping()
	public String ip() {
		return prefix + "/ip";
	}

	/**
	 * 查询IP地址管理列表
	 */
	@RequiresPermissions("module:ip:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Ip ip) {
		startPage();
		List<Ip> list = ipService.selectIpList(ip);
		return getDataTable(list);
	}

	/**
	 * 新增IP地址管理
	 */
	@RequiresPermissions("module:ip:add")
	@Log(title = "IP地址管理", action = BusinessType.INSERT)
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 修改IP地址管理
	 */
	@RequiresPermissions("module:ip:edit")
	@Log(title = "IP地址管理", action = BusinessType.UPDATE)
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model) {
		Ip ip = ipService.selectIpById(id);
		model.addAttribute("ip", ip);
		return prefix + "/edit";
	}

	/**
	 * 保存IP地址管理
	 */
	@RequiresPermissions("module:ip:save")
	@Log(title = "IP地址管理", action = BusinessType.SAVE)
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(@ModelAttribute Ip ip) {
		if (ipService.saveIp(ip) > 0) {
			return success();
		}
		return error();
	}

	/**
	 * 删除IP地址管理
	 */
	@RequiresPermissions("module:ip:remove")
	@Log(title = "IP地址管理", action = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		int rows = ipService.deleteIpByIds(ids);
		if (rows > 0) {
			return success();
		}
		return error();
	}

}
