package mcshim.sound.midi;

/* JADX INFO: loaded from: classes.dex */
public interface MidiDevice {

    public class Info {
        protected Info() {
            throw new UnsupportedOperationException("desktop API not available on Android: <init>");
        }

        public String getName() {
            throw new UnsupportedOperationException("desktop API not available on Android: getName");
        }
    }

    Receiver getReceiver();

    void open();
}
