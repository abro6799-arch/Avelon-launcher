###### Class mcshim.sound.midi.Sequencer (mcshim.sound.midi.Sequencer)
.class public interface abstract Lmcshim/sound/midi/Sequencer;
.super Ljava/lang/Object;

# interfaces
.implements Lmcshim/sound/midi/MidiDevice;


# virtual methods
.method public abstract addMetaEventListener(Lmcshim/sound/midi/MetaEventListener;)Z
.end method

.method public abstract close()V
.end method

.method public abstract getTransmitter()Lmcshim/sound/midi/Transmitter;
.end method

.method public abstract open()V
.end method

.method public abstract removeMetaEventListener(Lmcshim/sound/midi/MetaEventListener;)V
.end method

.method public abstract setMicrosecondPosition(J)V
.end method

.method public abstract setSequence(Lmcshim/sound/midi/Sequence;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
