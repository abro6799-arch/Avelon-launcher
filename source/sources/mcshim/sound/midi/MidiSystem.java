package mcshim.sound.midi;

import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class MidiSystem {
    protected MidiSystem() {
        throw new UnsupportedOperationException("desktop API not available on Android: <init>");
    }

    public static MidiDevice getMidiDevice(MidiDevice.Info info) {
        throw new UnsupportedOperationException("desktop API not available on Android: getMidiDevice");
    }

    public static MidiDevice.Info[] getMidiDeviceInfo() {
        throw new UnsupportedOperationException("desktop API not available on Android: getMidiDeviceInfo");
    }

    public static Receiver getReceiver() {
        throw new UnsupportedOperationException("desktop API not available on Android: getReceiver");
    }

    public static Sequence getSequence(URL url) {
        throw new UnsupportedOperationException("desktop API not available on Android: getSequence");
    }

    public static Sequencer getSequencer() {
        throw new UnsupportedOperationException("desktop API not available on Android: getSequencer");
    }

    public static Synthesizer getSynthesizer() {
        throw new UnsupportedOperationException("desktop API not available on Android: getSynthesizer");
    }
}
