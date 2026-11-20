###### Class paulscode.sound.ICodec (paulscode.sound.ICodec)
.class public interface abstract Lpaulscode/sound/ICodec;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract endOfStream()Z
.end method

.method public abstract getAudioFormat()Lmcshim/sound/sampled/AudioFormat;
.end method

.method public abstract initialize(Ljava/net/URL;)Z
.end method

.method public abstract initialized()Z
.end method

.method public abstract read()Lpaulscode/sound/SoundBuffer;
.end method

.method public abstract readAll()Lpaulscode/sound/SoundBuffer;
.end method

.method public abstract reverseByteOrder(Z)V
.end method
