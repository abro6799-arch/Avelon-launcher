###### Class defpackage.fm (fm)
.class public Lfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwt;


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Minecraft"

    .line 24
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lfm;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfm;->e:J

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lfm;->b:Ljava/io/File;

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 34
    new-instance p1, Ljava/io/File;

    const-string p2, "players"

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lfm;->c:Ljava/io/File;

    .line 35
    new-instance p2, Ljava/io/File;

    const-string v1, "data"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lfm;->d:Ljava/io/File;

    .line 36
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    if-eqz p3, :cond_2d

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_2d
    invoke-direct {p0}, Lfm;->d()V

    return-void
.end method

.method private d()V
    .registers 5

    .line 47
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lfm;->b:Ljava/io/File;

    const-string v2, "session.lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_21

    .line 50
    :try_start_13
    iget-wide v2, p0, Lfm;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 52
    :try_start_18
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_1c
    move-exception v0

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    throw v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_21

    :catch_21
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to check session lock, aborting"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lxa;)Lbf;
    .registers 5

    .line 82
    instance-of p1, p1, Lwd;

    const/4 v0, 0x1

    if-eqz p1, :cond_17

    .line 83
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lfm;->b:Ljava/io/File;

    const-string v2, "DIM-1"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 85
    new-instance v1, Lto;

    invoke-direct {v1, p1, v0}, Lto;-><init>(Ljava/io/File;Z)V

    return-object v1

    .line 88
    :cond_17
    new-instance p1, Lto;

    iget-object v1, p0, Lfm;->b:Ljava/io/File;

    invoke-direct {p1, v1, v0}, Lto;-><init>(Ljava/io/File;Z)V

    return-object p1
.end method

.method protected a()Ljava/io/File;
    .registers 2

    .line 61
    iget-object v0, p0, Lfm;->b:Ljava/io/File;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 207
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lfm;->d:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".dat"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lei;)V
    .registers 7

    .line 144
    invoke-virtual {p1}, Lei;->a()Lnu;

    move-result-object p1

    .line 146
    new-instance v0, Lnu;

    invoke-direct {v0}, Lnu;-><init>()V

    const-string v1, "Data"

    .line 147
    invoke-virtual {v0, v1, p1}, Lnu;->a(Ljava/lang/String;Lij;)V

    .line 150
    :try_start_e
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lfm;->b:Ljava/io/File;

    const-string v2, "level.dat_new"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lfm;->b:Ljava/io/File;

    const-string v3, "level.dat_old"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lfm;->b:Ljava/io/File;

    const-string v4, "level.dat"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v3}, Las;->a(Lnu;Ljava/io/OutputStream;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 157
    :cond_3a
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 158
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 159
    :cond_46
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_57
    :goto_57
    return-void
.end method

.method public a(Lei;Ljava/util/List;)V
    .registers 7

    .line 121
    invoke-virtual {p1, p2}, Lei;->a(Ljava/util/List;)Lnu;

    move-result-object p1

    .line 123
    new-instance p2, Lnu;

    invoke-direct {p2}, Lnu;-><init>()V

    const-string v0, "Data"

    .line 124
    invoke-virtual {p2, v0, p1}, Lnu;->a(Ljava/lang/String;Lij;)V

    .line 127
    :try_start_e
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lfm;->b:Ljava/io/File;

    const-string v1, "level.dat_new"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lfm;->b:Ljava/io/File;

    const-string v2, "level.dat_old"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lfm;->b:Ljava/io/File;

    const-string v3, "level.dat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p2, v2}, Las;->a(Lnu;Ljava/io/OutputStream;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 134
    :cond_3a
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_46

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 136
    :cond_46
    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_57

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_57
    :goto_57
    return-void
.end method

.method public b()V
    .registers 7

    .line 66
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lfm;->b:Ljava/io/File;

    const-string v2, "session.lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_2e

    .line 69
    :try_start_13
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iget-wide v4, p0, Lfm;->e:J
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_29

    cmp-long v0, v2, v4

    if-nez v0, :cond_21

    .line 73
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_2e

    return-void

    .line 70
    :cond_21
    :try_start_21
    new-instance v0, Lus;

    const-string v2, "The save is being accessed from another location, aborting"

    invoke-direct {v0, v2}, Lus;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    .line 73
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    throw v0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_2e

    .line 76
    :catch_2e
    new-instance v0, Lus;

    const-string v1, "Failed to check session lock, aborting"

    invoke-direct {v0, v1}, Lus;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lei;
    .registers 5

    .line 92
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lfm;->b:Ljava/io/File;

    const-string v2, "level.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "Data"

    if-eqz v1, :cond_28

    .line 95
    :try_start_11
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Las;->a(Ljava/io/InputStream;)Lnu;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v2}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object v0

    .line 98
    new-instance v1, Lei;

    invoke-direct {v1, v0}, Lei;-><init>(Lnu;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_24

    return-object v1

    :catch_24
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    :cond_28
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lfm;->b:Ljava/io/File;

    const-string v3, "level.dat_old"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 107
    :try_start_37
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Las;->a(Ljava/io/InputStream;)Lnu;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v2}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object v0

    .line 110
    new-instance v1, Lei;

    invoke-direct {v1, v0}, Lei;-><init>(Lnu;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_49} :catch_4a

    return-object v1

    :catch_4a
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4e
    const/4 v0, 0x0

    return-object v0
.end method
