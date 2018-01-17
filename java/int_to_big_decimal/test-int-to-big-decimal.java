/*
 * $ javac test-int-to-big-decimal.java
 * $ java TestIntBigDecimal
 * Double value: 12.0
 *
 */


import java.math.BigDecimal;
import java.math.BigInteger;
import java.lang.Number;
import java.lang.Integer;

class TestIntBigDecimal {
	public static void main(String[] args) {
		java.lang.Number numInt = new java.lang.Integer(12);
		System.out.println("Double value: " + numInt.doubleValue());
	}
};
