/**
 * 
 */
package com.shine.framework.Jmx;

/**
 * <p>Title:HelloMBean</p>
 * @author xlr
 * @date 2017年7月11日
 */
public interface HelloMBean {
	public String getName();
    public void setName(String name);
    public void printHello();
    public void printHello(String whoName);
}
