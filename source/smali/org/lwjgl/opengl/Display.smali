###### Class org.lwjgl.opengl.Display (org.lwjgl.opengl.Display)
.class public final Lorg/lwjgl/opengl/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field private static created:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/lwjgl/LWJGLException;
        }
    .end annotation

    .line 13
    sget-boolean v0, Lorg/lwjgl/opengl/Display;->created:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lmcport/NativeLib;->load()V

    .line 14
    invoke-static {}, Lmcport/Platform;->get()Lmcport/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lmcport/Platform;->waitForSurface()Ljava/lang/Object;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lmcport/Platform;->surfaceWidth()I

    move-result v2

    invoke-virtual {v0}, Lmcport/Platform;->surfaceHeight()I

    move-result v3

    invoke-static {v1, v2, v3}, Lmcport/NativeDisplay;->create(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 16
    invoke-virtual {v0}, Lmcport/Platform;->swapInterval()I

    move-result v1

    invoke-static {v1}, Lmcport/NativeDisplay;->swapInterval(I)V

    const/4 v1, 0x1

    sput-boolean v1, Lorg/lwjgl/opengl/Display;->created:Z

    invoke-virtual {v0}, Lmcport/Platform;->onContextCreated()V

    return-void

    .line 15
    :cond_2c
    new-instance v0, Lorg/lwjgl/LWJGLException;

    const-string v1, "Could not create OpenGL ES context"

    invoke-direct {v0, v1}, Lorg/lwjgl/LWJGLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static destroy()V
    .registers 1

    .line 18
    sget-boolean v0, Lorg/lwjgl/opengl/Display;->created:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lmcport/NativeDisplay;->destroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lorg/lwjgl/opengl/Display;->created:Z

    :cond_a
    return-void
.end method

.method public static getDesktopDisplayMode()Lorg/lwjgl/opengl/DisplayMode;
    .registers 1

    .line 11
    invoke-static {}, Lorg/lwjgl/opengl/Display;->getDisplayMode()Lorg/lwjgl/opengl/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayMode()Lorg/lwjgl/opengl/DisplayMode;
    .registers 3

    .line 10
    new-instance v0, Lorg/lwjgl/opengl/DisplayMode;

    invoke-static {}, Lmcport/Platform;->get()Lmcport/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lmcport/Platform;->surfaceWidth()I

    move-result v1

    invoke-static {}, Lmcport/Platform;->get()Lmcport/Platform;

    move-result-object v2

    invoke-virtual {v2}, Lmcport/Platform;->surfaceHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/lwjgl/opengl/DisplayMode;-><init>(II)V

    return-object v0
.end method

.method public static isActive()Z
    .registers 1

    .line 20
    invoke-static {}, Lmcport/Platform;->get()Lmcport/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lmcport/Platform;->isActive()Z

    move-result v0

    return v0
.end method

.method public static isCloseRequested()Z
    .registers 1

    .line 19
    invoke-static {}, Lmcport/Platform;->get()Lmcport/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lmcport/Platform;->isCloseRequested()Z

    move-result v0

    return v0
.end method

.method public static isCreated()Z
    .registers 1

    .line 17
    sget-boolean v0, Lorg/lwjgl/opengl/Display;->created:Z

    return v0
.end method

.method public static isVisible()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static setDisplayMode(Lorg/lwjgl/opengl/DisplayMode;)V
    .registers 1

    return-void
.end method

.method public static setFullscreen(Z)V
    .registers 1

    return-void
.end method

.method public static setParent(Lmcshim/awt/Canvas;)V
    .registers 1

    return-void
.end method

.method public static setTitle(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static swapBuffers()V
    .registers 1

    .line 22
    sget-boolean v0, Lorg/lwjgl/opengl/Display;->created:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lmcport/NativeDisplay;->swap()Z

    :cond_7
    return-void
.end method

.method public static sync(I)V
    .registers 1

    return-void
.end method

.method public static update()V
    .registers 1

    .line 23
    sget-boolean v0, Lorg/lwjgl/opengl/Display;->created:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lmcport/NativeDisplay;->swap()Z

    :cond_7
    invoke-static {}, Lmcport/Platform;->get()Lmcport/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lmcport/Platform;->onFrame()V

    invoke-static {}, Lorg/lwjgl/input/Mouse;->poll()V

    invoke-static {}, Lorg/lwjgl/input/Keyboard;->poll()V

    return-void
.end method
