###### Class defpackage.lm (lm)
.class public Llm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# instance fields
.field public b:[B

.field public c:Z

.field public d:Lfd;

.field public e:Lwi;

.field public f:Lwi;

.field public g:Lwi;

.field public h:[B

.field public i:I

.field public final j:I

.field public final k:I

.field public l:Ljava/util/Map;

.field public m:[Ljava/util/List;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:J


# direct methods
.method public constructor <init>(Lfd;II)V
    .registers 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llm;->l:Ljava/util/Map;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/util/List;

    .line 29
    iput-object v0, p0, Llm;->m:[Ljava/util/List;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Llm;->n:Z

    .line 32
    iput-boolean v0, p0, Llm;->o:Z

    .line 34
    iput-boolean v0, p0, Llm;->q:Z

    const-wide/16 v1, 0x0

    .line 35
    iput-wide v1, p0, Llm;->r:J

    .line 38
    iput-object p1, p0, Llm;->d:Lfd;

    .line 39
    iput p2, p0, Llm;->j:I

    .line 40
    iput p3, p0, Llm;->k:I

    const/16 p1, 0x100

    new-array p1, p1, [B

    .line 41
    iput-object p1, p0, Llm;->h:[B

    .line 42
    :goto_27
    iget-object p1, p0, Llm;->m:[Ljava/util/List;

    array-length p2, p1

    if-ge v0, p2, :cond_36

    .line 43
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_36
    return-void
.end method

.method public constructor <init>(Lfd;[BII)V
    .registers 5

    .line 48
    invoke-direct {p0, p1, p3, p4}, Llm;-><init>(Lfd;II)V

    .line 50
    iput-object p2, p0, Llm;->b:[B

    .line 51
    new-instance p1, Lwi;

    array-length p3, p2

    invoke-direct {p1, p3}, Lwi;-><init>(I)V

    iput-object p1, p0, Llm;->e:Lwi;

    .line 52
    new-instance p1, Lwi;

    array-length p3, p2

    invoke-direct {p1, p3}, Lwi;-><init>(I)V

    iput-object p1, p0, Llm;->f:Lwi;

    .line 53
    new-instance p1, Lwi;

    array-length p2, p2

    invoke-direct {p1, p2}, Lwi;-><init>(I)V

    iput-object p1, p0, Llm;->g:Lwi;

    return-void
.end method

.method private c(II)V
    .registers 5

    .line 154
    invoke-virtual {p0, p1, p2}, Llm;->b(II)I

    move-result v0

    .line 156
    iget v1, p0, Llm;->j:I

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, p1

    .line 157
    iget p1, p0, Llm;->k:I

    mul-int/lit8 p1, p1, 0x10

    add-int/2addr p1, p2

    add-int/lit8 p2, v1, -0x1

    .line 158
    invoke-direct {p0, p2, p1, v0}, Llm;->f(III)V

    add-int/lit8 p2, v1, 0x1

    .line 159
    invoke-direct {p0, p2, p1, v0}, Llm;->f(III)V

    add-int/lit8 p2, p1, -0x1

    .line 160
    invoke-direct {p0, v1, p2, v0}, Llm;->f(III)V

    add-int/lit8 p1, p1, 0x1

    .line 161
    invoke-direct {p0, v1, p1, v0}, Llm;->f(III)V

    return-void
.end method

.method private f(III)V
    .registers 14

    .line 165
    iget-object v0, p0, Llm;->d:Lfd;

    invoke-virtual {v0, p1, p2}, Lfd;->d(II)I

    move-result v0

    const/4 v9, 0x1

    if-le v0, p3, :cond_19

    .line 168
    iget-object v1, p0, Llm;->d:Lfd;

    sget-object v2, Leb;->a:Leb;

    move v3, p1

    move v4, p3

    move v5, p2

    move v6, p1

    move v7, v0

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lfd;->a(Leb;IIIIII)V

    .line 169
    iput-boolean v9, p0, Llm;->o:Z

    goto :goto_2a

    :cond_19
    if-ge v0, p3, :cond_2a

    .line 171
    iget-object v1, p0, Llm;->d:Lfd;

    sget-object v2, Leb;->a:Leb;

    move v3, p1

    move v4, v0

    move v5, p2

    move v6, p1

    move v7, p3

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Lfd;->a(Leb;IIIIII)V

    .line 172
    iput-boolean v9, p0, Llm;->o:Z

    :cond_2a
    :goto_2a
    return-void
.end method

.method private g(III)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 178
    iget-object v3, v0, Llm;->h:[B

    shl-int/lit8 v4, v2, 0x4

    or-int/2addr v4, v1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    move/from16 v5, p2

    if-le v5, v3, :cond_14

    goto :goto_15

    :cond_14
    move v5, v3

    :goto_15
    shl-int/lit8 v6, v1, 0xb

    shl-int/lit8 v7, v2, 0x7

    or-int/2addr v6, v7

    move v13, v5

    :goto_1b
    const/4 v15, 0x1

    if-lez v13, :cond_30

    .line 183
    sget-object v5, Luu;->q:[I

    iget-object v7, v0, Llm;->b:[B

    add-int v8, v6, v13

    sub-int/2addr v8, v15

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v5, v5, v7

    if-nez v5, :cond_30

    add-int/lit8 v13, v13, -0x1

    goto :goto_1b

    :cond_30
    if-ne v13, v3, :cond_33

    return-void

    .line 187
    :cond_33
    iget-object v5, v0, Llm;->d:Lfd;

    invoke-virtual {v5, v1, v2, v13, v3}, Lfd;->h(IIII)V

    .line 188
    iget-object v5, v0, Llm;->h:[B

    int-to-byte v6, v13

    aput-byte v6, v5, v4

    .line 190
    iget v4, v0, Llm;->i:I

    const/16 v5, 0x10

    const/4 v14, 0x0

    if-ge v13, v4, :cond_47

    .line 191
    iput v13, v0, Llm;->i:I

    goto :goto_64

    :cond_47
    const/16 v4, 0x7f

    move v6, v14

    :goto_4a
    if-ge v6, v5, :cond_62

    move v7, v14

    :goto_4d
    if-ge v7, v5, :cond_5f

    .line 196
    iget-object v8, v0, Llm;->h:[B

    shl-int/lit8 v9, v7, 0x4

    or-int/2addr v9, v6

    aget-byte v8, v8, v9

    and-int/lit16 v9, v8, 0xff

    if-ge v9, v4, :cond_5c

    and-int/lit16 v4, v8, 0xff

    :cond_5c
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    :cond_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 198
    :cond_62
    iput v4, v0, Llm;->i:I

    .line 201
    :goto_64
    iget v4, v0, Llm;->j:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 202
    iget v6, v0, Llm;->k:I

    mul-int/2addr v6, v5

    add-int v16, v6, v2

    const/16 v12, 0xf

    if-ge v13, v3, :cond_7f

    move v5, v13

    :goto_72
    if-ge v5, v3, :cond_7c

    .line 205
    iget-object v6, v0, Llm;->f:Lwi;

    invoke-virtual {v6, v1, v5, v2, v12}, Lwi;->a(IIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_72

    :cond_7c
    move/from16 v17, v12

    goto :goto_9a

    .line 208
    :cond_7f
    iget-object v5, v0, Llm;->d:Lfd;

    sget-object v6, Leb;->a:Leb;

    move v7, v4

    move v8, v3

    move/from16 v9, v16

    move v10, v4

    move v11, v13

    move/from16 v17, v12

    move/from16 v12, v16

    invoke-virtual/range {v5 .. v12}, Lfd;->a(Leb;IIIIII)V

    :goto_90
    if-ge v3, v13, :cond_9a

    .line 210
    iget-object v5, v0, Llm;->f:Lwi;

    invoke-virtual {v5, v1, v3, v2, v14}, Lwi;->a(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_90

    :cond_9a
    :goto_9a
    move v3, v13

    move/from16 v12, v17

    :goto_9d
    if-lez v3, :cond_b8

    if-lez v12, :cond_b8

    add-int/lit8 v3, v3, -0x1

    .line 218
    sget-object v5, Luu;->q:[I

    invoke-virtual {v0, v1, v3, v2}, Llm;->a(III)I

    move-result v6

    aget v5, v5, v6

    if-nez v5, :cond_ae

    move v5, v15

    :cond_ae
    sub-int/2addr v12, v5

    if-gez v12, :cond_b2

    move v12, v14

    .line 222
    :cond_b2
    iget-object v5, v0, Llm;->f:Lwi;

    invoke-virtual {v5, v1, v3, v2, v12}, Lwi;->a(IIII)V

    goto :goto_9d

    :cond_b8
    move v10, v3

    :goto_b9
    if-lez v10, :cond_ca

    .line 226
    sget-object v3, Luu;->q:[I

    add-int/lit8 v5, v10, -0x1

    invoke-virtual {v0, v1, v5, v2}, Llm;->a(III)I

    move-result v5

    aget v3, v3, v5

    if-nez v3, :cond_ca

    add-int/lit8 v10, v10, -0x1

    goto :goto_b9

    :cond_ca
    if-eq v10, v13, :cond_db

    .line 229
    iget-object v7, v0, Llm;->d:Lfd;

    sget-object v8, Leb;->a:Leb;

    add-int/lit8 v9, v4, -0x1

    add-int/lit8 v11, v16, -0x1

    add-int/lit8 v12, v4, 0x1

    add-int/lit8 v14, v16, 0x1

    invoke-virtual/range {v7 .. v14}, Lfd;->a(Leb;IIIIII)V

    .line 232
    :cond_db
    iput-boolean v15, v0, Llm;->o:Z

    return-void
.end method


# virtual methods
.method public a(III)I
    .registers 5

    .line 236
    iget-object v0, p0, Llm;->b:[B

    shl-int/lit8 p1, p1, 0xb

    shl-int/lit8 p3, p3, 0x7

    or-int/2addr p1, p3

    or-int/2addr p1, p2

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public a(Leb;III)I
    .registers 6

    .line 333
    sget-object v0, Leb;->a:Leb;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Llm;->f:Lwi;

    invoke-virtual {p1, p2, p3, p4}, Lwi;->a(III)I

    move-result p1

    return p1

    .line 334
    :cond_b
    sget-object v0, Leb;->b:Leb;

    if-ne p1, v0, :cond_16

    iget-object p1, p0, Llm;->g:Lwi;

    invoke-virtual {p1, p2, p3, p4}, Lwi;->a(III)I

    move-result p1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public a([BIIIIIII)I
    .registers 14

    move v0, p2

    :goto_1
    if-ge v0, p5, :cond_1a

    move v1, p4

    :goto_4
    if-ge v1, p7, :cond_17

    shl-int/lit8 v2, v0, 0xb

    shl-int/lit8 v3, v1, 0x7

    or-int/2addr v2, v3

    or-int/2addr v2, p3

    sub-int v3, p6, p3

    .line 618
    iget-object v4, p0, Llm;->b:[B

    invoke-static {p1, p8, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p8, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 622
    :cond_1a
    invoke-virtual {p0}, Llm;->b()V

    move v0, p2

    :goto_1e
    if-ge v0, p5, :cond_3d

    move v1, p4

    :goto_21
    if-ge v1, p7, :cond_3a

    shl-int/lit8 v2, v0, 0xb

    shl-int/lit8 v3, v1, 0x7

    or-int/2addr v2, v3

    or-int/2addr v2, p3

    shr-int/lit8 v2, v2, 0x1

    sub-int v3, p6, p3

    .line 627
    div-int/lit8 v3, v3, 0x2

    .line 628
    iget-object v4, p0, Llm;->e:Lwi;

    iget-object v4, v4, Lwi;->a:[B

    invoke-static {p1, p8, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p8, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_3d
    move v0, p2

    :goto_3e
    if-ge v0, p5, :cond_5d

    move v1, p4

    :goto_41
    if-ge v1, p7, :cond_5a

    shl-int/lit8 v2, v0, 0xb

    shl-int/lit8 v3, v1, 0x7

    or-int/2addr v2, v3

    or-int/2addr v2, p3

    shr-int/lit8 v2, v2, 0x1

    sub-int v3, p6, p3

    .line 635
    div-int/lit8 v3, v3, 0x2

    .line 636
    iget-object v4, p0, Llm;->g:Lwi;

    iget-object v4, v4, Lwi;->a:[B

    invoke-static {p1, p8, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p8, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_5d
    :goto_5d
    if-ge p2, p5, :cond_7c

    move v0, p4

    :goto_60
    if-ge v0, p7, :cond_79

    shl-int/lit8 v1, p2, 0xb

    shl-int/lit8 v2, v0, 0x7

    or-int/2addr v1, v2

    or-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x1

    sub-int v2, p6, p3

    .line 643
    div-int/lit8 v2, v2, 0x2

    .line 644
    iget-object v3, p0, Llm;->f:Lwi;

    iget-object v3, v3, Lwi;->a:[B

    invoke-static {p1, p8, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p8, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    :cond_79
    add-int/lit8 p2, p2, 0x1

    goto :goto_5d

    :cond_7c
    return p8
.end method

.method public a(J)Ljava/util/Random;
    .registers 11

    .line 654
    new-instance v0, Ljava/util/Random;

    iget-object v1, p0, Llm;->d:Lfd;

    invoke-virtual {v1}, Lfd;->s()J

    move-result-wide v1

    iget v3, p0, Llm;->j:I

    mul-int v4, v3, v3

    const v5, 0x4c1906

    mul-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v1, v4

    const v4, 0x5ac0db

    mul-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iget v3, p0, Llm;->k:I

    mul-int v4, v3, v3

    int-to-long v4, v4

    const-wide/32 v6, 0x4307a7

    mul-long/2addr v4, v6

    add-long/2addr v1, v4

    const v4, 0x5f24f

    mul-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    xor-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Ljava/util/Random;-><init>(J)V

    return-object v0
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(IIILow;)V
    .registers 7

    .line 438
    new-instance v0, Lwf;

    invoke-direct {v0, p1, p2, p3}, Lwf;-><init>(III)V

    .line 440
    iget-object v1, p0, Llm;->d:Lfd;

    iput-object v1, p4, Low;->d:Lfd;

    .line 441
    iget v1, p0, Llm;->j:I

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, p1

    iput v1, p4, Low;->e:I

    .line 442
    iput p2, p4, Low;->f:I

    .line 443
    iget v1, p0, Llm;->k:I

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, p3

    iput v1, p4, Low;->g:I

    .line 445
    invoke-virtual {p0, p1, p2, p3}, Llm;->a(III)I

    move-result v1

    if-eqz v1, :cond_35

    sget-object v1, Luu;->m:[Luu;

    invoke-virtual {p0, p1, p2, p3}, Llm;->a(III)I

    move-result p1

    aget-object p1, v1, p1

    instance-of p1, p1, Lrw;

    if-nez p1, :cond_2c

    goto :goto_35

    .line 450
    :cond_2c
    invoke-virtual {p4}, Low;->j()V

    .line 451
    iget-object p1, p0, Llm;->l:Ljava/util/Map;

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 446
    :cond_35
    :goto_35
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Attempted to place a tile entity where there was no entity tile!"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public a(Leb;IIII)V
    .registers 7

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Llm;->o:Z

    .line 340
    sget-object v0, Leb;->a:Leb;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Llm;->f:Lwi;

    invoke-virtual {p1, p2, p3, p4, p5}, Lwi;->a(IIII)V

    goto :goto_16

    .line 341
    :cond_d
    sget-object v0, Leb;->b:Leb;

    if-ne p1, v0, :cond_16

    iget-object p1, p0, Llm;->g:Lwi;

    invoke-virtual {p1, p2, p3, p4, p5}, Lwi;->a(IIII)V

    :cond_16
    :goto_16
    return-void
.end method

.method public a(Ljava/lang/Class;Leq;Ljava/util/List;)V
    .registers 12

    .line 502
    iget-wide v0, p2, Leq;->b:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v2

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 503
    iget-wide v6, p2, Leq;->e:D

    add-double/2addr v6, v2

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v1

    const/4 v2, 0x0

    if-gez v0, :cond_18

    move v0, v2

    .line 505
    :cond_18
    iget-object v3, p0, Llm;->m:[Ljava/util/List;

    array-length v4, v3

    if-lt v1, v4, :cond_20

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :cond_20
    :goto_20
    if-gt v0, v1, :cond_4e

    .line 507
    iget-object v3, p0, Llm;->m:[Ljava/util/List;

    aget-object v3, v3, v0

    move v4, v2

    .line 508
    :goto_27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4b

    .line 509
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsn;

    .line 510
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_48

    iget-object v6, v5, Lsn;->aW:Leq;

    invoke-virtual {v6, p2}, Leq;->a(Leq;)Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_4e
    return-void
.end method

.method public a(Low;)V
    .registers 6

    .line 428
    iget v0, p1, Low;->e:I

    iget v1, p0, Llm;->j:I

    mul-int/lit8 v1, v1, 0x10

    sub-int/2addr v0, v1

    .line 429
    iget v1, p1, Low;->f:I

    .line 430
    iget v2, p1, Low;->g:I

    iget v3, p0, Llm;->k:I

    mul-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    .line 431
    invoke-virtual {p0, v0, v1, v2, p1}, Llm;->a(IIILow;)V

    .line 432
    iget-boolean v0, p0, Llm;->c:Z

    if-eqz v0, :cond_1e

    .line 433
    iget-object v0, p0, Llm;->d:Lfd;

    iget-object v0, v0, Lfd;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    return-void
.end method

.method public a(Lsn;)V
    .registers 9

    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Llm;->q:Z

    .line 366
    iget-wide v1, p1, Lsn;->aM:D

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 367
    iget-wide v5, p1, Lsn;->aO:D

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v2

    .line 368
    iget v5, p0, Llm;->j:I

    if-ne v1, v5, :cond_1b

    iget v1, p0, Llm;->k:I

    if-eq v2, v1, :cond_31

    .line 369
    :cond_1b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Wrong location! "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 372
    :cond_31
    iget-wide v1, p1, Lsn;->aN:D

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    if-gez v1, :cond_3b

    const/4 v1, 0x0

    .line 374
    :cond_3b
    iget-object v2, p0, Llm;->m:[Ljava/util/List;

    array-length v3, v2

    if-lt v1, v3, :cond_42

    array-length v1, v2

    sub-int/2addr v1, v0

    .line 375
    :cond_42
    iput-boolean v0, p1, Lsn;->bF:Z

    .line 376
    iget v0, p0, Llm;->j:I

    iput v0, p1, Lsn;->bG:I

    .line 377
    iput v1, p1, Lsn;->bH:I

    .line 378
    iget v0, p0, Llm;->k:I

    iput v0, p1, Lsn;->bI:I

    .line 379
    iget-object v0, p0, Llm;->m:[Ljava/util/List;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lsn;I)V
    .registers 5

    if-gez p2, :cond_3

    const/4 p2, 0x0

    .line 388
    :cond_3
    iget-object v0, p0, Llm;->m:[Ljava/util/List;

    array-length v1, v0

    if-lt p2, v1, :cond_b

    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    .line 389
    :cond_b
    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lsn;Leq;Ljava/util/List;)V
    .registers 12

    .line 488
    iget-wide v0, p2, Leq;->b:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v2

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 489
    iget-wide v6, p2, Leq;->e:D

    add-double/2addr v6, v2

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v1

    const/4 v2, 0x0

    if-gez v0, :cond_18

    move v0, v2

    .line 491
    :cond_18
    iget-object v3, p0, Llm;->m:[Ljava/util/List;

    array-length v4, v3

    if-lt v1, v4, :cond_20

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :cond_20
    :goto_20
    if-gt v0, v1, :cond_46

    .line 493
    iget-object v3, p0, Llm;->m:[Ljava/util/List;

    aget-object v3, v3, v0

    move v4, v2

    .line 494
    :goto_27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_43

    .line 495
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsn;

    if-eq v5, p1, :cond_40

    .line 496
    iget-object v6, v5, Lsn;->aW:Leq;

    invoke-virtual {v6, p2}, Leq;->a(Leq;)Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_46
    return-void
.end method

.method public a(II)Z
    .registers 4

    .line 57
    iget v0, p0, Llm;->j:I

    if-ne p1, v0, :cond_a

    iget p1, p0, Llm;->k:I

    if-ne p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public a(IIII)Z
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    int-to-byte v2, v12

    .line 284
    iget-object v3, v0, Llm;->h:[B

    shl-int/lit8 v4, v11, 0x4

    or-int/2addr v4, v1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 286
    iget-object v4, v0, Llm;->b:[B

    shl-int/lit8 v5, v1, 0xb

    shl-int/lit8 v6, v11, 0x7

    or-int/2addr v5, v6

    or-int/2addr v5, v10

    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x0

    if-ne v6, v12, :cond_24

    return v7

    .line 288
    :cond_24
    iget v8, v0, Llm;->j:I

    mul-int/lit8 v8, v8, 0x10

    add-int v13, v8, v1

    .line 289
    iget v8, v0, Llm;->k:I

    mul-int/lit8 v8, v8, 0x10

    add-int v14, v8, v11

    and-int/lit16 v2, v2, 0xff

    int-to-byte v8, v2

    .line 290
    aput-byte v8, v4, v5

    if-eqz v6, :cond_40

    .line 292
    sget-object v4, Luu;->m:[Luu;

    aget-object v4, v4, v6

    iget-object v5, v0, Llm;->d:Lfd;

    invoke-virtual {v4, v5, v13, v10, v14}, Luu;->b(Lfd;III)V

    .line 294
    :cond_40
    iget-object v4, v0, Llm;->e:Lwi;

    invoke-virtual {v4, v1, v10, v11, v7}, Lwi;->a(IIII)V

    .line 297
    sget-object v4, Luu;->q:[I

    aget v2, v4, v2

    const/4 v15, 0x1

    if-eqz v2, :cond_54

    if-lt v10, v3, :cond_5a

    add-int/lit8 v2, v10, 0x1

    .line 299
    invoke-direct {v0, v1, v2, v11}, Llm;->g(III)V

    goto :goto_5a

    :cond_54
    sub-int/2addr v3, v15

    if-ne v10, v3, :cond_5a

    .line 303
    invoke-direct/range {p0 .. p3}, Llm;->g(III)V

    .line 308
    :cond_5a
    :goto_5a
    iget-object v2, v0, Llm;->d:Lfd;

    sget-object v3, Leb;->a:Leb;

    move v4, v13

    move/from16 v5, p2

    move v6, v14

    move v7, v13

    move/from16 v8, p2

    move v9, v14

    invoke-virtual/range {v2 .. v9}, Lfd;->a(Leb;IIIIII)V

    .line 309
    iget-object v2, v0, Llm;->d:Lfd;

    sget-object v3, Leb;->b:Leb;

    invoke-virtual/range {v2 .. v9}, Lfd;->a(Leb;IIIIII)V

    .line 312
    invoke-direct {v0, v1, v11}, Llm;->c(II)V

    if-eqz v12, :cond_84

    .line 316
    iget-object v1, v0, Llm;->d:Lfd;

    iget-boolean v1, v1, Lfd;->B:Z

    if-nez v1, :cond_84

    sget-object v1, Luu;->m:[Luu;

    aget-object v1, v1, v12

    iget-object v2, v0, Llm;->d:Lfd;

    invoke-virtual {v1, v2, v13, v10, v14}, Luu;->c(Lfd;III)V

    .line 319
    :cond_84
    iput-boolean v15, v0, Llm;->o:Z

    return v15
.end method

.method public a(IIIII)Z
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    int-to-byte v2, v12

    .line 242
    iget-object v3, v0, Llm;->h:[B

    shl-int/lit8 v4, v11, 0x4

    or-int/2addr v4, v1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 244
    iget-object v4, v0, Llm;->b:[B

    shl-int/lit8 v5, v1, 0xb

    shl-int/lit8 v6, v11, 0x7

    or-int/2addr v5, v6

    or-int/2addr v5, v10

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v12, :cond_2e

    .line 245
    iget-object v6, v0, Llm;->e:Lwi;

    invoke-virtual {v6, v1, v10, v11}, Lwi;->a(III)I

    move-result v6

    if-ne v6, v13, :cond_2e

    const/4 v1, 0x0

    return v1

    .line 246
    :cond_2e
    iget v6, v0, Llm;->j:I

    mul-int/lit8 v6, v6, 0x10

    add-int v14, v6, v1

    .line 247
    iget v6, v0, Llm;->k:I

    mul-int/lit8 v6, v6, 0x10

    add-int v15, v6, v11

    .line 248
    iget-object v6, v0, Llm;->b:[B

    and-int/lit16 v2, v2, 0xff

    int-to-byte v7, v2

    aput-byte v7, v6, v5

    if-eqz v4, :cond_52

    .line 250
    iget-object v5, v0, Llm;->d:Lfd;

    iget-boolean v5, v5, Lfd;->B:Z

    if-nez v5, :cond_52

    sget-object v5, Luu;->m:[Luu;

    aget-object v4, v5, v4

    iget-object v5, v0, Llm;->d:Lfd;

    invoke-virtual {v4, v5, v14, v10, v15}, Luu;->b(Lfd;III)V

    .line 252
    :cond_52
    iget-object v4, v0, Llm;->e:Lwi;

    invoke-virtual {v4, v1, v10, v11, v13}, Lwi;->a(IIII)V

    .line 254
    iget-object v4, v0, Llm;->d:Lfd;

    iget-object v4, v4, Lfd;->t:Lxa;

    iget-boolean v4, v4, Lxa;->e:Z

    const/4 v9, 0x1

    if-nez v4, :cond_83

    .line 255
    sget-object v4, Luu;->q:[I

    aget v2, v4, v2

    if-eqz v2, :cond_6e

    if-lt v10, v3, :cond_74

    add-int/lit8 v2, v10, 0x1

    .line 257
    invoke-direct {v0, v1, v2, v11}, Llm;->g(III)V

    goto :goto_74

    :cond_6e
    sub-int/2addr v3, v9

    if-ne v10, v3, :cond_74

    .line 261
    invoke-direct/range {p0 .. p3}, Llm;->g(III)V

    .line 264
    :cond_74
    :goto_74
    iget-object v2, v0, Llm;->d:Lfd;

    sget-object v3, Leb;->a:Leb;

    move v4, v14

    move/from16 v5, p2

    move v6, v15

    move v7, v14

    move/from16 v8, p2

    move v9, v15

    invoke-virtual/range {v2 .. v9}, Lfd;->a(Leb;IIIIII)V

    .line 267
    :cond_83
    iget-object v2, v0, Llm;->d:Lfd;

    sget-object v3, Leb;->b:Leb;

    move v4, v14

    move/from16 v5, p2

    move v6, v15

    move v7, v14

    move/from16 v8, p2

    move v9, v15

    invoke-virtual/range {v2 .. v9}, Lfd;->a(Leb;IIIIII)V

    .line 270
    invoke-direct {v0, v1, v11}, Llm;->c(II)V

    .line 273
    iget-object v2, v0, Llm;->e:Lwi;

    invoke-virtual {v2, v1, v10, v11, v13}, Lwi;->a(IIII)V

    if-eqz v12, :cond_a5

    .line 275
    sget-object v1, Luu;->m:[Luu;

    aget-object v1, v1, v12

    iget-object v2, v0, Llm;->d:Lfd;

    invoke-virtual {v1, v2, v14, v10, v15}, Luu;->c(Lfd;III)V

    :cond_a5
    const/4 v1, 0x1

    .line 278
    iput-boolean v1, v0, Llm;->o:Z

    return v1
.end method

.method public a(Z)Z
    .registers 9

    .line 524
    iget-boolean v0, p0, Llm;->p:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    .line 526
    iget-boolean p1, p0, Llm;->q:Z

    if-eqz p1, :cond_2e

    iget-object p1, p0, Llm;->d:Lfd;

    invoke-virtual {p1}, Lfd;->t()J

    move-result-wide v1

    iget-wide v3, p0, Llm;->r:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2e

    return v0

    .line 528
    :cond_1a
    iget-boolean p1, p0, Llm;->q:Z

    if-eqz p1, :cond_2e

    iget-object p1, p0, Llm;->d:Lfd;

    invoke-virtual {p1}, Lfd;->t()J

    move-result-wide v1

    iget-wide v3, p0, Llm;->r:J

    const-wide/16 v5, 0x258

    add-long/2addr v3, v5

    cmp-long p1, v1, v3

    if-ltz p1, :cond_2e

    return v0

    .line 531
    :cond_2e
    iget-boolean p1, p0, Llm;->o:Z

    return p1
.end method

.method public b(II)I
    .registers 4

    .line 61
    iget-object v0, p0, Llm;->h:[B

    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p1, p2

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public b(III)I
    .registers 5

    .line 324
    iget-object v0, p0, Llm;->e:Lwi;

    invoke-virtual {v0, p1, p2, p3}, Lwi;->a(III)I

    move-result p1

    return p1
.end method

.method public b()V
    .registers 13

    const/16 v0, 0x7f

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_5
    const/16 v4, 0x10

    const/4 v5, 0x1

    if-ge v2, v4, :cond_38

    move v6, v1

    :goto_b
    if-ge v6, v4, :cond_35

    shl-int/lit8 v7, v2, 0xb

    shl-int/lit8 v8, v6, 0x7

    or-int/2addr v7, v8

    move v8, v0

    :goto_13
    if-lez v8, :cond_27

    .line 73
    sget-object v9, Luu;->q:[I

    iget-object v10, p0, Llm;->b:[B

    add-int v11, v7, v8

    sub-int/2addr v11, v5

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    if-nez v9, :cond_27

    add-int/lit8 v8, v8, -0x1

    goto :goto_13

    .line 75
    :cond_27
    iget-object v7, p0, Llm;->h:[B

    shl-int/lit8 v9, v6, 0x4

    or-int/2addr v9, v2

    int-to-byte v10, v8

    aput-byte v10, v7, v9

    if-ge v8, v3, :cond_32

    move v3, v8

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 79
    :cond_38
    iput v3, p0, Llm;->i:I

    .line 80
    iput-boolean v5, p0, Llm;->o:Z

    return-void
.end method

.method public b(IIII)V
    .registers 6

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Llm;->o:Z

    .line 329
    iget-object v0, p0, Llm;->e:Lwi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lwi;->a(IIII)V

    return-void
.end method

.method public b(Lsn;)V
    .registers 3

    .line 383
    iget v0, p1, Lsn;->bH:I

    invoke-virtual {p0, p1, v0}, Llm;->a(Lsn;I)V

    return-void
.end method

.method public c(IIII)I
    .registers 7

    .line 346
    iget-object v0, p0, Llm;->f:Lwi;

    invoke-virtual {v0, p1, p2, p3}, Lwi;->a(III)I

    move-result v0

    if-lez v0, :cond_b

    const/4 v1, 0x1

    .line 347
    sput-boolean v1, Llm;->a:Z

    :cond_b
    sub-int/2addr v0, p4

    .line 349
    iget-object p4, p0, Llm;->g:Lwi;

    invoke-virtual {p4, p1, p2, p3}, Lwi;->a(III)I

    move-result p1

    if-le p1, v0, :cond_15

    move v0, p1

    :cond_15
    return v0
.end method

.method public c()V
    .registers 14

    const/16 v0, 0x7f

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_5
    const/16 v4, 0x10

    const/4 v5, 0x1

    if-ge v2, v4, :cond_5d

    move v6, v1

    :goto_b
    if-ge v6, v4, :cond_5a

    shl-int/lit8 v7, v2, 0xb

    shl-int/lit8 v8, v6, 0x7

    or-int/2addr v7, v8

    move v8, v0

    :goto_13
    if-lez v8, :cond_27

    .line 89
    sget-object v9, Luu;->q:[I

    iget-object v10, p0, Llm;->b:[B

    add-int v11, v7, v8

    sub-int/2addr v11, v5

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    if-nez v9, :cond_27

    add-int/lit8 v8, v8, -0x1

    goto :goto_13

    .line 91
    :cond_27
    iget-object v9, p0, Llm;->h:[B

    shl-int/lit8 v10, v6, 0x4

    or-int/2addr v10, v2

    int-to-byte v11, v8

    aput-byte v11, v9, v10

    if-ge v8, v3, :cond_32

    move v3, v8

    .line 94
    :cond_32
    iget-object v8, p0, Llm;->d:Lfd;

    iget-object v8, v8, Lfd;->t:Lxa;

    iget-boolean v8, v8, Lxa;->e:Z

    if-nez v8, :cond_57

    const/16 v8, 0xf

    move v9, v0

    .line 98
    :cond_3d
    sget-object v10, Luu;->q:[I

    iget-object v11, p0, Llm;->b:[B

    add-int v12, v7, v9

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    sub-int/2addr v8, v10

    if-lez v8, :cond_51

    .line 100
    iget-object v10, p0, Llm;->f:Lwi;

    invoke-virtual {v10, v2, v9, v6, v8}, Lwi;->a(IIII)V

    :cond_51
    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_57

    if-gtz v8, :cond_3d

    :cond_57
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 108
    :cond_5d
    iput v3, p0, Llm;->i:I

    move v0, v1

    :goto_60
    if-ge v0, v4, :cond_6e

    move v2, v1

    :goto_63
    if-ge v2, v4, :cond_6b

    .line 112
    invoke-direct {p0, v0, v2}, Llm;->c(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 115
    :cond_6e
    iput-boolean v5, p0, Llm;->o:Z

    return-void
.end method

.method public c(III)Z
    .registers 5

    .line 393
    iget-object v0, p0, Llm;->h:[B

    shl-int/lit8 p3, p3, 0x4

    or-int/2addr p1, p3

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    if-lt p2, p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method public d(III)Low;
    .registers 9

    .line 408
    new-instance v0, Lwf;

    invoke-direct {v0, p1, p2, p3}, Lwf;-><init>(III)V

    .line 410
    iget-object v1, p0, Llm;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Low;

    const/4 v2, 0x0

    if-nez v1, :cond_39

    .line 412
    invoke-virtual {p0, p1, p2, p3}, Llm;->a(III)I

    move-result v1

    .line 413
    sget-object v3, Luu;->p:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1b

    return-object v2

    .line 414
    :cond_1b
    sget-object v3, Luu;->m:[Luu;

    aget-object v1, v3, v1

    check-cast v1, Lrw;

    .line 415
    iget-object v3, p0, Llm;->d:Lfd;

    iget v4, p0, Llm;->j:I

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, p1

    iget p1, p0, Llm;->k:I

    mul-int/lit8 p1, p1, 0x10

    add-int/2addr p1, p3

    invoke-virtual {v1, v3, v4, p2, p1}, Lrw;->c(Lfd;III)V

    .line 416
    iget-object p1, p0, Llm;->l:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Low;

    :cond_39
    if-eqz v1, :cond_47

    .line 419
    invoke-virtual {v1}, Low;->g()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 420
    iget-object p1, p0, Llm;->l:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_47
    return-object v1
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()V
    .registers 4

    const/4 v0, 0x1

    .line 466
    iput-boolean v0, p0, Llm;->c:Z

    .line 467
    iget-object v0, p0, Llm;->d:Lfd;

    iget-object v1, p0, Llm;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfd;->a(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 468
    :goto_f
    iget-object v1, p0, Llm;->m:[Ljava/util/List;

    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 469
    iget-object v2, p0, Llm;->d:Lfd;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Lfd;->a(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    return-void
.end method

.method public e(III)V
    .registers 5

    .line 455
    new-instance v0, Lwf;

    invoke-direct {v0, p1, p2, p3}, Lwf;-><init>(III)V

    .line 457
    iget-boolean p1, p0, Llm;->c:Z

    if-eqz p1, :cond_16

    .line 458
    iget-object p1, p0, Llm;->l:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Low;

    if-eqz p1, :cond_16

    .line 460
    invoke-virtual {p1}, Low;->i()V

    :cond_16
    return-void
.end method

.method public f()V
    .registers 4

    const/4 v0, 0x0

    .line 474
    iput-boolean v0, p0, Llm;->c:Z

    .line 475
    iget-object v1, p0, Llm;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Low;

    .line 476
    invoke-virtual {v2}, Low;->i()V

    goto :goto_d

    .line 478
    :cond_1d
    :goto_1d
    iget-object v1, p0, Llm;->m:[Ljava/util/List;

    array-length v2, v1

    if-ge v0, v2, :cond_2c

    .line 479
    iget-object v2, p0, Llm;->d:Lfd;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Lfd;->b(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2c
    return-void
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Llm;->o:Z

    return-void
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .registers 2

    .line 662
    iget-object v0, p0, Llm;->b:[B

    invoke-static {v0}, Lvi;->a([B)V

    return-void
.end method
