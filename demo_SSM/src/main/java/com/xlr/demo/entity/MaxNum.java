/**
 * 
 */
package com.xlr.demo.entity;

import java.io.Serializable;


/**
 * <p>Title:MaxNumber</p>
 * @author xlr
 * @date 2017年6月9日
 */
public class MaxNum implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String maxID;
	
	private String count;
	
	private String maxNum;
	
	private long version;

	public String getMaxID() {
		return maxID;
	}

	public void setMaxID(String maxID) {
		this.maxID = maxID;
	}
	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}
	public long getVersion() {
		return version;
	}

	private void setVersion(long version) {
		this.version = version;
	}

	public String getMaxNum() {
		return maxNum;
	}

	public void setMaxNum(String maxNum) {
		this.maxNum = maxNum;
	}
	
	
}
