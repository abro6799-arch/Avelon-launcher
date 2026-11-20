###### Class defpackage.MCPortHooks (MCPortHooks)
.class public final LMCPortHooks;
.super Ljava/lang/Object;
.source "MCPortHooks.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beforeExit(I)I
    .registers 2

    .line 11
    sget-object v0, Lmcport/PortConfig;->exitHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    :try_start_4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_c
    return p0
.end method

.method public static dataDir()Ljava/io/File;
    .registers 1

    .line 8
    sget-object v0, Lmcport/PortConfig;->dataDir:Ljava/io/File;

    return-object v0
.end method

.method public static installResources(Lcz;)V
    .registers 2

    .line 17
    :try_start_0
    iget-object v0, p0, Lcz;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcz;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_d
    invoke-virtual {p0}, Lcz;->a()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_15
    return-void
.end method

.method public static openSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 24
    :try_start_5
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 p0, 0x3a98

    invoke-virtual {v0, v1, p0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception p0

    :try_start_11
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    throw p0
.end method

.method public static skinOverride(Ltj;)Z
    .registers 6

    .line 30
    iget-object v0, p0, Ltj;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v2, "http://s3.amazonaws.com/MinecraftSkins/"

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "http://s3.amazonaws.com/MinecraftCloaks/"

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v2, :cond_17

    if-nez v3, :cond_17

    return v1

    :cond_17
    const/4 v3, 0x1

    if-eqz v2, :cond_7b

    const/16 v2, 0x2f

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_37
    sget-object v1, Lmcport/PortConfig;->localSkin:Ljava/io/File;

    if-eqz v1, :cond_7b

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_7b

    sget-object v2, Lmcport/PortConfig;->username:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 38
    :try_start_49
    invoke-static {v1}, Lmcshim/imageio/ImageIO;->read(Ljava/io/File;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    if-eqz v0, :cond_7b

    iget-object v2, p0, Ltj;->c:Lek;

    iget-object v4, p0, Ltj;->b:Lnf;

    if-nez v4, :cond_56

    goto :goto_5c

    :cond_56
    iget-object p0, p0, Ltj;->b:Lnf;

    invoke-interface {p0, v0}, Lnf;->a(Lmcshim/awt/image/BufferedImage;)Lmcshim/awt/image/BufferedImage;

    move-result-object v0

    :goto_5c
    iput-object v0, v2, Lek;->a:Lmcshim/awt/image/BufferedImage;
    :try_end_5e
    .catchall {:try_start_49 .. :try_end_5e} :catchall_5f

    goto :goto_7b

    :catchall_5f
    move-exception p0

    .line 39
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mcport: could not load skin "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7b
    :goto_7b
    return v3
.end method
