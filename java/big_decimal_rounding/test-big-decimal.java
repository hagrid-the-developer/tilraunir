import java.math.BigDecimal;
import java.math.BigInteger;

class TestBigDecimal {
	public static void main(String[] args) {
		System.out.println("Hello, World");
		System.out.println(new BigDecimal(new BigInteger("1"), -10).toString());
		System.out.println(new BigDecimal(new BigInteger("10"), -10).toString());
		System.out.println(new BigDecimal(new BigInteger("1"), -10).divide(new BigDecimal(new BigInteger("3"), -3), BigDecimal.ROUND_HALF_EVEN).toString());
		// This returns 0E10, but I think it should return 3E10.
		System.out.println(new BigDecimal(new BigInteger("10"), -10).divide(new BigDecimal(new BigInteger("3"), -3), BigDecimal.ROUND_HALF_EVEN).toString());
		System.out.println(new BigDecimal("10").divide(new BigDecimal("3"), BigDecimal.ROUND_HALF_EVEN).toString());
		System.out.println(new BigDecimal("10.000").divide(new BigDecimal("3"), BigDecimal.ROUND_HALF_EVEN).toString());
		System.out.println(new BigDecimal("15").divide(new BigDecimal("10"), BigDecimal.ROUND_HALF_EVEN).toString());
		System.out.println(new BigDecimal("25").divide(new BigDecimal("10"), BigDecimal.ROUND_HALF_EVEN).toString());
		System.out.println(new BigDecimal("0.15").divide(new BigDecimal("10"), BigDecimal.ROUND_HALF_EVEN).toString());
		System.out.println(new BigDecimal("0.25").divide(new BigDecimal("10"), BigDecimal.ROUND_HALF_EVEN).toString());
	}
};
