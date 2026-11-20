###### Class mcshim.sound.midi.MidiDevice (mcshim.sound.midi.MidiDevice)
.class public interface abstract Lmcshim/sound/midi/MidiDevice;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getReceiver()Lmcshim/sound/midi/Receiver;
.end method

.method public abstract open()V
.end method

###### Class mcshim.sound.midi.MidiDevice.Info (mcshim.sound.midi.MidiDevice$Info)
.class public Lmcshim/sound/midi/MidiDevice$Info;
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


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: getName"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
