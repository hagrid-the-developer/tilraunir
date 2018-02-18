import java.lang.*;
import java.util.*;

class Orig {
	public static StackTraceElement[] stackTrace() {
		StackTraceElement[] st = Thread.currentThread().getStackTrace();
		System.out.println("Hello world: " + Arrays.toString(st));
        return st;
	}

	public static StackTraceElement[] stackTrace2() {
		return stackTrace();
	}

    public static StackTraceElement[] stackTraceByException() {
        return new Exception().getStackTrace();
    }

	public static void main(String[] args) {
		System.out.println("Hello world: " + Arrays.toString(stackTrace2()));
		System.out.println("Hello world: " + Arrays.toString(stackTraceByException()));
	}
}
