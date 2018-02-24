import java.lang.*;
import java.util.*;

class TestJNI {
    static {
        System.loadLibrary("stacktrace");
    }
    private native void runStacktrace();

	public static void main(String[] args) {
        new TestJNI().runStacktrace();
	}
}
