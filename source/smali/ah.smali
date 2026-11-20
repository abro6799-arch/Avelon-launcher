###### Class defpackage.ah (ah)
.class public Lah;
.super Luu;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 16
    sget-object v0, Lln;->q:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    if-nez p1, :cond_7

    .line 20
    iget p1, p0, Lah;->bm:I

    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 21
    iget p1, p0, Lah;->bm:I

    add-int/2addr p1, v0

    return p1

    .line 22
    :cond_e
    iget p1, p0, Lah;->bm:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 6

    .line 85
    invoke-super/range {p0 .. p5}, Luu;->a(Lfd;IIILgs;)Z

    move-result p1

    return p1
.end method

.method public b(Lfd;IIII)V
    .registers 12

    if-lez p5, :cond_1f

    .line 34
    sget-object v0, Luu;->m:[Luu;

    aget-object p5, v0, p5

    invoke-virtual {p5}, Luu;->f()Z

    move-result p5

    if-eqz p5, :cond_1f

    .line 35
    invoke-virtual {p1, p2, p3, p4}, Lfd;->s(III)Z

    move-result p5

    if-eqz p5, :cond_1f

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 36
    invoke-virtual/range {v0 .. v5}, Lah;->c(Lfd;IIII)V

    const/4 p5, 0x0

    .line 37
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    :cond_1f
    return-void
.end method

.method public b(Lfd;IIILgs;)V
    .registers 8

    .line 69
    invoke-virtual {p5}, Lgs;->G()Liz;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p5}, Lgs;->G()Liz;

    move-result-object v0

    iget v0, v0, Liz;->c:I

    sget-object v1, Lgm;->g:Lgm;

    iget v1, v1, Lgm;->bf:I

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->e(IIII)Z

    .line 73
    :cond_16
    invoke-super/range {p0 .. p5}, Luu;->b(Lfd;IIILgs;)V

    return-void
.end method

.method public c(Lfd;III)V
    .registers 12

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Luu;->c(Lfd;III)V

    .line 27
    invoke-virtual {p1, p2, p3, p4}, Lfd;->s(III)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 28
    invoke-virtual/range {v1 .. v6}, Lah;->c(Lfd;IIII)V

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    :cond_16
    return-void
.end method

.method public c(Lfd;IIII)V
    .registers 15

    .line 54
    iget-boolean v0, p1, Lfd;->B:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    and-int/lit8 v1, p5, 0x1

    if-nez v1, :cond_1d

    .line 57
    new-instance v5, Liz;

    sget-object v1, Luu;->an:Luu;

    iget v1, v1, Luu;->bn:I

    const/4 v2, 0x0

    invoke-direct {v5, v1, v0, v2}, Liz;-><init>(III)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lah;->a(Lfd;IIILiz;)V

    goto :goto_39

    .line 59
    :cond_1d
    new-instance v8, Lqw;

    int-to-float v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-double v2, v0

    int-to-float v0, p3

    add-float/2addr v0, v1

    float-to-double v4, v0

    int-to-float v0, p4

    add-float/2addr v0, v1

    float-to-double v6, v0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lqw;-><init>(Lfd;DDD)V

    .line 60
    invoke-virtual {p1, v8}, Lfd;->b(Lsn;)Z

    const-string v0, "random.fuse"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    invoke-virtual {p1, v8, v0, v1, v1}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    :goto_39
    return-void
.end method

.method public d(Lfd;III)V
    .registers 14

    .line 48
    new-instance v8, Lqw;

    int-to-float p2, p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p2, v0

    float-to-double v2, p2

    int-to-float p2, p3

    add-float/2addr p2, v0

    float-to-double v4, p2

    int-to-float p2, p4

    add-float/2addr p2, v0

    float-to-double v6, p2

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lqw;-><init>(Lfd;DDD)V

    .line 49
    iget-object p2, p1, Lfd;->r:Ljava/util/Random;

    iget p3, v8, Lqw;->a:I

    div-int/lit8 p3, p3, 0x4

    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    iget p3, v8, Lqw;->a:I

    div-int/lit8 p3, p3, 0x8

    add-int/2addr p2, p3

    iput p2, v8, Lqw;->a:I

    .line 50
    invoke-virtual {p1, v8}, Lfd;->b(Lsn;)Z

    return-void
.end method
