import java.lang.*;
import java.util.*;

class TestJNI {
    static {
        System.loadLibrary("stacktrace");
    }
    //private native Map<Thread,StackTraceElement[]> runStacktrace();
    private native StackTraceElement[] runStacktrace();

	public static void main(String[] args) {
        /*
		System.out.println("Dia dhuit ar maidin!");
        Map<Thread,StackTraceElement[]> stackTraces = new TestJNI().runStacktrace();

        Iterator iterator = stackTraces.keySet().iterator();

        while (iterator.hasNext()) {
            String key = iterator.next().toString();
            String value = Arrays.toString(stackTraces.get(key));

            System.out.println(key + " -> " + value);
        }
        System.out.println("*****************************************");
{
        Map<Thread,StackTraceElement[]> stackTraces2 = Thread.getAllStackTraces();

        Iterator iterator2 = stackTraces2.keySet().iterator();

        while (iterator2.hasNext()) {
            String key = iterator2.next().toString();
            String value = Arrays.toString(stackTraces2.get(key));

            System.out.println(key + " -> " + value);
        }
}
*/

        StackTraceElement[] st = new TestJNI().runStacktrace();
		System.out.println("Hello world: " + Arrays.toString(st));
        try {
            Thread.sleep(10000);
        } catch (InterruptedException e) {
        }

	}
}
