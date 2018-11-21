package com.ruoyi.project.module.ip.controller;

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
@RequestMapping("/module/ipMgt")
public class IpMgtController extends BaseController {

	private String prefix = "resources/ipMgt";

	@Autowired
	private IMenuService menuService;

	@RequiresPermissions("module:ipmgt:view")
	@GetMapping()
	public String country(Model model) {
		List<Menu> menuList = this.menuService.selectMenuByParentId(2050L);
		model.addAttribute("menuTabs", menuList);
		return prefix + "/index";
	}
}
