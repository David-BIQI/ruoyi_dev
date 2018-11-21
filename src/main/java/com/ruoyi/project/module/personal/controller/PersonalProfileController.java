package com.ruoyi.project.module.personal.controller;

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
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.module.personal.domain.PersonalProfile;
import com.ruoyi.project.module.personal.service.IPersonalProfileService;

/**
 * 个人 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-23
 */
@Controller
@RequestMapping("/module/personal/profile")
public class PersonalProfileController extends BaseController {
	private String prefix = "personal/profile";

	@Autowired
	private IPersonalProfileService personalProfileService;

	@RequiresPermissions("module:personalProfile:view")
	@GetMapping()
	public String profile() {
		return prefix + "/profile";
	}

	/**
	 * 查询个人列表
	 */
	@RequiresPermissions("module:personalProfile:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(PersonalProfile profile) {
		startPage();
		List<PersonalProfile> list = personalProfileService.selectProfileList(profile);
		return getDataTable(list);
	}

	/**
	 * 新增个人
	 */
	@RequiresPermissions("module:personalProfile:add")
	@Log(title = "个人", action = BusinessType.INSERT)
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 修改个人
	 */
	@RequiresPermissions("module:personalProfile:edit")
	@Log(title = "个人", action = BusinessType.UPDATE)
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model) {
		PersonalProfile profile = personalProfileService.selectProfileById(id);
		model.addAttribute("personalProfile", profile);
		return prefix + "/edit";
	}

	/**
	 * 保存个人
	 */
	@RequiresPermissions("module:personalProfile:save")
	@Log(title = "个人", action = BusinessType.SAVE)
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(PersonalProfile profile) {
		if (personalProfileService.saveProfile(profile) > 0) {
			return success();
		}
		return error();
	}

	/**
	 * 删除个人
	 */
	@RequiresPermissions("module:personalProfile:remove")
	@Log(title = "个人", action = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		int rows = personalProfileService.deleteProfileByIds(ids);
		if (rows > 0) {
			return success();
		}
		return error();
	}

}
