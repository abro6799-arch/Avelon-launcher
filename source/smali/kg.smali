###### Class defpackage.kg (kg)
.class public Lkg;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lnet/minecraft/client/Minecraft;


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;Ljava/lang/String;)V
    .registers 3

    .line 190
    iput-object p1, p0, Lkg;->a:Lnet/minecraft/client/Minecraft;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 192
    invoke-virtual {p0, p1}, Lkg;->setDaemon(Z)V

    .line 193
    invoke-virtual {p0}, Lkg;->start()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 197
    :catch_0
    :goto_0
    iget-object v0, p0, Lkg;->a:Lnet/minecraft/client/Minecraft;

    iget-boolean v0, v0, Lnet/minecraft/client/Minecraft;->J:Z

    if-eqz v0, :cond_d

    const-wide/32 v0, 0x7fffffff

    .line 199
    :try_start_9
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_0

    goto :goto_0

    :cond_d
    return-void
.end method
