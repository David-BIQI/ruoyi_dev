package com.ruoyi.project.module.platformtype.controller;

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
import com.ruoyi.project.module.platformtype.domain.Prohibicountry;
import com.ruoyi.project.module.platformtype.service.IProhibicountryService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.framework.web.domain.AjaxResult;

/**
 * 平台类型禁止的国家_中间 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
@Controller
@RequestMapping("/module/prohibicountry")
public class ProhibicountryController extends BaseController
{
    private String prefix = "module/prohibicountry";
	
	@Autowired
	private IProhibicountryService prohibicountryService;
	
	@RequiresPermissions("module:prohibicountry:view")
	@GetMapping()
	public String prohibicountry()
	{
	    return prefix + "/prohibicountry";
	}
	
	/**
	 * 查询平台类型禁止的国家_中间列表
	 */
	@RequiresPermissions("module:prohibicountry:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Prohibicountry prohibicountry)
	{
		startPage();
        List<Prohibicountry> list = prohibicountryService.selectProhibicountryList(prohibicountry);
		return getDataTable(list);
	}
	
	/**
	 * 新增平台类型禁止的国家_中间
	 */
	@RequiresPermissions("module:prohibicountry:add")
	@Log(title = "平台类型禁止的国家_中间", action = BusinessType.INSERT)
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}

	/**
	 * 修改平台类型禁止的国家_中间
	 */
	@RequiresPermissions("module:prohibicountry:edit")
	@Log(title = "平台类型禁止的国家_中间", action = BusinessType.UPDATE)
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model)
	{
		Prohibicountry prohibicountry = prohibicountryService.selectProhibicountryById(id);
		model.addAttribute("prohibicountry", prohibicountry);
	    return prefix + "/edit";
	}
	
	/**
	 * 保存平台类型禁止的国家_中间
	 */
	@RequiresPermissions("module:prohibicountry:save")
	@Log(title = "平台类型禁止的国家_中间", action = BusinessType.SAVE)
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(Prohibicountry prohibicountry)
	{
		if (prohibicountryService.saveProhibicountry(prohibicountry) > 0)
		{
			return success();
		}
		return error();
	}
	
	/**
	 * 删除平台类型禁止的国家_中间
	 */
	@RequiresPermissions("module:prohibicountry:remove")
	@Log(title = "平台类型禁止的国家_中间", action = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{
		int rows = prohibicountryService.deleteProhibicountryByIds(ids);
		if (rows > 0)
        {
            return success();
        }
        return error();
	}
	
}
