###### Class org.lwjgl.input.Controllers (org.lwjgl.input.Controllers)
.class public final Lorg/lwjgl/input/Controllers;
.super Ljava/lang/Object;
.source "Controllers.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()V
    .registers 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/lwjgl/LWJGLException;
        }
    .end annotation

    return-void
.end method

.method public static destroy()V
    .registers 0

    return-void
.end method

.method public static getControllerCount()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static poll()V
    .registers 0

    return-void
.end method
