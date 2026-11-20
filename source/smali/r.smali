###### Class defpackage.r (r)
.class public Lr;
.super Lmcshim/awt/Canvas;
.source "SourceFile"


# instance fields
.field final synthetic a:Lnet/minecraft/client/MinecraftApplet;


# direct methods
.method public constructor <init>(Lnet/minecraft/client/MinecraftApplet;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lr;->a:Lnet/minecraft/client/MinecraftApplet;

    invoke-direct {p0}, Lmcshim/awt/Canvas;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addNotify()V
    .registers 2

    monitor-enter p0

    .line 19
    :try_start_1
    invoke-super {p0}, Lmcshim/awt/Canvas;->addNotify()V

    .line 20
    iget-object v0, p0, Lr;->a:Lnet/minecraft/client/MinecraftApplet;

    invoke-virtual {v0}, Lnet/minecraft/client/MinecraftApplet;->a()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 21
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNotify()V
    .registers 2

    monitor-enter p0

    .line 24
    :try_start_1
    iget-object v0, p0, Lr;->a:Lnet/minecraft/client/MinecraftApplet;

    invoke-virtual {v0}, Lnet/minecraft/client/MinecraftApplet;->b()V

    .line 25
    invoke-super {p0}, Lmcshim/awt/Canvas;->removeNotify()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 26
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
