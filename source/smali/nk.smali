###### Class defpackage.nk (nk)
.class public Lnk;
.super Ljp;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 11
    sget-object v0, Lln;->s:Lln;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljp;-><init>(IILln;Z)V

    const p1, 0x3f7ae148    # 0.98f

    .line 12
    iput p1, p0, Lnk;->bB:F

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lnk;->b(Z)Luu;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 13

    .line 40
    sget-object p5, Leb;->b:Leb;

    invoke-virtual {p1, p5, p2, p3, p4}, Lfd;->a(Leb;III)I

    move-result p5

    sget-object v0, Luu;->q:[I

    iget v1, p0, Lnk;->bn:I

    aget v0, v0, v1

    rsub-int/lit8 v0, v0, 0xb

    if-le p5, v0, :cond_23

    .line 41
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lnk;->g(Lfd;IIII)V

    .line 42
    sget-object p5, Luu;->C:Luu;

    iget p5, p5, Luu;->bn:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    :cond_23
    return-void
.end method

.method public a(Lfd;Lgs;IIII)V
    .registers 7

    .line 27
    invoke-super/range {p0 .. p6}, Ljp;->a(Lfd;Lgs;IIII)V

    add-int/lit8 p2, p4, -0x1

    .line 29
    invoke-virtual {p1, p3, p2, p5}, Lfd;->f(III)Lln;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lln;->c()Z

    move-result p6

    if-nez p6, :cond_15

    invoke-virtual {p2}, Lln;->d()Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 31
    :cond_15
    sget-object p2, Luu;->B:Luu;

    iget p2, p2, Luu;->bn:I

    invoke-virtual {p1, p3, p4, p5, p2}, Lfd;->f(IIII)Z

    :cond_1c
    return-void
.end method

.method public b(Lxp;IIII)Z
    .registers 12

    rsub-int/lit8 v5, p5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 21
    invoke-super/range {v0 .. v5}, Ljp;->b(Lxp;IIII)Z

    move-result p1

    return p1
.end method

.method public b_()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
