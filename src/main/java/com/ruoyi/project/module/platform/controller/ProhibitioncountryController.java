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
import com.ruoyi.project.module.platform.domain.Prohibitioncountry;
import com.ruoyi.project.module.platform.service.IProhibitioncountryService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.framework.web.domain.AjaxResult;

/**
 * 平台禁止国家_中间 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
@Controller
@RequestMapping("/module/prohibitioncountry")
public class ProhibitioncountryController extends BaseController
{
    private String prefix = "module/prohibitioncountry";
	
	@Autowired
	private IProhibitioncountryService prohibitioncountryService;
	
	@RequiresPermissions("module:prohibitioncountry:view")
	@GetMapping()
	public String prohibitioncountry()
	{
	    return prefix + "/prohibitioncountry";
	}
	
	/**
	 * 查询平台禁止国家_中间列表
	 */
	@RequiresPermissions("module:prohibitioncountry:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Prohibitioncountry prohibitioncountry)
	{
		startPage();
        List<Prohibitioncountry> list = prohibitioncountryService.selectProhibitioncountryList(prohibitioncountry);
		return getDataTable(list);
	}
	
	/**
	 * 新增平台禁止国家_中间
	 */
	@RequiresPermissions("module:prohibitioncountry:add")
	@Log(title = "平台禁止国家_中间", action = BusinessType.INSERT)
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}

	/**
	 * 修改平台禁止国家_中间
	 */
	@RequiresPermissions("module:prohibitioncountry:edit")
	@Log(title = "平台禁止国家_中间", action = BusinessType.UPDATE)
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model)
	{
		Prohibitioncountry prohibitioncountry = prohibitioncountryService.selectProhibitioncountryById(id);
		model.addAttribute("prohibitioncountry", prohibitioncountry);
	    return prefix + "/edit";
	}
	
	/**
	 * 保存平台禁止国家_中间
	 */
	@RequiresPermissions("module:prohibitioncountry:save")
	@Log(title = "平台禁止国家_中间", action = BusinessType.SAVE)
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(Prohibitioncountry prohibitioncountry)
	{
		if (prohibitioncountryService.saveProhibitioncountry(prohibitioncountry) > 0)
		{
			return success();
		}
		return error();
	}
	
	/**
	 * 删除平台禁止国家_中间
	 */
	@RequiresPermissions("module:prohibitioncountry:remove")
	@Log(title = "平台禁止国家_中间", action = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{
		int rows = prohibitioncountryService.deleteProhibitioncountryByIds(ids);
		if (rows > 0)
        {
            return success();
        }
        return error();
	}
	
}
