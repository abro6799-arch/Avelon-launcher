###### Class defpackage.pb (pb)
.class public Lpb;
.super Lxw;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;DDDLgm;)V
    .registers 24

    move-object v14, p0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 11
    invoke-direct/range {v0 .. v13}, Lxw;-><init>(Lfd;DDDDDD)V

    const/4 v0, 0x0

    move-object/from16 v1, p8

    .line 12
    invoke-virtual {v1, v0}, Lgm;->a(I)I

    move-result v0

    iput v0, v14, Lpb;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iput v0, v14, Lpb;->k:F

    iput v0, v14, Lpb;->j:F

    iput v0, v14, Lpb;->i:F

    .line 14
    sget-object v0, Luu;->aV:Luu;

    iget v0, v0, Luu;->bz:F

    iput v0, v14, Lpb;->h:F

    .line 15
    iget v0, v14, Lpb;->g:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, v14, Lpb;->g:F

    return-void
.end method


# virtual methods
.method public a(Lnw;FFFFFF)V
    .registers 40

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 23
    iget v2, v0, Lpb;->b:I

    rem-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iget v3, v0, Lpb;->c:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    const v5, 0x3c7fbe77

    add-float v6, v2, v5

    .line 25
    iget v7, v0, Lpb;->b:I

    div-int/lit8 v7, v7, 0x10

    int-to-float v7, v7

    iget v8, v0, Lpb;->d:F

    div-float/2addr v8, v4

    add-float/2addr v7, v8

    div-float/2addr v7, v3

    add-float/2addr v5, v7

    const v3, 0x3dcccccd    # 0.1f

    .line 27
    iget v4, v0, Lpb;->g:F

    mul-float/2addr v4, v3

    .line 29
    iget-wide v8, v0, Lpb;->aJ:D

    iget-wide v10, v0, Lpb;->aM:D

    iget-wide v12, v0, Lpb;->aJ:D

    sub-double/2addr v10, v12

    float-to-double v12, v1

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    sget-wide v10, Lpb;->l:D

    sub-double/2addr v8, v10

    double-to-float v3, v8

    .line 30
    iget-wide v8, v0, Lpb;->aK:D

    iget-wide v10, v0, Lpb;->aN:D

    iget-wide v14, v0, Lpb;->aK:D

    sub-double/2addr v10, v14

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    sget-wide v10, Lpb;->m:D

    sub-double/2addr v8, v10

    double-to-float v8, v8

    .line 31
    iget-wide v9, v0, Lpb;->aL:D

    iget-wide v14, v0, Lpb;->aO:D

    move v11, v6

    move/from16 v16, v7

    iget-wide v6, v0, Lpb;->aL:D

    sub-double/2addr v14, v6

    mul-double/2addr v14, v12

    add-double/2addr v9, v14

    sget-wide v6, Lpb;->n:D

    sub-double/2addr v9, v6

    double-to-float v6, v9

    .line 32
    invoke-virtual {v0, v1}, Lpb;->a(F)F

    move-result v1

    .line 33
    iget v7, v0, Lpb;->i:F

    mul-float/2addr v7, v1

    iget v9, v0, Lpb;->j:F

    mul-float/2addr v9, v1

    iget v10, v0, Lpb;->k:F

    mul-float/2addr v1, v10

    move-object/from16 v10, p1

    invoke-virtual {v10, v7, v9, v1}, Lnw;->a(FFF)V

    mul-float v1, p3, v4

    sub-float v7, v3, v1

    mul-float v9, p6, v4

    sub-float v12, v7, v9

    float-to-double v12, v12

    mul-float v14, p4, v4

    sub-float v15, v8, v14

    move/from16 v28, v11

    float-to-double v10, v15

    mul-float v15, p5, v4

    sub-float v29, v6, v15

    mul-float v4, v4, p7

    sub-float v0, v29, v4

    move/from16 p2, v1

    float-to-double v0, v0

    move/from16 v30, v3

    float-to-double v2, v2

    move/from16 v31, v6

    float-to-double v5, v5

    move-object/from16 v17, p1

    move-wide/from16 v18, v12

    move-wide/from16 v20, v10

    move-wide/from16 v22, v0

    move-wide/from16 v24, v2

    move-wide/from16 v26, v5

    .line 35
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    add-float/2addr v7, v9

    float-to-double v0, v7

    add-float/2addr v8, v14

    float-to-double v7, v8

    add-float v12, v29, v4

    float-to-double v12, v12

    move-wide/from16 p3, v5

    move/from16 v14, v16

    float-to-double v5, v14

    move-wide/from16 v18, v0

    move-wide/from16 v20, v7

    move-wide/from16 v22, v12

    move-wide/from16 v26, v5

    .line 36
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    add-float v3, v30, p2

    add-float v0, v3, v9

    float-to-double v0, v0

    add-float v2, v31, v15

    add-float v12, v2, v4

    float-to-double v12, v12

    move/from16 v14, v28

    float-to-double v14, v14

    move-wide/from16 v18, v0

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    .line 37
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    sub-float/2addr v3, v9

    float-to-double v0, v3

    sub-float/2addr v2, v4

    float-to-double v2, v2

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    move-wide/from16 v22, v2

    move-wide/from16 v26, p3

    .line 38
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    return-void
.end method

.method public c_()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
