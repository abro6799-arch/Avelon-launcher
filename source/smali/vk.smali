###### Class defpackage.vk (vk)
.class Lvk;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcj;


# direct methods
.method constructor <init>(Lcj;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lvk;->a:Lcj;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x0

    .line 185
    :try_start_1
    iget-object v1, p0, Lvk;->a:Lcj;

    invoke-static {v1}, Lcj;->a(Lcj;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 186
    iget-object v1, p0, Lvk;->a:Lcj;

    invoke-static {v1}, Lcj;->a(Lcj;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lvk;->a:Lcj;

    invoke-static {v3}, Lcj;->b(Lcj;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lvk;->a:Lcj;

    invoke-static {v4}, Lcj;->c(Lcj;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lvk;->a:Lcj;

    invoke-static {v5}, Lcj;->d(Lcj;)Ljava/io/File;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcj;->a(Lcj;Ljava/util/Map;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    goto :goto_51

    .line 187
    :cond_25
    iget-object v1, p0, Lvk;->a:Lcj;

    invoke-static {v1}, Lcj;->b(Lcj;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 188
    iget-object v1, p0, Lvk;->a:Lcj;

    invoke-static {v1}, Lcj;->b(Lcj;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lvk;->a:Lcj;

    invoke-static {v3}, Lcj;->c(Lcj;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lvk;->a:Lcj;

    invoke-static {v4}, Lcj;->d(Lcj;)Ljava/io/File;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcj;->a(Lcj;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcj;->a(Lcj;Ljava/util/Map;)Ljava/util/Map;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4a} :catch_4d
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4b

    goto :goto_51

    :catchall_4b
    move-exception v1

    goto :goto_57

    :catch_4d
    move-exception v1

    .line 191
    :try_start_4e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_4b

    .line 193
    :cond_51
    :goto_51
    iget-object v1, p0, Lvk;->a:Lcj;

    invoke-static {v1, v0}, Lcj;->a(Lcj;Z)Z

    return-void

    :goto_57
    iget-object v2, p0, Lvk;->a:Lcj;

    invoke-static {v2, v0}, Lcj;->a(Lcj;Z)Z

    throw v1
.end method
