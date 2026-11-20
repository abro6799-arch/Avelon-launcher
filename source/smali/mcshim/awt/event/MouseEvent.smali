###### Class mcshim.awt.event.MouseEvent (mcshim.awt.event.MouseEvent)
.class public Lmcshim/awt/event/MouseEvent;
.super Lmcshim/awt/event/InputEvent;


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lmcshim/awt/event/InputEvent;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: <init>"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getClickCount()I
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: getClickCount"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getX()I
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: getX"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getY()I
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "desktop API not available on Android: getY"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
