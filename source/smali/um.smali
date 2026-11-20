###### Class defpackage.um (um)
.class public Lum;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    .line 13
    sget-object v0, Lln;->z:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lum;->b(Z)Luu;

    return-void
.end method

.method private c(Lfd;IIILgs;)V
    .registers 8

    .line 78
    iget v0, p5, Lgs;->Y:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1e

    const/4 v0, 0x3

    .line 79
    invoke-virtual {p5, v0}, Lgs;->c(I)V

    .line 80
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p5

    add-int/lit8 p5, p5, 0x1

    const/4 v0, 0x6

    if-lt p5, v0, :cond_18

    const/4 p5, 0x0

    .line 82
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    goto :goto_1e

    .line 84
    :cond_18
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    .line 85
    invoke-virtual {p1, p2, p3, p4}, Lfd;->k(III)V

    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 55
    iget p1, p0, Lum;->bm:I

    return p1

    :cond_6
    if-nez p1, :cond_d

    .line 56
    iget p1, p0, Lum;->bm:I

    add-int/lit8 p1, p1, 0x3

    return p1

    .line 57
    :cond_d
    iget p1, p0, Lum;->bm:I

    add-int/2addr p1, v0

    return p1
.end method

.method public a(II)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 48
    iget p1, p0, Lum;->bm:I

    return p1

    :cond_6
    if-nez p1, :cond_d

    .line 49
    iget p1, p0, Lum;->bm:I

    add-int/lit8 p1, p1, 0x3

    return p1

    :cond_d
    if-lez p2, :cond_17

    const/4 p2, 0x4

    if-ne p1, p2, :cond_17

    .line 50
    iget p1, p0, Lum;->bm:I

    add-int/lit8 p1, p1, 0x2

    return p1

    .line 51
    :cond_17
    iget p1, p0, Lum;->bm:I

    add-int/2addr p1, v0

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

.method public a(Lxp;III)V
    .registers 12

    .line 18
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    const/high16 p2, 0x41800000    # 16.0f

    div-float v1, p1, p2

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v6, 0x3f700000    # 0.9375f

    const/high16 v3, 0x3d800000    # 0.0625f

    move-object v0, p0

    move v4, v6

    .line 22
    invoke-virtual/range {v0 .. v6}, Lum;->a(FFFFFF)V

    return-void
.end method

.method public a(Lfd;III)Z
    .registers 6

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Luu;->a(Lfd;III)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 93
    :cond_8
    invoke-virtual {p0, p1, p2, p3, p4}, Lum;->g(Lfd;III)Z

    move-result p1

    return p1
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 6

    .line 69
    invoke-direct/range {p0 .. p5}, Lum;->c(Lfd;IIILgs;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lfd;IIII)V
    .registers 12

    .line 97
    invoke-virtual {p0, p1, p2, p3, p4}, Lum;->g(Lfd;III)Z

    move-result p5

    if-nez p5, :cond_16

    .line 98
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lum;->g(Lfd;IIII)V

    const/4 p5, 0x0

    .line 99
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    :cond_16
    return-void
.end method

.method public b(Lfd;IIILgs;)V
    .registers 6

    .line 74
    invoke-direct/range {p0 .. p5}, Lum;->c(Lfd;IIILgs;)V

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lfd;III)Leq;
    .registers 22

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    .line 32
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    int-to-float v4, v0

    add-float/2addr v4, v3

    float-to-double v5, v4

    int-to-double v7, v1

    int-to-float v3, v2

    const/high16 v4, 0x3d800000    # 0.0625f

    add-float/2addr v3, v4

    float-to-double v9, v3

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    float-to-double v11, v0

    int-to-float v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    sub-float/2addr v0, v4

    float-to-double v13, v0

    add-int/lit8 v0, v2, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    float-to-double v0, v0

    move-wide v15, v0

    .line 36
    invoke-static/range {v5 .. v16}, Leq;->b(DDDDDD)Leq;

    move-result-object v0

    return-object v0
.end method

.method public f(Lfd;III)Leq;
    .registers 22

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    .line 40
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    int-to-float v4, v0

    add-float/2addr v4, v3

    float-to-double v5, v4

    int-to-double v7, v1

    int-to-float v3, v2

    const/high16 v4, 0x3d800000    # 0.0625f

    add-float/2addr v3, v4

    float-to-double v9, v3

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    float-to-double v11, v0

    int-to-float v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-double v13, v0

    add-int/lit8 v0, v2, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    float-to-double v0, v0

    move-wide v15, v0

    .line 44
    invoke-static/range {v5 .. v16}, Leq;->b(DDDDDD)Leq;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 8

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v6, 0x3f700000    # 0.9375f

    const/high16 v3, 0x3d800000    # 0.0625f

    move-object v0, p0

    move v1, v3

    move v4, v6

    .line 28
    invoke-virtual/range {v0 .. v6}, Lum;->a(FFFFFF)V

    return-void
.end method

.method public g(Lfd;III)Z
    .registers 5

    add-int/lit8 p3, p3, -0x1

    .line 104
    invoke-virtual {p1, p2, p3, p4}, Lfd;->f(III)Lln;

    move-result-object p1

    invoke-virtual {p1}, Lln;->a()Z

    move-result p1

    return p1
.end method
