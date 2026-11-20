###### Class defpackage.vj (vj)
.class Lvj;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcj;


# direct methods
.method constructor <init>(Lcj;Ljava/util/Map;)V
    .registers 3

    .line 203
    iput-object p1, p0, Lvj;->b:Lcj;

    iput-object p2, p0, Lvj;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x0

    .line 206
    :try_start_1
    iget-object v1, p0, Lvj;->b:Lcj;

    iget-object v2, p0, Lvj;->a:Ljava/util/Map;

    invoke-static {v1}, Lcj;->e(Lcj;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lvj;->b:Lcj;

    invoke-static {v4}, Lcj;->f(Lcj;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lvj;->b:Lcj;

    invoke-static {v5}, Lcj;->g(Lcj;)Ljava/io/File;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcj;->a(Lcj;Ljava/util/Map;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1b
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_1f

    :catchall_19
    move-exception v1

    goto :goto_25

    :catch_1b
    move-exception v1

    .line 208
    :try_start_1c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_19

    .line 210
    :goto_1f
    iget-object v1, p0, Lvj;->b:Lcj;

    invoke-static {v1, v0}, Lcj;->a(Lcj;Z)Z

    return-void

    :goto_25
    iget-object v2, p0, Lvj;->b:Lcj;

    invoke-static {v2, v0}, Lcj;->a(Lcj;Z)Z

    throw v1
.end method
