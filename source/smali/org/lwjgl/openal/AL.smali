###### Class org.lwjgl.openal.AL (org.lwjgl.openal.AL)
.class public final Lorg/lwjgl/openal/AL;
.super Ljava/lang/Object;
.source "AL.java"


# static fields
.field private static created:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 3
    invoke-static {}, Lmcport/NativeLib;->load()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/lwjgl/LWJGLException;
        }
    .end annotation

    .line 6
    sget-boolean v0, Lorg/lwjgl/openal/AL;->created:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lorg/lwjgl/openal/AL;->ncreate()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    sput-boolean v0, Lorg/lwjgl/openal/AL;->created:Z

    return-void

    :cond_f
    new-instance v0, Lorg/lwjgl/LWJGLException;

    const-string v1, "Could not open OpenAL device"

    invoke-direct {v0, v1}, Lorg/lwjgl/LWJGLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Ljava/lang/String;IIZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/lwjgl/LWJGLException;
        }
    .end annotation

    .line 7
    invoke-static {}, Lorg/lwjgl/openal/AL;->create()V

    return-void
.end method

.method public static destroy()V
    .registers 1

    .line 8
    sget-boolean v0, Lorg/lwjgl/openal/AL;->created:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lorg/lwjgl/openal/AL;->ndestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lorg/lwjgl/openal/AL;->created:Z

    :cond_a
    return-void
.end method

.method public static isCreated()Z
    .registers 1

    .line 9
    sget-boolean v0, Lorg/lwjgl/openal/AL;->created:Z

    return v0
.end method

.method static native ncreate()Z
.end method

.method static native ndestroy()V
.end method

.method static native npause(Z)V
.end method

.method public static setPaused(Z)V
    .registers 2

    .line 11
    sget-boolean v0, Lorg/lwjgl/openal/AL;->created:Z

    if-eqz v0, :cond_7

    invoke-static {p0}, Lorg/lwjgl/openal/AL;->npause(Z)V

    :cond_7
    return-void
.end method
