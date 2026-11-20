###### Class defpackage.ru (ru)
.class public Lru;
.super Lwb;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 10

    .line 16
    invoke-direct {p0, p1, p2}, Lwb;-><init>(II)V

    const v3, 0x3dcccccc    # 0.099999994f

    const/4 v2, 0x0

    const v6, 0x3f666666    # 0.9f

    const v5, 0x3f4ccccd    # 0.8f

    move-object v0, p0

    move v1, v3

    move v4, v6

    .line 18
    invoke-virtual/range {v0 .. v6}, Lru;->a(FFFFFF)V

    return-void
.end method


# virtual methods
.method public a(II)I
    .registers 4

    const/4 p1, 0x1

    if-ne p2, p1, :cond_6

    .line 22
    iget p1, p0, Lru;->bm:I

    return p1

    :cond_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_f

    .line 23
    iget p2, p0, Lru;->bm:I

    add-int/lit8 p2, p2, 0x10

    add-int/2addr p2, p1

    return p2

    :cond_f
    if-nez p2, :cond_16

    .line 24
    iget p1, p0, Lru;->bm:I

    add-int/lit8 p1, p1, 0x10

    return p1

    .line 25
    :cond_16
    iget p1, p0, Lru;->bm:I

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    const/16 p1, 0x8

    .line 54
    invoke-virtual {p2, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-nez p1, :cond_d

    .line 55
    sget-object p1, Lgm;->Q:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method public b(Lxp;III)I
    .registers 11

    .line 36
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result v0

    if-nez v0, :cond_a

    const p1, 0xffffff

    return p1

    :cond_a
    const v0, 0x2fc20f

    mul-int/2addr v0, p2

    const v1, 0x5d8875

    mul-int/2addr v1, p4

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    int-to-long v0, v0

    mul-long v2, v0, v0

    const-wide/32 v4, 0x285b825

    mul-long/2addr v2, v4

    const-wide/16 v4, 0xb

    mul-long/2addr v0, v4

    add-long/2addr v2, v0

    int-to-long p2, p2

    const/16 v0, 0xe

    shr-long v0, v2, v0

    const-wide/16 v4, 0x1f

    and-long/2addr v0, v4

    add-long/2addr p2, v0

    long-to-int p2, p2

    int-to-long p3, p4

    const/16 v0, 0x18

    shr-long v0, v2, v0

    and-long/2addr v0, v4

    add-long/2addr p3, v0

    long-to-int p3, p3

    .line 46
    invoke-interface {p1}, Lxp;->a()Lxv;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3, v0, v0}, Lxv;->a(IIII)[Lkd;

    .line 47
    invoke-interface {p1}, Lxp;->a()Lxv;

    move-result-object p2

    iget-object p2, p2, Lxv;->a:[D

    const/4 p3, 0x0

    aget-wide v0, p2, p3

    .line 48
    invoke-interface {p1}, Lxp;->a()Lxv;

    move-result-object p1

    iget-object p1, p1, Lxv;->b:[D

    aget-wide p2, p1, p3

    .line 50
    invoke-static {v0, v1, p2, p3}, Lia;->a(DD)I

    move-result p1

    return p1
.end method
