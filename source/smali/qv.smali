###### Class defpackage.qv (qv)
.class public Lqv;
.super Lsn;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Liq;

.field private f:I


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lqv;->f:I

    .line 65
    iput p1, p0, Lqv;->a:I

    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lqv;->bf:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 74
    invoke-virtual {p0, p1, p1}, Lqv;->b(FF)V

    return-void
.end method

.method public constructor <init>(Lfd;IIII)V
    .registers 8

    .line 78
    invoke-direct {p0, p1}, Lqv;-><init>(Lfd;)V

    .line 79
    iput p2, p0, Lqv;->b:I

    .line 80
    iput p3, p0, Lqv;->c:I

    .line 81
    iput p4, p0, Lqv;->d:I

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-static {}, Liq;->values()[Liq;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_14
    if-ge p4, p3, :cond_29

    aget-object v0, p2, p4

    .line 85
    iput-object v0, p0, Lqv;->e:Liq;

    .line 86
    invoke-virtual {p0, p5}, Lqv;->b(I)V

    .line 87
    invoke-virtual {p0}, Lqv;->k()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 88
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 p4, p4, 0x1

    goto :goto_14

    .line 91
    :cond_29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_41

    .line 92
    iget-object p2, p0, Lqv;->bs:Ljava/util/Random;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Liq;

    iput-object p1, p0, Lqv;->e:Liq;

    .line 94
    :cond_41
    invoke-virtual {p0, p5}, Lqv;->b(I)V

    return-void
.end method

.method public constructor <init>(Lfd;IIIILjava/lang/String;)V
    .registers 8

    .line 98
    invoke-direct {p0, p1}, Lqv;-><init>(Lfd;)V

    .line 99
    iput p2, p0, Lqv;->b:I

    .line 100
    iput p3, p0, Lqv;->c:I

    .line 101
    iput p4, p0, Lqv;->d:I

    .line 103
    invoke-static {}, Liq;->values()[Liq;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_f
    if-ge p3, p2, :cond_21

    aget-object p4, p1, p3

    .line 104
    iget-object v0, p4, Liq;->A:Ljava/lang/String;

    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 105
    iput-object p4, p0, Lqv;->e:Liq;

    goto :goto_21

    :cond_1e
    add-int/lit8 p3, p3, 0x1

    goto :goto_f

    .line 109
    :cond_21
    :goto_21
    invoke-virtual {p0, p5}, Lqv;->b(I)V

    return-void
.end method

.method private c(I)F
    .registers 4

    const/16 v0, 0x20

    const/high16 v1, 0x3f000000    # 0.5f

    if-ne p1, v0, :cond_7

    return v1

    :cond_7
    const/16 v0, 0x40

    if-ne p1, v0, :cond_c

    return v1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Lnu;)V
    .registers 7

    const-string v0, "Dir"

    .line 235
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    iput v0, p0, Lqv;->a:I

    const-string v0, "TileX"

    .line 236
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lqv;->b:I

    const-string v0, "TileY"

    .line 237
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lqv;->c:I

    const-string v0, "TileZ"

    .line 238
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lqv;->d:I

    const-string v0, "Motive"

    .line 239
    invoke-virtual {p1, v0}, Lnu;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-static {}, Liq;->values()[Liq;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v1, :cond_3d

    aget-object v3, v0, v2

    .line 241
    iget-object v4, v3, Liq;->A:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 242
    iput-object v3, p0, Lqv;->e:Liq;

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 245
    :cond_3d
    iget-object p1, p0, Lqv;->e:Liq;

    if-nez p1, :cond_45

    sget-object p1, Liq;->a:Liq;

    iput-object p1, p0, Lqv;->e:Liq;

    .line 246
    :cond_45
    iget p1, p0, Lqv;->a:I

    invoke-virtual {p0, p1}, Lqv;->b(I)V

    return-void
.end method

.method public a(Lsn;I)Z
    .registers 12

    .line 218
    iget-boolean p1, p0, Lqv;->be:Z

    if-nez p1, :cond_2a

    iget-object p1, p0, Lqv;->aI:Lfd;

    iget-boolean p1, p1, Lfd;->B:Z

    if-nez p1, :cond_2a

    .line 219
    invoke-virtual {p0}, Lqv;->K()V

    .line 220
    invoke-virtual {p0}, Lqv;->ai()V

    .line 221
    iget-object p1, p0, Lqv;->aI:Lfd;

    new-instance p2, Lhl;

    iget-object v1, p0, Lqv;->aI:Lfd;

    iget-wide v2, p0, Lqv;->aM:D

    iget-wide v4, p0, Lqv;->aN:D

    iget-wide v6, p0, Lqv;->aO:D

    new-instance v8, Liz;

    sget-object v0, Lgm;->aq:Lgm;

    invoke-direct {v8, v0}, Liz;-><init>(Lgm;)V

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lhl;-><init>(Lfd;DDDLiz;)V

    invoke-virtual {p1, p2}, Lfd;->b(Lsn;)Z

    :cond_2a
    const/4 p1, 0x1

    return p1
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method public b(DDD)V
    .registers 16

    .line 255
    iget-object v0, p0, Lqv;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_2e

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    mul-double/2addr p5, p5

    add-double/2addr p1, p5

    const-wide/16 p3, 0x0

    cmpl-double p1, p1, p3

    if-lez p1, :cond_2e

    .line 256
    invoke-virtual {p0}, Lqv;->K()V

    .line 257
    iget-object p1, p0, Lqv;->aI:Lfd;

    new-instance p2, Lhl;

    iget-object v1, p0, Lqv;->aI:Lfd;

    iget-wide v2, p0, Lqv;->aM:D

    iget-wide v4, p0, Lqv;->aN:D

    iget-wide v6, p0, Lqv;->aO:D

    new-instance v8, Liz;

    sget-object p3, Lgm;->aq:Lgm;

    invoke-direct {v8, p3}, Liz;-><init>(Lgm;)V

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lhl;-><init>(Lfd;DDDLiz;)V

    invoke-virtual {p1, p2}, Lfd;->b(Lsn;)Z

    :cond_2e
    return-void
.end method

.method public b(I)V
    .registers 29

    move-object/from16 v7, p0

    move/from16 v0, p1

    .line 118
    iput v0, v7, Lqv;->a:I

    mul-int/lit8 v1, v0, 0x5a

    int-to-float v1, v1

    .line 119
    iput v1, v7, Lqv;->aS:F

    iput v1, v7, Lqv;->aU:F

    .line 121
    iget-object v1, v7, Lqv;->e:Liq;

    iget v1, v1, Liq;->B:I

    int-to-float v1, v1

    .line 122
    iget-object v2, v7, Lqv;->e:Liq;

    iget v2, v2, Liq;->C:I

    int-to-float v2, v2

    .line 123
    iget-object v3, v7, Lqv;->e:Liq;

    iget v3, v3, Liq;->B:I

    int-to-float v3, v3

    const/4 v4, 0x2

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v0, :cond_26

    if-ne v0, v4, :cond_24

    goto :goto_26

    :cond_24
    move v1, v5

    goto :goto_27

    :cond_26
    :goto_26
    move v3, v5

    :goto_27
    const/high16 v6, 0x42000000    # 32.0f

    div-float v8, v1, v6

    div-float v9, v2, v6

    div-float v10, v3, v6

    .line 135
    iget v1, v7, Lqv;->b:I

    int-to-float v1, v1

    add-float/2addr v1, v5

    .line 136
    iget v2, v7, Lqv;->c:I

    int-to-float v2, v2

    add-float/2addr v2, v5

    .line 137
    iget v3, v7, Lqv;->d:I

    int-to-float v3, v3

    add-float/2addr v3, v5

    const/high16 v5, 0x3f100000    # 0.5625f

    if-nez v0, :cond_40

    sub-float/2addr v3, v5

    :cond_40
    const/4 v6, 0x1

    if-ne v0, v6, :cond_44

    sub-float/2addr v1, v5

    :cond_44
    if-ne v0, v4, :cond_47

    add-float/2addr v3, v5

    :cond_47
    const/4 v11, 0x3

    if-ne v0, v11, :cond_4b

    add-float/2addr v1, v5

    :cond_4b
    if-nez v0, :cond_56

    .line 150
    iget-object v5, v7, Lqv;->e:Liq;

    iget v5, v5, Liq;->B:I

    invoke-direct {v7, v5}, Lqv;->c(I)F

    move-result v5

    sub-float/2addr v1, v5

    :cond_56
    if-ne v0, v6, :cond_61

    .line 151
    iget-object v5, v7, Lqv;->e:Liq;

    iget v5, v5, Liq;->B:I

    invoke-direct {v7, v5}, Lqv;->c(I)F

    move-result v5

    add-float/2addr v3, v5

    :cond_61
    if-ne v0, v4, :cond_6c

    .line 152
    iget-object v4, v7, Lqv;->e:Liq;

    iget v4, v4, Liq;->B:I

    invoke-direct {v7, v4}, Lqv;->c(I)F

    move-result v4

    add-float/2addr v1, v4

    :cond_6c
    move v12, v1

    if-ne v0, v11, :cond_78

    .line 153
    iget-object v0, v7, Lqv;->e:Liq;

    iget v0, v0, Liq;->B:I

    invoke-direct {v7, v0}, Lqv;->c(I)F

    move-result v0

    sub-float/2addr v3, v0

    :cond_78
    move v11, v3

    .line 154
    iget-object v0, v7, Lqv;->e:Liq;

    iget v0, v0, Liq;->C:I

    invoke-direct {v7, v0}, Lqv;->c(I)F

    move-result v0

    add-float v13, v2, v0

    float-to-double v1, v12

    float-to-double v3, v13

    float-to-double v5, v11

    move-object/from16 v0, p0

    .line 156
    invoke-virtual/range {v0 .. v6}, Lqv;->e(DDD)V

    .line 159
    iget-object v14, v7, Lqv;->aW:Leq;

    sub-float v0, v12, v8

    const v1, -0x44333333    # -0.00625f

    sub-float/2addr v0, v1

    float-to-double v2, v0

    sub-float v0, v13, v9

    sub-float/2addr v0, v1

    float-to-double v4, v0

    sub-float v0, v11, v10

    sub-float/2addr v0, v1

    float-to-double v6, v0

    add-float/2addr v12, v8

    add-float/2addr v12, v1

    move-wide/from16 v19, v6

    float-to-double v6, v12

    add-float/2addr v13, v9

    add-float/2addr v13, v1

    float-to-double v8, v13

    add-float/2addr v11, v10

    add-float/2addr v11, v1

    float-to-double v0, v11

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v0

    invoke-virtual/range {v14 .. v26}, Leq;->c(DDDDDD)Leq;

    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 227
    iget v0, p0, Lqv;->a:I

    int-to-byte v0, v0

    const-string v1, "Dir"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    .line 228
    iget-object v0, p0, Lqv;->e:Liq;

    iget-object v0, v0, Liq;->A:Ljava/lang/String;

    const-string v1, "Motive"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TileX"

    .line 229
    iget v1, p0, Lqv;->b:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "TileY"

    .line 230
    iget v1, p0, Lqv;->c:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "TileZ"

    .line 231
    iget v1, p0, Lqv;->d:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public d(DDD)V
    .registers 16

    .line 263
    iget-object v0, p0, Lqv;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_2e

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    mul-double/2addr p5, p5

    add-double/2addr p1, p5

    const-wide/16 p3, 0x0

    cmpl-double p1, p1, p3

    if-lez p1, :cond_2e

    .line 264
    invoke-virtual {p0}, Lqv;->K()V

    .line 265
    iget-object p1, p0, Lqv;->aI:Lfd;

    new-instance p2, Lhl;

    iget-object v1, p0, Lqv;->aI:Lfd;

    iget-wide v2, p0, Lqv;->aM:D

    iget-wide v4, p0, Lqv;->aN:D

    iget-wide v6, p0, Lqv;->aO:D

    new-instance v8, Liz;

    sget-object p3, Lgm;->aq:Lgm;

    invoke-direct {v8, p3}, Liz;-><init>(Lgm;)V

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lhl;-><init>(Lfd;DDDLiz;)V

    invoke-virtual {p1, p2}, Lfd;->b(Lsn;)Z

    :cond_2e
    return-void
.end method

.method public h_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .registers 15

    .line 179
    iget-object v0, p0, Lqv;->aI:Lfd;

    iget-object v1, p0, Lqv;->aW:Leq;

    invoke-virtual {v0, p0, v1}, Lfd;->a(Lsn;Leq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_10

    return v1

    .line 182
    :cond_10
    iget-object v0, p0, Lqv;->e:Liq;

    iget v0, v0, Liq;->B:I

    div-int/lit8 v0, v0, 0x10

    .line 183
    iget-object v2, p0, Lqv;->e:Liq;

    iget v2, v2, Liq;->C:I

    div-int/lit8 v2, v2, 0x10

    .line 185
    iget v3, p0, Lqv;->b:I

    .line 187
    iget v4, p0, Lqv;->d:I

    .line 188
    iget v5, p0, Lqv;->a:I

    const/high16 v6, 0x42000000    # 32.0f

    if-nez v5, :cond_34

    iget-wide v7, p0, Lqv;->aM:D

    iget-object v3, p0, Lqv;->e:Liq;

    iget v3, v3, Liq;->B:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-double v9, v3

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v3

    .line 189
    :cond_34
    iget v5, p0, Lqv;->a:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_47

    iget-wide v4, p0, Lqv;->aO:D

    iget-object v8, p0, Lqv;->e:Liq;

    iget v8, v8, Liq;->B:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    float-to-double v8, v8

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    .line 190
    :cond_47
    iget v5, p0, Lqv;->a:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_5a

    iget-wide v9, p0, Lqv;->aM:D

    iget-object v3, p0, Lqv;->e:Liq;

    iget v3, v3, Liq;->B:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-double v11, v3

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Lin;->b(D)I

    move-result v3

    .line 191
    :cond_5a
    iget v5, p0, Lqv;->a:I

    const/4 v9, 0x3

    if-ne v5, v9, :cond_6d

    iget-wide v4, p0, Lqv;->aO:D

    iget-object v9, p0, Lqv;->e:Liq;

    iget v9, v9, Liq;->B:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    float-to-double v9, v9

    sub-double/2addr v4, v9

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    .line 192
    :cond_6d
    iget-wide v9, p0, Lqv;->aN:D

    iget-object v5, p0, Lqv;->e:Liq;

    iget v5, v5, Liq;->C:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-double v5, v5

    sub-double/2addr v9, v5

    invoke-static {v9, v10}, Lin;->b(D)I

    move-result v5

    move v6, v1

    :goto_7c
    if-ge v6, v0, :cond_ae

    move v9, v1

    :goto_7f
    if-ge v9, v2, :cond_ab

    .line 198
    iget v10, p0, Lqv;->a:I

    if-eqz v10, :cond_95

    if-ne v10, v8, :cond_88

    goto :goto_95

    .line 201
    :cond_88
    iget-object v10, p0, Lqv;->aI:Lfd;

    iget v11, p0, Lqv;->b:I

    add-int v12, v5, v9

    add-int v13, v4, v6

    invoke-virtual {v10, v11, v12, v13}, Lfd;->f(III)Lln;

    move-result-object v10

    goto :goto_a1

    .line 199
    :cond_95
    :goto_95
    iget-object v10, p0, Lqv;->aI:Lfd;

    add-int v11, v3, v6

    add-int v12, v5, v9

    iget v13, p0, Lqv;->d:I

    invoke-virtual {v10, v11, v12, v13}, Lfd;->f(III)Lln;

    move-result-object v10

    .line 203
    :goto_a1
    invoke-virtual {v10}, Lln;->a()Z

    move-result v10

    if-nez v10, :cond_a8

    return v1

    :cond_a8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7f

    :cond_ab
    add-int/lit8 v6, v6, 0x1

    goto :goto_7c

    .line 205
    :cond_ae
    iget-object v0, p0, Lqv;->aI:Lfd;

    iget-object v2, p0, Lqv;->aW:Leq;

    invoke-virtual {v0, p0, v2}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v0

    move v2, v1

    .line 206
    :goto_b7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c9

    .line 207
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lqv;

    if-eqz v3, :cond_c6

    return v1

    :cond_c6
    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    :cond_c9
    return v7
.end method

.method public w_()V
    .registers 12

    .line 169
    iget v0, p0, Lqv;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lqv;->f:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lqv;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_36

    const/4 v0, 0x0

    .line 170
    iput v0, p0, Lqv;->f:I

    .line 171
    invoke-virtual {p0}, Lqv;->k()Z

    move-result v0

    if-nez v0, :cond_36

    .line 172
    invoke-virtual {p0}, Lqv;->K()V

    .line 173
    iget-object v0, p0, Lqv;->aI:Lfd;

    new-instance v10, Lhl;

    iget-object v2, p0, Lqv;->aI:Lfd;

    iget-wide v3, p0, Lqv;->aM:D

    iget-wide v5, p0, Lqv;->aN:D

    iget-wide v7, p0, Lqv;->aO:D

    new-instance v9, Liz;

    sget-object v1, Lgm;->aq:Lgm;

    invoke-direct {v9, v1}, Liz;-><init>(Lgm;)V

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lhl;-><init>(Lfd;DDDLiz;)V

    invoke-virtual {v0, v10}, Lfd;->b(Lsn;)Z

    :cond_36
    return-void
.end method
