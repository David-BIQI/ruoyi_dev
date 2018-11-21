package com.ruoyi.project.module.mail.controller;

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
import com.ruoyi.project.module.mail.domain.Mail;
import com.ruoyi.project.module.mail.service.IMailService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.page.TableDataInfo;
import com.ruoyi.framework.web.domain.AjaxResult;

/**
 * 邮箱管理	 信息操作处理
 * 
 * @author ruoyi
 * @date 2018-07-08
 */
@Controller
@RequestMapping("/module/mail")
public class MailController extends BaseController
{
    private String prefix = "resources/mail";
	
	@Autowired
	private IMailService mailService;
	
	@RequiresPermissions("module:mail:view")
	@GetMapping()
	public String mail()
	{
	    return prefix + "/mail";
	}
	
	/**
	 * 查询邮箱管理	列表
	 */
	@RequiresPermissions("module:mail:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Mail mail)
	{
		startPage();
        List<Mail> list = mailService.selectMailList(mail);
		return getDataTable(list);
	}
	
	/**
	 * 新增邮箱管理	
	 */
	@RequiresPermissions("module:mail:add")
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}

	/**
	 * 修改邮箱管理	
	 */
	@RequiresPermissions("module:mail:edit")
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, Model model)
	{
		Mail mail = mailService.selectMailById(id);
		model.addAttribute("mail", mail);
	    return prefix + "/edit";
	}
	
	/**
	 * 保存邮箱管理	
	 */
	@RequiresPermissions("module:mail:save")
	@PostMapping("/save")
	@ResponseBody
	public AjaxResult save(Mail mail)
	{
		if (mailService.saveMail(mail) > 0)
		{
			return success();
		}
		return error();
	}
	
	/**
	 * 删除邮箱管理	
	 */
	@RequiresPermissions("module:mail:remove")
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{
		int rows = mailService.deleteMailByIds(ids);
		if (rows > 0)
        {
            return success();
        }
        return error();
	}
	
}
