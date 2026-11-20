###### Class defpackage.tq (tq)
.class public Ltq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl;


# instance fields
.field protected final a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 20
    :cond_c
    iput-object p1, p0, Ltq;->a:Ljava/io/File;

    return-void
.end method

.method protected static a([Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x0

    .line 120
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1d

    .line 121
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 122
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ltq;->a([Ljava/io/File;)V

    .line 124
    :cond_15
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "Old Format"

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Lwt;
    .registers 5

    .line 129
    new-instance v0, Lfm;

    iget-object v1, p0, Ltq;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1, p2}, Lfm;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 76
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ltq;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_e

    return-void

    .line 79
    :cond_e
    new-instance p1, Ljava/io/File;

    const-string v1, "level.dat"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 82
    :try_start_1b
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Las;->a(Ljava/io/InputStream;)Lnu;

    move-result-object v0

    const-string v1, "Data"

    .line 83
    invoke-virtual {v0, v1}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object v1

    const-string v2, "LevelName"

    .line 84
    invoke-virtual {v1, v2, p2}, Lnu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p2}, Las;->a(Lnu;Ljava/io/OutputStream;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Lyb;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Lei;
    .registers 6

    .line 48
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ltq;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_f

    return-object v1

    .line 51
    :cond_f
    new-instance p1, Ljava/io/File;

    const-string v2, "level.dat"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "Data"

    if-eqz v2, :cond_35

    .line 54
    :try_start_1e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Las;->a(Ljava/io/InputStream;)Lnu;

    move-result-object p1

    .line 55
    invoke-virtual {p1, v3}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object p1

    .line 56
    new-instance v2, Lei;

    invoke-direct {v2, p1}, Lei;-><init>(Lnu;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_30} :catch_31

    return-object v2

    :catch_31
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    :cond_35
    new-instance p1, Ljava/io/File;

    const-string v2, "level.dat_old"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 65
    :try_start_42
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Las;->a(Ljava/io/InputStream;)Lnu;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v3}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object p1

    .line 67
    new-instance v0, Lei;

    invoke-direct {v0, p1}, Lei;-><init>(Lnu;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_54} :catch_55

    return-object v0

    :catch_55
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_59
    return-object v1
.end method

.method public b()Ljava/util/List;
    .registers 13

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :cond_6
    :goto_6
    const/4 v2, 0x5

    if-ge v1, v2, :cond_34

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "World"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-virtual {p0, v4}, Ltq;->b(Ljava/lang/String;)Lei;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 37
    new-instance v11, Lvb;

    const-string v5, ""

    invoke-virtual {v2}, Lei;->l()J

    move-result-wide v6

    invoke-virtual {v2}, Lei;->g()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lvb;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_34
    return-object v0
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 112
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ltq;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_e

    return-void

    .line 115
    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Ltq;->a([Ljava/io/File;)V

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
