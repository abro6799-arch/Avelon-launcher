###### Class mcshim.sound.midi.Synthesizer (mcshim.sound.midi.Synthesizer)
.class public interface abstract Lmcshim/sound/midi/Synthesizer;
.super Ljava/lang/Object;

# interfaces
.implements Lmcshim/sound/midi/MidiDevice;


# virtual methods
.method public abstract getChannels()[Lmcshim/sound/midi/MidiChannel;
.end method

.method public abstract getDefaultSoundbank()Lmcshim/sound/midi/Soundbank;
.end method

.method public abstract getReceiver()Lmcshim/sound/midi/Receiver;
.end method

.method public abstract open()V
.end method
