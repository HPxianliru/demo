/**
 * 
 */
package com.xlr.jmx;

import org.apache.log4j.Logger;
/**
 * <p>Title:MyObject</p>
 * @author xlr
 * @date 2017年7月9日
 */
	public class MyObject implements MyObjectMBean {  
	      
	    private static final Logger LOG = Logger.getLogger(MyObject.class);  
	    private long id;  
	    private String name;  
	      
	    public MyObject() {  
	        super();  
	    }  
	      
	    public MyObject(long id, String name) {  
	        super();  
	        this.id = id;  
	        this.name = name;  
	    }  
	  
	    public long getId() {  
	        return id;  
	    }  
	  
	    public void setId(long id) {  
	        this.id = id;  
	    }  
	  
	    public String getName() {  
	        return name;  
	    }  
	  
	    public void setName(String name) {  
	        this.name = name;  
	    }  
	  
	    public String show() {  
	        StringBuffer sb = new StringBuffer().append("id=").append(id).append(  
	                ", name=").append(name);  
	        LOG.info("show()=" + sb.toString());  
	        return sb.toString();  
	    }  
	}  
