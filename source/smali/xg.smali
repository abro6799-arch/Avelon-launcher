###### Class defpackage.xg (xg)
.class Lxg;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lpf;


# direct methods
.method constructor <init>(Lpf;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lxg;->a:Lpf;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x1388

    .line 226
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 227
    iget-object v0, p0, Lxg;->a:Lpf;

    invoke-static {v0}, Lpf;->g(Lpf;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_f} :catch_30

    if-eqz v0, :cond_1a

    .line 229
    :try_start_11
    iget-object v0, p0, Lxg;->a:Lpf;

    invoke-static {v0}, Lpf;->g(Lpf;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1a

    .line 233
    :catchall_1a
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lxg;->a:Lpf;

    invoke-static {v0}, Lpf;->h(Lpf;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_24} :catch_30

    if-eqz v0, :cond_34

    .line 235
    :try_start_26
    iget-object v0, p0, Lxg;->a:Lpf;

    invoke-static {v0}, Lpf;->h(Lpf;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_34

    goto :goto_34

    :catch_30
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :catchall_34
    :cond_34
    :goto_34
    return-void
.end method
