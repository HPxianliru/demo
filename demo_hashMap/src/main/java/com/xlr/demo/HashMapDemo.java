/**
 * 
 */
package com.xlr.demo;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.LinkedBlockingDeque;

/**
 * <p>Title:HashMapDemo</p>
 * @author xlr
 * @date 2017年7月9日
 */
public class HashMapDemo {
	
	private static int capacity = 100000;
	
	static BlockingQueue<String> queue = new LinkedBlockingDeque<String>(capacity);
	static Map<String, Object> map =  new HashMap<String, Object>();
	static ConcurrentMap<String, Object> concurrentMap = new ConcurrentHashMap<String, Object>();
	public static void main(String[] args) {
		map.put("11", "11");
		concurrentMap.put("1", "1");
	}
	
	
	public static int getCapacity() {
		return capacity;
	}
	public static void setCapacity(int capacity) {
		HashMapDemo.capacity = capacity;
	}
	
	
}
