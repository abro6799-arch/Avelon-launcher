###### Class org.lwjgl.opengl.ARBOcclusionQuery (org.lwjgl.opengl.ARBOcclusionQuery)
.class public final Lorg/lwjgl/opengl/ARBOcclusionQuery;
.super Ljava/lang/Object;
.source "ARBOcclusionQuery.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static glBeginQueryARB(II)V
    .registers 2

    return-void
.end method

.method public static glEndQueryARB(I)V
    .registers 1

    return-void
.end method

.method public static glGenQueriesARB(Ljava/nio/IntBuffer;)V
    .registers 3

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_19
    return-void
.end method

.method public static glGetQueryObjectuARB(IILjava/nio/IntBuffer;)V
    .registers 3

    .line 6
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->position()I

    move-result p0

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    return-void
.end method
