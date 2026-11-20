###### Class defpackage.lp (lp)
.class public Llp;
.super Lgm;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 22

    move-object v0, p1

    move-object/from16 v7, p3

    move/from16 v2, p4

    move/from16 v4, p6

    const/4 v1, 0x0

    const/4 v8, 0x1

    move/from16 v3, p7

    if-eq v3, v8, :cond_e

    return v1

    :cond_e
    add-int/lit8 v9, p5, 0x1

    .line 26
    sget-object v3, Luu;->T:Luu;

    move-object v10, v3

    check-cast v10, Lve;

    move-object/from16 v3, p2

    .line 28
    iget v3, v3, Lgs;->aS:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v3, v5

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v3, v5

    float-to-double v5, v3

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v11

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v3

    const/4 v5, 0x3

    and-int/lit8 v11, v3, 0x3

    if-nez v11, :cond_2e

    move v3, v8

    goto :goto_2f

    :cond_2e
    move v3, v1

    :goto_2f
    const/4 v6, -0x1

    if-ne v11, v8, :cond_34

    move v12, v6

    goto :goto_35

    :cond_34
    move v12, v1

    :goto_35
    const/4 v13, 0x2

    if-ne v11, v13, :cond_39

    move v3, v6

    :cond_39
    if-ne v11, v5, :cond_3c

    move v12, v8

    .line 39
    :cond_3c
    invoke-virtual {v7, v2, v9, v4}, Lfd;->d(III)Z

    move-result v5

    if-eqz v5, :cond_7f

    add-int/2addr v12, v2

    add-int v13, v4, v3

    invoke-virtual {v7, v12, v9, v13}, Lfd;->d(III)Z

    move-result v3

    if-eqz v3, :cond_7f

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v7, v2, v3, v4}, Lfd;->h(III)Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-virtual {v7, v12, v3, v13}, Lfd;->h(III)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 41
    iget v5, v10, Lve;->bn:I

    move-object/from16 v1, p3

    move/from16 v2, p4

    move v3, v9

    move/from16 v4, p6

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lfd;->b(IIIII)Z

    .line 42
    iget v1, v10, Lve;->bn:I

    add-int/lit8 v2, v11, 0x8

    move-object/from16 p2, p3

    move/from16 p3, v12

    move/from16 p4, v9

    move/from16 p5, v13

    move/from16 p6, v1

    move/from16 p7, v2

    invoke-virtual/range {p2 .. p7}, Lfd;->b(IIIII)Z

    .line 44
    iget v1, v0, Liz;->a:I

    sub-int/2addr v1, v8

    iput v1, v0, Liz;->a:I

    return v8

    :cond_7f
    return v1
.end method
