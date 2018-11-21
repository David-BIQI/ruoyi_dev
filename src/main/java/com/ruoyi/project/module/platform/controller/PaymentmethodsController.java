package com.ruoyi.project.module.platform.controller;

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
import com.ruoyi.project.module.platform.domain.Paymentmethods;
import com.ruoyi.project.module.platform.service.IPaymentmethodsService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.framework.web.domain.AjaxResult;

/**
 * 平台支付方式_中间 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
@Controller
@RequestMapping("/module/paymentmethods")
public class PaymentmethodsController extends BaseController
{
    private String prefix = "module/paymentmethods";
	
	@Autowired
	private IPaymentmethodsService paymentmethodsService;
	
	@RequiresPermissions("module:paymentmethods:view")
	@GetMapping()
	public String paymentmethods()
	{
	    return prefix + "/paymentmethods";
	}
	
	/**
	 * 查询平台支付方式_中间列表
	 */
	@RequiresPermissions("module:paymentmethods:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Paymentmethods paymentmethods)
	{
		startPage();
        List<Paymentmethods> list = paymentmethodsService.selectPaymentmethodsList(paymentmethods);
		return getDataTable(list);
	}
	
	/**
	 * 新增平台支付方式_中间
	 */
	@RequiresPermissions("module:paymentmethods:add")
	@Log(title = "平台支付方式_中间", action = BusinessType.INSERT)
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}

	/**
	 * 修改平台支付方式_中间
	 */
	@RequiresPermissions("module:paymentmethods:edit")
	@Log(title = "平台支付方式_中间", action = BusinessType.UPDATE)
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model)
	{
		Paymentmethods paymentmethods = paymentmethodsService.selectPaymentmethodsById(id);
		model.addAttribute("paymentmethods", paymentmethods);
	    return prefix + "/edit";
	}
	
	/**
	 * 保存平台支付方式_中间
	 */
	@RequiresPermissions("module:paymentmethods:save")
	@Log(title = "平台支付方式_中间", action = BusinessType.SAVE)
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(Paymentmethods paymentmethods)
	{
		if (paymentmethodsService.savePaymentmethods(paymentmethods) > 0)
		{
			return success();
		}
		return error();
	}
	
	/**
	 * 删除平台支付方式_中间
	 */
	@RequiresPermissions("module:paymentmethods:remove")
	@Log(title = "平台支付方式_中间", action = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{
		int rows = paymentmethodsService.deletePaymentmethodsByIds(ids);
		if (rows > 0)
        {
            return success();
        }
        return error();
	}
	
}
