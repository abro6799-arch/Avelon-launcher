###### Class defpackage.wz (wz)
.class Lwz;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lnet/minecraft/client/Minecraft;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lvx;


# direct methods
.method constructor <init>(Lvx;Lnet/minecraft/client/Minecraft;Ljava/lang/String;I)V
    .registers 5

    .line 20
    iput-object p1, p0, Lwz;->d:Lvx;

    iput-object p2, p0, Lwz;->a:Lnet/minecraft/client/Minecraft;

    iput-object p3, p0, Lwz;->b:Ljava/lang/String;

    iput p4, p0, Lwz;->c:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "disconnect.genericReason"

    const-string v1, "connect.failed"

    .line 24
    :try_start_4
    iget-object v2, p0, Lwz;->d:Lvx;

    new-instance v3, Lnb;

    iget-object v4, p0, Lwz;->a:Lnet/minecraft/client/Minecraft;

    iget-object v5, p0, Lwz;->b:Ljava/lang/String;

    iget v6, p0, Lwz;->c:I

    invoke-direct {v3, v4, v5, v6}, Lnb;-><init>(Lnet/minecraft/client/Minecraft;Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lvx;->a(Lvx;Lnb;)Lnb;

    .line 25
    iget-object v2, p0, Lwz;->d:Lvx;

    invoke-static {v2}, Lvx;->a(Lvx;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return-void

    .line 26
    :cond_1d
    iget-object v2, p0, Lwz;->d:Lvx;

    invoke-static {v2}, Lvx;->b(Lvx;)Lnb;

    move-result-object v2

    new-instance v3, Lmp;

    iget-object v4, p0, Lwz;->a:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->k:Lgr;

    iget-object v4, v4, Lgr;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Lmp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lnb;->b(Lki;)V
    :try_end_31
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_31} :catch_6f
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_31} :catch_52
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_31} :catch_32

    goto :goto_9b

    :catch_32
    move-exception v2

    .line 34
    iget-object v3, p0, Lwz;->d:Lvx;

    invoke-static {v3}, Lvx;->a(Lvx;)Z

    move-result v3

    if-eqz v3, :cond_3c

    return-void

    .line 35
    :cond_3c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    iget-object v3, p0, Lwz;->a:Lnet/minecraft/client/Minecraft;

    new-instance v4, Lex;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v4, v1, v0, v2}, Lex;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_9b

    :catch_52
    move-exception v2

    .line 31
    iget-object v3, p0, Lwz;->d:Lvx;

    invoke-static {v3}, Lvx;->a(Lvx;)Z

    move-result v3

    if-eqz v3, :cond_5c

    return-void

    .line 32
    :cond_5c
    iget-object v3, p0, Lwz;->a:Lnet/minecraft/client/Minecraft;

    new-instance v4, Lex;

    invoke-virtual {v2}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v4, v1, v0, v2}, Lex;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    goto :goto_9b

    .line 28
    :catch_6f
    iget-object v2, p0, Lwz;->d:Lvx;

    invoke-static {v2}, Lvx;->a(Lvx;)Z

    move-result v2

    if-eqz v2, :cond_78

    return-void

    .line 29
    :cond_78
    iget-object v2, p0, Lwz;->a:Lnet/minecraft/client/Minecraft;

    new-instance v3, Lex;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown host \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lwz;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4}, Lex;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :goto_9b
    return-void
.end method
