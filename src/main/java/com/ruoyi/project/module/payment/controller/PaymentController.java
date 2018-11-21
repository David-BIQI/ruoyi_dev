package com.ruoyi.project.module.payment.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.project.system.menu.domain.Menu;
import com.ruoyi.project.system.menu.service.IMenuService;

@Controller
@RequestMapping("/module/payment")
public class PaymentController extends BaseController {

	private String prefix = "resources/payment";

	@Autowired
	private IMenuService menuService;

	@RequiresPermissions("module:payment:view")
	@GetMapping()
	public String index(Model model) {
		List<Menu> menuList = this.menuService.selectMenuByParentId(2070L);
		model.addAttribute("menuTabs", menuList);
		return prefix + "/index";
	}
}
