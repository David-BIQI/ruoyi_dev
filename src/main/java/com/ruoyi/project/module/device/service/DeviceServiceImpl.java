package com.ruoyi.project.module.device.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.project.module.device.mapper.DeviceMapper;
import com.ruoyi.project.module.device.domain.Device;
import com.ruoyi.project.module.device.service.IDeviceService;
import com.ruoyi.common.support.Convert;

/**
 * 设备管理 服务层实现
 * 
 * @author ruoyi
 * @date 2018-07-08
 */
@Service
public class DeviceServiceImpl implements IDeviceService {
	@Autowired
	private DeviceMapper deviceMapper;

	/**
	 * 查询设备管理信息
	 * 
	 * @param id 设备管理ID
	 * @return 设备管理信息
	 */
	@Override
	public Device selectDeviceById(Integer id) {
		return deviceMapper.selectDeviceById(id);
	}

	/**
	 * 查询设备管理列表
	 * 
	 * @param device 设备管理信息
	 * @return 设备管理集合
	 */
	@Override
	public List<Device> selectDeviceList(Device device) {
		if (device != null && StringUtils.isNotEmpty(device.getUsageStatus())) {
			if ("0".equals(device.getUsageStatus())) {
				device.setUsageStatus(null);
			}
		}
		return deviceMapper.selectDeviceList(device);
	}

	/**
	 * 新增设备管理
	 * 
	 * @param device 设备管理信息
	 * @return 结果
	 */
	@Override
	public int insertDevice(Device device) {
		return deviceMapper.insertDevice(device);
	}

	/**
	 * 修改设备管理
	 * 
	 * @param device 设备管理信息
	 * @return 结果
	 */
	@Override
	public int updateDevice(Device device) {
		return deviceMapper.updateDevice(device);
	}

	/**
	 * 保存设备管理
	 * 
	 * @param device 设备管理信息
	 * @return 结果
	 */
	@Override
	public int saveDevice(Device device) {
		Integer id = device.getId();
		int rows = 0;
		if (StringUtils.isNotNull(id)) {
			rows = deviceMapper.updateDevice(device);
		} else {
			device.setUsageStatus("1");
			rows = deviceMapper.insertDevice(device);
		}
		return rows;
	}

	/**
	 * 删除设备管理对象
	 * 
	 * @param ids 需要删除的数据ID
	 * @return 结果
	 */
	@Override
	public int deleteDeviceByIds(String ids) {
		return deviceMapper.deleteDeviceByIds(Convert.toIntArray(ids));
	}

}
