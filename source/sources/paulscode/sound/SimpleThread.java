package paulscode.sound;

/* JADX INFO: loaded from: classes.dex */
public class SimpleThread extends Thread {
    private static final boolean GET = false;
    private static final boolean SET = true;
    private static final boolean XXX = false;
    private boolean alive = SET;
    private boolean kill = GET;

    protected void cleanup() {
        kill(SET, SET);
        alive(SET, GET);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        cleanup();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [paulscode.sound.SimpleThread$1] */
    public void restart() {
        new Thread() { // from class: paulscode.sound.SimpleThread.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                SimpleThread.this.rerun();
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rerun() {
        kill(SET, SET);
        while (alive(GET, GET)) {
            snooze(100L);
        }
        alive(SET, SET);
        kill(SET, GET);
        run();
    }

    public boolean alive() {
        return alive(GET, GET);
    }

    public void kill() {
        kill(SET, SET);
    }

    protected boolean dying() {
        return kill(GET, GET);
    }

    private synchronized boolean alive(boolean z, boolean z2) {
        if (z) {
            this.alive = z2;
        }
        return this.alive;
    }

    private synchronized boolean kill(boolean z, boolean z2) {
        if (z) {
            this.kill = z2;
        }
        return this.kill;
    }

    protected void snooze(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException unused) {
        }
    }
}
