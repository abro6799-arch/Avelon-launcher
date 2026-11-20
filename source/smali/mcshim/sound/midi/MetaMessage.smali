###### Class mcshim.sound.midi.MetaMessage (mcshim.sound.midi.MetaMessage)
.class public Lmcshim/sound/midi/MetaMessage;
.super Lmcshim/sound/midi/MidiMessage;


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lmcshim/sound/midi/MidiMessage;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: <init>"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getType()I
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: getType"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
