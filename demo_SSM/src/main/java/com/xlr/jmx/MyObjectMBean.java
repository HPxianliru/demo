/**
 * 
 */
package com.xlr.jmx;

/**
 * <p>Title:MyObjectMBean</p>
 * @author xlr
 * @date 2017年7月9日
 */
public interface MyObjectMBean {
	public long getId();  
    public void setId(long id);  
    public String getName();  
    public void setName(String name);  
    public String show();
}
