###### Class defpackage.wq (wq)
.class public Lwq;
.super Lls;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lls;-><init>(Lfd;)V

    return-void
.end method


# virtual methods
.method public a_(FF)V
    .registers 13

    .line 16
    invoke-virtual {p0}, Lwq;->ag()Z

    move-result v0

    const v1, 0x3ca3d70a    # 0.02f

    if-eqz v0, :cond_2c

    .line 17
    invoke-virtual {p0, p1, p2, v1}, Lwq;->a(FFF)V

    .line 18
    iget-wide v3, p0, Lwq;->aP:D

    iget-wide v5, p0, Lwq;->aQ:D

    iget-wide v7, p0, Lwq;->aR:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lwq;->b(DDD)V

    .line 20
    iget-wide p1, p0, Lwq;->aP:D

    const-wide v0, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lwq;->aP:D

    .line 21
    iget-wide p1, p0, Lwq;->aQ:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lwq;->aQ:D

    .line 22
    iget-wide p1, p0, Lwq;->aR:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lwq;->aR:D

    goto/16 :goto_dd

    .line 23
    :cond_2c
    invoke-virtual {p0}, Lwq;->ah()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 24
    invoke-virtual {p0, p1, p2, v1}, Lwq;->a(FFF)V

    .line 25
    iget-wide v3, p0, Lwq;->aP:D

    iget-wide v5, p0, Lwq;->aQ:D

    iget-wide v7, p0, Lwq;->aR:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lwq;->b(DDD)V

    .line 26
    iget-wide p1, p0, Lwq;->aP:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lwq;->aP:D

    .line 27
    iget-wide p1, p0, Lwq;->aQ:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lwq;->aQ:D

    .line 28
    iget-wide p1, p0, Lwq;->aR:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lwq;->aR:D

    goto/16 :goto_dd

    .line 31
    :cond_52
    iget-boolean v0, p0, Lwq;->aX:Z

    const v2, 0x3f0bc6a9    # 0.54600006f

    const v3, 0x3f68f5c3    # 0.91f

    if-eqz v0, :cond_84

    .line 33
    iget-object v0, p0, Lwq;->aI:Lfd;

    iget-wide v4, p0, Lwq;->aM:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    iget-object v5, p0, Lwq;->aW:Leq;

    iget-wide v5, v5, Leq;->b:D

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-wide v6, p0, Lwq;->aO:D

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lfd;->a(III)I

    move-result v0

    if-lez v0, :cond_82

    .line 35
    sget-object v4, Luu;->m:[Luu;

    aget-object v0, v4, v0

    iget v0, v0, Luu;->bB:F

    mul-float/2addr v0, v3

    goto :goto_85

    :cond_82
    move v0, v2

    goto :goto_85

    :cond_84
    move v0, v3

    :goto_85
    mul-float v4, v0, v0

    mul-float/2addr v4, v0

    const v0, 0x3e26ad89

    div-float/2addr v0, v4

    .line 40
    iget-boolean v4, p0, Lwq;->aX:Z

    if-eqz v4, :cond_94

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v0

    :cond_94
    invoke-virtual {p0, p1, p2, v1}, Lwq;->a(FFF)V

    .line 43
    iget-boolean p1, p0, Lwq;->aX:Z

    if-eqz p1, :cond_c2

    .line 45
    iget-object p1, p0, Lwq;->aI:Lfd;

    iget-wide v0, p0, Lwq;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result p2

    iget-object v0, p0, Lwq;->aW:Leq;

    iget-wide v0, v0, Leq;->b:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-wide v4, p0, Lwq;->aO:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lfd;->a(III)I

    move-result p1

    if-lez p1, :cond_c3

    .line 47
    sget-object p2, Luu;->m:[Luu;

    aget-object p1, p2, p1

    iget p1, p1, Luu;->bB:F

    mul-float v2, p1, v3

    goto :goto_c3

    :cond_c2
    move v2, v3

    .line 51
    :cond_c3
    :goto_c3
    iget-wide v4, p0, Lwq;->aP:D

    iget-wide v6, p0, Lwq;->aQ:D

    iget-wide v8, p0, Lwq;->aR:D

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lwq;->b(DDD)V

    .line 53
    iget-wide p1, p0, Lwq;->aP:D

    float-to-double v0, v2

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lwq;->aP:D

    .line 54
    iget-wide p1, p0, Lwq;->aQ:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lwq;->aQ:D

    .line 55
    iget-wide p1, p0, Lwq;->aR:D

    mul-double/2addr p1, v0

    iput-wide p1, p0, Lwq;->aR:D

    .line 57
    :goto_dd
    iget p1, p0, Lwq;->al:F

    iput p1, p0, Lwq;->ak:F

    .line 58
    iget-wide p1, p0, Lwq;->aM:D

    iget-wide v0, p0, Lwq;->aJ:D

    sub-double/2addr p1, v0

    .line 59
    iget-wide v0, p0, Lwq;->aO:D

    iget-wide v2, p0, Lwq;->aL:D

    sub-double/2addr v0, v2

    mul-double/2addr p1, p1

    mul-double/2addr v0, v0

    add-double/2addr p1, v0

    .line 60
    invoke-static {p1, p2}, Lin;->a(D)F

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p2

    if-lez v0, :cond_fc

    move p1, p2

    .line 62
    :cond_fc
    iget p2, p0, Lwq;->al:F

    iget v0, p0, Lwq;->al:F

    sub-float/2addr p1, v0

    const v0, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    iput p2, p0, Lwq;->al:F

    .line 63
    iget p1, p0, Lwq;->am:F

    iget p2, p0, Lwq;->al:F

    add-float/2addr p1, p2

    iput p1, p0, Lwq;->am:F

    return-void
.end method

.method protected b(F)V
    .registers 2

    return-void
.end method

.method public p()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
