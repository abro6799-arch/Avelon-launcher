###### Class defpackage.cn (cn)
.class public Lcn;
.super Lgz;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 3

    .line 12
    invoke-direct {p0, p1}, Lgz;-><init>(Lfd;)V

    const-string p1, "/mob/spider.png"

    .line 13
    iput-object p1, p0, Lcn;->O:Ljava/lang/String;

    const p1, 0x3fb33333    # 1.4f

    const v0, 0x3f666666    # 0.9f

    .line 14
    invoke-virtual {p0, p1, v0}, Lcn;->b(FF)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 15
    iput p1, p0, Lcn;->aB:F

    return-void
.end method


# virtual methods
.method public a(Lnu;)V
    .registers 2

    .line 74
    invoke-super {p0, p1}, Lgz;->a(Lnu;)V

    return-void
.end method

.method protected a(Lsn;F)V
    .registers 15

    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    invoke-virtual {p0, v0}, Lcn;->a(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    .line 50
    iget-object v0, p0, Lcn;->bs:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_1a

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcn;->d:Lsn;

    return-void

    :cond_1a
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_6e

    const/high16 v0, 0x40c00000    # 6.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_6e

    .line 55
    iget-object v0, p0, Lcn;->bs:Ljava/util/Random;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_6e

    .line 56
    iget-boolean p2, p0, Lcn;->aX:Z

    if-eqz p2, :cond_71

    .line 57
    iget-wide v0, p1, Lsn;->aM:D

    iget-wide v2, p0, Lcn;->aM:D

    sub-double/2addr v0, v2

    .line 58
    iget-wide p1, p1, Lsn;->aO:D

    iget-wide v2, p0, Lcn;->aO:D

    sub-double/2addr p1, v2

    mul-double v2, v0, v0

    mul-double v4, p1, p1

    add-double/2addr v2, v4

    .line 59
    invoke-static {v2, v3}, Lin;->a(D)F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v0, v6

    .line 60
    iget-wide v8, p0, Lcn;->aP:D

    const-wide v10, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    iput-wide v0, p0, Lcn;->aP:D

    div-double/2addr p1, v2

    mul-double/2addr p1, v4

    mul-double/2addr p1, v6

    .line 61
    iget-wide v0, p0, Lcn;->aR:D

    mul-double/2addr v0, v10

    add-double/2addr p1, v0

    iput-wide p1, p0, Lcn;->aR:D

    const-wide p1, 0x3fd99999a0000000L    # 0.4000000059604645

    .line 62
    iput-wide p1, p0, Lcn;->aQ:D

    goto :goto_71

    .line 65
    :cond_6e
    invoke-super {p0, p1, p2}, Lgz;->a(Lsn;F)V

    :cond_71
    :goto_71
    return-void
.end method

.method public b(Lnu;)V
    .registers 2

    .line 70
    invoke-super {p0, p1}, Lgz;->b(Lnu;)V

    return-void
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.spider"

    return-object v0
.end method

.method protected g_()Lsn;
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    invoke-virtual {p0, v0}, Lcn;->a(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_15

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    .line 31
    iget-object v2, p0, Lcn;->aI:Lfd;

    invoke-virtual {v2, p0, v0, v1}, Lfd;->a(Lsn;D)Lgs;

    move-result-object v0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.spiderdeath"

    return-object v0
.end method

.method protected j()I
    .registers 2

    .line 78
    sget-object v0, Lgm;->I:Lgm;

    iget v0, v0, Lgm;->bf:I

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.spider"

    return-object v0
.end method

.method public m()D
    .registers 5

    .line 19
    iget v0, p0, Lcn;->bh:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method protected n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lcn;->aY:Z

    return v0
.end method
