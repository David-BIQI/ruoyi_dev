package com.ruoyi.project.module.platform.controller;

import java.io.File;
import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ruoyi.common.utils.FileUploadUtils;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.constant.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.project.module.payment.controller.MethodsController;
import com.ruoyi.project.module.platform.domain.Platform;
import com.ruoyi.project.module.platform.service.IPlatformService;

/**
 * 平台 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
@Controller
@RequestMapping("/module/platform")
public class PlatformController extends BaseController {
	
	private static final Logger log = LoggerFactory.getLogger(MethodsController.class);
	
	private String prefix = "resources/platform/platform";

	@Autowired
	private IPlatformService platformService;

	@RequiresPermissions("module:platform:view")
	@GetMapping()
	public String platform() {
		return prefix + "/platform";
	}

	/**
	 * 查询平台列表
	 */
	@RequiresPermissions("module:platform:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Platform platform) {
		startPage();
		List<Platform> list = platformService.selectPlatformList(platform);
		return getDataTable(list);
	}

	/**
	 * 新增平台
	 */
	@RequiresPermissions("module:platform:add")
	@Log(title = "平台", action = BusinessType.INSERT)
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 上传logo图标
	 */
	@Log(title = "上传logo图标", action = BusinessType.SAVE)
	@PostMapping("/updateLogo")
	@ResponseBody
	public AjaxResult updateLogo(MultipartFile file) {
		try {
			if (!file.isEmpty()) {
				String basePath = FileUploadUtils.getDefaultBaseDir() + "platform" + File.separator;
				String logo = FileUploadUtils.upload(basePath, file);
				logo = "platform/" + logo;
				return success(logo);
			}
			return error();
		} catch (Exception e) {
			log.error("updateLogo failed!", e);
			return error(e.getMessage());
		}
	}

	/**
	 * 修改平台
	 */
	@RequiresPermissions("module:platform:edit")
	@Log(title = "平台", action = BusinessType.UPDATE)
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model) {
		Platform platform = platformService.selectPlatformById(id);
		model.addAttribute("platform", platform);
		return prefix + "/edit";
	}

	/**
	 * 保存平台
	 */
	@RequiresPermissions("module:platform:save")
	@Log(title = "平台", action = BusinessType.SAVE)
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(Platform platform) {
		if (platformService.savePlatform(platform) > 0) {
			return success();
		}
		return error();
	}

	/**
	 * 删除平台
	 */
	@RequiresPermissions("module:platform:remove")
	@Log(title = "平台", action = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		int rows = platformService.deletePlatformByIds(ids);
		if (rows > 0) {
			return success();
		}
		return error();
	}

}
