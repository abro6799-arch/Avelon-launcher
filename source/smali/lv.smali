###### Class defpackage.lv (lv)
.class public Llv;
.super Lgm;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(ILuu;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    .line 12
    iget p1, p2, Luu;->bn:I

    iput p1, p0, Llv;->a:I

    return-void
.end method


# virtual methods
.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    .line 16
    invoke-virtual/range {p3 .. p6}, Lfd;->a(III)I

    move-result v3

    sget-object v4, Luu;->aT:Luu;

    iget v4, v4, Luu;->bn:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1a

    move/from16 v7, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move v2, v5

    goto :goto_3f

    :cond_1a
    if-nez v2, :cond_1f

    add-int/lit8 v3, p5, -0x1

    goto :goto_21

    :cond_1f
    move/from16 v3, p5

    :goto_21
    if-ne v2, v6, :cond_25

    add-int/lit8 v3, v3, 0x1

    :cond_25
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2b

    add-int/lit8 v4, p6, -0x1

    goto :goto_2d

    :cond_2b
    move/from16 v4, p6

    :goto_2d
    const/4 v7, 0x3

    if-ne v2, v7, :cond_32

    add-int/lit8 v4, v4, 0x1

    :cond_32
    const/4 v7, 0x4

    if-ne v2, v7, :cond_38

    add-int/lit8 v7, p4, -0x1

    goto :goto_3a

    :cond_38
    move/from16 v7, p4

    :goto_3a
    const/4 v8, 0x5

    if-ne v2, v8, :cond_3f

    add-int/lit8 v7, v7, 0x1

    .line 27
    :cond_3f
    :goto_3f
    iget v8, v1, Liz;->a:I

    if-nez v8, :cond_44

    return v5

    .line 30
    :cond_44
    iget v9, v0, Llv;->a:I

    const/4 v13, 0x0

    move-object/from16 v8, p3

    move v10, v7

    move v11, v3

    move v12, v4

    move v14, v2

    invoke-virtual/range {v8 .. v14}, Lfd;->a(IIIIZI)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 31
    sget-object v5, Luu;->m:[Luu;

    iget v8, v0, Llv;->a:I

    aget-object v5, v5, v8

    move-object/from16 v14, p3

    .line 32
    invoke-virtual {v14, v7, v3, v4, v8}, Lfd;->f(IIII)Z

    move-result v8

    if-eqz v8, :cond_ad

    .line 33
    sget-object v8, Luu;->m:[Luu;

    iget v9, v0, Llv;->a:I

    aget-object v8, v8, v9

    move-object/from16 v9, p3

    move v10, v7

    move v11, v3

    move v12, v4

    move v13, v2

    invoke-virtual/range {v8 .. v13}, Luu;->e(Lfd;IIII)V

    .line 34
    sget-object v2, Luu;->m:[Luu;

    iget v8, v0, Llv;->a:I

    aget-object v8, v2, v8

    move-object/from16 v13, p2

    invoke-virtual/range {v8 .. v13}, Luu;->a(Lfd;IIILls;)V

    int-to-float v2, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v2, v7

    float-to-double v10, v2

    int-to-float v2, v3

    add-float/2addr v2, v7

    float-to-double v12, v2

    int-to-float v2, v4

    add-float/2addr v2, v7

    float-to-double v2, v2

    .line 35
    iget-object v4, v5, Luu;->by:Lct;

    invoke-virtual {v4}, Lct;->d()Ljava/lang/String;

    move-result-object v16

    iget-object v4, v5, Luu;->by:Lct;

    invoke-virtual {v4}, Lct;->b()F

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v4, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v17, v4, v7

    iget-object v4, v5, Luu;->by:Lct;

    invoke-virtual {v4}, Lct;->c()F

    move-result v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v18, v4, v5

    move-wide v14, v2

    invoke-virtual/range {v9 .. v18}, Lfd;->a(DDDLjava/lang/String;FF)V

    .line 36
    iget v2, v1, Liz;->a:I

    sub-int/2addr v2, v6

    iput v2, v1, Liz;->a:I

    :cond_ad
    return v6
.end method
