package com.imgmap.utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
@SuppressWarnings("unchecked")
public class Nullable {

	private static final Log log = LogFactory.getLog(Nullable.class);
	
	
	public static List setNullSpace(List list){
		
		Iterator itr = list.iterator();
		List result = new ArrayList();
		while(itr.hasNext()){
			Map map = (Map)itr.next();
			Map map_ = new HashMap();
			for(Object obj:map.entrySet()){
				Map.Entry entry = (Map.Entry)obj;
				String key = entry.getKey()==null?"-":entry.getKey().toString();
				String value = entry.getValue()==null?"-":entry.getValue().toString();
				map_.put(key, value);
			}
			result.add(map_);
		}
		log.info("Data Converted finished,original size:"+list.size()+",new size:"+result.size());
		return result;
	}

}
