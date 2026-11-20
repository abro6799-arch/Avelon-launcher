###### Class defpackage.qm (qm)
.class public Lqm;
.super Lxw;
.source "SourceFile"


# instance fields
.field private a:Luu;

.field private o:I


# direct methods
.method public constructor <init>(Lfd;DDDDDDLuu;II)V
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p14

    .line 13
    invoke-direct/range {p0 .. p13}, Lxw;-><init>(Lfd;DDDDDD)V

    const/4 v2, 0x0

    .line 10
    iput v2, v0, Lqm;->o:I

    .line 14
    iput-object v1, v0, Lqm;->a:Luu;

    move/from16 v3, p16

    .line 15
    invoke-virtual {v1, v2, v3}, Luu;->a(II)I

    move-result v2

    iput v2, v0, Lqm;->b:I

    .line 16
    iget v1, v1, Luu;->bz:F

    iput v1, v0, Lqm;->h:F

    const v1, 0x3f19999a    # 0.6f

    .line 17
    iput v1, v0, Lqm;->k:F

    iput v1, v0, Lqm;->j:F

    iput v1, v0, Lqm;->i:F

    .line 18
    iget v1, v0, Lqm;->g:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lqm;->g:F

    move/from16 v1, p15

    .line 19
    iput v1, v0, Lqm;->o:I

    return-void
.end method


# virtual methods
.method public a(III)Lqm;
    .registers 6

    .line 23
    iget-object v0, p0, Lqm;->a:Luu;

    sget-object v1, Luu;->v:Lwp;

    if-ne v0, v1, :cond_7

    return-object p0

    .line 25
    :cond_7
    iget-object v0, p0, Lqm;->a:Luu;

    iget-object v1, p0, Lqm;->aI:Lfd;

    invoke-virtual {v0, v1, p1, p2, p3}, Luu;->b(Lxp;III)I

    move-result p1

    .line 26
    iget p2, p0, Lqm;->i:F

    shr-int/lit8 p3, p1, 0x10

    and-int/lit16 p3, p3, 0xff

    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    mul-float/2addr p2, p3

    iput p2, p0, Lqm;->i:F

    .line 27
    iget p2, p0, Lqm;->j:F

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-float p3, p3

    div-float/2addr p3, v0

    mul-float/2addr p2, p3

    iput p2, p0, Lqm;->j:F

    .line 28
    iget p2, p0, Lqm;->k:F

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v0

    mul-float/2addr p2, p1

    iput p2, p0, Lqm;->k:F

    return-object p0
.end method

.method public a(Lnw;FFFFFF)V
    .registers 40

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 37
    iget v2, v0, Lqm;->b:I

    rem-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iget v3, v0, Lqm;->c:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr v2, v3

    const v5, 0x3c7fbe77

    add-float v6, v2, v5

    .line 39
    iget v7, v0, Lqm;->b:I

    div-int/lit8 v7, v7, 0x10

    int-to-float v7, v7

    iget v8, v0, Lqm;->d:F

    div-float/2addr v8, v4

    add-float/2addr v7, v8

    div-float/2addr v7, v3

    add-float/2addr v5, v7

    const v3, 0x3dcccccd    # 0.1f

    .line 41
    iget v4, v0, Lqm;->g:F

    mul-float/2addr v4, v3

    .line 43
    iget-wide v8, v0, Lqm;->aJ:D

    iget-wide v10, v0, Lqm;->aM:D

    iget-wide v12, v0, Lqm;->aJ:D

    sub-double/2addr v10, v12

    float-to-double v12, v1

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    sget-wide v10, Lqm;->l:D

    sub-double/2addr v8, v10

    double-to-float v3, v8

    .line 44
    iget-wide v8, v0, Lqm;->aK:D

    iget-wide v10, v0, Lqm;->aN:D

    iget-wide v14, v0, Lqm;->aK:D

    sub-double/2addr v10, v14

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    sget-wide v10, Lqm;->m:D

    sub-double/2addr v8, v10

    double-to-float v8, v8

    .line 45
    iget-wide v9, v0, Lqm;->aL:D

    iget-wide v14, v0, Lqm;->aO:D

    move v11, v6

    move/from16 v16, v7

    iget-wide v6, v0, Lqm;->aL:D

    sub-double/2addr v14, v6

    mul-double/2addr v14, v12

    add-double/2addr v9, v14

    sget-wide v6, Lqm;->n:D

    sub-double/2addr v9, v6

    double-to-float v6, v9

    .line 46
    invoke-virtual {v0, v1}, Lqm;->a(F)F

    move-result v1

    .line 47
    iget v7, v0, Lqm;->i:F

    mul-float/2addr v7, v1

    iget v9, v0, Lqm;->j:F

    mul-float/2addr v9, v1

    iget v10, v0, Lqm;->k:F

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

    .line 49
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

    .line 50
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

    .line 51
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    sub-float/2addr v3, v9

    float-to-double v0, v3

    sub-float/2addr v2, v4

    float-to-double v2, v2

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    move-wide/from16 v22, v2

    move-wide/from16 v26, p3

    .line 52
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    return-void
.end method

.method public c_()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
