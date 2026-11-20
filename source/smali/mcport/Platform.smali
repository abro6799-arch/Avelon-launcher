###### Class mcport.Platform (mcport.Platform)
.class public abstract Lmcport/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static impl:Lmcport/Platform;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lmcport/Platform;
    .registers 1

    .line 6
    sget-object v0, Lmcport/Platform;->impl:Lmcport/Platform;

    return-object v0
.end method

.method public static set(Lmcport/Platform;)V
    .registers 1

    .line 5
    sput-object p0, Lmcport/Platform;->impl:Lmcport/Platform;

    return-void
.end method


# virtual methods
.method public drawString([IIILjava/lang/String;III)V
    .registers 8

    return-void
.end method

.method public getClipboard()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isActive()Z
.end method

.method public isCloseRequested()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onContextCreated()V
    .registers 1

    return-void
.end method

.method public abstract onFrame()V
.end method

.method public openURL(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public abstract surfaceHeight()I
.end method

.method public abstract surfaceWidth()I
.end method

.method public swapInterval()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract waitForSurface()Ljava/lang/Object;
.end method
