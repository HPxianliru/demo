/**
 * 
 */
package com.xlr.demo;

/**
 * <p>Title:GetQueue</p>
 * @author xlr
 * @date 2017年7月9日
 */
public class GetQueue implements Runnable {

	/* (non-Javadoc)
	 * @see java.lang.Runnable#run()
	 */
	public void run() {
		while(true){
			try {
				System.err.println("收到"+HashMapDemo.queue.take());;
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				break;
			}
		}
		
	}

	
}
