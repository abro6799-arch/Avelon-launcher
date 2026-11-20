###### Class defpackage.wp (wp)
.class public Lwp;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    .line 14
    sget-object v0, Lln;->b:Lln;

    invoke-direct {p0, p1, v0}, Luu;-><init>(ILln;)V

    const/4 p1, 0x3

    .line 15
    iput p1, p0, Lwp;->bm:I

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lwp;->b(Z)Luu;

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 4

    .line 62
    sget-object p1, Luu;->w:Luu;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Luu;->a(ILjava/util/Random;)I

    move-result p1

    return p1
.end method

.method public a(Lxp;IIII)I
    .registers 7

    const/4 v0, 0x1

    if-ne p5, v0, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_5
    if-nez p5, :cond_9

    const/4 p1, 0x2

    return p1

    :cond_9
    add-int/2addr p3, v0

    .line 22
    invoke-interface {p1, p2, p3, p4}, Lxp;->f(III)Lln;

    move-result-object p1

    .line 23
    sget-object p2, Lln;->t:Lln;

    if-eq p1, p2, :cond_19

    sget-object p2, Lln;->u:Lln;

    if-ne p1, p2, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x3

    return p1

    :cond_19
    :goto_19
    const/16 p1, 0x44

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 11

    .line 43
    iget-boolean v0, p1, Lfd;->B:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    add-int/lit8 v0, p3, 0x1

    .line 45
    invoke-virtual {p1, p2, v0, p4}, Lfd;->n(III)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-ge v1, v3, :cond_28

    sget-object v1, Luu;->q:[I

    invoke-virtual {p1, p2, v0, p4}, Lfd;->a(III)I

    move-result v4

    aget v1, v1, v4

    if-le v1, v2, :cond_28

    .line 46
    invoke-virtual {p5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p5

    if-eqz p5, :cond_20

    return-void

    .line 47
    :cond_20
    sget-object p5, Luu;->w:Luu;

    iget p5, p5, Luu;->bn:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    goto :goto_69

    .line 49
    :cond_28
    invoke-virtual {p1, p2, v0, p4}, Lfd;->n(III)I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_69

    const/4 v0, 0x3

    .line 50
    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x5

    .line 51
    invoke-virtual {p5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr p3, v1

    sub-int/2addr p3, v0

    .line 52
    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p5

    add-int/2addr p4, p5

    add-int/lit8 p4, p4, -0x1

    add-int/lit8 p5, p3, 0x1

    .line 53
    invoke-virtual {p1, p2, p5, p4}, Lfd;->a(III)I

    move-result v0

    .line 54
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result v1

    sget-object v4, Luu;->w:Luu;

    iget v4, v4, Luu;->bn:I

    if-ne v1, v4, :cond_69

    invoke-virtual {p1, p2, p5, p4}, Lfd;->n(III)I

    move-result p5

    if-lt p5, v3, :cond_69

    sget-object p5, Luu;->q:[I

    aget p5, p5, v0

    if-gt p5, v2, :cond_69

    .line 55
    sget-object p5, Luu;->v:Lwp;

    iget p5, p5, Lwp;->bn:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    :cond_69
    :goto_69
    return-void
.end method

.method public b(Lxp;III)I
    .registers 7

    .line 35
    invoke-interface {p1}, Lxp;->a()Lxv;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, p2, p4, v0, v0}, Lxv;->a(IIII)[Lkd;

    .line 36
    invoke-interface {p1}, Lxp;->a()Lxv;

    move-result-object p2

    iget-object p2, p2, Lxv;->a:[D

    const/4 p3, 0x0

    aget-wide v0, p2, p3

    .line 37
    invoke-interface {p1}, Lxp;->a()Lxv;

    move-result-object p1

    iget-object p1, p1, Lxv;->b:[D

    aget-wide p2, p1, p3

    .line 39
    invoke-static {v0, v1, p2, p3}, Lia;->a(DD)I

    move-result p1

    return p1
.end method
