###### Class org.lwjgl.opengl.ARBVertexBufferObject (org.lwjgl.opengl.ARBVertexBufferObject)
.class public final Lorg/lwjgl/opengl/ARBVertexBufferObject;
.super Ljava/lang/Object;
.source "ARBVertexBufferObject.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static glBindBufferARB(II)V
    .registers 2

    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ARB_vbo not exposed"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static glBufferDataARB(ILjava/nio/ByteBuffer;I)V
    .registers 3

    .line 5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ARB_vbo not exposed"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static glGenBuffersARB(Ljava/nio/IntBuffer;)V
    .registers 2

    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "ARB_vbo not exposed"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
