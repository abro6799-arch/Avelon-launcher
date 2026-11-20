###### Class defpackage.xh (xh)
.class Lxh;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lpf;


# direct methods
.method constructor <init>(Lpf;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lxh;->a:Lpf;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-wide/16 v0, 0x7d0

    .line 300
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 301
    iget-object v0, p0, Lxh;->a:Lpf;

    invoke-static {v0}, Lpf;->a(Lpf;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 302
    iget-object v0, p0, Lxh;->a:Lpf;

    invoke-static {v0}, Lpf;->h(Lpf;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 303
    iget-object v0, p0, Lxh;->a:Lpf;

    const-string v1, "disconnect.closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    :goto_25
    return-void
.end method
