###### Class defpackage.ls (ls)
.class public abstract Lls;
.super Lsn;
.source "SourceFile"


# instance fields
.field public E:I

.field public F:F

.field public G:F

.field public H:F

.field public I:F

.field protected J:F

.field protected K:F

.field protected L:F

.field protected M:F

.field protected N:Z

.field protected O:Ljava/lang/String;

.field protected P:Z

.field protected Q:F

.field protected R:Ljava/lang/String;

.field protected S:F

.field protected T:I

.field protected U:F

.field public V:Z

.field public W:F

.field public X:F

.field public Y:I

.field public Z:I

.field private a:I

.field protected aA:F

.field protected aB:F

.field protected aC:I

.field public aa:I

.field public ab:I

.field public ac:F

.field public ad:I

.field public ae:I

.field public af:F

.field public ag:F

.field protected ah:Z

.field public ai:I

.field public aj:F

.field public ak:F

.field public al:F

.field public am:F

.field protected an:I

.field protected ao:D

.field protected ap:D

.field protected aq:D

.field protected ar:D

.field protected as:D

.field at:F

.field protected au:I

.field protected av:I

.field protected aw:F

.field protected ax:F

.field protected ay:F

.field protected az:Z

.field private b:Lsn;


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 9

    .line 61
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/16 p1, 0x14

    .line 19
    iput p1, p0, Lls;->E:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lls;->H:F

    iput p1, p0, Lls;->I:F

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lls;->N:Z

    const-string v1, "/mob/char.png"

    .line 27
    iput-object v1, p0, Lls;->O:Ljava/lang/String;

    .line 28
    iput-boolean v0, p0, Lls;->P:Z

    .line 29
    iput p1, p0, Lls;->Q:F

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lls;->R:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    iput v1, p0, Lls;->S:F

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lls;->T:I

    .line 33
    iput p1, p0, Lls;->U:F

    .line 34
    iput-boolean v1, p0, Lls;->V:Z

    .line 46
    iput p1, p0, Lls;->ac:F

    .line 47
    iput v1, p0, Lls;->ad:I

    .line 48
    iput v1, p0, Lls;->ae:I

    .line 51
    iput-boolean v1, p0, Lls;->ah:Z

    const/4 v2, -0x1

    .line 53
    iput v2, p0, Lls;->ai:I

    .line 54
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fecccccc0000000L    # 0.8999999761581421

    mul-double/2addr v2, v4

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lls;->aj:F

    .line 201
    iput p1, p0, Lls;->at:F

    .line 297
    iput v1, p0, Lls;->au:I

    .line 549
    iput v1, p0, Lls;->av:I

    .line 551
    iput-boolean v1, p0, Lls;->az:Z

    .line 552
    iput p1, p0, Lls;->aA:F

    const p1, 0x3f333333    # 0.7f

    .line 553
    iput p1, p0, Lls;->aB:F

    .line 639
    iput v1, p0, Lls;->aC:I

    const/16 p1, 0xa

    .line 62
    iput p1, p0, Lls;->Y:I

    .line 63
    iput-boolean v0, p0, Lls;->aF:Z

    .line 65
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float p1, v0

    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, v0

    iput p1, p0, Lls;->G:F

    .line 66
    iget-wide v1, p0, Lls;->aM:D

    iget-wide v3, p0, Lls;->aN:D

    iget-wide v5, p0, Lls;->aO:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lls;->e(DDD)V

    .line 67
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x4641b800    # 12398.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lls;->F:F

    .line 68
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb60000000L    # 3.1415927410125732

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Lls;->aS:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 70
    iput p1, p0, Lls;->bp:F

    return-void
.end method

.method private b(FFF)F
    .registers 6

    sub-float/2addr p2, p1

    :goto_1
    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpg-float v0, p2, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-gez v0, :cond_b

    add-float/2addr p2, v1

    goto :goto_1

    :cond_b
    :goto_b
    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_13

    sub-float/2addr p2, v1

    goto :goto_b

    :cond_13
    cmpl-float v0, p2, p3

    if-lez v0, :cond_18

    move p2, p3

    :cond_18
    neg-float p3, p3

    cmpg-float v0, p2, p3

    if-gez v0, :cond_1e

    move p2, p3

    :cond_1e
    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public N()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected R()V
    .registers 3

    const-wide v0, 0x3fdae147a0000000L    # 0.41999998688697815

    .line 631
    iput-wide v0, p0, Lls;->aQ:D

    return-void
.end method

.method public T()V
    .registers 6

    .line 104
    invoke-virtual {p0}, Lls;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 106
    iget-object v1, p0, Lls;->aI:Lfd;

    invoke-virtual {p0}, Lls;->k()F

    move-result v2

    iget-object v3, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget-object v4, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    sub-float/2addr v3, v4

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    invoke-virtual {v1, p0, v0, v2, v3}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    :cond_23
    return-void
.end method

.method public U()V
    .registers 23

    move-object/from16 v0, p0

    .line 111
    iget v1, v0, Lls;->X:F

    iput v1, v0, Lls;->W:F

    .line 112
    invoke-super/range {p0 .. p0}, Lsn;->U()V

    .line 114
    iget-object v1, v0, Lls;->bs:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget v2, v0, Lls;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lls;->a:I

    if-ge v1, v2, :cond_23

    .line 115
    invoke-virtual/range {p0 .. p0}, Lls;->e()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lls;->a:I

    .line 116
    invoke-virtual/range {p0 .. p0}, Lls;->T()V

    .line 119
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lls;->W()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_34

    invoke-virtual/range {p0 .. p0}, Lls;->L()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 120
    invoke-virtual {v0, v2, v3}, Lls;->a(Lsn;I)Z

    .line 123
    :cond_34
    iget-boolean v1, v0, Lls;->bC:Z

    const/4 v4, 0x0

    if-nez v1, :cond_3f

    iget-object v1, v0, Lls;->aI:Lfd;

    iget-boolean v1, v1, Lfd;->B:Z

    if-eqz v1, :cond_41

    :cond_3f
    iput v4, v0, Lls;->bv:I

    .line 125
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lls;->W()Z

    move-result v1

    if-eqz v1, :cond_be

    sget-object v1, Lln;->g:Lln;

    invoke-virtual {v0, v1}, Lls;->a(Lln;)Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-virtual/range {p0 .. p0}, Lls;->d_()Z

    move-result v1

    if-nez v1, :cond_be

    .line 126
    iget v1, v0, Lls;->bz:I

    sub-int/2addr v1, v3

    iput v1, v0, Lls;->bz:I

    .line 127
    iget v1, v0, Lls;->bz:I

    const/16 v5, -0x14

    if-ne v1, v5, :cond_ba

    .line 128
    iput v4, v0, Lls;->bz:I

    move v1, v4

    :goto_63
    const/16 v5, 0x8

    if-ge v1, v5, :cond_b3

    .line 130
    iget-object v5, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    iget-object v6, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    sub-float/2addr v5, v6

    .line 131
    iget-object v6, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    iget-object v7, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    sub-float/2addr v6, v7

    .line 132
    iget-object v7, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    iget-object v8, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    sub-float/2addr v7, v8

    .line 133
    iget-object v8, v0, Lls;->aI:Lfd;

    const-string v9, "bubble"

    iget-wide v10, v0, Lls;->aM:D

    float-to-double v12, v5

    add-double/2addr v10, v12

    iget-wide v12, v0, Lls;->aN:D

    float-to-double v5, v6

    add-double/2addr v12, v5

    iget-wide v5, v0, Lls;->aO:D

    float-to-double v14, v7

    add-double/2addr v14, v5

    iget-wide v5, v0, Lls;->aP:D

    iget-wide v3, v0, Lls;->aQ:D

    move-wide/from16 v18, v3

    iget-wide v2, v0, Lls;->aR:D

    move-wide/from16 v16, v5

    move-wide/from16 v20, v2

    invoke-virtual/range {v8 .. v21}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_63

    :cond_b3
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0, v2, v1}, Lls;->a(Lsn;I)Z

    const/4 v1, 0x0

    goto :goto_bb

    :cond_ba
    move v1, v4

    .line 138
    :goto_bb
    iput v1, v0, Lls;->bv:I

    goto :goto_c3

    :cond_be
    move v1, v4

    .line 140
    iget v2, v0, Lls;->bw:I

    iput v2, v0, Lls;->bz:I

    .line 143
    :goto_c3
    iget v2, v0, Lls;->ag:F

    iput v2, v0, Lls;->af:F

    .line 145
    iget v2, v0, Lls;->ae:I

    const/4 v3, 0x1

    if-lez v2, :cond_cf

    sub-int/2addr v2, v3

    iput v2, v0, Lls;->ae:I

    .line 146
    :cond_cf
    iget v2, v0, Lls;->aa:I

    if-lez v2, :cond_d6

    sub-int/2addr v2, v3

    iput v2, v0, Lls;->aa:I

    .line 147
    :cond_d6
    iget v2, v0, Lls;->by:I

    if-lez v2, :cond_df

    iget v2, v0, Lls;->by:I

    sub-int/2addr v2, v3

    iput v2, v0, Lls;->by:I

    .line 148
    :cond_df
    iget v2, v0, Lls;->Y:I

    if-gtz v2, :cond_151

    .line 149
    iget v2, v0, Lls;->ad:I

    add-int/2addr v2, v3

    iput v2, v0, Lls;->ad:I

    const/16 v3, 0x14

    if-le v2, v3, :cond_151

    .line 151
    invoke-virtual/range {p0 .. p0}, Lls;->aa()V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lls;->K()V

    move v4, v1

    :goto_f3
    if-ge v4, v3, :cond_151

    .line 154
    iget-object v1, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v1

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    mul-double v15, v1, v5

    .line 155
    iget-object v1, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v1

    mul-double v17, v1, v5

    .line 156
    iget-object v1, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v1

    mul-double v19, v1, v5

    .line 157
    iget-object v7, v0, Lls;->aI:Lfd;

    const-string v8, "explode"

    iget-wide v1, v0, Lls;->aM:D

    iget-object v5, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    iget v6, v0, Lls;->bg:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    float-to-double v9, v5

    add-double/2addr v1, v9

    iget v5, v0, Lls;->bg:F

    float-to-double v9, v5

    sub-double v9, v1, v9

    iget-wide v1, v0, Lls;->aN:D

    iget-object v5, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    iget v11, v0, Lls;->bh:F

    mul-float/2addr v5, v11

    float-to-double v11, v5

    add-double/2addr v11, v1

    iget-wide v1, v0, Lls;->aO:D

    iget-object v5, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    iget v13, v0, Lls;->bg:F

    mul-float/2addr v5, v13

    mul-float/2addr v5, v6

    float-to-double v5, v5

    add-double/2addr v1, v5

    iget v5, v0, Lls;->bg:F

    float-to-double v5, v5

    sub-double v13, v1, v5

    invoke-virtual/range {v7 .. v20}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f3

    .line 162
    :cond_151
    iget v1, v0, Lls;->L:F

    iput v1, v0, Lls;->M:F

    .line 164
    iget v1, v0, Lls;->H:F

    iput v1, v0, Lls;->I:F

    .line 165
    iget v1, v0, Lls;->aS:F

    iput v1, v0, Lls;->aU:F

    .line 166
    iget v1, v0, Lls;->aT:F

    iput v1, v0, Lls;->aV:F

    return-void
.end method

.method public V()V
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x14

    if-ge v1, v2, :cond_6f

    .line 171
    iget-object v2, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    mul-double v14, v2, v4

    .line 172
    iget-object v2, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    mul-double v16, v2, v4

    .line 173
    iget-object v2, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v2

    mul-double v18, v2, v4

    .line 175
    iget-object v6, v0, Lls;->aI:Lfd;

    const-string v7, "explode"

    iget-wide v2, v0, Lls;->aM:D

    iget-object v4, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget v5, v0, Lls;->bg:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    float-to-double v8, v4

    add-double/2addr v2, v8

    iget v4, v0, Lls;->bg:F

    float-to-double v8, v4

    sub-double/2addr v2, v8

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double v10, v14, v8

    sub-double/2addr v2, v10

    iget-wide v10, v0, Lls;->aN:D

    iget-object v4, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget v12, v0, Lls;->bh:F

    mul-float/2addr v4, v12

    float-to-double v12, v4

    add-double/2addr v10, v12

    mul-double v12, v16, v8

    sub-double/2addr v10, v12

    iget-wide v12, v0, Lls;->aO:D

    iget-object v4, v0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget v8, v0, Lls;->bg:F

    mul-float/2addr v4, v8

    mul-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v12, v4

    iget v4, v0, Lls;->bg:F

    float-to-double v4, v4

    sub-double/2addr v12, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double v8, v18, v4

    sub-double/2addr v12, v8

    move-wide v8, v2

    invoke-virtual/range {v6 .. v19}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6f
    return-void
.end method

.method public W()Z
    .registers 2

    .line 542
    iget-boolean v0, p0, Lls;->be:Z

    if-nez v0, :cond_a

    iget v0, p0, Lls;->Y:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method protected X()V
    .registers 10

    .line 642
    iget-object v0, p0, Lls;->aI:Lfd;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, p0, v1, v2}, Lfd;->a(Lsn;D)Lgs;

    move-result-object v0

    .line 643
    invoke-virtual {p0}, Lls;->u()Z

    move-result v1

    if-eqz v1, :cond_4a

    if-eqz v0, :cond_4a

    .line 644
    iget-wide v1, v0, Lsn;->aM:D

    iget-wide v3, p0, Lls;->aM:D

    sub-double/2addr v1, v3

    .line 645
    iget-wide v3, v0, Lsn;->aN:D

    iget-wide v5, p0, Lls;->aN:D

    sub-double/2addr v3, v5

    .line 646
    iget-wide v5, v0, Lsn;->aO:D

    iget-wide v7, p0, Lls;->aO:D

    sub-double/2addr v5, v7

    mul-double/2addr v1, v1

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    const-wide/high16 v3, 0x40d0000000000000L    # 16384.0

    cmpl-double v0, v1, v3

    if-lez v0, :cond_2d

    .line 650
    invoke-virtual {p0}, Lls;->K()V

    .line 653
    :cond_2d
    iget v0, p0, Lls;->av:I

    const/16 v3, 0x258

    if-le v0, v3, :cond_4a

    iget-object v0, p0, Lls;->bs:Ljava/util/Random;

    const/16 v3, 0x320

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_4a

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    cmpg-double v0, v1, v3

    if-gez v0, :cond_47

    const/4 v0, 0x0

    .line 655
    iput v0, p0, Lls;->av:I

    goto :goto_4a

    .line 657
    :cond_47
    invoke-virtual {p0}, Lls;->K()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public Y()Z
    .registers 2

    .line 732
    iget-object v0, p0, Lls;->b:Lsn;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public Z()Lsn;
    .registers 2

    .line 736
    iget-object v0, p0, Lls;->b:Lsn;

    return-object v0
.end method

.method public a(DF)Lvf;
    .registers 12

    .line 808
    invoke-virtual {p0, p3}, Lls;->e(F)Lbt;

    move-result-object v7

    .line 809
    invoke-virtual {p0, p3}, Lls;->f(F)Lbt;

    move-result-object p3

    .line 810
    iget-wide v0, p3, Lbt;->a:D

    mul-double v1, v0, p1

    iget-wide v3, p3, Lbt;->b:D

    mul-double/2addr v3, p1

    iget-wide v5, p3, Lbt;->c:D

    mul-double/2addr v5, p1

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lbt;->c(DDD)Lbt;

    move-result-object p1

    .line 811
    iget-object p2, p0, Lls;->aI:Lfd;

    invoke-virtual {p2, v7, p1}, Lfd;->a(Lbt;Lbt;)Lvf;

    move-result-object p1

    return-object p1
.end method

.method public a(B)V
    .registers 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccd    # 0.2f

    if-ne p1, v0, :cond_3b

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 824
    iput p1, p0, Lls;->al:F

    .line 826
    iget p1, p0, Lls;->E:I

    iput p1, p0, Lls;->by:I

    const/16 p1, 0xa

    .line 827
    iput p1, p0, Lls;->ab:I

    iput p1, p0, Lls;->aa:I

    const/4 p1, 0x0

    .line 828
    iput p1, p0, Lls;->ac:F

    .line 830
    iget-object p1, p0, Lls;->aI:Lfd;

    invoke-virtual {p0}, Lls;->j_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lls;->k()F

    move-result v5

    iget-object v6, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    iget-object v7, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v6, v4

    add-float/2addr v6, v3

    invoke-virtual {p1, p0, v0, v5, v6}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 831
    invoke-virtual {p0, v2, v1}, Lls;->a(Lsn;I)Z

    goto :goto_63

    :cond_3b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_60

    .line 833
    iget-object p1, p0, Lls;->aI:Lfd;

    invoke-virtual {p0}, Lls;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lls;->k()F

    move-result v5

    iget-object v6, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    iget-object v7, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v6, v4

    add-float/2addr v6, v3

    invoke-virtual {p1, p0, v0, v5, v6}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 834
    iput v1, p0, Lls;->Y:I

    .line 835
    invoke-virtual {p0, v2}, Lls;->b(Lsn;)V

    goto :goto_63

    .line 837
    :cond_60
    invoke-super {p0, p1}, Lsn;->a(B)V

    :goto_63
    return-void
.end method

.method public a(DDDFFI)V
    .registers 11

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lls;->bf:F

    .line 192
    iput-wide p1, p0, Lls;->ao:D

    .line 193
    iput-wide p3, p0, Lls;->ap:D

    .line 194
    iput-wide p5, p0, Lls;->aq:D

    float-to-double p1, p7

    .line 195
    iput-wide p1, p0, Lls;->ar:D

    float-to-double p1, p8

    .line 196
    iput-wide p1, p0, Lls;->as:D

    .line 198
    iput p9, p0, Lls;->an:I

    return-void
.end method

.method public a(Lnu;)V
    .registers 4

    const-string v0, "Health"

    .line 534
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v1

    iput v1, p0, Lls;->Y:I

    .line 535
    invoke-virtual {p1, v0}, Lnu;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0xa

    iput v0, p0, Lls;->Y:I

    :cond_12
    const-string v0, "HurtTime"

    .line 536
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lls;->aa:I

    const-string v0, "DeathTime"

    .line 537
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lls;->ad:I

    const-string v0, "AttackTime"

    .line 538
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result p1

    iput p1, p0, Lls;->ae:I

    return-void
.end method

.method public a(Lsn;FF)V
    .registers 14

    .line 712
    iget-wide v0, p1, Lsn;->aM:D

    iget-wide v2, p0, Lls;->aM:D

    sub-double/2addr v0, v2

    .line 714
    iget-wide v2, p1, Lsn;->aO:D

    iget-wide v4, p0, Lls;->aO:D

    sub-double/2addr v2, v4

    .line 716
    instance-of v4, p1, Lls;

    if-eqz v4, :cond_1f

    .line 717
    check-cast p1, Lls;

    .line 718
    iget-wide v4, p0, Lls;->aN:D

    invoke-virtual {p0}, Lls;->w()F

    move-result v6

    float-to-double v6, v6

    add-double/2addr v4, v6

    iget-wide v6, p1, Lls;->aN:D

    invoke-virtual {p1}, Lls;->w()F

    move-result p1

    goto :goto_31

    .line 720
    :cond_1f
    iget-object v4, p1, Lsn;->aW:Leq;

    iget-wide v4, v4, Leq;->b:D

    iget-object p1, p1, Lsn;->aW:Leq;

    iget-wide v6, p1, Leq;->e:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    iget-wide v6, p0, Lls;->aN:D

    invoke-virtual {p0}, Lls;->w()F

    move-result p1

    :goto_31
    float-to-double v8, p1

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    .line 723
    invoke-static {v6, v7}, Lin;->a(D)F

    move-result p1

    float-to-double v6, p1

    .line 725
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v8, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr v0, v8

    double-to-float p1, v0

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr p1, v0

    .line 726
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double/2addr v0, v8

    neg-double v0, v0

    double-to-float v0, v0

    .line 727
    iget v1, p0, Lls;->aT:F

    invoke-direct {p0, v1, v0, p3}, Lls;->b(FFF)F

    move-result p3

    neg-float p3, p3

    iput p3, p0, Lls;->aT:F

    .line 728
    iget p3, p0, Lls;->aS:F

    invoke-direct {p0, p3, p1, p2}, Lls;->b(FFF)F

    move-result p1

    iput p1, p0, Lls;->aS:F

    return-void
.end method

.method public a(Lsn;IDD)V
    .registers 11

    mul-double p1, p3, p3

    mul-double v0, p5, p5

    add-double/2addr p1, v0

    .line 376
    invoke-static {p1, p2}, Lin;->a(D)F

    move-result p1

    .line 379
    iget-wide v0, p0, Lls;->aP:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lls;->aP:D

    .line 380
    iget-wide v0, p0, Lls;->aQ:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lls;->aQ:D

    .line 381
    iget-wide v0, p0, Lls;->aR:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lls;->aR:D

    .line 383
    iget-wide v0, p0, Lls;->aP:D

    float-to-double p1, p1

    div-double/2addr p3, p1

    const v2, 0x3ecccccd    # 0.4f

    float-to-double v2, v2

    mul-double/2addr p3, v2

    sub-double/2addr v0, p3

    iput-wide v0, p0, Lls;->aP:D

    .line 384
    iget-wide p3, p0, Lls;->aQ:D

    const-wide v0, 0x3fd99999a0000000L    # 0.4000000059604645

    add-double/2addr p3, v0

    iput-wide p3, p0, Lls;->aQ:D

    .line 385
    iget-wide p3, p0, Lls;->aR:D

    div-double/2addr p5, p1

    mul-double/2addr p5, v2

    sub-double/2addr p3, p5

    iput-wide p3, p0, Lls;->aR:D

    .line 387
    iget-wide p1, p0, Lls;->aQ:D

    cmpl-double p1, p1, v0

    if-lez p1, :cond_3f

    iput-wide v0, p0, Lls;->aQ:D

    :cond_3f
    return-void
.end method

.method public a(Lsn;I)Z
    .registers 14

    .line 300
    iget-object v0, p0, Lls;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 301
    :cond_8
    iput v1, p0, Lls;->av:I

    .line 302
    iget v0, p0, Lls;->Y:I

    if-gtz v0, :cond_f

    return v1

    :cond_f
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 304
    iput v0, p0, Lls;->al:F

    .line 307
    iget v0, p0, Lls;->by:I

    int-to-float v0, v0

    iget v3, p0, Lls;->E:I

    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    const/4 v7, 0x1

    if-lez v0, :cond_2f

    .line 308
    iget v0, p0, Lls;->au:I

    if-gt p2, v0, :cond_26

    return v1

    :cond_26
    sub-int v0, p2, v0

    .line 309
    invoke-virtual {p0, v0}, Lls;->b(I)V

    .line 310
    iput p2, p0, Lls;->au:I

    move v8, v1

    goto :goto_41

    .line 313
    :cond_2f
    iput p2, p0, Lls;->au:I

    .line 314
    iget v0, p0, Lls;->Y:I

    iput v0, p0, Lls;->Z:I

    .line 315
    iput v3, p0, Lls;->by:I

    .line 316
    invoke-virtual {p0, p2}, Lls;->b(I)V

    const/16 v0, 0xa

    .line 317
    iput v0, p0, Lls;->ab:I

    iput v0, p0, Lls;->aa:I

    move v8, v7

    :goto_41
    const/4 v0, 0x0

    .line 320
    iput v0, p0, Lls;->ac:F

    if-eqz v8, :cond_af

    .line 323
    iget-object v0, p0, Lls;->aI:Lfd;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lfd;->a(Lsn;B)V

    .line 324
    invoke-virtual {p0}, Lls;->ai()V

    if-eqz p1, :cond_a2

    .line 326
    iget-wide v0, p1, Lsn;->aM:D

    iget-wide v3, p0, Lls;->aM:D

    sub-double/2addr v0, v3

    .line 327
    iget-wide v3, p1, Lsn;->aO:D

    iget-wide v5, p0, Lls;->aO:D

    sub-double/2addr v3, v5

    move-wide v5, v3

    :goto_5c
    move-wide v3, v0

    mul-double v0, v3, v3

    mul-double v9, v5, v5

    add-double/2addr v0, v9

    const-wide v9, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v9

    if-gez v0, :cond_85

    .line 329
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    sub-double/2addr v0, v3

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v0, v3

    .line 330
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    sub-double/2addr v5, v9

    mul-double/2addr v5, v3

    goto :goto_5c

    .line 332
    :cond_85
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v9, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v9

    const-wide v9, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr v0, v9

    double-to-float v0, v0

    iget v1, p0, Lls;->aS:F

    sub-float/2addr v0, v1

    iput v0, p0, Lls;->ac:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 333
    invoke-virtual/range {v0 .. v6}, Lls;->a(Lsn;IDD)V

    goto :goto_af

    .line 335
    :cond_a2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0xb4

    int-to-float v0, v0

    iput v0, p0, Lls;->ac:F

    .line 339
    :cond_af
    :goto_af
    iget v0, p0, Lls;->Y:I

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    if-gtz v0, :cond_da

    if-eqz v8, :cond_d6

    .line 340
    iget-object v0, p0, Lls;->aI:Lfd;

    invoke-virtual {p0}, Lls;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lls;->k()F

    move-result v4

    iget-object v5, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    iget-object v6, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    invoke-virtual {v0, p0, v3, v4, v5}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 341
    :cond_d6
    invoke-virtual {p0, p1}, Lls;->b(Lsn;)V

    goto :goto_f8

    :cond_da
    if-eqz v8, :cond_f8

    .line 343
    iget-object v0, p0, Lls;->aI:Lfd;

    invoke-virtual {p0}, Lls;->j_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lls;->k()F

    move-result v4

    iget-object v5, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    iget-object v6, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    invoke-virtual {v0, p0, v3, v4, v5}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    :cond_f8
    :goto_f8
    return v7
.end method

.method public a_(FF)V
    .registers 19

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    .line 432
    invoke-virtual/range {p0 .. p0}, Lls;->ag()Z

    move-result v2

    const-wide v8, 0x3fd3333340000000L    # 0.30000001192092896

    const-wide v10, 0x3fe3333340000000L    # 0.6000000238418579

    const-wide v12, 0x3f947ae147ae147bL    # 0.02

    const v3, 0x3ca3d70a    # 0.02f

    if-eqz v2, :cond_62

    .line 433
    iget-wide v14, v7, Lls;->aN:D

    .line 434
    invoke-virtual {v7, v0, v1, v3}, Lls;->a(FFF)V

    .line 435
    iget-wide v1, v7, Lls;->aP:D

    iget-wide v3, v7, Lls;->aQ:D

    iget-wide v5, v7, Lls;->aR:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lls;->b(DDD)V

    .line 437
    iget-wide v0, v7, Lls;->aP:D

    const-wide v2, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lls;->aP:D

    .line 438
    iget-wide v0, v7, Lls;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lls;->aQ:D

    .line 439
    iget-wide v0, v7, Lls;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lls;->aR:D

    .line 440
    iget-wide v0, v7, Lls;->aQ:D

    sub-double/2addr v0, v12

    iput-wide v0, v7, Lls;->aQ:D

    .line 442
    iget-boolean v0, v7, Lls;->aY:Z

    if-eqz v0, :cond_1a4

    iget-wide v1, v7, Lls;->aP:D

    iget-wide v3, v7, Lls;->aQ:D

    add-double/2addr v3, v10

    iget-wide v5, v7, Lls;->aN:D

    sub-double/2addr v3, v5

    add-double/2addr v3, v14

    iget-wide v5, v7, Lls;->aR:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lls;->f(DDD)Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 443
    iput-wide v8, v7, Lls;->aQ:D

    goto/16 :goto_1a4

    .line 445
    :cond_62
    invoke-virtual/range {p0 .. p0}, Lls;->ah()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 446
    iget-wide v14, v7, Lls;->aN:D

    .line 447
    invoke-virtual {v7, v0, v1, v3}, Lls;->a(FFF)V

    .line 448
    iget-wide v1, v7, Lls;->aP:D

    iget-wide v3, v7, Lls;->aQ:D

    iget-wide v5, v7, Lls;->aR:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lls;->b(DDD)V

    .line 449
    iget-wide v0, v7, Lls;->aP:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lls;->aP:D

    .line 450
    iget-wide v0, v7, Lls;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lls;->aQ:D

    .line 451
    iget-wide v0, v7, Lls;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lls;->aR:D

    .line 452
    iget-wide v0, v7, Lls;->aQ:D

    sub-double/2addr v0, v12

    iput-wide v0, v7, Lls;->aQ:D

    .line 454
    iget-boolean v0, v7, Lls;->aY:Z

    if-eqz v0, :cond_1a4

    iget-wide v1, v7, Lls;->aP:D

    iget-wide v3, v7, Lls;->aQ:D

    add-double/2addr v3, v10

    iget-wide v5, v7, Lls;->aN:D

    sub-double/2addr v3, v5

    add-double/2addr v3, v14

    iget-wide v5, v7, Lls;->aR:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lls;->f(DDD)Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 455
    iput-wide v8, v7, Lls;->aQ:D

    goto/16 :goto_1a4

    .line 459
    :cond_a9
    iget-boolean v2, v7, Lls;->aX:Z

    const v4, 0x3f0bc6a9    # 0.54600006f

    const v5, 0x3f68f5c3    # 0.91f

    if-eqz v2, :cond_db

    .line 461
    iget-object v2, v7, Lls;->aI:Lfd;

    iget-wide v8, v7, Lls;->aM:D

    invoke-static {v8, v9}, Lin;->b(D)I

    move-result v6

    iget-object v8, v7, Lls;->aW:Leq;

    iget-wide v8, v8, Leq;->b:D

    invoke-static {v8, v9}, Lin;->b(D)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-wide v9, v7, Lls;->aO:D

    invoke-static {v9, v10}, Lin;->b(D)I

    move-result v9

    invoke-virtual {v2, v6, v8, v9}, Lfd;->a(III)I

    move-result v2

    if-lez v2, :cond_d9

    .line 463
    sget-object v6, Luu;->m:[Luu;

    aget-object v2, v6, v2

    iget v2, v2, Luu;->bB:F

    mul-float/2addr v2, v5

    goto :goto_dc

    :cond_d9
    move v2, v4

    goto :goto_dc

    :cond_db
    move v2, v5

    :goto_dc
    mul-float v6, v2, v2

    mul-float/2addr v6, v2

    const v2, 0x3e26ad89

    div-float/2addr v2, v6

    .line 468
    iget-boolean v6, v7, Lls;->aX:Z

    if-eqz v6, :cond_eb

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v2

    :cond_eb
    invoke-virtual {v7, v0, v1, v3}, Lls;->a(FFF)V

    .line 471
    iget-boolean v0, v7, Lls;->aX:Z

    if-eqz v0, :cond_11a

    .line 473
    iget-object v0, v7, Lls;->aI:Lfd;

    iget-wide v1, v7, Lls;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    iget-object v2, v7, Lls;->aW:Leq;

    iget-wide v2, v2, Leq;->b:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-wide v8, v7, Lls;->aO:D

    invoke-static {v8, v9}, Lin;->b(D)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lfd;->a(III)I

    move-result v0

    if-lez v0, :cond_118

    .line 475
    sget-object v1, Luu;->m:[Luu;

    aget-object v0, v1, v0

    iget v0, v0, Luu;->bB:F

    mul-float v4, v0, v5

    :cond_118
    move v8, v4

    goto :goto_11b

    :cond_11a
    move v8, v5

    .line 479
    :goto_11b
    invoke-virtual/range {p0 .. p0}, Lls;->p()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 481
    iget-wide v0, v7, Lls;->aP:D

    const v2, -0x41e66666    # -0.15f

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_12d

    iput-wide v2, v7, Lls;->aP:D

    .line 482
    :cond_12d
    iget-wide v0, v7, Lls;->aP:D

    const v4, 0x3e19999a    # 0.15f

    float-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_139

    iput-wide v4, v7, Lls;->aP:D

    .line 483
    :cond_139
    iget-wide v0, v7, Lls;->aR:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_141

    iput-wide v2, v7, Lls;->aR:D

    .line 484
    :cond_141
    iget-wide v0, v7, Lls;->aR:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_149

    iput-wide v4, v7, Lls;->aR:D

    :cond_149
    const/4 v0, 0x0

    .line 485
    iput v0, v7, Lls;->bk:F

    .line 486
    iget-wide v0, v7, Lls;->aQ:D

    const-wide v2, -0x403ccccccccccccdL    # -0.15

    cmpg-double v0, v0, v2

    if-gez v0, :cond_159

    iput-wide v2, v7, Lls;->aQ:D

    .line 487
    :cond_159
    invoke-virtual/range {p0 .. p0}, Lls;->t()Z

    move-result v0

    if-eqz v0, :cond_169

    iget-wide v0, v7, Lls;->aQ:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_169

    iput-wide v2, v7, Lls;->aQ:D

    .line 491
    :cond_169
    iget-wide v1, v7, Lls;->aP:D

    iget-wide v3, v7, Lls;->aQ:D

    iget-wide v5, v7, Lls;->aR:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lls;->b(DDD)V

    .line 494
    iget-boolean v0, v7, Lls;->aY:Z

    if-eqz v0, :cond_185

    invoke-virtual/range {p0 .. p0}, Lls;->p()Z

    move-result v0

    if-eqz v0, :cond_185

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 495
    iput-wide v0, v7, Lls;->aQ:D

    .line 499
    :cond_185
    iget-wide v0, v7, Lls;->aQ:D

    const-wide v2, 0x3fb47ae147ae147bL    # 0.08

    sub-double/2addr v0, v2

    iput-wide v0, v7, Lls;->aQ:D

    .line 500
    iget-wide v0, v7, Lls;->aQ:D

    const-wide v2, 0x3fef5c2900000000L    # 0.9800000190734863

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lls;->aQ:D

    .line 501
    iget-wide v0, v7, Lls;->aP:D

    float-to-double v2, v8

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lls;->aP:D

    .line 502
    iget-wide v0, v7, Lls;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lls;->aR:D

    .line 504
    :cond_1a4
    :goto_1a4
    iget v0, v7, Lls;->al:F

    iput v0, v7, Lls;->ak:F

    .line 505
    iget-wide v0, v7, Lls;->aM:D

    iget-wide v2, v7, Lls;->aJ:D

    sub-double/2addr v0, v2

    .line 506
    iget-wide v2, v7, Lls;->aO:D

    iget-wide v4, v7, Lls;->aL:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    .line 507
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1c3

    move v0, v1

    .line 509
    :cond_1c3
    iget v1, v7, Lls;->al:F

    sub-float/2addr v0, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iput v1, v7, Lls;->al:F

    .line 510
    iget v0, v7, Lls;->am:F

    add-float/2addr v0, v1

    iput v0, v7, Lls;->am:F

    return-void
.end method

.method public aa()V
    .registers 1

    return-void
.end method

.method protected ab()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 762
    invoke-virtual {p0, v0, v1}, Lls;->a(Lsn;I)Z

    return-void
.end method

.method public ac()Lbt;
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 784
    invoke-virtual {p0, v0}, Lls;->f(F)Lbt;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected b(F)V
    .registers 7

    .line 418
    invoke-super {p0, p1}, Lsn;->b(F)V

    const/high16 v0, 0x40400000    # 3.0f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    .line 419
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    if-lez p1, :cond_53

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, v0, p1}, Lls;->a(Lsn;I)Z

    .line 423
    iget-object p1, p0, Lls;->aI:Lfd;

    iget-wide v0, p0, Lls;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iget-wide v1, p0, Lls;->aN:D

    const-wide v3, 0x3fc99999a0000000L    # 0.20000000298023224

    sub-double/2addr v1, v3

    iget v3, p0, Lls;->bf:F

    float-to-double v3, v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    iget-wide v2, p0, Lls;->aO:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lfd;->a(III)I

    move-result p1

    if-lez p1, :cond_53

    .line 425
    sget-object v0, Luu;->m:[Luu;

    aget-object p1, v0, p1

    iget-object p1, p1, Luu;->by:Lct;

    .line 426
    iget-object v0, p0, Lls;->aI:Lfd;

    invoke-virtual {p1}, Lct;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lct;->b()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Lct;->c()F

    move-result p1

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr p1, v3

    invoke-virtual {v0, p0, v1, v2, p1}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    :cond_53
    return-void
.end method

.method protected b(FF)V
    .registers 3

    .line 287
    invoke-super {p0, p1, p2}, Lsn;->b(FF)V

    return-void
.end method

.method protected b(I)V
    .registers 3

    .line 355
    iget v0, p0, Lls;->Y:I

    sub-int/2addr v0, p1

    iput v0, p0, Lls;->Y:I

    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 527
    iget v0, p0, Lls;->Y:I

    int-to-short v0, v0

    const-string v1, "Health"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 528
    iget v0, p0, Lls;->aa:I

    int-to-short v0, v0

    const-string v1, "HurtTime"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 529
    iget v0, p0, Lls;->ad:I

    int-to-short v0, v0

    const-string v1, "DeathTime"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 530
    iget v0, p0, Lls;->ae:I

    int-to-short v0, v0

    const-string v1, "AttackTime"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    return-void
.end method

.method public b(Lsn;)V
    .registers 3

    .line 391
    iget v0, p0, Lls;->T:I

    if-ltz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p1, p0, v0}, Lsn;->c(Lsn;I)V

    :cond_9
    if-eqz p1, :cond_e

    .line 393
    invoke-virtual {p1, p0}, Lsn;->a(Lls;)V

    :cond_e
    const/4 p1, 0x1

    .line 395
    iput-boolean p1, p0, Lls;->ah:Z

    .line 397
    iget-object p1, p0, Lls;->aI:Lfd;

    iget-boolean p1, p1, Lfd;->B:Z

    if-nez p1, :cond_1a

    .line 398
    invoke-virtual {p0}, Lls;->q()V

    .line 401
    :cond_1a
    iget-object p1, p0, Lls;->aI:Lfd;

    const/4 v0, 0x3

    invoke-virtual {p1, p0, v0}, Lfd;->a(Lsn;B)V

    return-void
.end method

.method public c(Liz;)I
    .registers 2

    .line 846
    invoke-virtual {p1}, Liz;->b()I

    move-result p1

    return p1
.end method

.method public c(I)V
    .registers 3

    .line 291
    iget v0, p0, Lls;->Y:I

    if-gtz v0, :cond_5

    return-void

    :cond_5
    add-int/2addr v0, p1

    .line 292
    iput v0, p0, Lls;->Y:I

    const/16 p1, 0x14

    if-le v0, p1, :cond_e

    .line 293
    iput p1, p0, Lls;->Y:I

    .line 294
    :cond_e
    iget p1, p0, Lls;->E:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lls;->by:I

    return-void
.end method

.method public d(F)F
    .registers 5

    .line 766
    iget v0, p0, Lls;->X:F

    iget v1, p0, Lls;->W:F

    sub-float/2addr v0, v1

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_d

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    :cond_d
    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    return v1
.end method

.method public d()Z
    .registers 3

    .line 758
    iget-object v0, p0, Lls;->aI:Lfd;

    iget-object v1, p0, Lls;->aW:Leq;

    invoke-virtual {v0, v1}, Lfd;->a(Leq;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lls;->aI:Lfd;

    iget-object v1, p0, Lls;->aW:Leq;

    invoke-virtual {v0, p0, v1}, Lfd;->a(Lsn;Leq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lls;->aI:Lfd;

    iget-object v1, p0, Lls;->aW:Leq;

    invoke-virtual {v0, v1}, Lfd;->b(Leq;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method public d_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    const/16 v0, 0x50

    return v0
.end method

.method public e(F)Lbt;
    .registers 14

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_11

    .line 774
    iget-wide v1, p0, Lls;->aM:D

    iget-wide v3, p0, Lls;->aN:D

    iget-wide v5, p0, Lls;->aO:D

    invoke-static/range {v1 .. v6}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    return-object p1

    .line 776
    :cond_11
    iget-wide v0, p0, Lls;->aJ:D

    iget-wide v2, p0, Lls;->aM:D

    iget-wide v4, p0, Lls;->aJ:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double v6, v0, v2

    .line 777
    iget-wide v0, p0, Lls;->aK:D

    iget-wide v2, p0, Lls;->aN:D

    iget-wide v8, p0, Lls;->aK:D

    sub-double/2addr v2, v8

    mul-double/2addr v2, v4

    add-double v8, v0, v2

    .line 778
    iget-wide v0, p0, Lls;->aL:D

    iget-wide v2, p0, Lls;->aO:D

    iget-wide v10, p0, Lls;->aL:D

    sub-double/2addr v2, v10

    mul-double/2addr v2, v4

    add-double v10, v0, v2

    .line 780
    invoke-static/range {v6 .. v11}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    return-object p1
.end method

.method public e(Lsn;)Z
    .registers 10

    .line 79
    iget-object v0, p0, Lls;->aI:Lfd;

    iget-wide v1, p0, Lls;->aM:D

    iget-wide v3, p0, Lls;->aN:D

    invoke-virtual {p0}, Lls;->w()F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v3, v5

    iget-wide v5, p0, Lls;->aO:D

    invoke-static/range {v1 .. v6}, Lbt;->b(DDD)Lbt;

    move-result-object v1

    iget-wide v2, p1, Lsn;->aM:D

    iget-wide v4, p1, Lsn;->aN:D

    invoke-virtual {p1}, Lsn;->w()F

    move-result v6

    float-to-double v6, v6

    add-double/2addr v4, v6

    iget-wide v6, p1, Lsn;->aO:D

    invoke-static/range {v2 .. v7}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lfd;->a(Lbt;Lbt;)Lvf;

    move-result-object p1

    if-nez p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    return p1
.end method

.method public f(F)Lbt;
    .registers 11

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const v1, 0x40490fdb    # (float)Math.PI

    const v2, 0x3c8efa35

    if-nez v0, :cond_39

    .line 789
    iget p1, p0, Lls;->aS:F

    neg-float p1, p1

    mul-float/2addr p1, v2

    sub-float/2addr p1, v1

    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    .line 790
    iget v0, p0, Lls;->aS:F

    neg-float v0, v0

    mul-float/2addr v0, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    .line 791
    iget v1, p0, Lls;->aT:F

    neg-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Lin;->b(F)F

    move-result v1

    neg-float v1, v1

    .line 792
    iget v3, p0, Lls;->aT:F

    neg-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Lin;->a(F)F

    move-result v2

    mul-float/2addr v0, v1

    float-to-double v3, v0

    float-to-double v5, v2

    mul-float/2addr p1, v1

    float-to-double v7, p1

    .line 794
    invoke-static/range {v3 .. v8}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    return-object p1

    .line 796
    :cond_39
    iget v0, p0, Lls;->aV:F

    iget v3, p0, Lls;->aT:F

    iget v4, p0, Lls;->aV:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    .line 797
    iget v3, p0, Lls;->aU:F

    iget v4, p0, Lls;->aS:F

    iget v5, p0, Lls;->aU:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    neg-float p1, v3

    mul-float/2addr p1, v2

    sub-float/2addr p1, v1

    .line 799
    invoke-static {p1}, Lin;->b(F)F

    move-result v1

    .line 800
    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    neg-float v0, v0

    mul-float/2addr v0, v2

    .line 801
    invoke-static {v0}, Lin;->b(F)F

    move-result v2

    neg-float v2, v2

    .line 802
    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    mul-float/2addr p1, v2

    float-to-double v3, p1

    float-to-double v5, v0

    mul-float/2addr v1, v2

    float-to-double v7, v1

    .line 804
    invoke-static/range {v3 .. v8}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    return-object p1
.end method

.method protected f_()V
    .registers 7

    .line 664
    iget v0, p0, Lls;->av:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lls;->av:I

    .line 666
    iget-object v0, p0, Lls;->aI:Lfd;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, p0, v2, v3}, Lfd;->a(Lsn;D)Lgs;

    .line 667
    invoke-virtual {p0}, Lls;->X()V

    const/4 v0, 0x0

    .line 669
    iput v0, p0, Lls;->aw:F

    .line 670
    iput v0, p0, Lls;->ax:F

    .line 679
    iget-object v0, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v2, 0x3ca3d70a    # 0.02f

    cmpg-float v0, v0, v2

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x3f000000    # 0.5f

    if-gez v0, :cond_4a

    .line 680
    iget-object v0, p0, Lls;->aI:Lfd;

    const/high16 v4, 0x41000000    # 8.0f

    float-to-double v4, v4

    invoke-virtual {v0, p0, v4, v5}, Lfd;->a(Lsn;D)Lgs;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 682
    iput-object v0, p0, Lls;->b:Lsn;

    .line 683
    iget-object v0, p0, Lls;->bs:Ljava/util/Random;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lls;->aC:I

    goto :goto_4a

    .line 685
    :cond_40
    iget-object v0, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    iput v0, p0, Lls;->ay:F

    .line 689
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lls;->b:Lsn;

    if-eqz v0, :cond_77

    .line 690
    invoke-virtual {p0}, Lls;->x()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0, v0, v3, v2}, Lls;->a(Lsn;FF)V

    .line 691
    iget v0, p0, Lls;->aC:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lls;->aC:I

    if-lez v0, :cond_73

    iget-object v0, p0, Lls;->b:Lsn;

    iget-boolean v0, v0, Lsn;->be:Z

    if-nez v0, :cond_73

    iget-object v0, p0, Lls;->b:Lsn;

    invoke-virtual {v0, p0}, Lsn;->g(Lsn;)D

    move-result-wide v2

    const/high16 v0, 0x42800000    # 64.0f

    float-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_99

    :cond_73
    const/4 v0, 0x0

    .line 692
    iput-object v0, p0, Lls;->b:Lsn;

    goto :goto_99

    .line 695
    :cond_77
    iget-object v0, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v4, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_8e

    .line 696
    iget-object v0, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    iput v0, p0, Lls;->ay:F

    .line 698
    :cond_8e
    iget v0, p0, Lls;->aS:F

    iget v2, p0, Lls;->ay:F

    add-float/2addr v0, v2

    iput v0, p0, Lls;->aS:F

    .line 699
    iget v0, p0, Lls;->aA:F

    iput v0, p0, Lls;->aT:F

    .line 702
    :cond_99
    :goto_99
    invoke-virtual {p0}, Lls;->ag()Z

    move-result v0

    .line 703
    invoke-virtual {p0}, Lls;->ah()Z

    move-result v2

    if-nez v0, :cond_a5

    if-eqz v2, :cond_b6

    .line 704
    :cond_a5
    iget-object v0, p0, Lls;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_b3

    goto :goto_b4

    :cond_b3
    const/4 v1, 0x0

    :goto_b4
    iput-boolean v1, p0, Lls;->az:Z

    :cond_b6
    return-void
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()V
    .registers 2

    const/16 v0, 0xa

    .line 350
    iput v0, p0, Lls;->ab:I

    iput v0, p0, Lls;->aa:I

    const/4 v0, 0x0

    .line 351
    iput v0, p0, Lls;->ac:F

    return-void
.end method

.method public h_()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Lls;->be:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "random.hurt"

    return-object v0
.end method

.method public i_()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lls;->be:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected j()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const-string v0, "random.hurt"

    return-object v0
.end method

.method protected k()F
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public l()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public o()V
    .registers 16

    .line 557
    iget v0, p0, Lls;->an:I

    const/4 v1, 0x0

    if-lez v0, :cond_ba

    .line 558
    iget-wide v2, p0, Lls;->aM:D

    iget-wide v4, p0, Lls;->ao:D

    iget-wide v6, p0, Lls;->aM:D

    sub-double/2addr v4, v6

    iget v0, p0, Lls;->an:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 559
    iget-wide v4, p0, Lls;->aN:D

    iget-wide v6, p0, Lls;->ap:D

    iget-wide v8, p0, Lls;->aN:D

    sub-double/2addr v6, v8

    iget v0, p0, Lls;->an:I

    int-to-double v8, v0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 560
    iget-wide v6, p0, Lls;->aO:D

    iget-wide v8, p0, Lls;->aq:D

    iget-wide v10, p0, Lls;->aO:D

    sub-double/2addr v8, v10

    iget v0, p0, Lls;->an:I

    int-to-double v10, v0

    div-double/2addr v8, v10

    add-double v13, v6, v8

    .line 562
    iget-wide v6, p0, Lls;->ar:D

    iget v0, p0, Lls;->aS:F

    float-to-double v8, v0

    sub-double/2addr v6, v8

    :goto_30
    const-wide v8, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v6, v8

    const-wide v8, 0x4076800000000000L    # 360.0

    if-gez v0, :cond_40

    add-double/2addr v6, v8

    goto :goto_30

    :cond_40
    :goto_40
    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v0, v6, v10

    if-ltz v0, :cond_4b

    sub-double/2addr v6, v8

    goto :goto_40

    .line 568
    :cond_4b
    iget v0, p0, Lls;->aS:F

    float-to-double v8, v0

    iget v0, p0, Lls;->an:I

    int-to-double v10, v0

    div-double/2addr v6, v10

    add-double/2addr v8, v6

    double-to-float v0, v8

    iput v0, p0, Lls;->aS:F

    .line 569
    iget v0, p0, Lls;->aT:F

    float-to-double v6, v0

    iget-wide v8, p0, Lls;->as:D

    iget v0, p0, Lls;->aT:F

    float-to-double v10, v0

    sub-double/2addr v8, v10

    iget v0, p0, Lls;->an:I

    int-to-double v10, v0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v0, v6

    iput v0, p0, Lls;->aT:F

    .line 571
    iget v0, p0, Lls;->an:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lls;->an:I

    move-object v6, p0

    move-wide v7, v2

    move-wide v9, v4

    move-wide v11, v13

    .line 572
    invoke-virtual/range {v6 .. v12}, Lls;->e(DDD)V

    .line 573
    iget v0, p0, Lls;->aS:F

    iget v6, p0, Lls;->aT:F

    invoke-virtual {p0, v0, v6}, Lls;->c(FF)V

    .line 575
    iget-object v0, p0, Lls;->aI:Lfd;

    iget-object v6, p0, Lls;->aW:Leq;

    const-wide/high16 v7, 0x3fa0000000000000L    # 0.03125

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3fa0000000000000L    # 0.03125

    invoke-virtual/range {v6 .. v12}, Leq;->e(DDD)Leq;

    move-result-object v6

    invoke-virtual {v0, p0, v6}, Lfd;->a(Lsn;Leq;)Ljava/util/List;

    move-result-object v0

    .line 576
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_ba

    const-wide/16 v6, 0x0

    move v8, v1

    .line 578
    :goto_96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_ad

    .line 579
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Leq;

    .line 580
    iget-wide v10, v9, Leq;->e:D

    cmpl-double v10, v10, v6

    if-lez v10, :cond_aa

    iget-wide v6, v9, Leq;->e:D

    :cond_aa
    add-int/lit8 v8, v8, 0x1

    goto :goto_96

    .line 583
    :cond_ad
    iget-object v0, p0, Lls;->aW:Leq;

    iget-wide v8, v0, Leq;->b:D

    sub-double/2addr v6, v8

    add-double v9, v4, v6

    move-object v6, p0

    move-wide v7, v2

    move-wide v11, v13

    .line 584
    invoke-virtual/range {v6 .. v12}, Lls;->e(DDD)V

    .line 589
    :cond_ba
    invoke-virtual {p0}, Lls;->y()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 590
    iput-boolean v1, p0, Lls;->az:Z

    const/4 v0, 0x0

    .line 591
    iput v0, p0, Lls;->aw:F

    .line 592
    iput v0, p0, Lls;->ax:F

    .line 593
    iput v0, p0, Lls;->ay:F

    goto :goto_d1

    .line 595
    :cond_ca
    iget-boolean v0, p0, Lls;->V:Z

    if-nez v0, :cond_d1

    invoke-virtual {p0}, Lls;->f_()V

    .line 598
    :cond_d1
    :goto_d1
    invoke-virtual {p0}, Lls;->ag()Z

    move-result v0

    .line 599
    invoke-virtual {p0}, Lls;->ah()Z

    move-result v2

    .line 601
    iget-boolean v3, p0, Lls;->az:Z

    if-eqz v3, :cond_f9

    const-wide v3, 0x3fa47ae140000000L    # 0.03999999910593033

    if-eqz v0, :cond_ea

    .line 603
    iget-wide v5, p0, Lls;->aQ:D

    add-double/2addr v5, v3

    iput-wide v5, p0, Lls;->aQ:D

    goto :goto_f9

    :cond_ea
    if-eqz v2, :cond_f2

    .line 605
    iget-wide v5, p0, Lls;->aQ:D

    add-double/2addr v5, v3

    iput-wide v5, p0, Lls;->aQ:D

    goto :goto_f9

    .line 606
    :cond_f2
    iget-boolean v0, p0, Lls;->aX:Z

    if-eqz v0, :cond_f9

    .line 607
    invoke-virtual {p0}, Lls;->R()V

    .line 612
    :cond_f9
    :goto_f9
    iget v0, p0, Lls;->aw:F

    const v2, 0x3f7ae148    # 0.98f

    mul-float/2addr v0, v2

    iput v0, p0, Lls;->aw:F

    .line 613
    iget v3, p0, Lls;->ax:F

    mul-float/2addr v3, v2

    iput v3, p0, Lls;->ax:F

    .line 614
    iget v2, p0, Lls;->ay:F

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v2, v4

    iput v2, p0, Lls;->ay:F

    .line 615
    invoke-virtual {p0, v0, v3}, Lls;->a_(FF)V

    .line 617
    iget-object v0, p0, Lls;->aI:Lfd;

    iget-object v2, p0, Lls;->aW:Leq;

    const-wide v3, 0x3fc99999a0000000L    # 0.20000000298023224

    const-wide/16 v5, 0x0

    const-wide v7, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-virtual/range {v2 .. v8}, Leq;->b(DDD)Leq;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_149

    .line 618
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_149

    .line 619
    :goto_131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_149

    .line 620
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    .line 621
    invoke-virtual {v2}, Lsn;->i_()Z

    move-result v3

    if-eqz v3, :cond_146

    invoke-virtual {v2, p0}, Lsn;->h(Lsn;)V

    :cond_146
    add-int/lit8 v1, v1, 0x1

    goto :goto_131

    :cond_149
    return-void
.end method

.method public p()Z
    .registers 5

    .line 514
    iget-wide v0, p0, Lls;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 515
    iget-object v1, p0, Lls;->aW:Leq;

    iget-wide v1, v1, Leq;->b:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 516
    iget-wide v2, p0, Lls;->aO:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    .line 518
    iget-object v3, p0, Lls;->aI:Lfd;

    invoke-virtual {v3, v0, v1, v2}, Lfd;->a(III)I

    move-result v0

    sget-object v1, Luu;->aG:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method protected q()V
    .registers 5

    .line 405
    invoke-virtual {p0}, Lls;->j()I

    move-result v0

    if-lez v0, :cond_17

    .line 407
    iget-object v1, p0, Lls;->bs:Ljava/util/Random;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_17

    const/4 v3, 0x1

    .line 409
    invoke-virtual {p0, v0, v3}, Lls;->b(II)Lhl;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_17
    return-void
.end method

.method public q_()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lls;->O:Ljava/lang/String;

    return-object v0
.end method

.method public r_()Liz;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public s_()V
    .registers 2

    .line 181
    invoke-super {p0}, Lsn;->s_()V

    .line 182
    iget v0, p0, Lls;->K:F

    iput v0, p0, Lls;->J:F

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lls;->K:F

    return-void
.end method

.method protected u()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public w()F
    .registers 3

    .line 96
    iget v0, p0, Lls;->bh:F

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    return v0
.end method

.method public w_()V
    .registers 11

    .line 208
    invoke-super {p0}, Lsn;->w_()V

    .line 210
    invoke-virtual {p0}, Lls;->o()V

    .line 212
    iget-wide v0, p0, Lls;->aM:D

    iget-wide v2, p0, Lls;->aJ:D

    sub-double/2addr v0, v2

    .line 213
    iget-wide v2, p0, Lls;->aO:D

    iget-wide v4, p0, Lls;->aL:D

    sub-double/2addr v2, v4

    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    .line 215
    invoke-static {v4, v5}, Lin;->a(D)F

    move-result v4

    .line 217
    iget v5, p0, Lls;->H:F

    .line 220
    iget v6, p0, Lls;->K:F

    iput v6, p0, Lls;->J:F

    const v6, 0x3d4ccccd    # 0.05f

    cmpg-float v6, v4, v6

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v8, 0x43340000    # 180.0f

    const/4 v9, 0x0

    if-gtz v6, :cond_2e

    move v0, v9

    move v4, v0

    goto :goto_3f

    :cond_2e
    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    .line 227
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v8

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v1

    sub-float v5, v0, v7

    const/high16 v0, 0x3f800000    # 1.0f

    .line 229
    :goto_3f
    iget v1, p0, Lls;->X:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_47

    .line 230
    iget v5, p0, Lls;->aS:F

    .line 232
    :cond_47
    iget-boolean v1, p0, Lls;->aX:Z

    if-nez v1, :cond_4c

    goto :goto_4d

    :cond_4c
    move v9, v0

    .line 235
    :goto_4d
    iget v0, p0, Lls;->K:F

    sub-float/2addr v9, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v1

    add-float/2addr v0, v9

    iput v0, p0, Lls;->K:F

    .line 243
    iget v0, p0, Lls;->H:F

    sub-float/2addr v5, v0

    :goto_5a
    const/high16 v0, -0x3ccc0000    # -180.0f

    cmpg-float v2, v5, v0

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v2, :cond_64

    add-float/2addr v5, v3

    goto :goto_5a

    :cond_64
    :goto_64
    cmpl-float v2, v5, v8

    if-ltz v2, :cond_6a

    sub-float/2addr v5, v3

    goto :goto_64

    .line 248
    :cond_6a
    iget v2, p0, Lls;->H:F

    mul-float/2addr v5, v1

    add-float/2addr v2, v5

    iput v2, p0, Lls;->H:F

    .line 250
    iget v1, p0, Lls;->aS:F

    iget v2, p0, Lls;->H:F

    sub-float/2addr v1, v2

    :goto_75
    cmpg-float v2, v1, v0

    if-gez v2, :cond_7b

    add-float/2addr v1, v3

    goto :goto_75

    :cond_7b
    :goto_7b
    cmpl-float v2, v1, v8

    if-ltz v2, :cond_81

    sub-float/2addr v1, v3

    goto :goto_7b

    :cond_81
    const/high16 v2, -0x3d4c0000    # -90.0f

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_8e

    cmpl-float v2, v1, v7

    if-ltz v2, :cond_8c

    goto :goto_8e

    :cond_8c
    const/4 v2, 0x0

    goto :goto_8f

    :cond_8e
    :goto_8e
    const/4 v2, 0x1

    :goto_8f
    const/high16 v5, -0x3d6a0000    # -75.0f

    cmpg-float v6, v1, v5

    if-gez v6, :cond_96

    move v1, v5

    :cond_96
    const/high16 v5, 0x42960000    # 75.0f

    cmpl-float v6, v1, v5

    if-ltz v6, :cond_9d

    move v1, v5

    .line 258
    :cond_9d
    iget v5, p0, Lls;->aS:F

    sub-float/2addr v5, v1

    iput v5, p0, Lls;->H:F

    mul-float v6, v1, v1

    const v7, 0x451c4000    # 2500.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b2

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v6

    add-float/2addr v5, v1

    .line 260
    iput v5, p0, Lls;->H:F

    :cond_b2
    if-eqz v2, :cond_b7

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v4, v1

    .line 269
    :cond_b7
    :goto_b7
    iget v1, p0, Lls;->aS:F

    iget v2, p0, Lls;->aU:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v0

    if-gez v1, :cond_c6

    .line 270
    iget v1, p0, Lls;->aU:F

    sub-float/2addr v1, v3

    iput v1, p0, Lls;->aU:F

    goto :goto_b7

    .line 271
    :cond_c6
    :goto_c6
    iget v1, p0, Lls;->aS:F

    iget v2, p0, Lls;->aU:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_d5

    .line 272
    iget v1, p0, Lls;->aU:F

    add-float/2addr v1, v3

    iput v1, p0, Lls;->aU:F

    goto :goto_c6

    .line 274
    :cond_d5
    :goto_d5
    iget v1, p0, Lls;->H:F

    iget v2, p0, Lls;->I:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v0

    if-gez v1, :cond_e2

    sub-float/2addr v2, v3

    .line 275
    iput v2, p0, Lls;->I:F

    goto :goto_d5

    .line 276
    :cond_e2
    :goto_e2
    iget v1, p0, Lls;->H:F

    iget v2, p0, Lls;->I:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_ef

    add-float/2addr v2, v3

    .line 277
    iput v2, p0, Lls;->I:F

    goto :goto_e2

    .line 279
    :cond_ef
    :goto_ef
    iget v1, p0, Lls;->aT:F

    iget v2, p0, Lls;->aV:F

    sub-float/2addr v1, v2

    cmpg-float v1, v1, v0

    if-gez v1, :cond_fe

    .line 280
    iget v1, p0, Lls;->aV:F

    sub-float/2addr v1, v3

    iput v1, p0, Lls;->aV:F

    goto :goto_ef

    .line 281
    :cond_fe
    :goto_fe
    iget v0, p0, Lls;->aT:F

    iget v1, p0, Lls;->aV:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v8

    if-ltz v0, :cond_10d

    .line 282
    iget v0, p0, Lls;->aV:F

    add-float/2addr v0, v3

    iput v0, p0, Lls;->aV:F

    goto :goto_fe

    .line 283
    :cond_10d
    iget v0, p0, Lls;->L:F

    add-float/2addr v0, v4

    iput v0, p0, Lls;->L:F

    return-void
.end method

.method protected x()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method protected y()Z
    .registers 2

    .line 627
    iget v0, p0, Lls;->Y:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
