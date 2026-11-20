###### Class defpackage.kj (kj)
.class public final Lkj;
.super Lmcshim/awt/event/WindowAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lnet/minecraft/client/Minecraft;

.field final synthetic b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;Ljava/lang/Thread;)V
    .registers 3

    .line 1959
    iput-object p1, p0, Lkj;->a:Lnet/minecraft/client/Minecraft;

    iput-object p2, p0, Lkj;->b:Ljava/lang/Thread;

    invoke-direct {p0}, Lmcshim/awt/event/WindowAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public windowClosing(Lmcshim/awt/event/WindowEvent;)V
    .registers 2

    .line 1961
    iget-object p1, p0, Lkj;->a:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p1}, Lnet/minecraft/client/Minecraft;->f()V

    .line 1963
    :try_start_5
    iget-object p1, p0, Lkj;->b:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 1965
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_f
    const/4 p1, 0x0

    .line 1967
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
