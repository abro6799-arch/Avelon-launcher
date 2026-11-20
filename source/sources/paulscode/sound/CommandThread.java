package paulscode.sound;

/* JADX INFO: loaded from: classes.dex */
public class CommandThread extends SimpleThread {
    protected String className = "CommandThread";
    protected SoundSystemLogger logger = SoundSystemConfig.getLogger();
    private SoundSystem soundSystem;

    public CommandThread(SoundSystem soundSystem) {
        this.soundSystem = soundSystem;
    }

    @Override // paulscode.sound.SimpleThread
    protected void cleanup() {
        kill();
        this.logger = null;
        this.soundSystem = null;
        super.cleanup();
    }

    @Override // paulscode.sound.SimpleThread, java.lang.Thread, java.lang.Runnable
    public void run() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.soundSystem == null) {
            errorMessage("SoundSystem was null in method run().", 0);
            cleanup();
            return;
        }
        snooze(3600000L);
        while (!dying()) {
            this.soundSystem.ManageSources();
            this.soundSystem.CommandQueue(null);
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (!dying() && jCurrentTimeMillis2 - jCurrentTimeMillis > 10000) {
                this.soundSystem.removeTemporarySources();
                jCurrentTimeMillis = jCurrentTimeMillis2;
            }
            if (!dying()) {
                snooze(3600000L);
            }
        }
        cleanup();
    }

    protected void message(String str, int i) {
        this.logger.message(str, i);
    }

    protected void importantMessage(String str, int i) {
        this.logger.importantMessage(str, i);
    }

    protected boolean errorCheck(boolean z, String str) {
        return this.logger.errorCheck(z, this.className, str, 0);
    }

    protected void errorMessage(String str, int i) {
        this.logger.errorMessage(this.className, str, i);
    }
}
