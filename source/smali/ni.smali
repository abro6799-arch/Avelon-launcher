###### Class defpackage.ni (ni)
.class public Lni;
.super Lwb;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 10

    .line 12
    invoke-direct {p0, p1, p2}, Lwb;-><init>(II)V

    .line 13
    iput p2, p0, Lni;->bm:I

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lni;->b(Z)Luu;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3e800000    # 0.25f

    move-object v0, p0

    move v1, v3

    move v4, v6

    .line 17
    invoke-virtual/range {v0 .. v6}, Lni;->a(FFFFFF)V

    return-void
.end method

.method private i(Lfd;III)F
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    add-int/lit8 v5, v4, -0x1

    .line 49
    invoke-virtual {v1, v2, v3, v5}, Lfd;->a(III)I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    .line 50
    invoke-virtual {v1, v2, v3, v7}, Lfd;->a(III)I

    move-result v8

    add-int/lit8 v9, v2, -0x1

    .line 51
    invoke-virtual {v1, v9, v3, v4}, Lfd;->a(III)I

    move-result v10

    add-int/lit8 v11, v2, 0x1

    .line 52
    invoke-virtual {v1, v11, v3, v4}, Lfd;->a(III)I

    move-result v12

    .line 54
    invoke-virtual {v1, v9, v3, v5}, Lfd;->a(III)I

    move-result v13

    .line 55
    invoke-virtual {v1, v11, v3, v5}, Lfd;->a(III)I

    move-result v14

    .line 56
    invoke-virtual {v1, v11, v3, v7}, Lfd;->a(III)I

    move-result v15

    move/from16 v16, v5

    .line 57
    invoke-virtual {v1, v9, v3, v7}, Lfd;->a(III)I

    move-result v5

    move/from16 v17, v9

    .line 59
    iget v9, v0, Lni;->bn:I

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-eq v10, v9, :cond_46

    iget v9, v0, Lni;->bn:I

    if-ne v12, v9, :cond_43

    goto :goto_46

    :cond_43
    move/from16 v9, v18

    goto :goto_48

    :cond_46
    :goto_46
    move/from16 v9, v19

    .line 60
    :goto_48
    iget v10, v0, Lni;->bn:I

    if-eq v6, v10, :cond_54

    iget v6, v0, Lni;->bn:I

    if-ne v8, v6, :cond_51

    goto :goto_54

    :cond_51
    move/from16 v6, v18

    goto :goto_56

    :cond_54
    :goto_54
    move/from16 v6, v19

    .line 61
    :goto_56
    iget v8, v0, Lni;->bn:I

    if-eq v13, v8, :cond_66

    iget v8, v0, Lni;->bn:I

    if-eq v14, v8, :cond_66

    iget v8, v0, Lni;->bn:I

    if-eq v15, v8, :cond_66

    iget v8, v0, Lni;->bn:I

    if-ne v5, v8, :cond_68

    :cond_66
    move/from16 v18, v19

    :cond_68
    const/high16 v5, 0x3f800000    # 1.0f

    move v10, v5

    move/from16 v8, v17

    :goto_6d
    if-gt v8, v11, :cond_99

    move/from16 v12, v16

    :goto_71
    if-gt v12, v7, :cond_96

    add-int/lit8 v13, v3, -0x1

    .line 65
    invoke-virtual {v1, v8, v13, v12}, Lfd;->a(III)I

    move-result v14

    .line 68
    sget-object v15, Luu;->aB:Luu;

    iget v15, v15, Luu;->bn:I

    if-ne v14, v15, :cond_8a

    .line 70
    invoke-virtual {v1, v8, v13, v12}, Lfd;->e(III)I

    move-result v13

    if-lez v13, :cond_88

    const/high16 v13, 0x40400000    # 3.0f

    goto :goto_8b

    :cond_88
    move v13, v5

    goto :goto_8b

    :cond_8a
    const/4 v13, 0x0

    :goto_8b
    if-ne v8, v2, :cond_8f

    if-eq v12, v4, :cond_92

    :cond_8f
    const/high16 v14, 0x40800000    # 4.0f

    div-float/2addr v13, v14

    :cond_92
    add-float/2addr v10, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_71

    :cond_96
    add-int/lit8 v8, v8, 0x1

    goto :goto_6d

    :cond_99
    if-nez v18, :cond_9f

    if-eqz v9, :cond_a2

    if-eqz v6, :cond_a2

    :cond_9f
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v10, v1

    :cond_a2
    return v10
.end method


# virtual methods
.method public a(II)I
    .registers 3

    if-gez p2, :cond_3

    const/4 p2, 0x7

    .line 85
    :cond_3
    iget p1, p0, Lni;->bm:I

    add-int/2addr p1, p2

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    const/4 p2, 0x7

    if-ne p1, p2, :cond_8

    .line 117
    sget-object p1, Lgm;->R:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1

    :cond_8
    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lfd;IIIIF)V
    .registers 26

    move-object/from16 v9, p1

    .line 98
    invoke-super/range {p0 .. p6}, Lwb;->a(Lfd;IIIIF)V

    .line 100
    iget-boolean v0, v9, Lfd;->B:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    move v10, v0

    :goto_c
    const/4 v0, 0x3

    if-ge v10, v0, :cond_72

    .line 104
    iget-object v0, v9, Lfd;->r:Ljava/util/Random;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move/from16 v11, p5

    if-le v0, v11, :cond_22

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    goto :goto_6f

    .line 106
    :cond_22
    iget-object v0, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    const v2, 0x3e19999a    # 0.15f

    add-float/2addr v0, v2

    .line 107
    iget-object v3, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v2

    .line 108
    iget-object v4, v9, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v2

    .line 109
    new-instance v12, Lhl;

    move/from16 v13, p2

    int-to-float v1, v13

    add-float/2addr v1, v0

    float-to-double v5, v1

    move/from16 v14, p3

    int-to-float v0, v14

    add-float/2addr v0, v3

    float-to-double v7, v0

    move/from16 v15, p4

    int-to-float v0, v15

    add-float/2addr v0, v4

    float-to-double v2, v0

    new-instance v4, Liz;

    sget-object v0, Lgm;->Q:Lgm;

    invoke-direct {v4, v0}, Liz;-><init>(Lgm;)V

    move-object v0, v12

    move-object/from16 v1, p1

    move-wide/from16 v16, v2

    move-wide v2, v5

    move-object/from16 v18, v4

    move-wide v4, v7

    move-wide/from16 v6, v16

    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lhl;-><init>(Lfd;DDDLiz;)V

    const/16 v0, 0xa

    .line 110
    iput v0, v12, Lhl;->c:I

    .line 111
    invoke-virtual {v9, v12}, Lfd;->b(Lsn;)Z

    :goto_6f
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_72
    return-void
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 9

    .line 25
    invoke-super/range {p0 .. p5}, Lwb;->a(Lfd;IIILjava/util/Random;)V

    add-int/lit8 v0, p3, 0x1

    .line 26
    invoke-virtual {p1, p2, v0, p4}, Lfd;->n(III)I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_27

    .line 28
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_27

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lni;->i(Lfd;III)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 32
    invoke-virtual {p5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p5

    if-nez p5, :cond_27

    add-int/lit8 v0, v0, 0x1

    .line 34
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    :cond_27
    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method protected d(I)Z
    .registers 3

    .line 21
    sget-object v0, Luu;->aB:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public d_(Lfd;III)V
    .registers 6

    const/4 v0, 0x7

    .line 42
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    return-void
.end method
