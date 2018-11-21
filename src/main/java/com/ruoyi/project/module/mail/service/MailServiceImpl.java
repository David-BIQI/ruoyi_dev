package com.ruoyi.project.module.mail.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.mail.mapper.MailMapper;
import com.ruoyi.project.module.mail.domain.Mail;
import com.ruoyi.project.module.mail.service.IMailService;
import com.ruoyi.common.support.Convert;

/**
 * 邮箱管理 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-08
 */
@Service
public class MailServiceImpl implements IMailService {
	@Autowired
	private MailMapper mailMapper;

	/**
	 * 查询邮箱管理 信息
	 * 
	 * @param id 邮箱管理 ID
	 * @return 邮箱管理 信息
	 */
	@Override
	public Mail selectMailById(Integer id) {
		return mailMapper.selectMailById(id);
	}

	/**
	 * 查询邮箱管理 列表
	 * 
	 * @param mail 邮箱管理 信息
	 * @return 邮箱管理 集合
	 */
	@Override
	public List<Mail> selectMailList(Mail mail) {
		if (mail.getUsageStatus() == null || mail.getUsageStatus() <= 0) {
			mail.setUsageStatus(null);
		}
		return mailMapper.selectMailList(mail);
	}

	/**
	 * 新增邮箱管理
	 * 
	 * @param mail 邮箱管理 信息
	 * @return 结果
	 */
	@Override
	public int insertMail(Mail mail) {
		return mailMapper.insertMail(mail);
	}

	/**
	 * 修改邮箱管理
	 * 
	 * @param mail 邮箱管理 信息
	 * @return 结果
	 */
	@Override
	public int updateMail(Mail mail) {
		return mailMapper.updateMail(mail);
	}

	/**
	 * 保存邮箱管理
	 * 
	 * @param mail 邮箱管理 信息
	 * @return 结果
	 */
	@Override
	public int saveMail(Mail mail) {
		Integer id = mail.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id)) {
			rows = mailMapper.updateMail(mail);
		} else {
			rows = mailMapper.insertMail(mail);
		}
		return rows;
	}

	/**
	 * 删除邮箱管理 对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteMailByIds(String ids) {
		return mailMapper.deleteMailByIds(Convert.toIntArray(ids));
	}

}
