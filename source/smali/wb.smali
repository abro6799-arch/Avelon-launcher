###### Class defpackage.wb (wb)
.class public Lwb;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 10

    .line 11
    sget-object v0, Lln;->j:Lln;

    invoke-direct {p0, p1, v0}, Luu;-><init>(ILln;)V

    .line 12
    iput p2, p0, Lwb;->bm:I

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lwb;->b(Z)Luu;

    const v3, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v6, 0x3f333333    # 0.7f

    const v5, 0x3f19999a    # 0.6f

    move-object v0, p0

    move v1, v3

    move v4, v6

    .line 15
    invoke-virtual/range {v0 .. v6}, Lwb;->a(FFFFFF)V

    return-void
.end method


# virtual methods
.method public a(Lfd;IIILjava/util/Random;)V
    .registers 6

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Lwb;->h(Lfd;III)V

    return-void
.end method

.method public a(Lfd;III)Z
    .registers 6

    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Luu;->a(Lfd;III)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p1

    invoke-virtual {p0, p1}, Lwb;->d(I)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lfd;IIII)V
    .registers 6

    .line 27
    invoke-super/range {p0 .. p5}, Luu;->b(Lfd;IIII)V

    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lwb;->h(Lfd;III)V

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

.method protected d(I)Z
    .registers 3

    .line 23
    sget-object v0, Luu;->v:Lwp;

    iget v0, v0, Lwp;->bn:I

    if-eq p1, v0, :cond_15

    sget-object v0, Luu;->w:Luu;

    iget v0, v0, Luu;->bn:I

    if-eq p1, v0, :cond_15

    sget-object v0, Luu;->aB:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p1, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public e(Lfd;III)Leq;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Lfd;III)Z
    .registers 7

    .line 43
    invoke-virtual {p1, p2, p3, p4}, Lfd;->m(III)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_e

    invoke-virtual {p1, p2, p3, p4}, Lfd;->l(III)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_e
    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p1

    invoke-virtual {p0, p1}, Lwb;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method protected final h(Lfd;III)V
    .registers 12

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lwb;->g(Lfd;III)Z

    move-result v0

    if-nez v0, :cond_16

    .line 37
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lwb;->g(Lfd;IIII)V

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    :cond_16
    return-void
.end method
