package paulscode.sound;

import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public class StreamThread extends SimpleThread {
    private final Object listLock = new Object();
    private SoundSystemLogger logger = SoundSystemConfig.getLogger();
    private List streamingSources = new LinkedList();

    @Override // paulscode.sound.SimpleThread
    protected void cleanup() {
        kill();
        super.cleanup();
    }

    @Override // paulscode.sound.SimpleThread, java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            snooze(3600000L);
            while (!dying()) {
                while (!dying() && !this.streamingSources.isEmpty()) {
                    synchronized (this.listLock) {
                        ListIterator listIterator = this.streamingSources.listIterator();
                        while (!dying() && listIterator.hasNext()) {
                            Source source = (Source) listIterator.next();
                            if (source == null) {
                                listIterator.remove();
                            } else if (source.stopped()) {
                                if (!source.rawDataStream) {
                                    listIterator.remove();
                                }
                            } else if (!source.active()) {
                                if (source.toLoop || source.rawDataStream) {
                                    source.toPlay = true;
                                }
                                listIterator.remove();
                            } else if (!source.paused()) {
                                source.checkFadeOut();
                                if (!source.stream() && !source.rawDataStream && (source.channel == null || !source.channel.processBuffer())) {
                                    if (source.toLoop) {
                                        if (!source.playing()) {
                                            if (source.checkFadeOut()) {
                                                source.preLoad = true;
                                            } else {
                                                source.incrementSoundSequence();
                                                source.preLoad = true;
                                            }
                                        }
                                    } else if (!source.playing() && !source.checkFadeOut()) {
                                        if (source.incrementSoundSequence()) {
                                            source.preLoad = true;
                                        } else {
                                            listIterator.remove();
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (!dying() && !this.streamingSources.isEmpty()) {
                        snooze(20L);
                    }
                }
                if (!dying() && this.streamingSources.isEmpty()) {
                    snooze(3600000L);
                }
            }
            cleanup();
        } catch (Throwable th) {
            cleanup();
            throw th;
        }
    }

    public void watch(Source source) {
        if (source == null || this.streamingSources.contains(source)) {
            return;
        }
        synchronized (this.listLock) {
            ListIterator listIterator = this.streamingSources.listIterator();
            while (listIterator.hasNext()) {
                Source source2 = (Source) listIterator.next();
                if (source2 == null) {
                    listIterator.remove();
                } else if (source.channel == source2.channel) {
                    source2.stop();
                    listIterator.remove();
                }
            }
            this.streamingSources.add(source);
        }
    }

    private void message(String str) {
        this.logger.message(str, 0);
    }

    private void importantMessage(String str) {
        this.logger.importantMessage(str, 0);
    }

    private boolean errorCheck(boolean z, String str) {
        return this.logger.errorCheck(z, "StreamThread", str, 0);
    }

    private void errorMessage(String str) {
        this.logger.errorMessage("StreamThread", str, 0);
    }
}
