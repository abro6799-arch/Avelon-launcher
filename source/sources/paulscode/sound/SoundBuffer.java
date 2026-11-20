package paulscode.sound;

import mcshim.sound.sampled.AudioFormat;

/* JADX INFO: loaded from: classes.dex */
public class SoundBuffer {
    public byte[] audioData;
    public AudioFormat audioFormat;

    public SoundBuffer(byte[] bArr, AudioFormat audioFormat) {
        this.audioData = bArr;
        this.audioFormat = audioFormat;
    }

    public void cleanup() {
        this.audioData = null;
        this.audioFormat = null;
    }

    public void trimData(int i) {
        byte[] bArr = this.audioData;
        if (bArr == null || i == 0) {
            this.audioData = null;
        } else if (bArr.length > i) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, i);
            this.audioData = bArr2;
        }
    }
}
