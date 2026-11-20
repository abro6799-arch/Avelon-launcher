###### Class defpackage.qw (qw)
.class public Lqw;
.super Lsn;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lqw;->a:I

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lqw;->aF:Z

    const p1, 0x3f7ae148    # 0.98f

    .line 16
    invoke-virtual {p0, p1, p1}, Lqw;->b(FF)V

    .line 17
    iget p1, p0, Lqw;->bh:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lqw;->bf:F

    return-void
.end method

.method public constructor <init>(Lfd;DDD)V
    .registers 15

    .line 21
    invoke-direct {p0, p1}, Lqw;-><init>(Lfd;)V

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    .line 23
    invoke-virtual/range {v0 .. v6}, Lqw;->e(DDD)V

    .line 25
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb60000000L    # 3.1415927410125732

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, v0

    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr p1, v0

    .line 26
    invoke-static {p1}, Lin;->a(F)F

    move-result v0

    neg-float v0, v0

    const v1, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v1

    float-to-double v2, v0

    iput-wide v2, p0, Lqw;->aP:D

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    .line 27
    iput-wide v2, p0, Lqw;->aQ:D

    .line 28
    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    neg-float p1, p1

    mul-float/2addr p1, v1

    float-to-double v0, p1

    iput-wide v0, p0, Lqw;->aR:D

    const/16 p1, 0x50

    .line 30
    iput p1, p0, Lqw;->a:I

    .line 32
    iput-wide p2, p0, Lqw;->aJ:D

    .line 33
    iput-wide p4, p0, Lqw;->aK:D

    .line 34
    iput-wide p6, p0, Lqw;->aL:D

    return-void
.end method

.method private k()V
    .registers 10

    const/high16 v8, 0x40800000    # 4.0f

    .line 83
    iget-object v0, p0, Lqw;->aI:Lfd;

    const/4 v1, 0x0

    iget-wide v2, p0, Lqw;->aM:D

    iget-wide v4, p0, Lqw;->aN:D

    iget-wide v6, p0, Lqw;->aO:D

    invoke-virtual/range {v0 .. v8}, Lfd;->a(Lsn;DDDF)Lqx;

    return-void
.end method


# virtual methods
.method protected a(Lnu;)V
    .registers 3

    const-string v0, "Fuse"

    .line 99
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lqw;->a:I

    return-void
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected b(Lnu;)V
    .registers 4

    .line 95
    iget v0, p0, Lqw;->a:I

    int-to-byte v0, v0

    const-string v1, "Fuse"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    return-void
.end method

.method public h_()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lqw;->be:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public w_()V
    .registers 16

    .line 52
    iget-wide v0, p0, Lqw;->aM:D

    iput-wide v0, p0, Lqw;->aJ:D

    .line 53
    iget-wide v0, p0, Lqw;->aN:D

    iput-wide v0, p0, Lqw;->aK:D

    .line 54
    iget-wide v0, p0, Lqw;->aO:D

    iput-wide v0, p0, Lqw;->aL:D

    .line 56
    iget-wide v0, p0, Lqw;->aQ:D

    const-wide v2, 0x3fa47ae140000000L    # 0.03999999910593033

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lqw;->aQ:D

    .line 57
    iget-wide v3, p0, Lqw;->aP:D

    iget-wide v5, p0, Lqw;->aQ:D

    iget-wide v7, p0, Lqw;->aR:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lqw;->b(DDD)V

    .line 58
    iget-wide v0, p0, Lqw;->aP:D

    const-wide v2, 0x3fef5c2900000000L    # 0.9800000190734863

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lqw;->aP:D

    .line 59
    iget-wide v0, p0, Lqw;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lqw;->aQ:D

    .line 60
    iget-wide v0, p0, Lqw;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lqw;->aR:D

    .line 62
    iget-boolean v0, p0, Lqw;->aX:Z

    if-eqz v0, :cond_4e

    .line 63
    iget-wide v0, p0, Lqw;->aP:D

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lqw;->aP:D

    .line 64
    iget-wide v0, p0, Lqw;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lqw;->aR:D

    .line 65
    iget-wide v0, p0, Lqw;->aQ:D

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lqw;->aQ:D

    .line 68
    :cond_4e
    iget v0, p0, Lqw;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lqw;->a:I

    if-gtz v0, :cond_67

    .line 69
    iget-object v0, p0, Lqw;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_63

    .line 70
    invoke-virtual {p0}, Lqw;->K()V

    .line 71
    invoke-direct {p0}, Lqw;->k()V

    goto :goto_7d

    .line 73
    :cond_63
    invoke-virtual {p0}, Lqw;->K()V

    goto :goto_7d

    .line 76
    :cond_67
    iget-object v1, p0, Lqw;->aI:Lfd;

    const-string v2, "smoke"

    iget-wide v3, p0, Lqw;->aM:D

    iget-wide v5, p0, Lqw;->aN:D

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    iget-wide v7, p0, Lqw;->aO:D

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-virtual/range {v1 .. v14}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    :goto_7d
    return-void
.end method

.method public x_()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
