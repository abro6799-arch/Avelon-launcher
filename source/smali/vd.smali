###### Class defpackage.vd (vd)
.class public Lvd;
.super Lgm;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/4 p1, 0x1

    .line 13
    iput p1, p0, Lvd;->bg:I

    return-void
.end method


# virtual methods
.method public a(Liz;Lfd;Lgs;)Liz;
    .registers 29

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p3

    .line 20
    iget v2, v1, Lgs;->aV:F

    iget v3, v1, Lgs;->aT:F

    iget v4, v1, Lgs;->aV:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 21
    iget v3, v1, Lgs;->aU:F

    iget v5, v1, Lgs;->aS:F

    iget v6, v1, Lgs;->aU:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 23
    iget-wide v5, v1, Lgs;->aJ:D

    iget-wide v7, v1, Lgs;->aM:D

    iget-wide v10, v1, Lgs;->aJ:D

    sub-double/2addr v7, v10

    float-to-double v10, v4

    mul-double/2addr v7, v10

    add-double v12, v5, v7

    .line 24
    iget-wide v5, v1, Lgs;->aK:D

    iget-wide v7, v1, Lgs;->aN:D

    iget-wide v14, v1, Lgs;->aK:D

    sub-double/2addr v7, v14

    mul-double/2addr v7, v10

    add-double/2addr v5, v7

    const-wide v7, 0x3ff9eb851eb851ecL    # 1.62

    add-double/2addr v5, v7

    iget v7, v1, Lgs;->bf:F

    float-to-double v7, v7

    sub-double v14, v5, v7

    .line 25
    iget-wide v5, v1, Lgs;->aL:D

    iget-wide v7, v1, Lgs;->aO:D

    move-wide/from16 v16, v5

    iget-wide v4, v1, Lgs;->aL:D

    sub-double/2addr v7, v4

    mul-double/2addr v7, v10

    add-double v16, v16, v7

    .line 27
    invoke-static/range {v12 .. v17}, Lbt;->b(DDD)Lbt;

    move-result-object v1

    neg-float v3, v3

    const v4, 0x3c8efa35

    mul-float/2addr v3, v4

    const v5, 0x40490fdb    # (float)Math.PI

    sub-float/2addr v3, v5

    .line 29
    invoke-static {v3}, Lin;->b(F)F

    move-result v5

    .line 30
    invoke-static {v3}, Lin;->a(F)F

    move-result v3

    neg-float v2, v2

    mul-float/2addr v2, v4

    .line 31
    invoke-static {v2}, Lin;->b(F)F

    move-result v4

    neg-float v4, v4

    .line 32
    invoke-static {v2}, Lin;->a(F)F

    move-result v2

    mul-float/2addr v3, v4

    mul-float/2addr v5, v4

    float-to-double v3, v3

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double v19, v3, v6

    float-to-double v2, v2

    mul-double v21, v2, v6

    float-to-double v2, v5

    mul-double v23, v2, v6

    move-object/from16 v18, v1

    .line 39
    invoke-virtual/range {v18 .. v24}, Lbt;->c(DDD)Lbt;

    move-result-object v2

    const/4 v10, 0x1

    .line 40
    invoke-virtual {v9, v1, v2, v10}, Lfd;->a(Lbt;Lbt;Z)Lvf;

    move-result-object v1

    if-nez v1, :cond_80

    return-object v0

    .line 43
    :cond_80
    iget-object v2, v1, Lvf;->a:Ljg;

    sget-object v3, Ljg;->a:Ljg;

    if-ne v2, v3, :cond_bc

    .line 44
    iget v2, v1, Lvf;->b:I

    .line 45
    iget v3, v1, Lvf;->c:I

    .line 46
    iget v1, v1, Lvf;->d:I

    .line 48
    iget-boolean v4, v9, Lfd;->B:Z

    if-nez v4, :cond_b7

    .line 49
    invoke-virtual {v9, v2, v3, v1}, Lfd;->a(III)I

    move-result v4

    sget-object v5, Luu;->aT:Luu;

    iget v5, v5, Luu;->bn:I

    if-ne v4, v5, :cond_9c

    add-int/lit8 v3, v3, -0x1

    .line 50
    :cond_9c
    new-instance v11, Lfz;

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-double v5, v2

    int-to-float v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-double v7, v2

    int-to-float v1, v1

    add-float/2addr v1, v4

    float-to-double v12, v1

    move-object v1, v11

    move-object/from16 v2, p2

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, v12

    invoke-direct/range {v1 .. v8}, Lfz;-><init>(Lfd;DDD)V

    invoke-virtual {v9, v11}, Lfd;->b(Lsn;)Z

    .line 52
    :cond_b7
    iget v1, v0, Liz;->a:I

    sub-int/2addr v1, v10

    iput v1, v0, Liz;->a:I

    :cond_bc
    return-object v0
.end method
