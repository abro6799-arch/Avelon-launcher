###### Class defpackage.hi (hi)
.class public Lhi;
.super Ltq;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Ltq;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/util/ArrayList;IILyb;)V
    .registers 14

    .line 159
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 163
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldz;

    .line 172
    invoke-virtual {v1}, Ldz;->b()I

    move-result v2

    .line 173
    invoke-virtual {v1}, Ldz;->c()I

    move-result v3

    .line 175
    invoke-static {p1, v2, v3}, Lrj;->a(Ljava/io/File;II)Lqj;

    move-result-object v4

    and-int/lit8 v2, v2, 0x1f

    and-int/lit8 v3, v3, 0x1f

    .line 176
    invoke-virtual {v4, v2, v3}, Lqj;->c(II)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 178
    :try_start_2d
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljava/util/zip/GZIPInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ldz;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 180
    invoke-virtual {v4, v2, v3}, Lqj;->b(II)Ljava/io/DataOutputStream;

    move-result-object v1

    .line 183
    :goto_44
    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_50

    const/4 v3, 0x0

    .line 184
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_44

    .line 187
    :cond_50
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 188
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception v1

    .line 190
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5b
    :goto_5b
    add-int/lit8 p3, p3, 0x1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    int-to-double v3, p3

    mul-double/2addr v3, v1

    int-to-double v1, p4

    div-double/2addr v3, v1

    .line 195
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    .line 196
    invoke-interface {p5, v1}, Lyb;->a(I)V

    goto :goto_b

    .line 198
    :cond_6c
    invoke-static {}, Lrj;->a()V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 19

    .line 138
    new-instance v0, Lcm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcm;-><init>(Lic;)V

    .line 139
    new-instance v2, Lrs;

    invoke-direct {v2, v1}, Lrs;-><init>(Lic;)V

    move-object/from16 v1, p1

    .line 141
    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 142
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_14
    if-ge v5, v3, :cond_48

    aget-object v6, v1, v5

    move-object/from16 v7, p3

    .line 144
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v6, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    .line 147
    array-length v8, v6

    move v9, v4

    :goto_23
    if-ge v9, v8, :cond_43

    aget-object v10, v6, v9

    .line 148
    invoke-virtual {v10, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    .line 150
    array-length v11, v10

    move v12, v4

    :goto_2d
    if-ge v12, v11, :cond_3e

    aget-object v13, v10, v12

    .line 151
    new-instance v14, Ldz;

    invoke-direct {v14, v13}, Ldz;-><init>(Ljava/io/File;)V

    move-object/from16 v13, p2

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2d

    :cond_3e
    move-object/from16 v13, p2

    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :cond_43
    move-object/from16 v13, p2

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_48
    return-void
.end method

.method private a(Ljava/util/ArrayList;IILyb;)V
    .registers 9

    .line 204
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 207
    invoke-static {v1}, Lhi;->a([Ljava/io/File;)V

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 p2, p2, 0x1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    int-to-double v2, p2

    mul-double/2addr v2, v0

    int-to-double v0, p3

    div-double/2addr v2, v0

    .line 211
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 212
    invoke-interface {p4, v0}, Lyb;->a(I)V

    goto :goto_4

    :cond_2b
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "Scaevolus\' McRegion"

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Lwt;
    .registers 5

    .line 67
    new-instance v0, Lmx;

    iget-object v1, p0, Lhi;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1, p2}, Lmx;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lhi;->b(Ljava/lang/String;)Lei;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 85
    invoke-virtual {p1}, Lei;->k()I

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x1

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Lyb;)Z
    .registers 16

    const/4 v0, 0x0

    .line 94
    invoke-interface {p2, v0}, Lyb;->a(I)V

    .line 96
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lhi;->a:Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    new-instance v11, Ljava/io/File;

    const-string v1, "DIM-1"

    invoke-direct {v11, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Scanning folders..."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, v2, v7, v8}, Lhi;->a(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 110
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 111
    invoke-direct {p0, v11, v9, v10}, Lhi;->a(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 114
    :cond_39
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v12, v1, v3

    .line 115
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Total conversion count is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, v7

    move v5, v12

    move-object v6, p2

    .line 118
    invoke-direct/range {v1 .. v6}, Lhi;->a(Ljava/io/File;Ljava/util/ArrayList;IILyb;)V

    .line 120
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object v2, v11

    move-object v3, v9

    invoke-direct/range {v1 .. v6}, Lhi;->a(Ljava/io/File;Ljava/util/ArrayList;IILyb;)V

    .line 122
    invoke-virtual {p0, p1}, Lhi;->b(Ljava/lang/String;)Lei;

    move-result-object v1

    const/16 v2, 0x4abc

    .line 123
    invoke-virtual {v1, v2}, Lei;->d(I)V

    .line 125
    invoke-virtual {p0, p1, v0}, Lhi;->a(Ljava/lang/String;Z)Lwt;

    move-result-object p1

    .line 126
    invoke-interface {p1, v1}, Lwt;->a(Lei;)V

    .line 129
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {p0, v8, p1, v12, p2}, Lhi;->a(Ljava/util/ArrayList;IILyb;)V

    .line 130
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 131
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {p0, v10, p1, v12, p2}, Lhi;->a(Ljava/util/ArrayList;IILyb;)V

    :cond_a4
    const/4 p1, 0x1

    return p1
.end method

.method public b()Ljava/util/List;
    .registers 16

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v1, p0, Lhi;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 38
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_53

    aget-object v5, v1, v4

    .line 39
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_50

    .line 43
    :cond_19
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 45
    invoke-virtual {p0, v8}, Lhi;->b(Ljava/lang/String;)Lei;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 47
    invoke-virtual {v5}, Lei;->k()I

    move-result v6

    const/16 v7, 0x4abc

    if-eq v6, v7, :cond_2e

    const/4 v6, 0x1

    move v14, v6

    goto :goto_2f

    :cond_2e
    move v14, v3

    .line 48
    :goto_2f
    invoke-virtual {v5}, Lei;->j()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3e

    .line 49
    invoke-static {v6}, Lin;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    goto :goto_3e

    :cond_3c
    move-object v9, v6

    goto :goto_3f

    :cond_3e
    :goto_3e
    move-object v9, v8

    .line 52
    :goto_3f
    new-instance v6, Lvb;

    invoke-virtual {v5}, Lei;->l()J

    move-result-wide v10

    invoke-virtual {v5}, Lei;->g()J

    move-result-wide v12

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Lvb;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    :goto_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_53
    return-object v0
.end method

.method public c()V
    .registers 1

    .line 61
    invoke-static {}, Lrj;->a()V

    return-void
.end method
