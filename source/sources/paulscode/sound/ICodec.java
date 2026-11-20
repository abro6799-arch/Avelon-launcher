package paulscode.sound;

import java.net.URL;
import mcshim.sound.sampled.AudioFormat;

/* JADX INFO: loaded from: classes.dex */
public interface ICodec {
    void cleanup();

    boolean endOfStream();

    AudioFormat getAudioFormat();

    boolean initialize(URL url);

    boolean initialized();

    SoundBuffer read();

    SoundBuffer readAll();

    void reverseByteOrder(boolean z);
}
