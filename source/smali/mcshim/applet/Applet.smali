###### Class mcshim.applet.Applet (mcshim.applet.Applet)
.class public Lmcshim/applet/Applet;
.super Lmcshim/awt/Component;
.source "Applet.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Lmcshim/awt/Component;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public getCodeBase()Ljava/net/URL;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentBase()Ljava/net/URL;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public isActive()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public stop()V
    .registers 1

    return-void
.end method
