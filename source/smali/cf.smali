###### Class defpackage.cf (cf)
.class public Lcf;
.super Lsn;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lls;

.field public c:D

.field public d:D

.field public e:D

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcf;->f:I

    .line 17
    iput p1, p0, Lcf;->g:I

    .line 18
    iput p1, p0, Lcf;->h:I

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcf;->i:I

    .line 20
    iput-boolean p1, p0, Lcf;->j:Z

    .line 21
    iput p1, p0, Lcf;->a:I

    .line 24
    iput p1, p0, Lcf;->l:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 29
    invoke-virtual {p0, p1, p1}, Lcf;->b(FF)V

    return-void
.end method

.method public constructor <init>(Lfd;DDDDDD)V
    .registers 24

    move-object v9, p0

    .line 45
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 v0, -0x1

    .line 16
    iput v0, v9, Lcf;->f:I

    .line 17
    iput v0, v9, Lcf;->g:I

    .line 18
    iput v0, v9, Lcf;->h:I

    const/4 v0, 0x0

    .line 19
    iput v0, v9, Lcf;->i:I

    .line 20
    iput-boolean v0, v9, Lcf;->j:Z

    .line 21
    iput v0, v9, Lcf;->a:I

    .line 24
    iput v0, v9, Lcf;->l:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    invoke-virtual {p0, v0, v0}, Lcf;->b(FF)V

    .line 48
    iget v7, v9, Lcf;->aS:F

    iget v8, v9, Lcf;->aT:F

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide/from16 v5, p6

    invoke-virtual/range {v0 .. v8}, Lcf;->c(DDDFF)V

    .line 49
    invoke-virtual/range {v0 .. v6}, Lcf;->e(DDD)V

    mul-double v0, p8, p8

    mul-double v2, p10, p10

    add-double/2addr v0, v2

    mul-double v2, p12, p12

    add-double/2addr v0, v2

    .line 51
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    float-to-double v0, v0

    div-double v2, p8, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    .line 52
    iput-wide v2, v9, Lcf;->c:D

    div-double v2, p10, v0

    mul-double/2addr v2, v4

    .line 53
    iput-wide v2, v9, Lcf;->d:D

    div-double v0, p12, v0

    mul-double/2addr v0, v4

    .line 54
    iput-wide v0, v9, Lcf;->e:D

    return-void
.end method

.method public constructor <init>(Lfd;Lls;DDD)V
    .registers 21

    move-object v9, p0

    move-object v0, p2

    .line 58
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 v1, -0x1

    .line 16
    iput v1, v9, Lcf;->f:I

    .line 17
    iput v1, v9, Lcf;->g:I

    .line 18
    iput v1, v9, Lcf;->h:I

    const/4 v1, 0x0

    .line 19
    iput v1, v9, Lcf;->i:I

    .line 20
    iput-boolean v1, v9, Lcf;->j:Z

    .line 21
    iput v1, v9, Lcf;->a:I

    .line 24
    iput v1, v9, Lcf;->l:I

    .line 59
    iput-object v0, v9, Lcf;->b:Lls;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    invoke-virtual {p0, v1, v1}, Lcf;->b(FF)V

    .line 63
    iget-wide v1, v0, Lls;->aM:D

    iget-wide v3, v0, Lls;->aN:D

    iget-wide v5, v0, Lls;->aO:D

    iget v7, v0, Lls;->aS:F

    iget v8, v0, Lls;->aT:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcf;->c(DDDFF)V

    .line 64
    iget-wide v1, v9, Lcf;->aM:D

    iget-wide v3, v9, Lcf;->aN:D

    iget-wide v5, v9, Lcf;->aO:D

    invoke-virtual/range {v0 .. v6}, Lcf;->e(DDD)V

    const/4 v0, 0x0

    .line 65
    iput v0, v9, Lcf;->bf:F

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, v9, Lcf;->aR:D

    iput-wide v0, v9, Lcf;->aQ:D

    iput-wide v0, v9, Lcf;->aP:D

    .line 70
    iget-object v0, v9, Lcf;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v2

    add-double/2addr v0, p3

    .line 71
    iget-object v4, v9, Lcf;->bs:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v4

    mul-double/2addr v4, v2

    add-double v4, p5, v4

    .line 72
    iget-object v6, v9, Lcf;->bs:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v6

    mul-double/2addr v6, v2

    add-double v2, p7, v6

    mul-double v6, v0, v0

    mul-double v10, v4, v4

    add-double/2addr v6, v10

    mul-double v10, v2, v2

    add-double/2addr v6, v10

    .line 73
    invoke-static {v6, v7}, Lin;->a(D)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v0, v6

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v10

    .line 74
    iput-wide v0, v9, Lcf;->c:D

    div-double/2addr v4, v6

    mul-double/2addr v4, v10

    .line 75
    iput-wide v4, v9, Lcf;->d:D

    div-double/2addr v2, v6

    mul-double/2addr v2, v10

    .line 76
    iput-wide v2, v9, Lcf;->e:D

    return-void
.end method


# virtual methods
.method public a(Lnu;)V
    .registers 3

    const-string v0, "xTile"

    .line 216
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lcf;->f:I

    const-string v0, "yTile"

    .line 217
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lcf;->g:I

    const-string v0, "zTile"

    .line 218
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lcf;->h:I

    const-string v0, "inTile"

    .line 219
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcf;->i:I

    const-string v0, "shake"

    .line 220
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcf;->a:I

    const-string v0, "inGround"

    .line 221
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iput-boolean v0, p0, Lcf;->j:Z

    return-void
.end method

.method public a(D)Z
    .registers 7

    .line 38
    iget-object v0, p0, Lcf;->aW:Leq;

    invoke-virtual {v0}, Leq;->c()D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public a(Lsn;I)Z
    .registers 5

    .line 233
    invoke-virtual {p0}, Lcf;->ai()V

    if-eqz p1, :cond_2d

    .line 236
    invoke-virtual {p1}, Lsn;->ac()Lbt;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 238
    iget-wide v0, p1, Lbt;->a:D

    iput-wide v0, p0, Lcf;->aP:D

    .line 239
    iget-wide v0, p1, Lbt;->b:D

    iput-wide v0, p0, Lcf;->aQ:D

    .line 240
    iget-wide p1, p1, Lbt;->c:D

    iput-wide p1, p0, Lcf;->aR:D

    .line 241
    iget-wide p1, p0, Lcf;->aP:D

    const-wide v0, 0x3fb999999999999aL    # 0.1

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lcf;->c:D

    .line 242
    iget-wide p1, p0, Lcf;->aQ:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lcf;->d:D

    .line 243
    iget-wide p1, p0, Lcf;->aR:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lcf;->e:D

    :cond_2b
    const/4 p1, 0x1

    return p1

    :cond_2d
    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 207
    iget v0, p0, Lcf;->f:I

    int-to-short v0, v0

    const-string v1, "xTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 208
    iget v0, p0, Lcf;->g:I

    int-to-short v0, v0

    const-string v1, "yTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 209
    iget v0, p0, Lcf;->h:I

    int-to-short v0, v0

    const-string v1, "zTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 210
    iget v0, p0, Lcf;->i:I

    int-to-byte v0, v0

    const-string v1, "inTile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    .line 211
    iget v0, p0, Lcf;->a:I

    int-to-byte v0, v0

    const-string v1, "shake"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    .line 212
    iget-boolean v0, p0, Lcf;->j:Z

    int-to-byte v0, v0

    const-string v1, "inGround"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    return-void
.end method

.method public h_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public m_()F
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public w_()V
    .registers 24

    move-object/from16 v7, p0

    .line 82
    invoke-super/range {p0 .. p0}, Lsn;->w_()V

    const/16 v0, 0xa

    .line 83
    iput v0, v7, Lcf;->bv:I

    .line 85
    iget v0, v7, Lcf;->a:I

    if-lez v0, :cond_11

    add-int/lit8 v0, v0, -0x1

    iput v0, v7, Lcf;->a:I

    .line 87
    :cond_11
    iget-boolean v0, v7, Lcf;->j:Z

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    if-eqz v0, :cond_65

    .line 91
    iget-object v0, v7, Lcf;->aI:Lfd;

    iget v3, v7, Lcf;->f:I

    iget v4, v7, Lcf;->g:I

    iget v5, v7, Lcf;->h:I

    invoke-virtual {v0, v3, v4, v5}, Lfd;->a(III)I

    move-result v0

    .line 92
    iget v3, v7, Lcf;->i:I

    if-eq v0, v3, :cond_57

    .line 93
    iput-boolean v2, v7, Lcf;->j:Z

    .line 95
    iget-wide v3, v7, Lcf;->aP:D

    iget-object v0, v7, Lcf;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v5, v0

    mul-double/2addr v3, v5

    iput-wide v3, v7, Lcf;->aP:D

    .line 96
    iget-wide v3, v7, Lcf;->aQ:D

    iget-object v0, v7, Lcf;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v5, v0

    mul-double/2addr v3, v5

    iput-wide v3, v7, Lcf;->aQ:D

    .line 97
    iget-wide v3, v7, Lcf;->aR:D

    iget-object v0, v7, Lcf;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v5, v0

    mul-double/2addr v3, v5

    iput-wide v3, v7, Lcf;->aR:D

    .line 98
    iput v2, v7, Lcf;->k:I

    .line 99
    iput v2, v7, Lcf;->l:I

    goto :goto_6b

    .line 101
    :cond_57
    iget v0, v7, Lcf;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcf;->k:I

    const/16 v1, 0x4b0

    if-ne v0, v1, :cond_64

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcf;->K()V

    :cond_64
    return-void

    .line 106
    :cond_65
    iget v0, v7, Lcf;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcf;->l:I

    .line 109
    :goto_6b
    iget-wide v8, v7, Lcf;->aM:D

    iget-wide v10, v7, Lcf;->aN:D

    iget-wide v12, v7, Lcf;->aO:D

    invoke-static/range {v8 .. v13}, Lbt;->b(DDD)Lbt;

    move-result-object v0

    .line 110
    iget-wide v3, v7, Lcf;->aM:D

    iget-wide v5, v7, Lcf;->aP:D

    add-double v8, v3, v5

    iget-wide v3, v7, Lcf;->aN:D

    iget-wide v5, v7, Lcf;->aQ:D

    add-double v10, v3, v5

    iget-wide v3, v7, Lcf;->aO:D

    iget-wide v5, v7, Lcf;->aR:D

    add-double v12, v3, v5

    invoke-static/range {v8 .. v13}, Lbt;->b(DDD)Lbt;

    move-result-object v3

    .line 111
    iget-object v4, v7, Lcf;->aI:Lfd;

    invoke-virtual {v4, v0, v3}, Lfd;->a(Lbt;Lbt;)Lvf;

    move-result-object v0

    .line 113
    iget-wide v8, v7, Lcf;->aM:D

    iget-wide v10, v7, Lcf;->aN:D

    iget-wide v12, v7, Lcf;->aO:D

    invoke-static/range {v8 .. v13}, Lbt;->b(DDD)Lbt;

    move-result-object v3

    .line 114
    iget-wide v4, v7, Lcf;->aM:D

    iget-wide v8, v7, Lcf;->aP:D

    add-double v10, v4, v8

    iget-wide v4, v7, Lcf;->aN:D

    iget-wide v8, v7, Lcf;->aQ:D

    add-double v12, v4, v8

    iget-wide v4, v7, Lcf;->aO:D

    iget-wide v8, v7, Lcf;->aR:D

    add-double v14, v4, v8

    invoke-static/range {v10 .. v15}, Lbt;->b(DDD)Lbt;

    move-result-object v4

    if-eqz v0, :cond_c3

    .line 116
    iget-object v4, v0, Lvf;->f:Lbt;

    iget-wide v8, v4, Lbt;->a:D

    iget-object v4, v0, Lvf;->f:Lbt;

    iget-wide v10, v4, Lbt;->b:D

    iget-object v4, v0, Lvf;->f:Lbt;

    iget-wide v12, v4, Lbt;->c:D

    invoke-static/range {v8 .. v13}, Lbt;->b(DDD)Lbt;

    move-result-object v4

    .line 119
    :cond_c3
    iget-object v5, v7, Lcf;->aI:Lfd;

    iget-object v8, v7, Lcf;->aW:Leq;

    iget-wide v9, v7, Lcf;->aP:D

    iget-wide v11, v7, Lcf;->aQ:D

    iget-wide v13, v7, Lcf;->aR:D

    invoke-virtual/range {v8 .. v14}, Leq;->a(DDD)Leq;

    move-result-object v15

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v15 .. v21}, Leq;->b(DDD)Leq;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v5

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    move v10, v2

    move-wide v11, v8

    .line 121
    :goto_e4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_130

    .line 122
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lsn;

    .line 123
    invoke-virtual {v13}, Lsn;->h_()Z

    move-result v14

    if-eqz v14, :cond_129

    iget-object v14, v7, Lcf;->b:Lls;

    if-ne v13, v14, :cond_101

    iget v14, v7, Lcf;->l:I

    const/16 v15, 0x19

    if-ge v14, v15, :cond_101

    goto :goto_129

    .line 126
    :cond_101
    iget-object v14, v13, Lsn;->aW:Leq;

    const v15, 0x3e99999a    # 0.3f

    float-to-double v1, v15

    move-object/from16 v16, v14

    move-wide/from16 v17, v1

    move-wide/from16 v19, v1

    move-wide/from16 v21, v1

    invoke-virtual/range {v16 .. v22}, Leq;->b(DDD)Leq;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v3, v4}, Leq;->a(Lbt;Lbt;)Lvf;

    move-result-object v1

    if-eqz v1, :cond_129

    .line 129
    iget-object v1, v1, Lvf;->f:Lbt;

    invoke-virtual {v3, v1}, Lbt;->c(Lbt;)D

    move-result-wide v1

    cmpg-double v14, v1, v11

    if-ltz v14, :cond_127

    cmpl-double v14, v11, v8

    if-nez v14, :cond_129

    :cond_127
    move-wide v11, v1

    move-object v6, v13

    :cond_129
    :goto_129
    add-int/lit8 v10, v10, 0x1

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    goto :goto_e4

    :cond_130
    if-eqz v6, :cond_137

    .line 138
    new-instance v0, Lvf;

    invoke-direct {v0, v6}, Lvf;-><init>(Lsn;)V

    :cond_137
    if-eqz v0, :cond_163

    .line 152
    iget-object v1, v7, Lcf;->aI:Lfd;

    iget-boolean v1, v1, Lfd;->B:Z

    if-nez v1, :cond_15e

    .line 153
    iget-object v1, v0, Lvf;->g:Lsn;

    if-eqz v1, :cond_14c

    .line 154
    iget-object v0, v0, Lvf;->g:Lsn;

    iget-object v1, v7, Lcf;->b:Lls;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsn;->a(Lsn;I)Z

    goto :goto_14d

    :cond_14c
    const/4 v2, 0x0

    .line 158
    :goto_14d
    iget-object v8, v7, Lcf;->aI:Lfd;

    const/4 v9, 0x0

    iget-wide v10, v7, Lcf;->aM:D

    iget-wide v12, v7, Lcf;->aN:D

    iget-wide v14, v7, Lcf;->aO:D

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    invoke-virtual/range {v8 .. v17}, Lfd;->a(Lsn;DDDFZ)Lqx;

    goto :goto_15f

    :cond_15e
    const/4 v2, 0x0

    .line 160
    :goto_15f
    invoke-virtual/range {p0 .. p0}, Lcf;->K()V

    goto :goto_164

    :cond_163
    const/4 v2, 0x0

    .line 162
    :goto_164
    iget-wide v0, v7, Lcf;->aM:D

    iget-wide v3, v7, Lcf;->aP:D

    add-double/2addr v0, v3

    iput-wide v0, v7, Lcf;->aM:D

    .line 163
    iget-wide v0, v7, Lcf;->aN:D

    iget-wide v3, v7, Lcf;->aQ:D

    add-double/2addr v0, v3

    iput-wide v0, v7, Lcf;->aN:D

    .line 164
    iget-wide v0, v7, Lcf;->aO:D

    iget-wide v3, v7, Lcf;->aR:D

    add-double/2addr v0, v3

    iput-wide v0, v7, Lcf;->aO:D

    .line 166
    iget-wide v0, v7, Lcf;->aP:D

    iget-wide v3, v7, Lcf;->aP:D

    mul-double/2addr v0, v3

    iget-wide v3, v7, Lcf;->aR:D

    iget-wide v5, v7, Lcf;->aR:D

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    .line 167
    iget-wide v3, v7, Lcf;->aP:D

    iget-wide v5, v7, Lcf;->aR:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    const-wide v8, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr v3, v8

    double-to-float v1, v3

    iput v1, v7, Lcf;->aS:F

    .line 168
    iget-wide v3, v7, Lcf;->aQ:D

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v5

    div-double/2addr v0, v8

    double-to-float v0, v0

    iput v0, v7, Lcf;->aT:F

    .line 170
    :goto_1ab
    iget v0, v7, Lcf;->aT:F

    iget v1, v7, Lcf;->aV:F

    sub-float/2addr v0, v1

    const/high16 v1, -0x3ccc0000    # -180.0f

    cmpg-float v0, v0, v1

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v0, :cond_1be

    .line 171
    iget v0, v7, Lcf;->aV:F

    sub-float/2addr v0, v3

    iput v0, v7, Lcf;->aV:F

    goto :goto_1ab

    .line 172
    :cond_1be
    :goto_1be
    iget v0, v7, Lcf;->aT:F

    iget v4, v7, Lcf;->aV:F

    sub-float/2addr v0, v4

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1cf

    .line 173
    iget v0, v7, Lcf;->aV:F

    add-float/2addr v0, v3

    iput v0, v7, Lcf;->aV:F

    goto :goto_1be

    .line 175
    :cond_1cf
    :goto_1cf
    iget v0, v7, Lcf;->aS:F

    iget v5, v7, Lcf;->aU:F

    sub-float/2addr v0, v5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1de

    .line 176
    iget v0, v7, Lcf;->aU:F

    sub-float/2addr v0, v3

    iput v0, v7, Lcf;->aU:F

    goto :goto_1cf

    .line 177
    :cond_1de
    :goto_1de
    iget v0, v7, Lcf;->aS:F

    iget v1, v7, Lcf;->aU:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1ed

    .line 178
    iget v0, v7, Lcf;->aU:F

    add-float/2addr v0, v3

    iput v0, v7, Lcf;->aU:F

    goto :goto_1de

    .line 180
    :cond_1ed
    iget v0, v7, Lcf;->aV:F

    iget v1, v7, Lcf;->aT:F

    iget v3, v7, Lcf;->aV:F

    sub-float/2addr v1, v3

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, v7, Lcf;->aT:F

    .line 181
    iget v0, v7, Lcf;->aU:F

    iget v1, v7, Lcf;->aS:F

    iget v4, v7, Lcf;->aU:F

    sub-float/2addr v1, v4

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, v7, Lcf;->aS:F

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcf;->ag()Z

    move-result v0

    if-eqz v0, :cond_241

    :goto_20c
    const/4 v0, 0x4

    if-ge v2, v0, :cond_23d

    .line 188
    iget-object v8, v7, Lcf;->aI:Lfd;

    const-string v9, "bubble"

    iget-wide v0, v7, Lcf;->aM:D

    iget-wide v3, v7, Lcf;->aP:D

    const/high16 v5, 0x3e800000    # 0.25f

    float-to-double v5, v5

    mul-double/2addr v3, v5

    sub-double v10, v0, v3

    iget-wide v0, v7, Lcf;->aN:D

    iget-wide v3, v7, Lcf;->aQ:D

    mul-double/2addr v3, v5

    sub-double v12, v0, v3

    iget-wide v0, v7, Lcf;->aO:D

    iget-wide v3, v7, Lcf;->aR:D

    mul-double/2addr v3, v5

    sub-double v14, v0, v3

    iget-wide v0, v7, Lcf;->aP:D

    iget-wide v3, v7, Lcf;->aQ:D

    iget-wide v5, v7, Lcf;->aR:D

    move-wide/from16 v16, v0

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    invoke-virtual/range {v8 .. v21}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20c

    :cond_23d
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_244

    :cond_241
    const v0, 0x3f733333    # 0.95f

    .line 193
    :goto_244
    iget-wide v1, v7, Lcf;->aP:D

    iget-wide v3, v7, Lcf;->c:D

    add-double/2addr v1, v3

    iput-wide v1, v7, Lcf;->aP:D

    .line 194
    iget-wide v1, v7, Lcf;->aQ:D

    iget-wide v3, v7, Lcf;->d:D

    add-double/2addr v1, v3

    iput-wide v1, v7, Lcf;->aQ:D

    .line 195
    iget-wide v1, v7, Lcf;->aR:D

    iget-wide v3, v7, Lcf;->e:D

    add-double/2addr v1, v3

    iput-wide v1, v7, Lcf;->aR:D

    .line 196
    iget-wide v1, v7, Lcf;->aP:D

    float-to-double v3, v0

    mul-double/2addr v1, v3

    iput-wide v1, v7, Lcf;->aP:D

    .line 197
    iget-wide v0, v7, Lcf;->aQ:D

    mul-double/2addr v0, v3

    iput-wide v0, v7, Lcf;->aQ:D

    .line 198
    iget-wide v0, v7, Lcf;->aR:D

    mul-double/2addr v0, v3

    iput-wide v0, v7, Lcf;->aR:D

    .line 201
    iget-object v8, v7, Lcf;->aI:Lfd;

    const-string v9, "smoke"

    iget-wide v10, v7, Lcf;->aM:D

    iget-wide v0, v7, Lcf;->aN:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v12, v0, v2

    iget-wide v14, v7, Lcf;->aO:D

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v8 .. v21}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    .line 203
    iget-wide v1, v7, Lcf;->aM:D

    iget-wide v3, v7, Lcf;->aN:D

    iget-wide v5, v7, Lcf;->aO:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcf;->e(DDD)V

    return-void
.end method

.method public x_()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
