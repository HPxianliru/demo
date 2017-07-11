/**
 * 
 */
package dome_day;

import java.math.BigDecimal;

/**
 * <p>Title:TEST</p>
 * @author xlr
 * @date 2017年7月3日
 */
public class TEST {
	
	private Integer a ;
	
	private String  b ;
	
	private BigDecimal c;
	
	public Integer getA() {
		return a;
	}
	public void setA(Integer a) {
		this.a = a;
	}
	public String getB() {
		return b;
	}
	public void setB(String b) {
		this.b = b;
	}
	public BigDecimal getC() {
		return c;
	}
	public void setC(BigDecimal c) {
		this.c = c;
	}
	@Override
	public String toString() {
		return "TEST [a=" + a + ", b=" + b + ", c=" + c + "]";
	}

}
