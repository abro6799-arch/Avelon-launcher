package paulscode.sound;

import java.util.LinkedList;
import mcshim.sound.sampled.AudioFormat;

/* JADX INFO: loaded from: classes.dex */
public class Channel {
    public int channelType;
    protected Class libraryType = Library.class;
    public Source attachedSource = null;
    private SoundSystemLogger logger = SoundSystemConfig.getLogger();

    public int buffersProcessed() {
        return 0;
    }

    public void close() {
    }

    public int feedRawAudioData(byte[] bArr) {
        return 1;
    }

    public void flush() {
    }

    public void pause() {
    }

    public void play() {
    }

    public boolean playing() {
        return false;
    }

    public boolean preLoadBuffers(LinkedList linkedList) {
        return true;
    }

    public boolean processBuffer() {
        return false;
    }

    public boolean queueBuffer(byte[] bArr) {
        return false;
    }

    public void rewind() {
    }

    public void setAudioFormat(AudioFormat audioFormat) {
    }

    public void stop() {
    }

    public Channel(int i) {
        this.channelType = i;
    }

    public void cleanup() {
        this.logger = null;
    }

    public String getClassName() {
        String libraryTitle = SoundSystemConfig.getLibraryTitle(this.libraryType);
        if (libraryTitle.equals("No Sound")) {
            return "Channel";
        }
        return "Channel" + libraryTitle;
    }

    protected void message(String str) {
        this.logger.message(str, 0);
    }

    protected void importantMessage(String str) {
        this.logger.importantMessage(str, 0);
    }

    protected boolean errorCheck(boolean z, String str) {
        return this.logger.errorCheck(z, getClassName(), str, 0);
    }

    protected void errorMessage(String str) {
        this.logger.errorMessage(getClassName(), str, 0);
    }

    protected void printStackTrace(Exception exc) {
        this.logger.printStackTrace(exc, 1);
    }
}
