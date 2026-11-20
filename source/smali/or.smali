###### Class defpackage.or (or)
.class public Lor;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    .line 12
    sget-object v0, Lln;->v:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lor;->b(Z)Luu;

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 45
    iget p1, p0, Lor;->bm:I

    sub-int/2addr p1, v0

    return p1

    :cond_7
    if-nez p1, :cond_d

    .line 46
    iget p1, p0, Lor;->bm:I

    add-int/2addr p1, v0

    return p1

    .line 47
    :cond_d
    iget p1, p0, Lor;->bm:I

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 10

    add-int/lit8 p5, p3, 0x1

    .line 17
    invoke-virtual {p1, p2, p5, p4}, Lfd;->d(III)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    move v1, v0

    :goto_a
    sub-int v2, p3, v1

    .line 19
    invoke-virtual {p1, p2, v2, p4}, Lfd;->a(III)I

    move-result v2

    iget v3, p0, Lor;->bn:I

    if-ne v2, v3, :cond_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x3

    if-ge v1, v2, :cond_30

    .line 23
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2c

    .line 25
    iget v0, p0, Lor;->bn:I

    invoke-virtual {p1, p2, p5, p4, v0}, Lfd;->f(IIII)Z

    const/4 p5, 0x0

    .line 26
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    goto :goto_30

    :cond_2c
    add-int/2addr v1, v0

    .line 28
    invoke-virtual {p1, p2, p3, p4, v1}, Lfd;->d(IIII)V

    :cond_30
    :goto_30
    return-void
.end method

.method public a(Lfd;IIILsn;)V
    .registers 6

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 85
    invoke-virtual {p5, p1, p2}, Lsn;->a(Lsn;I)Z

    return-void
.end method

.method public a(Lfd;III)Z
    .registers 6

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Luu;->a(Lfd;III)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 65
    :cond_8
    invoke-virtual {p0, p1, p2, p3, p4}, Lor;->g(Lfd;III)Z

    move-result p1

    return p1
.end method

.method public b()I
    .registers 2

    const/16 v0, 0xd

    return v0
.end method

.method public b(Lfd;IIII)V
    .registers 12

    .line 69
    invoke-virtual {p0, p1, p2, p3, p4}, Lor;->g(Lfd;III)Z

    move-result p5

    if-nez p5, :cond_16

    .line 70
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lor;->g(Lfd;IIII)V

    const/4 p5, 0x0

    .line 71
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    :cond_16
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

    int-to-float v3, v0

    const/high16 v4, 0x3d800000    # 0.0625f

    add-float/2addr v3, v4

    float-to-double v5, v3

    int-to-double v7, v1

    int-to-float v3, v2

    add-float/2addr v3, v4

    float-to-double v9, v3

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    float-to-double v11, v0

    add-int/lit8 v0, v1, 0x1

    int-to-float v0, v0

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

    int-to-float v3, v0

    const/high16 v4, 0x3d800000    # 0.0625f

    add-float/2addr v3, v4

    float-to-double v5, v3

    int-to-double v7, v1

    int-to-float v3, v2

    add-float/2addr v3, v4

    float-to-double v9, v3

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    float-to-double v11, v0

    add-int/lit8 v0, v1, 0x1

    int-to-double v13, v0

    add-int/lit8 v0, v2, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    float-to-double v0, v0

    move-wide v15, v0

    .line 41
    invoke-static/range {v5 .. v16}, Leq;->b(DDDDDD)Leq;

    move-result-object v0

    return-object v0
.end method

.method public g(Lfd;III)Z
    .registers 7

    add-int/lit8 v0, p2, -0x1

    .line 76
    invoke-virtual {p1, v0, p3, p4}, Lfd;->f(III)Lln;

    move-result-object v0

    invoke-virtual {v0}, Lln;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    add-int/lit8 v0, p2, 0x1

    .line 77
    invoke-virtual {p1, v0, p3, p4}, Lfd;->f(III)Lln;

    move-result-object v0

    invoke-virtual {v0}, Lln;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v0, p4, -0x1

    .line 78
    invoke-virtual {p1, p2, p3, v0}, Lfd;->f(III)Lln;

    move-result-object v0

    invoke-virtual {v0}, Lln;->a()Z

    move-result v0

    if-eqz v0, :cond_28

    return v1

    :cond_28
    add-int/lit8 v0, p4, 0x1

    .line 79
    invoke-virtual {p1, p2, p3, v0}, Lfd;->f(III)Lln;

    move-result-object v0

    invoke-virtual {v0}, Lln;->a()Z

    move-result v0

    if-eqz v0, :cond_35

    return v1

    :cond_35
    const/4 v0, 0x1

    sub-int/2addr p3, v0

    .line 80
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p1

    .line 81
    sget-object p2, Luu;->aW:Luu;

    iget p2, p2, Luu;->bn:I

    if-eq p1, p2, :cond_47

    sget-object p2, Luu;->F:Luu;

    iget p2, p2, Luu;->bn:I

    if-ne p1, p2, :cond_48

    :cond_47
    move v1, v0

    :cond_48
    return v1
.end method
