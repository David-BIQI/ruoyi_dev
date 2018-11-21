package com.ruoyi.project.module.device.mapper;

import com.ruoyi.project.module.device.domain.Device;
import java.util.List;	

/**
 * 设备管理 数据层
 * 
 * @author ruoyi
 * @date 2018-07-08
 */
public interface DeviceMapper 
{
	/**
     * 查询设备管理信息
     * 
     * @param id 设备管理ID
     * @return 设备管理信息
     */
	public Device selectDeviceById(Integer id);
	
	/**
     * 查询设备管理列表
     * 
     * @param device 设备管理信息
     * @return 设备管理集合
     */
	public List<Device> selectDeviceList(Device device);
	
	/**
     * 新增设备管理
     * 
     * @param device 设备管理信息
     * @return 结果
     */
	public int insertDevice(Device device);
	
	/**
     * 修改设备管理
     * 
     * @param device 设备管理信息
     * @return 结果
     */
	public int updateDevice(Device device);
	
	/**
     * 批量删除设备管理
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteDeviceByIds(Integer[] ids);
	
}