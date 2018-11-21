package com.ruoyi.project.module.cellphone.controller;

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
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.constant.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.module.cellphone.domain.Phone;
import com.ruoyi.project.module.cellphone.service.IPhoneService;
import com.ruoyi.framework.web.domain.AjaxResult;

/**
 * 联系电话 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-10
 */
@Controller
@RequestMapping("/module/phone")
public class CellPhoneController extends BaseController {
	private String prefix = "resources/cellphone";

	@Autowired
	private IPhoneService phoneService;

	@RequiresPermissions("module:phone:view")
	@GetMapping()
	public String phone() {
		return prefix + "/phone";
	}

	/**
	 * 查询联系电话列表
	 */
	@RequiresPermissions("module:phone:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Phone phone) {
		startPage();
		List<Phone> list = phoneService.selectPhoneList(phone);
		return getDataTable(list);
	}

	/**
	 * 查询联系电话列表
	 */
	@RequiresPermissions("module:phone:list")
	@PostMapping("/page")
	@ResponseBody
	public TableDataInfo page(Phone phone) {
		startPage();
		List<Phone> list = phoneService.selectPhonePage(phone);
		return getDataTable(list);
	}

	/**
	 * 新增联系电话
	 */
	@RequiresPermissions("module:phone:add")
	@Log(title = "联系电话", action = BusinessType.INSERT)
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 修改联系电话
	 */
	@RequiresPermissions("module:phone:edit")
	@Log(title = "联系电话", action = BusinessType.UPDATE)
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model) {
		Phone phone = phoneService.selectPhoneById(id);
		model.addAttribute("phone", phone);
		return prefix + "/edit";
	}

	/**
	 * 保存联系电话
	 */
	@RequiresPermissions("module:phone:save")
	@Log(title = "联系电话", action = BusinessType.SAVE)
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(Phone phone) {
		if (phoneService.savePhone(phone) > 0) {
			return success();
		}
		return error();
	}

	/**
	 * 删除联系电话
	 */
	@RequiresPermissions("module:phone:remove")
	@Log(title = "联系电话", action = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		int rows = phoneService.deletePhoneByIds(ids);
		if (rows > 0) {
			return success();
		}
		return error();
	}

}
