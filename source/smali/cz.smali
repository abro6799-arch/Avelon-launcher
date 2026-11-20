###### Class defpackage.cz (cz)
.class public Lcz;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/File;

.field private b:Lnet/minecraft/client/Minecraft;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Lnet/minecraft/client/Minecraft;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcz;->c:Z

    .line 16
    iput-object p2, p0, Lcz;->b:Lnet/minecraft/client/Minecraft;

    const-string p2, "Resource download thread"

    .line 17
    invoke-virtual {p0, p2}, Lcz;->setName(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 18
    invoke-virtual {p0, p2}, Lcz;->setDaemon(Z)V

    .line 19
    new-instance p2, Ljava/io/File;

    const-string v0, "resources/"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcz;->a:Ljava/io/File;

    .line 20
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, p0, Lcz;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_3f

    :cond_29
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The working directory could not be created: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcz;->a:Ljava/io/File;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    :goto_3f
    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)V
    .registers 7

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    .line 60
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_6c

    .line 61
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 62
    aget-object v1, p1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcz;->a(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_69

    .line 65
    :cond_30
    :try_start_30
    iget-object v1, p0, Lcz;->b:Lnet/minecraft/client/Minecraft;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Lnet/minecraft/client/Minecraft;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4c} :catch_4d

    goto :goto_69

    .line 67
    :catch_4d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to add "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6c
    return-void
.end method

.method private a(Ljava/net/URL;Ljava/io/File;J)V
    .registers 6

    const/16 p3, 0x1000

    new-array p3, p3, [B

    .line 104
    new-instance p4, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 105
    new-instance p1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 108
    :cond_17
    invoke-virtual {p4, p3}, Ljava/io/DataInputStream;->read([B)I

    move-result p2

    if-ltz p2, :cond_26

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, p3, v0, p2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 110
    iget-boolean p2, p0, Lcz;->c:Z

    if-eqz p2, :cond_17

    return-void

    .line 112
    :cond_26
    invoke-virtual {p4}, Ljava/io/DataInputStream;->close()V

    .line 113
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method private a(Ljava/net/URL;Ljava/lang/String;JI)V
    .registers 8

    :try_start_0
    const-string v0, "/"

    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sound"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "newsound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_20

    :cond_1c
    const/4 v0, 0x1

    if-eq p5, v0, :cond_23

    return-void

    :cond_20
    :goto_20
    if-eqz p5, :cond_23

    return-void

    .line 89
    :cond_23
    new-instance p5, Ljava/io/File;

    iget-object v0, p0, Lcz;->a:Ljava/io/File;

    invoke-direct {p5, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-eqz v0, :cond_54

    .line 91
    :cond_38
    invoke-virtual {p5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const-string v0, " "

    const-string v1, "%20"

    .line 92
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-direct {p0, v1, p5, p3, p4}, Lcz;->a(Ljava/net/URL;Ljava/io/File;J)V

    .line 94
    iget-boolean p1, p0, Lcz;->c:Z

    if-eqz p1, :cond_54

    return-void

    .line 96
    :cond_54
    iget-object p1, p0, Lcz;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p1, p2, p5}, Lnet/minecraft/client/Minecraft;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5e
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 55
    iget-object v0, p0, Lcz;->a:Ljava/io/File;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcz;->a(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcz;->c:Z

    return-void
.end method

.method public run()V
    .registers 1

    invoke-static {p0}, LMCPortHooks;->installResources(Lcz;)V

    return-void
.end method
