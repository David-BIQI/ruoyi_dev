package com.ruoyi.framework.web.page;

import java.io.Serializable;
import java.util.List;

import com.github.pagehelper.PageInfo;

public class PageData<T> implements Serializable {

	private static final long serialVersionUID = -3601996716458705920L;

	/** 当前记录起始索引 */
	private Integer pageNumber;
	/** 每页显示记录数 */
	private Integer pageSize;

	/** 总页数 */
	private Integer totalPage;

	// 总记录数
	protected long totalRow;
	// 结果集
	protected List<T> list;

	public static <T> PageData<T> of(PageInfo<T> pageInfo) {
		PageData<T> pageData = new PageData<>();
		pageData.setList(pageInfo.getList());
		pageData.setPageNumber(pageInfo.getPageNum());
		pageData.setPageSize(pageInfo.getPageSize());
		pageData.setTotalPage(pageInfo.getPages());
		pageData.setTotalRow(pageInfo.getTotal());

		return pageData;

	}

	public Integer getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(Integer pageNumber) {
		this.pageNumber = pageNumber;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public long getTotalRow() {
		return totalRow;
	}

	public void setTotalRow(long totalRow) {
		this.totalRow = totalRow;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

}
