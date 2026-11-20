###### Class defpackage.rp (rp)
.class public abstract Lrp;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(ILln;)V
    .registers 11

    .line 14
    sget-object v0, Lln;->h:Lln;

    if-ne p2, v0, :cond_7

    const/16 v0, 0xe

    goto :goto_9

    :cond_7
    const/16 v0, 0xc

    :goto_9
    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0xd

    invoke-direct {p0, p1, v0, p2}, Luu;-><init>(IILln;)V

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p0

    move v2, v4

    move v3, v4

    move v5, v7

    move v6, v7

    .line 18
    invoke-virtual/range {v1 .. v7}, Lrp;->a(FFFFFF)V

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lrp;->b(Z)Luu;

    return-void
.end method

.method public static a(Lxp;IIILln;)D
    .registers 7

    .line 196
    sget-object v0, Lln;->g:Lln;

    if-ne p4, v0, :cond_d

    sget-object v0, Luu;->B:Luu;

    check-cast v0, Lrp;

    invoke-direct {v0, p0, p1, p2, p3}, Lrp;->e(Lxp;III)Lbt;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 197
    :goto_e
    sget-object v1, Lln;->h:Lln;

    if-ne p4, v1, :cond_1a

    sget-object p4, Luu;->D:Luu;

    check-cast p4, Lrp;

    invoke-direct {p4, p0, p1, p2, p3}, Lrp;->e(Lxp;III)Lbt;

    move-result-object v0

    .line 198
    :cond_1a
    iget-wide p0, v0, Lbt;->a:D

    const-wide/16 p2, 0x0

    cmpl-double p0, p0, p2

    if-nez p0, :cond_2e

    iget-wide p0, v0, Lbt;->c:D

    cmpl-double p0, p0, p2

    if-nez p0, :cond_2e

    const-wide p0, -0x3f70c00000000000L    # -1000.0

    return-wide p0

    .line 199
    :cond_2e
    iget-wide p0, v0, Lbt;->c:D

    iget-wide p2, v0, Lbt;->a:D

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr p0, p2

    return-wide p0
.end method

.method public static d(I)F
    .registers 2

    const/16 v0, 0x8

    if-lt p0, v0, :cond_5

    const/4 p0, 0x0

    :cond_5
    add-int/lit8 p0, p0, 0x1

    int-to-float p0, p0

    const/high16 v0, 0x41100000    # 9.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private e(Lxp;III)Lbt;
    .registers 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    .line 102
    invoke-static/range {v0 .. v5}, Lbt;->b(DDD)Lbt;

    move-result-object v0

    .line 103
    invoke-virtual/range {p0 .. p4}, Lrp;->c(Lxp;III)I

    move-result v1

    const/4 v9, 0x0

    move-object v10, v0

    move v0, v9

    :goto_17
    const/4 v2, 0x4

    const/4 v11, 0x1

    if-ge v0, v2, :cond_78

    if-nez v0, :cond_20

    add-int/lit8 v2, p2, -0x1

    goto :goto_22

    :cond_20
    move/from16 v2, p2

    :goto_22
    if-ne v0, v11, :cond_27

    add-int/lit8 v3, p4, -0x1

    goto :goto_29

    :cond_27
    move/from16 v3, p4

    :goto_29
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2e

    add-int/lit8 v2, v2, 0x1

    :cond_2e
    const/4 v4, 0x3

    if-ne v0, v4, :cond_33

    add-int/lit8 v3, v3, 0x1

    .line 115
    :cond_33
    invoke-virtual {v6, v7, v2, v8, v3}, Lrp;->c(Lxp;III)I

    move-result v4

    if-gez v4, :cond_60

    .line 117
    invoke-interface {v7, v2, v8, v3}, Lxp;->f(III)Lln;

    move-result-object v4

    invoke-virtual {v4}, Lln;->c()Z

    move-result v4

    if-nez v4, :cond_75

    add-int/lit8 v4, v8, -0x1

    .line 118
    invoke-virtual {v6, v7, v2, v4, v3}, Lrp;->c(Lxp;III)I

    move-result v4

    if-ltz v4, :cond_75

    add-int/lit8 v5, v1, -0x8

    sub-int/2addr v4, v5

    sub-int v2, v2, p2

    mul-int/2addr v2, v4

    int-to-double v11, v2

    sub-int v2, v8, v8

    mul-int/2addr v2, v4

    int-to-double v13, v2

    sub-int v3, v3, p4

    mul-int/2addr v3, v4

    int-to-double v2, v3

    move-wide v15, v2

    .line 121
    invoke-virtual/range {v10 .. v16}, Lbt;->c(DDD)Lbt;

    move-result-object v2

    goto :goto_74

    :cond_60
    if-ltz v4, :cond_75

    sub-int/2addr v4, v1

    sub-int v2, v2, p2

    mul-int/2addr v2, v4

    int-to-double v11, v2

    sub-int v2, v8, v8

    mul-int/2addr v2, v4

    int-to-double v13, v2

    sub-int v3, v3, p4

    mul-int/2addr v3, v4

    int-to-double v2, v3

    move-wide v15, v2

    .line 127
    invoke-virtual/range {v10 .. v16}, Lbt;->c(DDD)Lbt;

    move-result-object v2

    :goto_74
    move-object v10, v2

    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 132
    :cond_78
    invoke-interface/range {p1 .. p4}, Lxp;->e(III)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_12f

    add-int/lit8 v4, p4, -0x1

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 134
    invoke-virtual/range {v0 .. v5}, Lrp;->d(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_92

    move v9, v11

    :cond_92
    if-nez v9, :cond_a5

    add-int/lit8 v4, p4, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 135
    invoke-virtual/range {v0 .. v5}, Lrp;->d(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_a6

    :cond_a5
    move v9, v11

    :cond_a6
    if-nez v9, :cond_b9

    add-int/lit8 v2, p2, -0x1

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 136
    invoke-virtual/range {v0 .. v5}, Lrp;->d(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_ba

    :cond_b9
    move v9, v11

    :cond_ba
    if-nez v9, :cond_cd

    add-int/lit8 v2, p2, 0x1

    const/4 v5, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 137
    invoke-virtual/range {v0 .. v5}, Lrp;->d(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_ce

    :cond_cd
    move v9, v11

    :cond_ce
    if-nez v9, :cond_e1

    add-int/lit8 v3, v8, 0x1

    add-int/lit8 v4, p4, -0x1

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 138
    invoke-virtual/range {v0 .. v5}, Lrp;->d(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_e2

    :cond_e1
    move v9, v11

    :cond_e2
    if-nez v9, :cond_f5

    add-int/lit8 v3, v8, 0x1

    add-int/lit8 v4, p4, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 139
    invoke-virtual/range {v0 .. v5}, Lrp;->d(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_f6

    :cond_f5
    move v9, v11

    :cond_f6
    if-nez v9, :cond_109

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v3, v8, 0x1

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p4

    .line 140
    invoke-virtual/range {v0 .. v5}, Lrp;->d(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_10a

    :cond_109
    move v9, v11

    :cond_10a
    if-nez v9, :cond_11f

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, v8, 0x1

    const/4 v5, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p4

    .line 141
    invoke-virtual/range {v0 .. v5}, Lrp;->d(Lxp;IIII)Z

    move-result v0

    if-eqz v0, :cond_11e

    goto :goto_11f

    :cond_11e
    move v11, v9

    :cond_11f
    :goto_11f
    if-eqz v11, :cond_12f

    .line 142
    invoke-virtual {v10}, Lbt;->c()Lbt;

    move-result-object v12

    const-wide/16 v13, 0x0

    const-wide/high16 v15, -0x3fe8000000000000L    # -6.0

    const-wide/16 v17, 0x0

    invoke-virtual/range {v12 .. v18}, Lbt;->c(DDD)Lbt;

    move-result-object v10

    .line 144
    :cond_12f
    invoke-virtual {v10}, Lbt;->c()Lbt;

    move-result-object v0

    return-object v0
.end method

.method private j(Lfd;III)V
    .registers 9

    .line 211
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result v0

    iget v1, p0, Lrp;->bn:I

    if-eq v0, v1, :cond_9

    return-void

    .line 212
    :cond_9
    iget-object v0, p0, Lrp;->bA:Lln;

    sget-object v1, Lln;->h:Lln;

    if-ne v0, v1, :cond_6f

    add-int/lit8 v0, p4, -0x1

    .line 214
    invoke-virtual {p1, p2, p3, v0}, Lfd;->f(III)Lln;

    move-result-object v0

    sget-object v1, Lln;->g:Lln;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-nez v0, :cond_29

    add-int/lit8 v1, p4, 0x1

    .line 215
    invoke-virtual {p1, p2, p3, v1}, Lfd;->f(III)Lln;

    move-result-object v1

    sget-object v3, Lln;->g:Lln;

    if-ne v1, v3, :cond_2a

    :cond_29
    move v0, v2

    :cond_2a
    if-nez v0, :cond_36

    add-int/lit8 v1, p2, -0x1

    .line 216
    invoke-virtual {p1, v1, p3, p4}, Lfd;->f(III)Lln;

    move-result-object v1

    sget-object v3, Lln;->g:Lln;

    if-ne v1, v3, :cond_37

    :cond_36
    move v0, v2

    :cond_37
    if-nez v0, :cond_43

    add-int/lit8 v1, p2, 0x1

    .line 217
    invoke-virtual {p1, v1, p3, p4}, Lfd;->f(III)Lln;

    move-result-object v1

    sget-object v3, Lln;->g:Lln;

    if-ne v1, v3, :cond_44

    :cond_43
    move v0, v2

    :cond_44
    if-nez v0, :cond_52

    add-int/lit8 v1, p3, 0x1

    .line 220
    invoke-virtual {p1, p2, v1, p4}, Lfd;->f(III)Lln;

    move-result-object v1

    sget-object v3, Lln;->g:Lln;

    if-ne v1, v3, :cond_51

    goto :goto_52

    :cond_51
    move v2, v0

    :cond_52
    :goto_52
    if-eqz v2, :cond_6f

    .line 222
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    if-nez v0, :cond_62

    .line 224
    sget-object v0, Luu;->aq:Luu;

    iget v0, v0, Luu;->bn:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    goto :goto_6c

    :cond_62
    const/4 v1, 0x4

    if-gt v0, v1, :cond_6c

    .line 226
    sget-object v0, Luu;->x:Luu;

    iget v0, v0, Luu;->bn:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    .line 228
    :cond_6c
    :goto_6c
    invoke-virtual {p0, p1, p2, p3, p4}, Lrp;->i(Lfd;III)V

    :cond_6f
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_a

    .line 41
    :cond_6
    iget p1, p0, Lrp;->bm:I

    add-int/2addr p1, v0

    return p1

    .line 39
    :cond_a
    :goto_a
    iget p1, p0, Lrp;->bm:I

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 6

    .line 168
    invoke-super/range {p0 .. p5}, Luu;->a(Lfd;IIILjava/util/Random;)V

    return-void
.end method

.method public a(Lfd;IIILsn;Lbt;)V
    .registers 7

    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Lrp;->e(Lxp;III)Lbt;

    move-result-object p1

    .line 150
    iget-wide p2, p6, Lbt;->a:D

    iget-wide p4, p1, Lbt;->a:D

    add-double/2addr p2, p4

    iput-wide p2, p6, Lbt;->a:D

    .line 151
    iget-wide p2, p6, Lbt;->b:D

    iget-wide p4, p1, Lbt;->b:D

    add-double/2addr p2, p4

    iput-wide p2, p6, Lbt;->b:D

    .line 152
    iget-wide p2, p6, Lbt;->c:D

    iget-wide p4, p1, Lbt;->c:D

    add-double/2addr p2, p4

    iput-wide p2, p6, Lbt;->c:D

    return-void
.end method

.method public a(IZ)Z
    .registers 3

    if-eqz p2, :cond_6

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public b(Lxp;III)I
    .registers 5

    const p1, 0xffffff

    return p1
.end method

.method public b(Lfd;IIII)V
    .registers 6

    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Lrp;->j(Lfd;III)V

    return-void
.end method

.method public b(Lfd;IIILjava/util/Random;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    .line 176
    iget-object v1, v0, Lrp;->bA:Lln;

    sget-object v2, Lln;->g:Lln;

    if-ne v1, v2, :cond_51

    const/16 v1, 0x40

    invoke-virtual {v15, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_51

    .line 177
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v1

    if-lez v1, :cond_51

    const/16 v2, 0x8

    if-ge v1, v2, :cond_51

    int-to-float v1, v12

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-double v3, v1

    int-to-float v1, v13

    add-float/2addr v1, v2

    float-to-double v5, v1

    int-to-float v1, v14

    add-float/2addr v1, v2

    float-to-double v7, v1

    const-string v9, "liquid.water"

    .line 179
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v1, v10

    const/high16 v10, 0x3f400000    # 0.75f

    add-float/2addr v10, v1

    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v1, v1, v16

    add-float v16, v1, v2

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-object v8, v9

    move v9, v10

    move/from16 v10, v16

    invoke-virtual/range {v1 .. v10}, Lfd;->a(DDDLjava/lang/String;FF)V

    .line 182
    :cond_51
    iget-object v1, v0, Lrp;->bA:Lln;

    sget-object v2, Lln;->h:Lln;

    if-ne v1, v2, :cond_90

    add-int/lit8 v1, v13, 0x1

    .line 183
    invoke-virtual {v11, v12, v1, v14}, Lfd;->f(III)Lln;

    move-result-object v2

    sget-object v3, Lln;->a:Lln;

    if-ne v2, v3, :cond_90

    invoke-virtual {v11, v12, v1, v14}, Lfd;->g(III)Z

    move-result v1

    if-nez v1, :cond_90

    const/16 v1, 0x64

    .line 184
    invoke-virtual {v15, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_90

    int-to-float v1, v12

    .line 185
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v3, v1

    int-to-double v1, v13

    .line 186
    iget-wide v5, v0, Lrp;->bw:D

    add-double/2addr v5, v1

    int-to-float v1, v14

    .line 187
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v7, v1

    const-string v2, "lava"

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p1

    move-wide v11, v12

    move-wide v13, v14

    .line 188
    invoke-virtual/range {v1 .. v14}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    :cond_90
    return-void
.end method

.method public b(Lxp;IIII)Z
    .registers 9

    .line 78
    invoke-interface {p1, p2, p3, p4}, Lxp;->f(III)Lln;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lrp;->bA:Lln;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return v2

    .line 80
    :cond_a
    sget-object v1, Lln;->s:Lln;

    if-ne v0, v1, :cond_f

    return v2

    :cond_f
    const/4 v0, 0x1

    if-ne p5, v0, :cond_13

    return v0

    .line 82
    :cond_13
    invoke-super/range {p0 .. p5}, Luu;->b(Lxp;IIII)Z

    move-result p1

    return p1
.end method

.method public b_()I
    .registers 3

    .line 172
    iget-object v0, p0, Lrp;->bA:Lln;

    sget-object v1, Lln;->g:Lln;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected c(Lxp;III)I
    .registers 7

    .line 51
    invoke-interface {p1, p2, p3, p4}, Lxp;->f(III)Lln;

    move-result-object v0

    iget-object v1, p0, Lrp;->bA:Lln;

    if-eq v0, v1, :cond_a

    const/4 p1, -0x1

    return p1

    .line 52
    :cond_a
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p1

    const/16 p2, 0x8

    if-lt p1, p2, :cond_13

    const/4 p1, 0x0

    :cond_13
    return p1
.end method

.method public c(Lfd;III)V
    .registers 5

    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Lrp;->j(Lfd;III)V

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lxp;III)F
    .registers 6

    .line 162
    invoke-interface {p1, p2, p3, p4}, Lxp;->c(III)F

    move-result v0

    add-int/lit8 p3, p3, 0x1

    .line 163
    invoke-interface {p1, p2, p3, p4}, Lxp;->c(III)F

    move-result p1

    cmpl-float p2, v0, p1

    if-lez p2, :cond_f

    goto :goto_10

    :cond_f
    move v0, p1

    :goto_10
    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lxp;IIII)Z
    .registers 9

    .line 70
    invoke-interface {p1, p2, p3, p4}, Lxp;->f(III)Lln;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lrp;->bA:Lln;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return v2

    .line 72
    :cond_a
    sget-object v1, Lln;->s:Lln;

    if-ne v0, v1, :cond_f

    return v2

    :cond_f
    const/4 v0, 0x1

    if-ne p5, v0, :cond_13

    return v0

    .line 74
    :cond_13
    invoke-super/range {p0 .. p5}, Luu;->d(Lxp;IIII)Z

    move-result p1

    return p1
.end method

.method public e()I
    .registers 3

    .line 156
    iget-object v0, p0, Lrp;->bA:Lln;

    sget-object v1, Lln;->g:Lln;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x5

    return v0

    .line 157
    :cond_8
    iget-object v0, p0, Lrp;->bA:Lln;

    sget-object v1, Lln;->h:Lln;

    if-ne v0, v1, :cond_11

    const/16 v0, 0x1e

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public e(Lfd;III)Leq;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method protected h(Lfd;III)I
    .registers 7

    .line 46
    invoke-virtual {p1, p2, p3, p4}, Lfd;->f(III)Lln;

    move-result-object v0

    iget-object v1, p0, Lrp;->bA:Lln;

    if-eq v0, v1, :cond_a

    const/4 p1, -0x1

    return p1

    .line 47
    :cond_a
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p1

    return p1
.end method

.method protected i(Lfd;III)V
    .registers 26

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v12, p3

    move/from16 v13, p4

    int-to-float v0, v15

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-double v2, v0

    int-to-float v0, v12

    add-float/2addr v0, v1

    float-to-double v4, v0

    int-to-float v0, v13

    add-float/2addr v0, v1

    float-to-double v6, v0

    const-string v8, "random.fizz"

    const/high16 v9, 0x3f000000    # 0.5f

    .line 234
    iget-object v0, v14, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, v14, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const v1, 0x40266666    # 2.6f

    add-float v10, v0, v1

    move-object/from16 v0, p1

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-object v7, v8

    move v8, v9

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Lfd;->a(DDDLjava/lang/String;FF)V

    const/4 v0, 0x0

    move v10, v0

    :goto_3a
    const/16 v0, 0x8

    if-ge v10, v0, :cond_6b

    const-string v1, "largesmoke"

    int-to-double v2, v15

    .line 236
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    add-double/2addr v2, v4

    int-to-double v4, v12

    const-wide v6, 0x3ff3333333333333L    # 1.2

    add-double/2addr v4, v6

    int-to-double v6, v13

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/16 v8, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v20, v10

    move-wide/from16 v10, v16

    move-wide/from16 v12, v18

    invoke-virtual/range {v0 .. v13}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v10, v20, 0x1

    move/from16 v12, p3

    move/from16 v13, p4

    goto :goto_3a

    :cond_6b
    return-void
.end method
