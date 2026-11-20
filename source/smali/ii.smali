###### Class defpackage.ii (ii)
.class public Lii;
.super Lls;
.source "SourceFile"


# instance fields
.field private a:Ldh;

.field protected d:Lsn;

.field protected e:Z


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lls;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lii;->e:Z

    return-void
.end method


# virtual methods
.method protected E()V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, -0x1

    const v2, -0x383cb080    # -99999.0f

    move v4, v1

    move v5, v4

    move v6, v5

    move v1, v0

    :goto_9
    const/16 v3, 0xa

    if-ge v0, v3, :cond_51

    .line 132
    iget-wide v7, p0, Lii;->aM:D

    iget-object v3, p0, Lii;->bs:Ljava/util/Random;

    const/16 v9, 0xd

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-double v10, v3

    add-double/2addr v7, v10

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    sub-double/2addr v7, v10

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v3

    .line 133
    iget-wide v7, p0, Lii;->aN:D

    iget-object v12, p0, Lii;->bs:Ljava/util/Random;

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    int-to-double v12, v12

    add-double/2addr v7, v12

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    sub-double/2addr v7, v12

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v7

    .line 134
    iget-wide v12, p0, Lii;->aO:D

    iget-object v8, p0, Lii;->bs:Ljava/util/Random;

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v12, v8

    sub-double/2addr v12, v10

    invoke-static {v12, v13}, Lin;->b(D)I

    move-result v8

    .line 135
    invoke-virtual {p0, v3, v7, v8}, Lii;->a(III)F

    move-result v9

    cmpl-float v10, v9, v2

    if-lez v10, :cond_4e

    const/4 v1, 0x1

    move v4, v3

    move v5, v7

    move v6, v8

    move v2, v9

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_51
    if-eqz v1, :cond_5e

    .line 146
    iget-object v2, p0, Lii;->aI:Lfd;

    const/high16 v7, 0x41200000    # 10.0f

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lfd;->a(Lsn;IIIF)Ldh;

    move-result-object v0

    iput-object v0, p0, Lii;->a:Ldh;

    :cond_5e
    return-void
.end method

.method public F()Z
    .registers 2

    .line 172
    iget-object v0, p0, Lii;->a:Ldh;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public G()Lsn;
    .registers 2

    .line 180
    iget-object v0, p0, Lii;->d:Lsn;

    return-object v0
.end method

.method protected a(III)F
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ldh;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lii;->a:Ldh;

    return-void
.end method

.method protected a(Lsn;F)V
    .registers 3

    return-void
.end method

.method protected b(Lsn;F)V
    .registers 3

    return-void
.end method

.method public c(Lsn;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lii;->d:Lsn;

    return-void
.end method

.method public d()Z
    .registers 5

    .line 165
    iget-wide v0, p0, Lii;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 166
    iget-object v1, p0, Lii;->aW:Leq;

    iget-wide v1, v1, Leq;->b:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 167
    iget-wide v2, p0, Lii;->aO:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    .line 168
    invoke-super {p0}, Lls;->d()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p0, v0, v1, v2}, Lii;->a(III)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0
.end method

.method protected e_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected f_()V
    .registers 17

    move-object/from16 v0, p0

    .line 24
    invoke-virtual/range {p0 .. p0}, Lii;->e_()Z

    move-result v1

    iput-boolean v1, v0, Lii;->e:Z

    .line 27
    iget-object v1, v0, Lii;->d:Lsn;

    const/4 v2, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    if-nez v1, :cond_22

    .line 28
    invoke-virtual/range {p0 .. p0}, Lii;->g_()Lsn;

    move-result-object v1

    iput-object v1, v0, Lii;->d:Lsn;

    if-eqz v1, :cond_44

    .line 30
    iget-object v1, v0, Lii;->aI:Lfd;

    iget-object v4, v0, Lii;->d:Lsn;

    invoke-virtual {v1, v0, v4, v3}, Lfd;->a(Lsn;Lsn;F)Ldh;

    move-result-object v1

    iput-object v1, v0, Lii;->a:Ldh;

    goto :goto_44

    .line 33
    :cond_22
    invoke-virtual {v1}, Lsn;->W()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 34
    iput-object v2, v0, Lii;->d:Lsn;

    goto :goto_44

    .line 36
    :cond_2b
    iget-object v1, v0, Lii;->d:Lsn;

    invoke-virtual {v1, v0}, Lsn;->f(Lsn;)F

    move-result v1

    .line 37
    iget-object v4, v0, Lii;->d:Lsn;

    invoke-virtual {v0, v4}, Lii;->e(Lsn;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 38
    iget-object v4, v0, Lii;->d:Lsn;

    invoke-virtual {v0, v4, v1}, Lii;->a(Lsn;F)V

    goto :goto_44

    .line 40
    :cond_3f
    iget-object v4, v0, Lii;->d:Lsn;

    invoke-virtual {v0, v4, v1}, Lii;->b(Lsn;F)V

    .line 49
    :cond_44
    :goto_44
    iget-boolean v1, v0, Lii;->e:Z

    if-nez v1, :cond_65

    iget-object v1, v0, Lii;->d:Lsn;

    if-eqz v1, :cond_65

    iget-object v1, v0, Lii;->a:Ldh;

    if-eqz v1, :cond_5a

    iget-object v1, v0, Lii;->bs:Ljava/util/Random;

    const/16 v4, 0x14

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_65

    .line 50
    :cond_5a
    iget-object v1, v0, Lii;->aI:Lfd;

    iget-object v4, v0, Lii;->d:Lsn;

    invoke-virtual {v1, v0, v4, v3}, Lfd;->a(Lsn;Lsn;F)Ldh;

    move-result-object v1

    iput-object v1, v0, Lii;->a:Ldh;

    goto :goto_82

    .line 51
    :cond_65
    iget-boolean v1, v0, Lii;->e:Z

    if-nez v1, :cond_82

    iget-object v1, v0, Lii;->a:Ldh;

    const/16 v3, 0x50

    if-nez v1, :cond_77

    iget-object v1, v0, Lii;->bs:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-eqz v1, :cond_7f

    :cond_77
    iget-object v1, v0, Lii;->bs:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_82

    .line 52
    :cond_7f
    invoke-virtual/range {p0 .. p0}, Lii;->E()V

    .line 55
    :cond_82
    :goto_82
    iget-object v1, v0, Lii;->aW:Leq;

    iget-wide v3, v1, Leq;->b:D

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v1

    .line 57
    invoke-virtual/range {p0 .. p0}, Lii;->ag()Z

    move-result v3

    .line 58
    invoke-virtual/range {p0 .. p0}, Lii;->ah()Z

    move-result v4

    const/4 v5, 0x0

    .line 59
    iput v5, v0, Lii;->aT:F

    .line 60
    iget-object v5, v0, Lii;->a:Ldh;

    if-eqz v5, :cond_1b2

    iget-object v5, v0, Lii;->bs:Ljava/util/Random;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_a8

    goto/16 :goto_1b2

    .line 66
    :cond_a8
    iget-object v5, v0, Lii;->a:Ldh;

    invoke-virtual {v5, v0}, Ldh;->a(Lsn;)Lbt;

    move-result-object v5

    .line 67
    iget v6, v0, Lii;->bg:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    float-to-double v6, v6

    :goto_b4
    if-eqz v5, :cond_df

    .line 68
    iget-wide v9, v0, Lii;->aM:D

    iget-wide v11, v5, Lbt;->b:D

    iget-wide v13, v0, Lii;->aO:D

    move-object v8, v5

    invoke-virtual/range {v8 .. v14}, Lbt;->d(DDD)D

    move-result-wide v8

    mul-double v10, v6, v6

    cmpg-double v8, v8, v10

    if-gez v8, :cond_df

    .line 69
    iget-object v5, v0, Lii;->a:Ldh;

    invoke-virtual {v5}, Ldh;->a()V

    .line 70
    iget-object v5, v0, Lii;->a:Ldh;

    invoke-virtual {v5}, Ldh;->b()Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 72
    iput-object v2, v0, Lii;->a:Ldh;

    move-object v5, v2

    goto :goto_b4

    .line 73
    :cond_d8
    iget-object v5, v0, Lii;->a:Ldh;

    invoke-virtual {v5, v0}, Ldh;->a(Lsn;)Lbt;

    move-result-object v5

    goto :goto_b4

    :cond_df
    const/4 v2, 0x0

    .line 76
    iput-boolean v2, v0, Lii;->az:Z

    const/high16 v6, 0x41f00000    # 30.0f

    if-eqz v5, :cond_186

    .line 78
    iget-wide v7, v5, Lbt;->a:D

    iget-wide v9, v0, Lii;->aM:D

    sub-double/2addr v7, v9

    .line 79
    iget-wide v9, v5, Lbt;->c:D

    iget-wide v11, v0, Lii;->aO:D

    sub-double/2addr v9, v11

    .line 80
    iget-wide v11, v5, Lbt;->b:D

    int-to-double v13, v1

    sub-double/2addr v11, v13

    .line 82
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide v9, 0x4066800000000000L    # 180.0

    mul-double/2addr v7, v9

    const-wide v13, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr v7, v13

    double-to-float v1, v7

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v1, v5

    .line 83
    iget v7, v0, Lii;->aS:F

    sub-float/2addr v1, v7

    .line 84
    iget v7, v0, Lii;->aB:F

    iput v7, v0, Lii;->ax:F

    :goto_10f
    const/high16 v7, -0x3ccc0000    # -180.0f

    cmpg-float v7, v1, v7

    const/high16 v8, 0x43b40000    # 360.0f

    if-gez v7, :cond_119

    add-float/2addr v1, v8

    goto :goto_10f

    :cond_119
    :goto_119
    const/high16 v7, 0x43340000    # 180.0f

    cmpl-float v15, v1, v7

    if-ltz v15, :cond_121

    sub-float/2addr v1, v8

    goto :goto_119

    :cond_121
    cmpl-float v8, v1, v6

    if-lez v8, :cond_126

    move v1, v6

    :cond_126
    const/high16 v8, -0x3e100000    # -30.0f

    cmpg-float v15, v1, v8

    if-gez v15, :cond_12d

    move v1, v8

    .line 97
    :cond_12d
    iget v8, v0, Lii;->aS:F

    add-float/2addr v8, v1

    iput v8, v0, Lii;->aS:F

    .line 99
    iget-boolean v1, v0, Lii;->e:Z

    if-eqz v1, :cond_17b

    .line 100
    iget-object v1, v0, Lii;->d:Lsn;

    if-eqz v1, :cond_17b

    move v8, v3

    .line 101
    iget-wide v2, v1, Lsn;->aM:D

    iget-wide v6, v0, Lii;->aM:D

    sub-double/2addr v2, v6

    .line 102
    iget-object v6, v0, Lii;->d:Lsn;

    iget-wide v6, v6, Lsn;->aO:D

    iget-wide v13, v0, Lii;->aO:D

    sub-double/2addr v6, v13

    .line 104
    iget v13, v0, Lii;->aS:F

    .line 105
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    mul-double/2addr v2, v9

    const-wide v6, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr v2, v6

    double-to-float v2, v2

    sub-float/2addr v2, v5

    iput v2, v0, Lii;->aS:F

    .line 107
    iget v2, v0, Lii;->aS:F

    sub-float/2addr v13, v2

    add-float/2addr v13, v5

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v13, v2

    const/high16 v2, 0x43340000    # 180.0f

    div-float/2addr v13, v2

    .line 108
    invoke-static {v13}, Lin;->a(F)F

    move-result v2

    neg-float v2, v2

    iget v3, v0, Lii;->ax:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iput v2, v0, Lii;->aw:F

    .line 109
    invoke-static {v13}, Lin;->b(F)F

    move-result v2

    iget v5, v0, Lii;->ax:F

    mul-float/2addr v2, v5

    mul-float/2addr v2, v3

    iput v2, v0, Lii;->ax:F

    goto :goto_17c

    :cond_17b
    move v8, v3

    :goto_17c
    const-wide/16 v2, 0x0

    cmpl-double v2, v11, v2

    if-lez v2, :cond_187

    const/4 v2, 0x1

    .line 113
    iput-boolean v2, v0, Lii;->az:Z

    goto :goto_187

    :cond_186
    move v8, v3

    .line 117
    :cond_187
    :goto_187
    iget-object v2, v0, Lii;->d:Lsn;

    if-eqz v2, :cond_190

    const/high16 v1, 0x41f00000    # 30.0f

    .line 118
    invoke-virtual {v0, v2, v1, v1}, Lii;->a(Lsn;FF)V

    .line 121
    :cond_190
    iget-boolean v1, v0, Lii;->aY:Z

    if-eqz v1, :cond_19d

    invoke-virtual/range {p0 .. p0}, Lii;->F()Z

    move-result v1

    if-nez v1, :cond_19d

    const/4 v1, 0x1

    iput-boolean v1, v0, Lii;->az:Z

    .line 122
    :cond_19d
    iget-object v1, v0, Lii;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1b1

    if-nez v8, :cond_1ae

    if-eqz v4, :cond_1b1

    :cond_1ae
    const/4 v1, 0x1

    iput-boolean v1, v0, Lii;->az:Z

    :cond_1b1
    return-void

    .line 61
    :cond_1b2
    :goto_1b2
    invoke-super/range {p0 .. p0}, Lls;->f_()V

    .line 62
    iput-object v2, v0, Lii;->a:Ldh;

    return-void
.end method

.method protected g_()Lsn;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
