/**
 * 
 */
package dome_day;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;

/**
 * <p>Title:CollectionDemo</p>
 * @author xlr
 * @date 2017年6月21日
 */
public class CollectionDemo {

	public static void main(String[] args) {
		Map<String, Object> map =new HashMap<String, Object>();
		
		Map<String, Object> mapTable = new  Hashtable<String, Object>();
		Set<Object> set = new HashSet<>();
  		map.put(null, "aaa");
		mapTable.put("aaa", "");
		set.add(null);
		System.err.println(map.get(null));
		System.err.println(mapTable.get("aaa"));
		System.err.println(set.iterator());
		
	}
}
