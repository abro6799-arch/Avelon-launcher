package mcshim.sound.sampled;

/* JADX INFO: loaded from: classes.dex */
public class AudioFormat {
    private final boolean bigEndian;
    private final int bits;
    private final int channels;
    private final float rate;
    private final boolean signed;

    public AudioFormat(float f, int i, int i2, boolean z, boolean z2) {
        this.rate = f;
        this.bits = i;
        this.channels = i2;
        this.signed = z;
        this.bigEndian = z2;
    }

    public int getChannels() {
        return this.channels;
    }

    public float getSampleRate() {
        return this.rate;
    }

    public int getSampleSizeInBits() {
        return this.bits;
    }

    public float getFrameRate() {
        return this.rate;
    }

    public int getFrameSize() {
        return this.channels * ((this.bits + 7) / 8);
    }

    public boolean isBigEndian() {
        return this.bigEndian;
    }
}
