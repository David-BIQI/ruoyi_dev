package com.ruoyi.project.module.mail.service;

import com.ruoyi.project.module.mail.domain.Mail;
import java.util.List;

/**
 * 邮箱管理	 服务层
 * 
 * @author ruoyi
 * @date 2018-07-08
 */
public interface IMailService 
{
	/**
     * 查询邮箱管理	信息
     * 
     * @param id 邮箱管理	ID
     * @return 邮箱管理	信息
     */
	public Mail selectMailById(Integer id);
	
	/**
     * 查询邮箱管理	列表
     * 
     * @param mail 邮箱管理	信息
     * @return 邮箱管理	集合
     */
	public List<Mail> selectMailList(Mail mail);
	
	/**
     * 新增邮箱管理	
     * 
     * @param mail 邮箱管理	信息
     * @return 结果
     */
	public int insertMail(Mail mail);
	
	/**
     * 修改邮箱管理	
     * 
     * @param mail 邮箱管理	信息
     * @return 结果
     */
	public int updateMail(Mail mail);
	
	/**
     * 保存邮箱管理	
     * 
     * @param mail 邮箱管理	信息
     * @return 结果
     */
	public int saveMail(Mail mail);
	
	
	/**
     * 删除邮箱管理	信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteMailByIds(String ids);
	
}
