/**
 * 
 */
package com.xlr.demo.entity;

import java.io.Serializable;


/**
 * <p>Title:Student</p>
 * @author xlr
 * @date 2017年6月9日
 */
@SuppressWarnings("unused")
public class Student implements Serializable {
	
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

		private String serialNo;
		
		private String name;
		
		private int version;
		
		public String getSerialNo() {
			return serialNo;
		}
		
		private void setSerialNo(String serialNo) {
			this.serialNo = serialNo;
		}

		public String getName() {
		    return name;
		}
		public void setName(String name) {
		    this.name = name;
		}
		public int getVersion() {
		    return version;
		}
		public void setVersion(int version) {
			this.version = version;
		}
		
}
