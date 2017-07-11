/**
 * 
 */
package com.xlr.demo;

/**
 * <p>Title:TestQueue</p>
 * @author xlr
 * @date 2017年7月9日
 */
public class TestQueue {
	
	public static void main(String[] args) {
		GetQueue getQueue = new GetQueue();
		
		Pudcter pudcter = new  Pudcter();
		pudcter.send();
		getQueue.run();
	}
}
