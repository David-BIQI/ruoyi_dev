package com.ruoyi.project.module.personal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruoyi.common.support.Convert;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.personal.domain.PersonalProfile;
import com.ruoyi.project.module.personal.mapper.PersonalProfileMapper;

/**
 * 个人 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-23
 */
@Service
public class PersonalProfileServiceImpl implements IPersonalProfileService {
	@Autowired
	private PersonalProfileMapper personalProfileMapper;

	/**
	 * 查询个人信息
	 * 
	 * @param id 个人ID
	 * @return 个人信息
	 */
	@Override
	public PersonalProfile selectProfileById(Integer id) {
		return personalProfileMapper.selectProfileById(id);
	}

	/**
	 * 查询个人列表
	 * 
	 * @param profile 个人信息
	 * @return 个人集合
	 */
	@Override
	public List<PersonalProfile> selectProfileList(PersonalProfile profile) {
		return personalProfileMapper.selectProfileList(profile);
	}

	/**
	 * 新增个人
	 * 
	 * @param profile 个人信息
	 * @return 结果
	 */
	@Override
	public int insertProfile(PersonalProfile profile) {
		return personalProfileMapper.insertProfile(profile);
	}

	/**
	 * 修改个人
	 * 
	 * @param profile 个人信息
	 * @return 结果
	 */
	@Override
	public int updateProfile(PersonalProfile profile) {
		return personalProfileMapper.updateProfile(profile);
	}

	/**
	 * 保存个人
	 * 
	 * @param profile 个人信息
	 * @return 结果
	 */
	@Override
	public int saveProfile(PersonalProfile profile) {
		Integer id = profile.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id)) {
			rows = personalProfileMapper.updateProfile(profile);
		} else {
			rows = personalProfileMapper.insertProfile(profile);
		}
		return rows;
	}

	/**
	 * 删除个人对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteProfileByIds(String ids) {
		return personalProfileMapper.deleteProfileByIds(Convert.toStrArray(ids));
	}

}
