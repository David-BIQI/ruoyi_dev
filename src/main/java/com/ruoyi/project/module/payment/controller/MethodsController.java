package com.ruoyi.project.module.payment.controller;

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
import com.ruoyi.project.module.payment.domain.Methods;
import com.ruoyi.project.module.payment.service.IMethodsService;

/**
 * 支付方式 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
@Controller
@RequestMapping("/module/methods")
public class MethodsController extends BaseController {

	private static final Logger log = LoggerFactory.getLogger(MethodsController.class);

	private String prefix = "resources/payment/method";

	@Autowired
	private IMethodsService methodsService;

	@RequiresPermissions("module:methods:view")
	@GetMapping()
	public String methods() {
		return prefix + "/methods";
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
				String basePath = FileUploadUtils.getDefaultBaseDir() + "payment" + File.separator;
				String logo = FileUploadUtils.upload(basePath, file);
				logo = "paymentLogo/" + logo;
				return success(logo);
			}
			return error();
		} catch (Exception e) {
			log.error("updateLogo failed!", e);
			return error(e.getMessage());
		}
	}

	/**
	 * 查询支付方式列表
	 */
	@RequiresPermissions("module:methods:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Methods methods) {
		startPage();
		List<Methods> list = methodsService.selectMethodsList(methods);
		return getDataTable(list);
	}

	/**
	 * 新增支付方式
	 */
	@RequiresPermissions("module:methods:add")
	@Log(title = "支付方式", action = BusinessType.INSERT)
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 修改支付方式
	 */
	@RequiresPermissions("module:methods:edit")
	@Log(title = "支付方式", action = BusinessType.UPDATE)
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model) {
		Methods methods = methodsService.selectMethodsById(id);
		model.addAttribute("methods", methods);
		return prefix + "/edit";
	}

	/**
	 * 保存支付方式
	 */
	@RequiresPermissions("module:methods:save")
	@Log(title = "支付方式", action = BusinessType.SAVE)
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(Methods methods) {
		if (methodsService.saveMethods(methods) > 0) {
			return success();
		}
		return error();
	}

	/**
	 * 删除支付方式
	 */
	@RequiresPermissions("module:methods:remove")
	@Log(title = "支付方式", action = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		int rows = methodsService.deleteMethodsByIds(ids);
		if (rows > 0) {
			return success();
		}
		return error();
	}

}
