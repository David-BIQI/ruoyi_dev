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
import com.ruoyi.project.module.platform.domain.Securityquestion;
import com.ruoyi.project.module.platform.service.ISecurityquestionService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.framework.web.domain.AjaxResult;

/**
 * 平台安全问题 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-20
 */
@Controller
@RequestMapping("/module/securityquestion")
public class SecurityquestionController extends BaseController
{
    private String prefix = "module/securityquestion";
	
	@Autowired
	private ISecurityquestionService securityquestionService;
	
	@RequiresPermissions("module:securityquestion:view")
	@GetMapping()
	public String securityquestion()
	{
	    return prefix + "/securityquestion";
	}
	
	/**
	 * 查询平台安全问题列表
	 */
	@RequiresPermissions("module:securityquestion:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Securityquestion securityquestion)
	{
		startPage();
        List<Securityquestion> list = securityquestionService.selectSecurityquestionList(securityquestion);
		return getDataTable(list);
	}
	
	/**
	 * 新增平台安全问题
	 */
	@RequiresPermissions("module:securityquestion:add")
	@Log(title = "平台安全问题", action = BusinessType.INSERT)
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}

	/**
	 * 修改平台安全问题
	 */
	@RequiresPermissions("module:securityquestion:edit")
	@Log(title = "平台安全问题", action = BusinessType.UPDATE)
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model)
	{
		Securityquestion securityquestion = securityquestionService.selectSecurityquestionById(id);
		model.addAttribute("securityquestion", securityquestion);
	    return prefix + "/edit";
	}
	
	/**
	 * 保存平台安全问题
	 */
	@RequiresPermissions("module:securityquestion:save")
	@Log(title = "平台安全问题", action = BusinessType.SAVE)
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(Securityquestion securityquestion)
	{
		if (securityquestionService.saveSecurityquestion(securityquestion) > 0)
		{
			return success();
		}
		return error();
	}
	
	/**
	 * 删除平台安全问题
	 */
	@RequiresPermissions("module:securityquestion:remove")
	@Log(title = "平台安全问题", action = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{
		int rows = securityquestionService.deleteSecurityquestionByIds(ids);
		if (rows > 0)
        {
            return success();
        }
        return error();
	}
	
}
