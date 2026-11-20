###### Class mcshim.sound.midi.MidiMessage (mcshim.sound.midi.MidiMessage)
.class public abstract Lmcshim/sound/midi/MidiMessage;
.super Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: <init>"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
