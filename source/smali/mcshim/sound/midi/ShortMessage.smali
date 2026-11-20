###### Class mcshim.sound.midi.ShortMessage (mcshim.sound.midi.ShortMessage)
.class public Lmcshim/sound/midi/ShortMessage;
.super Lmcshim/sound/midi/MidiMessage;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lmcshim/sound/midi/MidiMessage;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: <init>"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public setMessage(IIII)V
    .registers 5

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "desktop API not available on Android: setMessage"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
