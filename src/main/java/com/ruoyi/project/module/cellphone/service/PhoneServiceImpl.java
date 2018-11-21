package com.ruoyi.project.module.cellphone.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.cellphone.domain.Phone;
import com.ruoyi.project.module.cellphone.mapper.CellPhoneMapper;
import com.ruoyi.project.module.cellphone.service.IPhoneService;
import com.ruoyi.common.support.Convert;

/**
 * 联系电话 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-10
 */
@Service
public class PhoneServiceImpl implements IPhoneService {
	@Autowired
	private CellPhoneMapper phoneMapper;

	/**
	 * 查询联系电话信息
	 * 
	 * @param id 联系电话ID
	 * @return 联系电话信息
	 */
	@Override
	public Phone selectPhoneById(Integer id) {
		return phoneMapper.selectPhoneById(id);
	}

	/**
	 * 查询联系电话列表
	 * 
	 * @param phone 联系电话信息
	 * @return 联系电话集合
	 */
	@Override
	public List<Phone> selectPhoneList(Phone phone) {
		return phoneMapper.selectPhoneList(phone);
	}

	@Override
	public List<Phone> selectPhonePage(Phone phone) {
		return phoneMapper.selectPhonePage(phone);
	}

	/**
	 * 新增联系电话
	 * 
	 * @param phone 联系电话信息
	 * @return 结果
	 */
	@Override
	public int insertPhone(Phone phone) {
		return phoneMapper.insertPhone(phone);
	}

	/**
	 * 修改联系电话
	 * 
	 * @param phone 联系电话信息
	 * @return 结果
	 */
	@Override
	public int updatePhone(Phone phone) {
		return phoneMapper.updatePhone(phone);
	}

	/**
	 * 保存联系电话
	 * 
	 * @param phone 联系电话信息
	 * @return 结果
	 */
	@Override
	public int savePhone(Phone phone) {
		Integer id = phone.getId();
		int rows = 0;

		if (phone.getDeviceId() != null && phone.getDeviceId() > 0) {
			phone.setUsageStatus(2);
		}

		if (StringUtils.isNotNull(id)) {
			if (phone.getDeviceId() == null || phone.getDeviceId() < 1) {
				phone.setDeviceId(0);
				phone.setUsageStatus(1);
			}
			rows = phoneMapper.updatePhone(phone);
		} else {
			phone.setUsageStatus(1);
			rows = phoneMapper.insertPhone(phone);
		}
		return rows;
	}

	/**
	 * 删除联系电话对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deletePhoneByIds(String ids) {
		return phoneMapper.deletePhoneByIds(Convert.toStrArray(ids));
	}

}
