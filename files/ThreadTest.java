public class ThreadTest implements Runnable {
  public static void main(String args[]) {
    int i, j;

// create 1000 threads
      for (i=0; i<=1000; i++) {
        Thread th = new Thread(new ThreadTest());
          th.start();
}

  // do some calculation
  for(i=j=0; i<=100000; i++) {
    j = j + i
  }
}

public void run() {
try {
// sleep forever
Thread.currentThread().sleep(1000000);
} catch (InterruptedException e) {}
}
}
