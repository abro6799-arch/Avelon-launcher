###### Class defpackage.kq (kq)
.class public final Lkq;
.super Lnet/minecraft/client/Minecraft;
.source "SourceFile"


# instance fields
.field final synthetic a:Lmcshim/awt/Frame;


# direct methods
.method public constructor <init>(Lmcshim/awt/Component;Lmcshim/awt/Canvas;Lnet/minecraft/client/MinecraftApplet;IIZLmcshim/awt/Frame;)V
    .registers 8

    .line 1930
    iput-object p7, p0, Lkq;->a:Lmcshim/awt/Frame;

    invoke-direct/range {p0 .. p6}, Lnet/minecraft/client/Minecraft;-><init>(Lmcshim/awt/Component;Lmcshim/awt/Canvas;Lnet/minecraft/client/MinecraftApplet;IIZ)V

    return-void
.end method


# virtual methods
.method public a(Lmh;)V
    .registers 4

    .line 1933
    iget-object v0, p0, Lkq;->a:Lmcshim/awt/Frame;

    invoke-virtual {v0}, Lmcshim/awt/Frame;->removeAll()V

    .line 1934
    iget-object v0, p0, Lkq;->a:Lmcshim/awt/Frame;

    new-instance v1, Lcb;

    invoke-direct {v1, p1}, Lcb;-><init>(Lmh;)V

    const-string p1, "Center"

    invoke-virtual {v0, v1, p1}, Lmcshim/awt/Frame;->add(Lmcshim/awt/Component;Ljava/lang/Object;)V

    .line 1935
    iget-object p1, p0, Lkq;->a:Lmcshim/awt/Frame;

    invoke-virtual {p1}, Lmcshim/awt/Frame;->validate()V

    return-void
.end method
