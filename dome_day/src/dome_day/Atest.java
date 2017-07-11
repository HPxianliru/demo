/**
 * 
 */
package dome_day;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import org.apache.commons.beanutils.BeanUtils;

/**
 * <p>Title:Atest</p>
 * @author xlr
 * @date 2017年7月3日
 */
public class Atest {

	public static void main(String[] args) {
		TEST test = new TEST();
		try {
			proxy(test);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
	}
	
	public static void proxy(TEST test) throws IllegalAccessException, InvocationTargetException {
		Field[] fields = test.getClass().getDeclaredFields();
		
		for(Field field:fields){
			if(field.getType().equals(String.class)){
				String name = field.getName();
				BeanUtils.setProperty(test, name, "String");
			}
			if(field.getType().equals(Integer.class)){
				BeanUtils.setProperty(test, field.getName(), "0");
			}
			if(field.getType().equals(BigDecimal.class)){
				BeanUtils.setProperty(test, field.getName(), "1");
			}
		}
		System.err.println(test.toString());
	}
}