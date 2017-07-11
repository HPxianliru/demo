/**
 * 
 */
package dome_day;

import java.awt.image.AreaAveragingScaleFilter;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * <p>Title:MaoPao</p>
 * @author xlr
 * @date 2017年6月20日
 */
public class MaoPao {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		int arg[] = {11,22,22,22,11,23,44,11,2,2,1,3,4,5,6,3,2,1,2,34,5,6,7};
        Map<Integer, Integer> map = new HashMap<Integer,Integer>();
		for(int a : arg){
			System.err.println(a);
			if(null == map.get(a)){
				map.put(a, 1);
			}else{
				int in = map.get(a);
				map.put(a, ++in);
			}
			
		}
		
		map = sortByValue(map);

		for(Integer key : map.keySet()){
			System.out.println("KEY:"+key+"    value:"+map.get(key));
		}
		Set<String> set = new  HashSet<>();
		set.add(null);
		aaa();
		bbb();
		
		name(100);
	}
	
	
    public static <K, V extends Comparable<? super V>> Map<K, V> sortByValue(Map<K, V> map) {
        List<Map.Entry<K, V>> list = new LinkedList<Map.Entry<K, V>>(map.entrySet());
        Collections.sort(list, new Comparator<Map.Entry<K, V>>() {
            public int compare(Map.Entry<K, V> o1, Map.Entry<K, V> o2) {
                return (o2.getValue()).compareTo(o1.getValue());
            }
        });
        Map<K, V> result = new LinkedHashMap<K, V>();
        for (Map.Entry<K, V> entry : list) {
            result.put(entry.getKey(), entry.getValue());
        }
        return result;
    }
    
    public static void  aaa() {
    	int arg[] = {11,22,22,22,11,23,44,11,2,2,1,3,4,5,6,3,2,1,2,34,5,6,7};
    	for(int j=0;j<arg.length;j++){

        	for(int i=0;i<arg.length-1;i++){
        		if(i != -1){
        			if(arg[i] > arg[i+1]){
            			int temp = arg[i];
            			arg[i] = arg[i+1];
            			arg[i+1] = temp;
            		}	
        		}
        		
        	}
    	}
    	
    	for(int ss : arg){
    		System.err.println(ss);
    	}
	}
    
    public static void name( int length) {
    	long a = 1 ;
		for(int i=0;i<length;i++){
			if(i != 0){
				a=a*i;
			}
		}
		System.out.println(a);
	}
    
    public static void  ercha() {
		
	}
    
    
    public static void  bbb() {
    	System.err.println("BBB:开始");
    	int arg[] = {11,22,22,22,11,23,44,11,2,2,1,3,4,5,6,3,2,1,2,34,5,6,7};
    	
    	int a[][]={{11,23,44,11,2,2,1,3,4,5,6,3,22},{11,22,22,22,11,23,43},{4,5,6,3,2,1,2,34,5,6,7},{14,25,3,4,52,5,21,7,0},{5,74,8,94,21,1,3,5,79,4,8}};
/*    	for(int j=0;j<arg.length;j++){

        	for(int i=0;i<arg.length-1;i++){
        		if(i != -1){
        			if(arg[i] > arg[i+1]){
            			int temp = arg[i];
            			arg[i] = arg[i+1];
            			arg[i+1] = temp;
            		}	
        		}
        		
        	}
    	}*/
    	
    	Arrays.sort(arg);
    	//Collections.sort(list);
    	System.err.println("Arrays.copyOf start");
    	int aa[] = Arrays.copyOf(arg, arg.length);
    	System.err.println(aa);
    	System.err.println("Arrays.copyOf end");
    	LinkedList<Integer> linkedList = new LinkedList<>();
    	System.out.println(linkedList);
    	for(int ss : arg){
    		System.err.println(ss);
    	}
    	System.err.println("BBB:结束");
	}
    
}
