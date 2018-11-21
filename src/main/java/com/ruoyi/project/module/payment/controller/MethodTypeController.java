package com.ruoyi.project.module.payment.controller;

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
import com.ruoyi.project.module.payment.domain.MethodType;
import com.ruoyi.project.module.payment.service.IMethodTypeService;

/**
 * 支付方式类型 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-18
 */
@Controller
@RequestMapping("/module/method/type")
public class MethodTypeController extends BaseController {
	private String prefix = "resources/payment/methodtype";

	@Autowired
	private IMethodTypeService methodTypeService;

	@RequiresPermissions("module:methodtype:view")
	@GetMapping()
	public String method() {
		return prefix + "/method";
	}

	/**
	 * 查询支付方式类型列表
	 */
	@RequiresPermissions("module:methodtype:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(MethodType method) {
		startPage();
		List<MethodType> list = methodTypeService.selectMethodList(method);
		return getDataTable(list);
	}

	/**
	 * 查询支付方式类型列表
	 */
	@RequiresPermissions("module:methodtype:list")
	@PostMapping("/page")
	@ResponseBody
	public PageData<MethodType> page(MethodType method) {
		String searchValue = method.getSearchValue();
		if (StringUtils.hasText(searchValue)) {
			method.setId(Integer.valueOf(searchValue));
		}
		startPage();
		List<MethodType> list = methodTypeService.selectMethodList(method);
		return PageData.of(new PageInfo<MethodType>(list));
	}

	/**
	 * 新增支付方式类型
	 */
	@RequiresPermissions("module:methodtype:add")
	@Log(title = "支付方式类型", action = BusinessType.INSERT)
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 修改支付方式类型
	 */
	@RequiresPermissions("module:methodtype:edit")
	@Log(title = "支付方式类型", action = BusinessType.UPDATE)
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model) {
		MethodType method = methodTypeService.selectMethodById(id);
		model.addAttribute("method", method);
		return prefix + "/edit";
	}

	/**
	 * 保存支付方式类型
	 */
	@RequiresPermissions("module:methodtype:save")
	@Log(title = "支付方式类型", action = BusinessType.SAVE)
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(MethodType method) {
		if (methodTypeService.saveMethod(method) > 0) {
			return success();
		}
		return error();
	}

	/**
	 * 删除支付方式类型
	 */
	@RequiresPermissions("module:methodtype:remove")
	@Log(title = "支付方式类型", action = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		int rows = methodTypeService.deleteMethodByIds(ids);
		if (rows > 0) {
			return success();
		}
		return error();
	}

}
