###### Class defpackage.fz (fz)
.class public Lfz;
.super Lsn;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private d:I

.field private e:D

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private j:D

.field private k:D

.field private l:D


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lfz;->a:I

    .line 20
    iput p1, p0, Lfz;->b:I

    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lfz;->c:I

    .line 25
    iput-boolean p1, p0, Lfz;->aF:Z

    const/high16 p1, 0x3fc00000    # 1.5f

    const v0, 0x3f19999a    # 0.6f

    .line 26
    invoke-virtual {p0, p1, v0}, Lfz;->b(FF)V

    .line 27
    iget p1, p0, Lfz;->bh:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lfz;->bf:F

    return-void
.end method

.method public constructor <init>(Lfd;DDD)V
    .registers 18

    move-object v7, p0

    move-wide v8, p4

    .line 53
    invoke-direct {p0, p1}, Lfz;-><init>(Lfd;)V

    .line 54
    iget v0, v7, Lfz;->bf:F

    float-to-double v0, v0

    add-double v3, v8, v0

    move-object v0, p0

    move-wide v1, p2

    move-wide/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lfz;->e(DDD)V

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, v7, Lfz;->aP:D

    .line 57
    iput-wide v0, v7, Lfz;->aQ:D

    .line 58
    iput-wide v0, v7, Lfz;->aR:D

    move-wide v0, p2

    .line 60
    iput-wide v0, v7, Lfz;->aJ:D

    .line 61
    iput-wide v8, v7, Lfz;->aK:D

    move-wide/from16 v0, p6

    .line 62
    iput-wide v0, v7, Lfz;->aL:D

    return-void
.end method


# virtual methods
.method public a(Lsn;)Leq;
    .registers 2

    .line 41
    iget-object p1, p1, Lsn;->aW:Leq;

    return-object p1
.end method

.method public a(DDD)V
    .registers 7

    .line 118
    iput-wide p1, p0, Lfz;->aP:D

    iput-wide p1, p0, Lfz;->j:D

    .line 119
    iput-wide p3, p0, Lfz;->aQ:D

    iput-wide p3, p0, Lfz;->k:D

    .line 120
    iput-wide p5, p0, Lfz;->aR:D

    iput-wide p5, p0, Lfz;->l:D

    return-void
.end method

.method public a(DDDFFI)V
    .registers 10

    .line 104
    iput-wide p1, p0, Lfz;->e:D

    .line 105
    iput-wide p3, p0, Lfz;->f:D

    .line 106
    iput-wide p5, p0, Lfz;->g:D

    float-to-double p1, p7

    .line 107
    iput-wide p1, p0, Lfz;->h:D

    float-to-double p1, p8

    .line 108
    iput-wide p1, p0, Lfz;->i:D

    add-int/lit8 p9, p9, 0x4

    .line 110
    iput p9, p0, Lfz;->d:I

    .line 112
    iget-wide p1, p0, Lfz;->j:D

    iput-wide p1, p0, Lfz;->aP:D

    .line 113
    iget-wide p1, p0, Lfz;->k:D

    iput-wide p1, p0, Lfz;->aQ:D

    .line 114
    iget-wide p1, p0, Lfz;->l:D

    iput-wide p1, p0, Lfz;->aR:D

    return-void
.end method

.method protected a(Lnu;)V
    .registers 2

    return-void
.end method

.method public a(Lgs;)Z
    .registers 4

    .line 312
    iget-object v0, p0, Lfz;->aG:Lsn;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lfz;->aG:Lsn;

    instance-of v0, v0, Lgs;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lfz;->aG:Lsn;

    if-eq v0, p1, :cond_10

    return v1

    .line 313
    :cond_10
    iget-object v0, p0, Lfz;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_19

    .line 314
    invoke-virtual {p1, p0}, Lgs;->i(Lsn;)V

    :cond_19
    return v1
.end method

.method public a(Lsn;I)Z
    .registers 6

    .line 70
    iget-object p1, p0, Lfz;->aI:Lfd;

    iget-boolean p1, p1, Lfd;->B:Z

    const/4 v0, 0x1

    if-nez p1, :cond_4d

    iget-boolean p1, p0, Lfz;->be:Z

    if-eqz p1, :cond_c

    goto :goto_4d

    .line 71
    :cond_c
    iget p1, p0, Lfz;->c:I

    neg-int p1, p1

    iput p1, p0, Lfz;->c:I

    const/16 p1, 0xa

    .line 72
    iput p1, p0, Lfz;->b:I

    .line 73
    iget v1, p0, Lfz;->a:I

    mul-int/2addr p2, p1

    add-int/2addr v1, p2

    iput v1, p0, Lfz;->a:I

    .line 74
    invoke-virtual {p0}, Lfz;->ai()V

    .line 75
    iget p1, p0, Lfz;->a:I

    const/16 p2, 0x28

    if-le p1, p2, :cond_4d

    .line 76
    iget-object p1, p0, Lfz;->aG:Lsn;

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lfz;->aG:Lsn;

    invoke-virtual {p1, p0}, Lsn;->i(Lsn;)V

    :cond_2d
    const/4 p1, 0x0

    move p2, p1

    :goto_2f
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge p2, v1, :cond_3d

    .line 78
    sget-object v1, Luu;->y:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-virtual {p0, v1, v0, v2}, Lfz;->a(IIF)Lhl;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2f

    :cond_3d
    :goto_3d
    const/4 p2, 0x2

    if-ge p1, p2, :cond_4a

    .line 81
    sget-object p2, Lgm;->B:Lgm;

    iget p2, p2, Lgm;->bf:I

    invoke-virtual {p0, p2, v0, v2}, Lfz;->a(IIF)Lhl;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3d

    .line 83
    :cond_4a
    invoke-virtual {p0}, Lfz;->K()V

    :cond_4d
    :goto_4d
    return v0
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected b(Lnu;)V
    .registers 2

    return-void
.end method

.method public f()Leq;
    .registers 2

    .line 45
    iget-object v0, p0, Lfz;->aW:Leq;

    return-object v0
.end method

.method public h()V
    .registers 3

    .line 89
    iget v0, p0, Lfz;->c:I

    neg-int v0, v0

    iput v0, p0, Lfz;->c:I

    const/16 v0, 0xa

    .line 90
    iput v0, p0, Lfz;->b:I

    .line 91
    iget v0, p0, Lfz;->a:I

    mul-int/lit8 v1, v0, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lfz;->a:I

    return-void
.end method

.method public h_()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lfz;->be:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public i_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public l_()V
    .registers 12

    .line 287
    iget-object v0, p0, Lfz;->aG:Lsn;

    if-nez v0, :cond_5

    return-void

    .line 289
    :cond_5
    iget v0, p0, Lfz;->aS:F

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v6

    .line 290
    iget v8, p0, Lfz;->aS:F

    float-to-double v8, v8

    mul-double/2addr v8, v2

    div-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    .line 291
    iget-object v4, p0, Lfz;->aG:Lsn;

    iget-wide v5, p0, Lfz;->aM:D

    add-double/2addr v5, v0

    iget-wide v0, p0, Lfz;->aN:D

    invoke-virtual {p0}, Lfz;->m()D

    move-result-wide v7

    add-double/2addr v0, v7

    iget-object v7, p0, Lfz;->aG:Lsn;

    invoke-virtual {v7}, Lsn;->I()D

    move-result-wide v7

    add-double/2addr v7, v0

    iget-wide v0, p0, Lfz;->aO:D

    add-double v9, v0, v2

    invoke-virtual/range {v4 .. v10}, Lsn;->e(DDD)V

    return-void
.end method

.method public m()D
    .registers 5

    .line 66
    iget v0, p0, Lfz;->bh:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    mul-double/2addr v0, v2

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method protected n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public w_()V
    .registers 49

    move-object/from16 v7, p0

    .line 124
    invoke-super/range {p0 .. p0}, Lsn;->w_()V

    .line 125
    iget v0, v7, Lfz;->b:I

    const/4 v8, 0x1

    if-lez v0, :cond_d

    sub-int/2addr v0, v8

    iput v0, v7, Lfz;->b:I

    .line 126
    :cond_d
    iget v0, v7, Lfz;->a:I

    if-lez v0, :cond_14

    sub-int/2addr v0, v8

    iput v0, v7, Lfz;->a:I

    .line 127
    :cond_14
    iget-wide v0, v7, Lfz;->aM:D

    iput-wide v0, v7, Lfz;->aJ:D

    .line 128
    iget-wide v0, v7, Lfz;->aN:D

    iput-wide v0, v7, Lfz;->aK:D

    .line 129
    iget-wide v0, v7, Lfz;->aO:D

    iput-wide v0, v7, Lfz;->aL:D

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    :goto_23
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3fc0000000000000L    # 0.125

    const/4 v5, 0x5

    if-ge v2, v5, :cond_7f

    .line 135
    iget-object v6, v7, Lfz;->aW:Leq;

    iget-wide v14, v6, Leq;->b:D

    iget-object v6, v7, Lfz;->aW:Leq;

    iget-wide v0, v6, Leq;->e:D

    iget-object v6, v7, Lfz;->aW:Leq;

    iget-wide v8, v6, Leq;->b:D

    sub-double/2addr v0, v8

    add-int/lit8 v6, v2, 0x0

    int-to-double v8, v6

    mul-double/2addr v0, v8

    int-to-double v5, v5

    div-double/2addr v0, v5

    add-double/2addr v14, v0

    sub-double v18, v14, v12

    .line 136
    iget-object v0, v7, Lfz;->aW:Leq;

    iget-wide v0, v0, Leq;->b:D

    iget-object v8, v7, Lfz;->aW:Leq;

    iget-wide v8, v8, Leq;->e:D

    iget-object v14, v7, Lfz;->aW:Leq;

    iget-wide v14, v14, Leq;->b:D

    sub-double/2addr v8, v14

    add-int/lit8 v2, v2, 0x1

    int-to-double v14, v2

    mul-double/2addr v8, v14

    div-double/2addr v8, v5

    add-double/2addr v0, v8

    sub-double v24, v0, v12

    .line 137
    iget-object v0, v7, Lfz;->aW:Leq;

    iget-wide v0, v0, Leq;->a:D

    iget-object v8, v7, Lfz;->aW:Leq;

    iget-wide v8, v8, Leq;->c:D

    iget-object v12, v7, Lfz;->aW:Leq;

    iget-wide v12, v12, Leq;->d:D

    iget-object v14, v7, Lfz;->aW:Leq;

    iget-wide v14, v14, Leq;->f:D

    move-wide/from16 v16, v0

    move-wide/from16 v20, v8

    move-wide/from16 v22, v12

    move-wide/from16 v26, v14

    invoke-static/range {v16 .. v27}, Leq;->b(DDDDDD)Leq;

    move-result-object v0

    .line 138
    iget-object v1, v7, Lfz;->aI:Lfd;

    sget-object v8, Lln;->g:Lln;

    invoke-virtual {v1, v0, v8}, Lfd;->b(Leq;Lln;)Z

    move-result v0

    if-eqz v0, :cond_7d

    div-double/2addr v10, v5

    add-double/2addr v3, v10

    :cond_7d
    const/4 v8, 0x1

    goto :goto_23

    .line 143
    :cond_7f
    iget-object v0, v7, Lfz;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    const-wide v8, -0x3f99800000000000L    # -180.0

    const-wide v14, 0x3fee666660000000L    # 0.949999988079071

    const-wide v16, 0x4076800000000000L    # 360.0

    const-wide v18, 0x3fefae1480000000L    # 0.9900000095367432

    const-wide v20, 0x4066800000000000L    # 180.0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    if-eqz v0, :cond_149

    .line 144
    iget v0, v7, Lfz;->d:I

    if-lez v0, :cond_10c

    .line 145
    iget-wide v0, v7, Lfz;->aM:D

    iget-wide v2, v7, Lfz;->e:D

    iget-wide v4, v7, Lfz;->aM:D

    sub-double/2addr v2, v4

    iget v4, v7, Lfz;->d:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    add-double v1, v0, v2

    .line 146
    iget-wide v3, v7, Lfz;->aN:D

    iget-wide v5, v7, Lfz;->f:D

    iget-wide v10, v7, Lfz;->aN:D

    sub-double/2addr v5, v10

    iget v0, v7, Lfz;->d:I

    int-to-double v10, v0

    div-double/2addr v5, v10

    add-double/2addr v3, v5

    .line 147
    iget-wide v5, v7, Lfz;->aO:D

    iget-wide v10, v7, Lfz;->g:D

    iget-wide v12, v7, Lfz;->aO:D

    sub-double/2addr v10, v12

    iget v0, v7, Lfz;->d:I

    int-to-double v12, v0

    div-double/2addr v10, v12

    add-double/2addr v5, v10

    .line 149
    iget-wide v10, v7, Lfz;->h:D

    iget v0, v7, Lfz;->aS:F

    float-to-double v12, v0

    sub-double/2addr v10, v12

    :goto_cf
    cmpg-double v0, v10, v8

    if-gez v0, :cond_d6

    add-double v10, v10, v16

    goto :goto_cf

    :cond_d6
    :goto_d6
    cmpl-double v0, v10, v20

    if-ltz v0, :cond_dd

    sub-double v10, v10, v16

    goto :goto_d6

    .line 155
    :cond_dd
    iget v0, v7, Lfz;->aS:F

    float-to-double v8, v0

    iget v0, v7, Lfz;->d:I

    int-to-double v12, v0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v0, v8

    iput v0, v7, Lfz;->aS:F

    .line 156
    iget v0, v7, Lfz;->aT:F

    float-to-double v8, v0

    iget-wide v10, v7, Lfz;->i:D

    iget v0, v7, Lfz;->aT:F

    float-to-double v12, v0

    sub-double/2addr v10, v12

    iget v0, v7, Lfz;->d:I

    int-to-double v12, v0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v0, v8

    iput v0, v7, Lfz;->aT:F

    .line 158
    iget v0, v7, Lfz;->d:I

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    iput v0, v7, Lfz;->d:I

    move-object/from16 v0, p0

    .line 159
    invoke-virtual/range {v0 .. v6}, Lfz;->e(DDD)V

    .line 160
    iget v0, v7, Lfz;->aS:F

    iget v1, v7, Lfz;->aT:F

    invoke-virtual {v7, v0, v1}, Lfz;->c(FF)V

    goto :goto_148

    .line 162
    :cond_10c
    iget-wide v0, v7, Lfz;->aM:D

    iget-wide v2, v7, Lfz;->aP:D

    add-double v1, v0, v2

    .line 163
    iget-wide v3, v7, Lfz;->aN:D

    iget-wide v5, v7, Lfz;->aQ:D

    add-double/2addr v3, v5

    .line 164
    iget-wide v5, v7, Lfz;->aO:D

    iget-wide v8, v7, Lfz;->aR:D

    add-double/2addr v5, v8

    move-object/from16 v0, p0

    .line 165
    invoke-virtual/range {v0 .. v6}, Lfz;->e(DDD)V

    .line 166
    iget-boolean v0, v7, Lfz;->aX:Z

    if-eqz v0, :cond_137

    .line 167
    iget-wide v0, v7, Lfz;->aP:D

    mul-double v0, v0, v22

    iput-wide v0, v7, Lfz;->aP:D

    .line 168
    iget-wide v0, v7, Lfz;->aQ:D

    mul-double v0, v0, v22

    iput-wide v0, v7, Lfz;->aQ:D

    .line 169
    iget-wide v0, v7, Lfz;->aR:D

    mul-double v0, v0, v22

    iput-wide v0, v7, Lfz;->aR:D

    .line 171
    :cond_137
    iget-wide v0, v7, Lfz;->aP:D

    mul-double v0, v0, v18

    iput-wide v0, v7, Lfz;->aP:D

    .line 172
    iget-wide v0, v7, Lfz;->aQ:D

    mul-double/2addr v0, v14

    iput-wide v0, v7, Lfz;->aQ:D

    .line 173
    iget-wide v0, v7, Lfz;->aR:D

    mul-double v0, v0, v18

    iput-wide v0, v7, Lfz;->aR:D

    :goto_148
    return-void

    :cond_149
    cmpg-double v0, v3, v10

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-gez v0, :cond_15d

    mul-double/2addr v3, v1

    sub-double/2addr v3, v10

    .line 180
    iget-wide v0, v7, Lfz;->aQ:D

    const-wide v5, 0x3fa47ae140000000L    # 0.03999999910593033

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    iput-wide v0, v7, Lfz;->aQ:D

    goto :goto_174

    .line 182
    :cond_15d
    iget-wide v3, v7, Lfz;->aQ:D

    const-wide/16 v5, 0x0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_16a

    iget-wide v3, v7, Lfz;->aQ:D

    div-double/2addr v3, v1

    iput-wide v3, v7, Lfz;->aQ:D

    .line 183
    :cond_16a
    iget-wide v0, v7, Lfz;->aQ:D

    const-wide v2, 0x3f7cac0840000000L    # 0.007000000216066837

    add-double/2addr v0, v2

    iput-wide v0, v7, Lfz;->aQ:D

    .line 187
    :goto_174
    iget-object v0, v7, Lfz;->aG:Lsn;

    if-eqz v0, :cond_191

    .line 188
    iget-wide v0, v7, Lfz;->aP:D

    iget-object v2, v7, Lfz;->aG:Lsn;

    iget-wide v2, v2, Lsn;->aP:D

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, v7, Lfz;->aP:D

    .line 189
    iget-wide v0, v7, Lfz;->aR:D

    iget-object v2, v7, Lfz;->aG:Lsn;

    iget-wide v2, v2, Lsn;->aR:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, v7, Lfz;->aR:D

    .line 194
    :cond_191
    iget-wide v0, v7, Lfz;->aP:D

    const-wide v2, -0x4026666666666666L    # -0.4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_19e

    iput-wide v2, v7, Lfz;->aP:D

    .line 195
    :cond_19e
    iget-wide v0, v7, Lfz;->aP:D

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1ab

    iput-wide v4, v7, Lfz;->aP:D

    .line 196
    :cond_1ab
    iget-wide v0, v7, Lfz;->aR:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1b3

    iput-wide v2, v7, Lfz;->aR:D

    .line 197
    :cond_1b3
    iget-wide v0, v7, Lfz;->aR:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1bb

    iput-wide v4, v7, Lfz;->aR:D

    .line 198
    :cond_1bb
    iget-boolean v0, v7, Lfz;->aX:Z

    if-eqz v0, :cond_1d1

    .line 199
    iget-wide v0, v7, Lfz;->aP:D

    mul-double v0, v0, v22

    iput-wide v0, v7, Lfz;->aP:D

    .line 200
    iget-wide v0, v7, Lfz;->aQ:D

    mul-double v0, v0, v22

    iput-wide v0, v7, Lfz;->aQ:D

    .line 201
    iget-wide v0, v7, Lfz;->aR:D

    mul-double v0, v0, v22

    iput-wide v0, v7, Lfz;->aR:D

    .line 203
    :cond_1d1
    iget-wide v1, v7, Lfz;->aP:D

    iget-wide v3, v7, Lfz;->aQ:D

    iget-wide v5, v7, Lfz;->aR:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lfz;->b(DDD)V

    .line 204
    iget-wide v0, v7, Lfz;->aP:D

    iget-wide v2, v7, Lfz;->aP:D

    mul-double/2addr v0, v2

    iget-wide v2, v7, Lfz;->aR:D

    iget-wide v4, v7, Lfz;->aR:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fc3333333333333L    # 0.15

    cmpl-double v2, v0, v2

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    const-wide v5, 0x3fe999999999999aL    # 0.8

    const/4 v8, 0x2

    if-lez v2, :cond_2b3

    .line 206
    iget v9, v7, Lfz;->aS:F

    float-to-double v14, v9

    mul-double/2addr v14, v3

    div-double v14, v14, v20

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 207
    iget v9, v7, Lfz;->aS:F

    float-to-double v12, v9

    mul-double/2addr v12, v3

    div-double v12, v12, v20

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const/4 v9, 0x0

    :goto_214
    int-to-double v3, v9

    const-wide/high16 v28, 0x404e000000000000L    # 60.0

    mul-double v28, v28, v0

    add-double v28, v28, v10

    cmpg-double v3, v3, v28

    if-gez v3, :cond_2b3

    .line 211
    iget-object v3, v7, Lfz;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    float-to-double v3, v3

    .line 213
    iget-object v10, v7, Lfz;->bs:Ljava/util/Random;

    invoke-virtual {v10, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    mul-int/2addr v10, v8

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    int-to-double v10, v10

    const-wide v30, 0x3fe6666666666666L    # 0.7

    mul-double v10, v10, v30

    .line 214
    iget-object v8, v7, Lfz;->bs:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextBoolean()Z

    move-result v8

    if-eqz v8, :cond_277

    move-wide/from16 v32, v0

    .line 215
    iget-wide v0, v7, Lfz;->aM:D

    mul-double v30, v14, v3

    mul-double v30, v30, v5

    sub-double v0, v0, v30

    mul-double v30, v12, v10

    add-double v36, v0, v30

    .line 216
    iget-wide v0, v7, Lfz;->aO:D

    mul-double/2addr v3, v12

    mul-double/2addr v3, v5

    sub-double/2addr v0, v3

    mul-double/2addr v10, v14

    sub-double v40, v0, v10

    .line 217
    iget-object v0, v7, Lfz;->aI:Lfd;

    const-string v35, "splash"

    iget-wide v3, v7, Lfz;->aN:D

    const-wide/high16 v10, 0x3fc0000000000000L    # 0.125

    sub-double v38, v3, v10

    iget-wide v3, v7, Lfz;->aP:D

    iget-wide v10, v7, Lfz;->aQ:D

    iget-wide v5, v7, Lfz;->aR:D

    move-object/from16 v34, v0

    move-wide/from16 v42, v3

    move-wide/from16 v44, v10

    move-wide/from16 v46, v5

    invoke-virtual/range {v34 .. v47}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    goto :goto_2a5

    :cond_277
    move-wide/from16 v32, v0

    .line 219
    iget-wide v0, v7, Lfz;->aM:D

    add-double/2addr v0, v14

    mul-double v5, v12, v3

    mul-double v5, v5, v30

    add-double v36, v0, v5

    .line 220
    iget-wide v0, v7, Lfz;->aO:D

    add-double/2addr v0, v12

    mul-double/2addr v3, v14

    mul-double v3, v3, v30

    sub-double v40, v0, v3

    .line 221
    iget-object v0, v7, Lfz;->aI:Lfd;

    const-string v35, "splash"

    iget-wide v3, v7, Lfz;->aN:D

    const-wide/high16 v5, 0x3fc0000000000000L    # 0.125

    sub-double v38, v3, v5

    iget-wide v3, v7, Lfz;->aP:D

    iget-wide v10, v7, Lfz;->aQ:D

    iget-wide v5, v7, Lfz;->aR:D

    move-object/from16 v34, v0

    move-wide/from16 v42, v3

    move-wide/from16 v44, v10

    move-wide/from16 v46, v5

    invoke-virtual/range {v34 .. v47}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    :goto_2a5
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v0, v32

    const-wide v5, 0x3fe999999999999aL    # 0.8

    const/4 v8, 0x2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_214

    .line 226
    :cond_2b3
    iget-boolean v0, v7, Lfz;->aY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2e1

    if-lez v2, :cond_2e1

    .line 227
    iget-object v0, v7, Lfz;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_2f7

    .line 228
    invoke-virtual/range {p0 .. p0}, Lfz;->K()V

    const/4 v0, 0x0

    :goto_2c4
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2d2

    .line 230
    sget-object v2, Luu;->y:Luu;

    iget v2, v2, Luu;->bn:I

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3, v1}, Lfz;->a(IIF)Lhl;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c4

    :cond_2d2
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x2

    :goto_2d5
    if-ge v0, v2, :cond_2f7

    .line 233
    sget-object v4, Lgm;->B:Lgm;

    iget v4, v4, Lgm;->bf:I

    invoke-virtual {v7, v4, v3, v1}, Lfz;->a(IIF)Lhl;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d5

    .line 237
    :cond_2e1
    iget-wide v2, v7, Lfz;->aP:D

    mul-double v2, v2, v18

    iput-wide v2, v7, Lfz;->aP:D

    .line 238
    iget-wide v2, v7, Lfz;->aQ:D

    const-wide v4, 0x3fee666660000000L    # 0.949999988079071

    mul-double/2addr v2, v4

    iput-wide v2, v7, Lfz;->aQ:D

    .line 239
    iget-wide v2, v7, Lfz;->aR:D

    mul-double v2, v2, v18

    iput-wide v2, v7, Lfz;->aR:D

    .line 242
    :cond_2f7
    iput v1, v7, Lfz;->aT:F

    .line 243
    iget v0, v7, Lfz;->aS:F

    float-to-double v0, v0

    .line 244
    iget-wide v2, v7, Lfz;->aJ:D

    iget-wide v4, v7, Lfz;->aM:D

    sub-double/2addr v2, v4

    .line 245
    iget-wide v4, v7, Lfz;->aL:D

    iget-wide v8, v7, Lfz;->aO:D

    sub-double/2addr v4, v8

    mul-double v8, v2, v2

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v6, v8, v10

    if-lez v6, :cond_322

    .line 247
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double v0, v0, v20

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    .line 250
    :cond_322
    iget v2, v7, Lfz;->aS:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    :goto_326
    cmpl-double v2, v0, v20

    if-ltz v2, :cond_32d

    sub-double v0, v0, v16

    goto :goto_326

    :cond_32d
    const-wide v2, -0x3f99800000000000L    # -180.0

    :goto_332
    cmpg-double v4, v0, v2

    if-gez v4, :cond_339

    add-double v0, v0, v16

    goto :goto_332

    :cond_339
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_340

    move-wide v0, v2

    :cond_340
    const-wide/high16 v2, -0x3fcc000000000000L    # -20.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_347

    move-wide v0, v2

    .line 259
    :cond_347
    iget v2, v7, Lfz;->aS:F

    float-to-double v2, v2

    add-double/2addr v2, v0

    double-to-float v0, v2

    iput v0, v7, Lfz;->aS:F

    .line 260
    iget v0, v7, Lfz;->aS:F

    iget v1, v7, Lfz;->aT:F

    invoke-virtual {v7, v0, v1}, Lfz;->c(FF)V

    .line 262
    iget-object v0, v7, Lfz;->aI:Lfd;

    iget-object v8, v7, Lfz;->aW:Leq;

    const-wide v9, 0x3fc99999a0000000L    # 0.20000000298023224

    const-wide/16 v11, 0x0

    const-wide v13, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-virtual/range {v8 .. v14}, Leq;->b(DDD)Leq;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_396

    .line 263
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_396

    const/4 v1, 0x0

    .line 264
    :goto_376
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_396

    .line 265
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    .line 266
    iget-object v3, v7, Lfz;->aG:Lsn;

    if-eq v2, v3, :cond_393

    invoke-virtual {v2}, Lsn;->i_()Z

    move-result v3

    if-eqz v3, :cond_393

    instance-of v3, v2, Lfz;

    if-eqz v3, :cond_393

    .line 267
    invoke-virtual {v2, v7}, Lsn;->h(Lsn;)V

    :cond_393
    add-int/lit8 v1, v1, 0x1

    goto :goto_376

    :cond_396
    const/4 v0, 0x0

    :goto_397
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3d6

    .line 273
    iget-wide v1, v7, Lfz;->aM:D

    rem-int/lit8 v3, v0, 0x2

    int-to-double v3, v3

    sub-double v3, v3, v22

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 274
    iget-wide v2, v7, Lfz;->aN:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    .line 275
    iget-wide v3, v7, Lfz;->aO:D

    div-int/lit8 v8, v0, 0x2

    int-to-double v8, v8

    sub-double v8, v8, v22

    mul-double/2addr v8, v5

    add-double/2addr v3, v8

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    .line 276
    iget-object v4, v7, Lfz;->aI:Lfd;

    invoke-virtual {v4, v1, v2, v3}, Lfd;->a(III)I

    move-result v4

    sget-object v8, Luu;->aT:Luu;

    iget v8, v8, Luu;->bn:I

    if-ne v4, v8, :cond_3d2

    .line 277
    iget-object v4, v7, Lfz;->aI:Lfd;

    const/4 v8, 0x0

    invoke-virtual {v4, v1, v2, v3, v8}, Lfd;->f(IIII)Z

    goto :goto_3d3

    :cond_3d2
    const/4 v8, 0x0

    :goto_3d3
    add-int/lit8 v0, v0, 0x1

    goto :goto_397

    .line 281
    :cond_3d6
    iget-object v0, v7, Lfz;->aG:Lsn;

    if-eqz v0, :cond_3e3

    .line 282
    iget-object v0, v7, Lfz;->aG:Lsn;

    iget-boolean v0, v0, Lsn;->be:Z

    if-eqz v0, :cond_3e3

    const/4 v0, 0x0

    iput-object v0, v7, Lfz;->aG:Lsn;

    :cond_3e3
    return-void
.end method

.method public x_()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
