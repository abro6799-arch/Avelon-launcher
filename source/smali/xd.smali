###### Class defpackage.xd (xd)
.class public Lxd;
.super Lxw;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;DDD)V
    .registers 23

    move-object v14, p0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 12
    invoke-direct/range {v0 .. v13}, Lxw;-><init>(Lfd;DDDDDD)V

    .line 13
    iget-wide v0, v14, Lxd;->aP:D

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lxd;->aP:D

    .line 14
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, v14, Lxd;->aQ:D

    .line 15
    iget-wide v0, v14, Lxd;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lxd;->aR:D

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, v14, Lxd;->i:F

    .line 18
    iput v0, v14, Lxd;->j:F

    .line 19
    iput v0, v14, Lxd;->k:F

    .line 20
    iget-object v0, v14, Lxd;->bs:Ljava/util/Random;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    iput v0, v14, Lxd;->b:I

    const v0, 0x3c23d70a    # 0.01f

    .line 21
    invoke-virtual {p0, v0, v0}, Lxd;->b(FF)V

    const v0, 0x3d75c28f    # 0.06f

    .line 22
    iput v0, v14, Lxd;->h:F

    .line 24
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, v14, Lxd;->f:I

    return-void
.end method


# virtual methods
.method public a(Lnw;FFFFFF)V
    .registers 8

    .line 35
    invoke-super/range {p0 .. p7}, Lxw;->a(Lnw;FFFFFF)V

    return-void
.end method

.method public w_()V
    .registers 10

    .line 39
    iget-wide v0, p0, Lxd;->aM:D

    iput-wide v0, p0, Lxd;->aJ:D

    .line 40
    iget-wide v0, p0, Lxd;->aN:D

    iput-wide v0, p0, Lxd;->aK:D

    .line 41
    iget-wide v0, p0, Lxd;->aO:D

    iput-wide v0, p0, Lxd;->aL:D

    .line 43
    iget-wide v0, p0, Lxd;->aQ:D

    iget v2, p0, Lxd;->h:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lxd;->aQ:D

    .line 44
    iget-wide v3, p0, Lxd;->aP:D

    iget-wide v5, p0, Lxd;->aQ:D

    iget-wide v7, p0, Lxd;->aR:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lxd;->b(DDD)V

    .line 45
    iget-wide v0, p0, Lxd;->aP:D

    const-wide v2, 0x3fef5c2900000000L    # 0.9800000190734863

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxd;->aP:D

    .line 46
    iget-wide v0, p0, Lxd;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxd;->aQ:D

    .line 47
    iget-wide v0, p0, Lxd;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxd;->aR:D

    .line 49
    iget v0, p0, Lxd;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lxd;->f:I

    if-gtz v0, :cond_3d

    invoke-virtual {p0}, Lxd;->K()V

    .line 51
    :cond_3d
    iget-boolean v0, p0, Lxd;->aX:Z

    if-eqz v0, :cond_5d

    .line 52
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4e

    invoke-virtual {p0}, Lxd;->K()V

    .line 53
    :cond_4e
    iget-wide v0, p0, Lxd;->aP:D

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxd;->aP:D

    .line 54
    iget-wide v0, p0, Lxd;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxd;->aR:D

    .line 57
    :cond_5d
    iget-object v0, p0, Lxd;->aI:Lfd;

    iget-wide v1, p0, Lxd;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    iget-wide v2, p0, Lxd;->aN:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    iget-wide v3, p0, Lxd;->aO:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lfd;->f(III)Lln;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lln;->d()Z

    move-result v1

    if-nez v1, :cond_81

    invoke-virtual {v0}, Lln;->a()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 59
    :cond_81
    iget-wide v0, p0, Lxd;->aN:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    iget-object v1, p0, Lxd;->aI:Lfd;

    iget-wide v2, p0, Lxd;->aM:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    iget-wide v3, p0, Lxd;->aN:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    iget-wide v4, p0, Lxd;->aO:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lfd;->e(III)I

    move-result v1

    invoke-static {v1}, Lrp;->d(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 60
    iget-wide v2, p0, Lxd;->aN:D

    cmpg-double v0, v2, v0

    if-gez v0, :cond_b1

    .line 61
    invoke-virtual {p0}, Lxd;->K()V

    :cond_b1
    return-void
.end method
