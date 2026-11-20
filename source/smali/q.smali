###### Class defpackage.q (q)
.class public Lq;
.super Lnet/minecraft/client/Minecraft;
.source "SourceFile"


# instance fields
.field final synthetic a:Lnet/minecraft/client/MinecraftApplet;


# direct methods
.method public constructor <init>(Lnet/minecraft/client/MinecraftApplet;Lmcshim/awt/Component;Lmcshim/awt/Canvas;Lnet/minecraft/client/MinecraftApplet;IIZ)V
    .registers 15

    .line 34
    iput-object p1, p0, Lq;->a:Lnet/minecraft/client/MinecraftApplet;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lnet/minecraft/client/Minecraft;-><init>(Lmcshim/awt/Component;Lmcshim/awt/Canvas;Lnet/minecraft/client/MinecraftApplet;IIZ)V

    return-void
.end method


# virtual methods
.method public a(Lmh;)V
    .registers 4

    .line 37
    iget-object v0, p0, Lq;->a:Lnet/minecraft/client/MinecraftApplet;

    invoke-virtual {v0}, Lnet/minecraft/client/MinecraftApplet;->removeAll()V

    .line 38
    iget-object v0, p0, Lq;->a:Lnet/minecraft/client/MinecraftApplet;

    new-instance v1, Lmcshim/awt/BorderLayout;

    invoke-direct {v1}, Lmcshim/awt/BorderLayout;-><init>()V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/MinecraftApplet;->setLayout(Lmcshim/awt/LayoutManager;)V

    .line 39
    iget-object v0, p0, Lq;->a:Lnet/minecraft/client/MinecraftApplet;

    new-instance v1, Lcb;

    invoke-direct {v1, p1}, Lcb;-><init>(Lmh;)V

    const-string p1, "Center"

    invoke-virtual {v0, v1, p1}, Lnet/minecraft/client/MinecraftApplet;->add(Lmcshim/awt/Component;Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lq;->a:Lnet/minecraft/client/MinecraftApplet;

    invoke-virtual {p1}, Lnet/minecraft/client/MinecraftApplet;->validate()V

    return-void
.end method
