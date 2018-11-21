package com.ruoyi.framework.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ruoyi.project.module.address.domain.City;
import com.ruoyi.project.module.address.domain.Country;
import com.ruoyi.project.module.address.service.ICityService;
import com.ruoyi.project.module.address.service.ICountryService;
import com.ruoyi.project.module.device.domain.Device;
import com.ruoyi.project.module.device.service.IDeviceService;

@Component
public class ResourcesWebService {

	@Autowired
	private ICountryService iCountryService;
	@Autowired
	private ICityService iCityService;
	@Autowired
	private IDeviceService iDeviceService;

	public List<Country> selectCountry() {

		List<Country> countryList = this.iCountryService.selectCountryList(new Country());

		return countryList;
	}

	public List<City> selectCityByCountry(Integer country) {
		List<City> cityList = this.iCityService.queryCityListByCountry(country);
		return cityList;
	}

	public List<Device> selectDevice() {
		Device device = new Device();
		device.setUsageStatus("1");
		List<Device> deviceList = this.iDeviceService.selectDeviceList(device);
		return deviceList;
	}
}
