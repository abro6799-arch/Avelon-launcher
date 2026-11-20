###### Class org.lwjgl.openal.AL10 (org.lwjgl.openal.AL10)
.class public final Lorg/lwjgl/openal/AL10;
.super Ljava/lang/Object;
.source "AL10.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 4
    invoke-static {}, Lmcport/NativeLib;->load()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alBufferData(IILjava/nio/ByteBuffer;I)V
    .registers 10

    .line 5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/lwjgl/openal/AL10;->nalBufferData(IILjava/nio/Buffer;III)V

    return-void
.end method

.method public static alDeleteBuffers(Ljava/nio/IntBuffer;)V
    .registers 3

    .line 7
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    invoke-static {v0, p0, v1}, Lorg/lwjgl/openal/AL10;->nalDeleteBuffers(ILjava/nio/Buffer;I)V

    return-void
.end method

.method public static alDeleteSources(Ljava/nio/IntBuffer;)V
    .registers 3

    .line 9
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    invoke-static {v0, p0, v1}, Lorg/lwjgl/openal/AL10;->nalDeleteSources(ILjava/nio/Buffer;I)V

    return-void
.end method

.method public static alGenBuffers(Ljava/nio/IntBuffer;)V
    .registers 3

    .line 11
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    invoke-static {v0, p0, v1}, Lorg/lwjgl/openal/AL10;->nalGenBuffers(ILjava/nio/Buffer;I)V

    return-void
.end method

.method public static alGenSources(Ljava/nio/IntBuffer;)V
    .registers 3

    .line 13
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    invoke-static {v0, p0, v1}, Lorg/lwjgl/openal/AL10;->nalGenSources(ILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native alGetError()I
.end method

.method public static native alGetSourcei(II)I
.end method

.method public static alListener(ILjava/nio/FloatBuffer;)V
    .registers 3

    .line 17
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1, v0}, Lorg/lwjgl/openal/AL10;->nalListenerfv(ILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native alListenerf(IF)V
.end method

.method public static alSource(IILjava/nio/FloatBuffer;)V
    .registers 4

    .line 20
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lorg/lwjgl/openal/AL10;->nalSourcefv(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native alSourcePause(I)V
.end method

.method public static native alSourcePlay(I)V
.end method

.method public static alSourceQueueBuffers(ILjava/nio/IntBuffer;)V
    .registers 4

    .line 24
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    invoke-static {p0, v0, p1, v1}, Lorg/lwjgl/openal/AL10;->nalSourceQueueBuffers(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native alSourceRewind(I)V
.end method

.method public static native alSourceStop(I)V
.end method

.method public static alSourceStop(Ljava/nio/IntBuffer;)V
    .registers 3

    .line 28
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    invoke-static {v0, p0, v1}, Lorg/lwjgl/openal/AL10;->nalSourceStopv(ILjava/nio/Buffer;I)V

    return-void
.end method

.method public static alSourceUnqueueBuffers(ILjava/nio/IntBuffer;)V
    .registers 4

    .line 30
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    invoke-static {p0, v0, p1, v1}, Lorg/lwjgl/openal/AL10;->nalSourceUnqueueBuffers(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public static native alSourcef(IIF)V
.end method

.method public static native alSourcei(III)V
.end method

.method static native nalBufferData(IILjava/nio/Buffer;III)V
.end method

.method static native nalDeleteBuffers(ILjava/nio/Buffer;I)V
.end method

.method static native nalDeleteSources(ILjava/nio/Buffer;I)V
.end method

.method static native nalGenBuffers(ILjava/nio/Buffer;I)V
.end method

.method static native nalGenSources(ILjava/nio/Buffer;I)V
.end method

.method static native nalListenerfv(ILjava/nio/Buffer;I)V
.end method

.method static native nalSourceQueueBuffers(IILjava/nio/Buffer;I)V
.end method

.method static native nalSourceStopv(ILjava/nio/Buffer;I)V
.end method

.method static native nalSourceUnqueueBuffers(IILjava/nio/Buffer;I)V
.end method

.method static native nalSourcefv(IILjava/nio/Buffer;I)V
.end method
