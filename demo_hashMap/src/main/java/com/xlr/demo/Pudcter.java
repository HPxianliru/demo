/**
 * 
 */
package com.xlr.demo;

/**
 * <p>Title:Pudcter</p>
 * @author xlr
 * @date 2017年7月9日
 */
public class Pudcter{
	
	public void send(){
		try {
			System.out.println("发送");
			HashMapDemo.queue.put("aaa");
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
