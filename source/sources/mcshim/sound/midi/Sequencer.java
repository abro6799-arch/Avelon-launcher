package mcshim.sound.midi;

/* JADX INFO: loaded from: classes.dex */
public interface Sequencer extends MidiDevice {
    boolean addMetaEventListener(MetaEventListener metaEventListener);

    void close();

    Transmitter getTransmitter();

    @Override // mcshim.sound.midi.MidiDevice
    void open();

    void removeMetaEventListener(MetaEventListener metaEventListener);

    void setMicrosecondPosition(long j);

    void setSequence(Sequence sequence);

    void start();

    void stop();
}
