package com.ruoyi.project.module.address.controller;

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
import com.ruoyi.project.module.address.domain.Fulladdress;
import com.ruoyi.project.module.address.service.IFulladdressService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.framework.web.domain.AjaxResult;

/**
 * 地址 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-07
 */
@Controller
@RequestMapping("/module/fulladdress")
public class FulladdressController extends BaseController
{
    private String prefix = "resources/address/fulladdress";
	
	@Autowired
	private IFulladdressService fulladdressService;
	
	@RequiresPermissions("module:fulladdress:view")
	@GetMapping()
	public String fulladdress()
	{
	    return prefix + "/fulladdress";
	}
	
	/**
	 * 查询地址列表
	 */
	@RequiresPermissions("module:fulladdress:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Fulladdress fulladdress)
	{
		startPage();
        List<Fulladdress> list = fulladdressService.selectFulladdressList(fulladdress);
		return getDataTable(list);
	}
	
	/**
	 * 新增地址
	 */
	@RequiresPermissions("module:fulladdress:add")
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}

	/**
	 * 修改地址
	 */
	@RequiresPermissions("module:fulladdress:edit")
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model)
	{
		Fulladdress fulladdress = fulladdressService.selectFulladdressById(id);
		model.addAttribute("fulladdress", fulladdress);
	    return prefix + "/edit";
	}
	
	/**
	 * 保存地址
	 */
	@RequiresPermissions("module:fulladdress:save")
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(Fulladdress fulladdress)
	{
		if (fulladdressService.saveFulladdress(fulladdress) > 0)
		{
			return success();
		}
		return error();
	}
	
	/**
	 * 删除地址
	 */
	@RequiresPermissions("module:fulladdress:remove")
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{
		int rows = fulladdressService.deleteFulladdressByIds(ids);
		if (rows > 0)
        {
            return success();
        }
        return error();
	}
	
}
