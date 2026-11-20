###### Class defpackage.to (to)
.class public Lto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbf;


# instance fields
.field private a:Ljava/io/File;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lto;->a:Ljava/io/File;

    .line 19
    iput-boolean p2, p0, Lto;->b:Z

    return-void
.end method

.method private a(II)Ljava/io/File;
    .registers 6

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "c."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x24

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    and-int/lit8 p1, p1, 0x3f

    .line 24
    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    and-int/lit8 p2, p2, 0x3f

    .line 25
    invoke-static {p2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p2

    .line 26
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lto;->a:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_48

    .line 28
    iget-boolean p1, p0, Lto;->b:Z

    if-eqz p1, :cond_47

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    goto :goto_48

    :cond_47
    return-object v2

    .line 31
    :cond_48
    :goto_48
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_5c

    .line 33
    iget-boolean p2, p0, Lto;->b:Z

    if-eqz p2, :cond_5b

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    goto :goto_5c

    :cond_5b
    return-object v2

    .line 36
    :cond_5c
    :goto_5c
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_6c

    .line 38
    iget-boolean p1, p0, Lto;->b:Z

    if-nez p1, :cond_6c

    return-object v2

    :cond_6c
    return-object p2
.end method

.method public static a(Lfd;Lnu;)Llm;
    .registers 8

    const-string v0, "xPos"

    .line 142
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    const-string v1, "zPos"

    .line 143
    invoke-virtual {p1, v1}, Lnu;->e(Ljava/lang/String;)I

    move-result v1

    .line 145
    new-instance v2, Llm;

    invoke-direct {v2, p0, v0, v1}, Llm;-><init>(Lfd;II)V

    const-string v0, "Blocks"

    .line 146
    invoke-virtual {p1, v0}, Lnu;->j(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v2, Llm;->b:[B

    .line 147
    new-instance v0, Lwi;

    const-string v1, "Data"

    invoke-virtual {p1, v1}, Lnu;->j(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lwi;-><init>([B)V

    iput-object v0, v2, Llm;->e:Lwi;

    .line 148
    new-instance v0, Lwi;

    const-string v1, "SkyLight"

    invoke-virtual {p1, v1}, Lnu;->j(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lwi;-><init>([B)V

    iput-object v0, v2, Llm;->f:Lwi;

    .line 149
    new-instance v0, Lwi;

    const-string v1, "BlockLight"

    invoke-virtual {p1, v1}, Lnu;->j(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lwi;-><init>([B)V

    iput-object v0, v2, Llm;->g:Lwi;

    const-string v0, "HeightMap"

    .line 150
    invoke-virtual {p1, v0}, Lnu;->j(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v2, Llm;->h:[B

    const-string v0, "TerrainPopulated"

    .line 151
    invoke-virtual {p1, v0}, Lnu;->m(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Llm;->n:Z

    .line 153
    iget-object v0, v2, Llm;->e:Lwi;

    invoke-virtual {v0}, Lwi;->a()Z

    move-result v0

    if-nez v0, :cond_62

    .line 154
    new-instance v0, Lwi;

    iget-object v1, v2, Llm;->b:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lwi;-><init>(I)V

    iput-object v0, v2, Llm;->e:Lwi;

    .line 157
    :cond_62
    iget-object v0, v2, Llm;->h:[B

    if-eqz v0, :cond_6e

    iget-object v0, v2, Llm;->f:Lwi;

    invoke-virtual {v0}, Lwi;->a()Z

    move-result v0

    if-nez v0, :cond_81

    :cond_6e
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 158
    iput-object v0, v2, Llm;->h:[B

    .line 159
    new-instance v0, Lwi;

    iget-object v1, v2, Llm;->b:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lwi;-><init>(I)V

    iput-object v0, v2, Llm;->f:Lwi;

    .line 160
    invoke-virtual {v2}, Llm;->c()V

    .line 163
    :cond_81
    iget-object v0, v2, Llm;->g:Lwi;

    invoke-virtual {v0}, Lwi;->a()Z

    move-result v0

    if-nez v0, :cond_96

    .line 164
    new-instance v0, Lwi;

    iget-object v1, v2, Llm;->b:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lwi;-><init>(I)V

    iput-object v0, v2, Llm;->g:Lwi;

    .line 165
    invoke-virtual {v2}, Llm;->a()V

    :cond_96
    const-string v0, "Entities"

    .line 168
    invoke-virtual {p1, v0}, Lnu;->l(Ljava/lang/String;)Lsp;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_bb

    move v3, v1

    .line 170
    :goto_a0
    invoke-virtual {v0}, Lsp;->c()I

    move-result v4

    if-ge v3, v4, :cond_bb

    .line 171
    invoke-virtual {v0, v3}, Lsp;->a(I)Lij;

    move-result-object v4

    check-cast v4, Lnu;

    .line 172
    invoke-static {v4, p0}, Ljc;->a(Lnu;Lfd;)Lsn;

    move-result-object v4

    const/4 v5, 0x1

    .line 173
    iput-boolean v5, v2, Llm;->q:Z

    if-eqz v4, :cond_b8

    .line 175
    invoke-virtual {v2, v4}, Llm;->a(Lsn;)V

    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    :cond_bb
    const-string p0, "TileEntities"

    .line 180
    invoke-virtual {p1, p0}, Lnu;->l(Ljava/lang/String;)Lsp;

    move-result-object p0

    if-eqz p0, :cond_db

    .line 182
    :goto_c3
    invoke-virtual {p0}, Lsp;->c()I

    move-result p1

    if-ge v1, p1, :cond_db

    .line 183
    invoke-virtual {p0, v1}, Lsp;->a(I)Lij;

    move-result-object p1

    check-cast p1, Lnu;

    .line 184
    invoke-static {p1}, Low;->c(Lnu;)Low;

    move-result-object p1

    if-eqz p1, :cond_d8

    .line 186
    invoke-virtual {v2, p1}, Llm;->a(Low;)V

    :cond_d8
    add-int/lit8 v1, v1, 0x1

    goto :goto_c3

    :cond_db
    return-object v2
.end method

.method public static a(Llm;Lfd;Lnu;)V
    .registers 7

    .line 107
    invoke-virtual {p1}, Lfd;->r()V

    const-string v0, "xPos"

    .line 108
    iget v1, p0, Llm;->j:I

    invoke-virtual {p2, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "zPos"

    .line 109
    iget v1, p0, Llm;->k:I

    invoke-virtual {p2, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "LastUpdate"

    .line 110
    invoke-virtual {p1}, Lfd;->t()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lnu;->a(Ljava/lang/String;J)V

    const-string p1, "Blocks"

    .line 111
    iget-object v0, p0, Llm;->b:[B

    invoke-virtual {p2, p1, v0}, Lnu;->a(Ljava/lang/String;[B)V

    .line 112
    iget-object p1, p0, Llm;->e:Lwi;

    iget-object p1, p1, Lwi;->a:[B

    const-string v0, "Data"

    invoke-virtual {p2, v0, p1}, Lnu;->a(Ljava/lang/String;[B)V

    .line 113
    iget-object p1, p0, Llm;->f:Lwi;

    iget-object p1, p1, Lwi;->a:[B

    const-string v0, "SkyLight"

    invoke-virtual {p2, v0, p1}, Lnu;->a(Ljava/lang/String;[B)V

    .line 114
    iget-object p1, p0, Llm;->g:Lwi;

    iget-object p1, p1, Lwi;->a:[B

    const-string v0, "BlockLight"

    invoke-virtual {p2, v0, p1}, Lnu;->a(Ljava/lang/String;[B)V

    const-string p1, "HeightMap"

    .line 115
    iget-object v0, p0, Llm;->h:[B

    invoke-virtual {p2, p1, v0}, Lnu;->a(Ljava/lang/String;[B)V

    const-string p1, "TerrainPopulated"

    .line 116
    iget-boolean v0, p0, Llm;->n:Z

    invoke-virtual {p2, p1, v0}, Lnu;->a(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 118
    iput-boolean p1, p0, Llm;->q:Z

    .line 119
    new-instance v0, Lsp;

    invoke-direct {v0}, Lsp;-><init>()V

    .line 120
    :goto_52
    iget-object v1, p0, Llm;->m:[Ljava/util/List;

    array-length v1, v1

    if-ge p1, v1, :cond_80

    .line 121
    iget-object v1, p0, Llm;->m:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5f
    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    const/4 v3, 0x1

    .line 122
    iput-boolean v3, p0, Llm;->q:Z

    .line 123
    new-instance v3, Lnu;

    invoke-direct {v3}, Lnu;-><init>()V

    .line 124
    invoke-virtual {v2, v3}, Lsn;->c(Lnu;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 125
    invoke-virtual {v0, v3}, Lsp;->a(Lij;)V

    goto :goto_5f

    :cond_7d
    add-int/lit8 p1, p1, 0x1

    goto :goto_52

    :cond_80
    const-string p1, "Entities"

    .line 129
    invoke-virtual {p2, p1, v0}, Lnu;->a(Ljava/lang/String;Lij;)V

    .line 131
    new-instance p1, Lsp;

    invoke-direct {p1}, Lsp;-><init>()V

    .line 132
    iget-object p0, p0, Llm;->l:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_94
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Low;

    .line 133
    new-instance v1, Lnu;

    invoke-direct {v1}, Lnu;-><init>()V

    .line 134
    invoke-virtual {v0, v1}, Low;->b(Lnu;)V

    .line 135
    invoke-virtual {p1, v1}, Lsp;->a(Lij;)V

    goto :goto_94

    :cond_ac
    const-string p0, "TileEntities"

    .line 137
    invoke-virtual {p2, p0, p1}, Lnu;->a(Ljava/lang/String;Lij;)V

    return-void
.end method


# virtual methods
.method public a(Lfd;II)Llm;
    .registers 13

    const-string v0, ", "

    const-string v1, "Level"

    .line 44
    invoke-direct {p0, p2, p3}, Lto;->a(II)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_ce

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 48
    :try_start_11
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 49
    invoke-static {v4}, Las;->a(Ljava/io/InputStream;)Lnu;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v1}, Lnu;->b(Ljava/lang/String;)Z

    move-result v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_ca

    const-string v5, ","

    const-string v6, "Chunk file at "

    if-nez v4, :cond_41

    .line 51
    :try_start_24
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is missing level data, skipping"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v3

    .line 54
    :cond_41
    invoke-virtual {v2, v1}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object v4

    const-string v7, "Blocks"

    invoke-virtual {v4, v7}, Lnu;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 55
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is missing block data, skipping"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v3

    .line 58
    :cond_6a
    invoke-virtual {v2, v1}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object v4

    invoke-static {p1, v4}, Lto;->a(Lfd;Lnu;)Llm;

    move-result-object v4

    .line 59
    invoke-virtual {v4, p2, p3}, Llm;->a(II)Z

    move-result v7

    if-nez v7, :cond_c6

    .line 60
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is in the wrong location; relocating. (Expected "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", got "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Llm;->j:I

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Llm;->k:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "xPos"

    .line 61
    invoke-virtual {v2, v0, p2}, Lnu;->a(Ljava/lang/String;I)V

    const-string p2, "zPos"

    .line 62
    invoke-virtual {v2, p2, p3}, Lnu;->a(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v2, v1}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object p2

    invoke-static {p1, p2}, Lto;->a(Lfd;Lnu;)Llm;

    move-result-object v4

    .line 65
    :cond_c6
    invoke-virtual {v4}, Llm;->i()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_c9} :catch_ca

    return-object v4

    :catch_ca
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ce
    return-object v3
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lfd;Llm;)V
    .registers 9

    .line 75
    invoke-virtual {p1}, Lfd;->r()V

    .line 76
    iget v0, p2, Llm;->j:I

    iget v1, p2, Llm;->k:I

    invoke-direct {p0, v0, v1}, Lto;->a(II)Ljava/io/File;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 78
    invoke-virtual {p1}, Lfd;->x()Lei;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lei;->g()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lei;->b(J)V

    .line 83
    :cond_21
    :try_start_21
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lto;->a:Ljava/io/File;

    const-string v3, "tmp_chunk.dat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 87
    new-instance v3, Lnu;

    invoke-direct {v3}, Lnu;-><init>()V

    .line 88
    new-instance v4, Lnu;

    invoke-direct {v4}, Lnu;-><init>()V

    const-string v5, "Level"

    .line 89
    invoke-virtual {v3, v5, v4}, Lnu;->a(Ljava/lang/String;Lij;)V

    .line 90
    invoke-static {p2, p1, v4}, Lto;->a(Llm;Lfd;Lnu;)V

    .line 91
    invoke-static {v3, v2}, Las;->a(Lnu;Ljava/io/OutputStream;)V

    .line 92
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_50

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 97
    :cond_50
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 99
    invoke-virtual {p1}, Lfd;->x()Lei;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lei;->g()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lei;->b(J)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_63} :catch_64

    goto :goto_68

    :catch_64
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_68
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Lfd;Llm;)V
    .registers 3

    return-void
.end method
