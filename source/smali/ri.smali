###### Class defpackage.ri (ri)
.class public Lri;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 11

    .line 12
    sget-object v0, Lln;->j:Lln;

    invoke-direct {p0, p1, v0}, Luu;-><init>(ILln;)V

    .line 13
    iput p2, p0, Lri;->bm:I

    const/high16 v4, 0x3e000000    # 0.125f

    const/4 v3, 0x0

    const/high16 v7, 0x3f600000    # 0.875f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p0

    move v2, v4

    move v5, v7

    .line 15
    invoke-virtual/range {v1 .. v7}, Lri;->a(FFFFFF)V

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lri;->b(Z)Luu;

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 3

    .line 68
    sget-object p1, Lgm;->aH:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 10

    add-int/lit8 p5, p3, 0x1

    .line 20
    invoke-virtual {p1, p2, p5, p4}, Lfd;->d(III)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    move v1, v0

    :goto_a
    sub-int v2, p3, v1

    .line 22
    invoke-virtual {p1, p2, v2, p4}, Lfd;->a(III)I

    move-result v2

    iget v3, p0, Lri;->bn:I

    if-ne v2, v3, :cond_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x3

    if-ge v1, v2, :cond_30

    .line 26
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2c

    .line 28
    iget v0, p0, Lri;->bn:I

    invoke-virtual {p1, p2, p5, p4, v0}, Lfd;->f(IIII)Z

    const/4 p5, 0x0

    .line 29
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    goto :goto_30

    :cond_2c
    add-int/2addr v1, v0

    .line 31
    invoke-virtual {p1, p2, p3, p4, v1}, Lfd;->d(IIII)V

    :cond_30
    :goto_30
    return-void
.end method

.method public a(Lfd;III)Z
    .registers 9

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    .line 38
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result v1

    .line 39
    iget v2, p0, Lri;->bn:I

    if-ne v1, v2, :cond_b

    return v0

    .line 40
    :cond_b
    sget-object v2, Luu;->v:Lwp;

    iget v2, v2, Lwp;->bn:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_19

    sget-object v2, Luu;->w:Luu;

    iget v2, v2, Luu;->bn:I

    if-eq v1, v2, :cond_19

    return v3

    :cond_19
    add-int/lit8 v1, p2, -0x1

    .line 41
    invoke-virtual {p1, v1, p3, p4}, Lfd;->f(III)Lln;

    move-result-object v1

    sget-object v2, Lln;->g:Lln;

    if-ne v1, v2, :cond_24

    return v0

    :cond_24
    add-int/lit8 v1, p2, 0x1

    .line 42
    invoke-virtual {p1, v1, p3, p4}, Lfd;->f(III)Lln;

    move-result-object v1

    sget-object v2, Lln;->g:Lln;

    if-ne v1, v2, :cond_2f

    return v0

    :cond_2f
    add-int/lit8 v1, p4, -0x1

    .line 43
    invoke-virtual {p1, p2, p3, v1}, Lfd;->f(III)Lln;

    move-result-object v1

    sget-object v2, Lln;->g:Lln;

    if-ne v1, v2, :cond_3a

    return v0

    :cond_3a
    add-int/2addr p4, v0

    .line 44
    invoke-virtual {p1, p2, p3, p4}, Lfd;->f(III)Lln;

    move-result-object p1

    sget-object p2, Lln;->g:Lln;

    if-ne p1, p2, :cond_44

    return v0

    :cond_44
    return v3
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lfd;IIII)V
    .registers 6

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lri;->h(Lfd;III)V

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
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Lfd;III)Z
    .registers 5

    .line 60
    invoke-virtual {p0, p1, p2, p3, p4}, Lri;->a(Lfd;III)Z

    move-result p1

    return p1
.end method

.method protected final h(Lfd;III)V
    .registers 12

    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lri;->g(Lfd;III)Z

    move-result v0

    if-nez v0, :cond_16

    .line 54
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lri;->g(Lfd;IIII)V

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    :cond_16
    return-void
.end method
