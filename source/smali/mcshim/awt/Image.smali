###### Class mcshim.awt.Image (mcshim.awt.Image)
.class public abstract Lmcshim/awt/Image;
.super Ljava/lang/Object;
.source "Image.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 1

    return-void
.end method

.method public getGraphics()Lmcshim/awt/Graphics;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getHeight(Lmcshim/awt/image/ImageObserver;)I
.end method

.method public abstract getWidth(Lmcshim/awt/image/ImageObserver;)I
.end method
