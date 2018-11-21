package com.ruoyi.project.module.platform.controller;

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
@RequestMapping("/module/platformMgt")
public class PlatformMgtController extends BaseController {

	private String prefix = "resources/platform";

	@Autowired
	private IMenuService menuService;

	@RequiresPermissions("module:platformMgt:view")
	@GetMapping()
	public String index(Model model) {
		List<Menu> menuList = this.menuService.selectMenuByParentId(2071L);
		model.addAttribute("menuTabs", menuList);
		return prefix + "/index";
	}
}
