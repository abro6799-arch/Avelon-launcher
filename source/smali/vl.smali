###### Class defpackage.vl (vl)
.class public Lvl;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(I)V
    .registers 9

    .line 12
    sget-object v0, Lln;->c:Lln;

    invoke-direct {p0, p1, v0}, Luu;-><init>(ILln;)V

    const/16 p1, 0x57

    .line 13
    iput p1, p0, Lvl;->bm:I

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lvl;->b(Z)Luu;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f700000    # 0.9375f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 15
    invoke-virtual/range {v0 .. v6}, Lvl;->a(FFFFFF)V

    const/16 p1, 0xff

    .line 16
    invoke-virtual {p0, p1}, Lvl;->g(I)Luu;

    return-void
.end method

.method private h(Lfd;III)Z
    .registers 10

    add-int/lit8 v0, p2, 0x0

    :goto_2
    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x0

    if-gt v0, v2, :cond_21

    add-int/lit8 v1, p4, 0x0

    :goto_9
    add-int/lit8 v2, p4, 0x0

    if-gt v1, v2, :cond_1e

    const/4 v2, 0x1

    add-int/lit8 v3, p3, 0x1

    .line 64
    invoke-virtual {p1, v0, v3, v1}, Lfd;->a(III)I

    move-result v3

    sget-object v4, Luu;->aA:Luu;

    iget v4, v4, Luu;->bn:I

    if-ne v3, v4, :cond_1b

    return v2

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_21
    return v1
.end method

.method private i(Lfd;III)Z
    .registers 11

    add-int/lit8 v0, p2, -0x4

    :goto_2
    add-int/lit8 v1, p2, 0x4

    if-gt v0, v1, :cond_24

    move v1, p3

    :goto_7
    const/4 v2, 0x1

    add-int/lit8 v3, p3, 0x1

    if-gt v1, v3, :cond_21

    add-int/lit8 v3, p4, -0x4

    :goto_e
    add-int/lit8 v4, p4, 0x4

    if-gt v3, v4, :cond_1e

    .line 75
    invoke-virtual {p1, v0, v1, v3}, Lfd;->f(III)Lln;

    move-result-object v4

    sget-object v5, Lln;->g:Lln;

    if-ne v4, v5, :cond_1b

    return v2

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_24
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(II)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    if-lez p2, :cond_9

    .line 32
    iget p1, p0, Lvl;->bm:I

    sub-int/2addr p1, v0

    return p1

    :cond_9
    if-ne p1, v0, :cond_e

    .line 33
    iget p1, p0, Lvl;->bm:I

    return p1

    :cond_e
    const/4 p1, 0x2

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 4

    .line 95
    sget-object p1, Luu;->w:Luu;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Luu;->a(ILjava/util/Random;)I

    move-result p1

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 7

    const/4 v0, 0x5

    .line 38
    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p5

    if-nez p5, :cond_34

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lvl;->i(Lfd;III)Z

    move-result p5

    if-nez p5, :cond_30

    add-int/lit8 p5, p3, 0x1

    invoke-virtual {p1, p2, p5, p4}, Lfd;->t(III)Z

    move-result p5

    if-eqz p5, :cond_16

    goto :goto_30

    .line 42
    :cond_16
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p5

    if-lez p5, :cond_22

    add-int/lit8 p5, p5, -0x1

    .line 44
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    goto :goto_34

    .line 46
    :cond_22
    invoke-direct {p0, p1, p2, p3, p4}, Lvl;->h(Lfd;III)Z

    move-result p5

    if-nez p5, :cond_34

    .line 47
    sget-object p5, Luu;->w:Luu;

    iget p5, p5, Luu;->bn:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    goto :goto_34

    :cond_30
    :goto_30
    const/4 p5, 0x7

    .line 40
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    :cond_34
    :goto_34
    return-void
.end method

.method public b(Lfd;IIII)V
    .registers 6

    .line 83
    invoke-super/range {p0 .. p5}, Luu;->b(Lfd;IIII)V

    add-int/lit8 p5, p3, 0x1

    .line 84
    invoke-virtual {p1, p2, p5, p4}, Lfd;->f(III)Lln;

    move-result-object p5

    .line 85
    invoke-virtual {p5}, Lln;->a()Z

    move-result p5

    if-eqz p5, :cond_16

    .line 86
    sget-object p5, Luu;->w:Luu;

    iget p5, p5, Luu;->bn:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    :cond_16
    return-void
.end method

.method public b(Lfd;IIILsn;)V
    .registers 7

    .line 55
    iget-object p5, p1, Lfd;->r:Ljava/util/Random;

    const/4 v0, 0x4

    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p5

    if-nez p5, :cond_10

    .line 56
    sget-object p5, Luu;->w:Luu;

    iget p5, p5, Luu;->bn:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    :cond_10
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
    .registers 18

    add-int/lit8 v0, p2, 0x0

    int-to-double v1, v0

    add-int/lit8 v0, p3, 0x0

    int-to-double v3, v0

    add-int/lit8 v0, p4, 0x0

    int-to-double v5, v0

    add-int/lit8 v0, p2, 0x1

    int-to-double v7, v0

    add-int/lit8 v0, p3, 0x1

    int-to-double v9, v0

    add-int/lit8 v0, p4, 0x1

    int-to-double v11, v0

    .line 20
    invoke-static/range {v1 .. v12}, Leq;->b(DDDDDD)Leq;

    move-result-object v0

    return-object v0
.end method
