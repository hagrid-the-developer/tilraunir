import java.lang.*;
import java.util.*;

class TestJNI {
    static {
        System.loadLibrary("stacktrace");
    }
    private native StackTraceElement[] runStacktrace();

	public static void main(String[] args) {
		System.out.println("Dia dhuit ar maidin!");
        StackTraceElement[] st = new TestJNI().runStacktrace();
		System.out.println("Hello world: " + Arrays.toString(st));
        try {
            Thread.sleep(10000);
        } catch (InterruptedException e) {
        }
	}
}
