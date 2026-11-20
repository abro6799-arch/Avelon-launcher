###### Class org.lwjgl.BufferUtils (org.lwjgl.BufferUtils)
.class public final Lorg/lwjgl/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 4
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 1

    mul-int/lit8 p0, p0, 0x4

    .line 6
    invoke-static {p0}, Lorg/lwjgl/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createIntBuffer(I)Ljava/nio/IntBuffer;
    .registers 1

    mul-int/lit8 p0, p0, 0x4

    .line 5
    invoke-static {p0}, Lorg/lwjgl/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method
