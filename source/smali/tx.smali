###### Class defpackage.tx (tx)
.class Ltx;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbd;


# direct methods
.method constructor <init>(Lbd;)V
    .registers 2

    .line 123
    iput-object p1, p0, Ltx;->a:Lbd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 125
    :catch_0
    :goto_0
    iget-object v0, p0, Ltx;->a:Lbd;

    invoke-static {v0}, Lbd;->a(Lbd;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 126
    iget-object v0, p0, Ltx;->a:Lbd;

    invoke-virtual {v0}, Lbd;->d()V

    const-wide/16 v0, 0x1

    .line 128
    :try_start_f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_0

    goto :goto_0

    :cond_13
    return-void
.end method
