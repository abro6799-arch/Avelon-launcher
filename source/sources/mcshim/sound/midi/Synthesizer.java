package mcshim.sound.midi;

/* JADX INFO: loaded from: classes.dex */
public interface Synthesizer extends MidiDevice {
    MidiChannel[] getChannels();

    Soundbank getDefaultSoundbank();

    @Override // mcshim.sound.midi.MidiDevice
    Receiver getReceiver();

    @Override // mcshim.sound.midi.MidiDevice
    void open();
}
