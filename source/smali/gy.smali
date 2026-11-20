###### Class defpackage.gy (gy)
.class public Lgy;
.super Lxw;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;DDDDDD)V
    .registers 16

    .line 11
    invoke-direct/range {p0 .. p13}, Lxw;-><init>(Lfd;DDDDDD)V

    .line 12
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, p3

    const-wide/high16 p5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, p5

    double-to-float p1, p1

    const p2, 0x3d4ccccd    # 0.05f

    mul-float/2addr p1, p2

    float-to-double v0, p1

    add-double/2addr p8, v0

    iput-wide p8, p0, Lgy;->aP:D

    .line 13
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p7

    mul-double/2addr p7, p3

    sub-double/2addr p7, p5

    double-to-float p1, p7

    mul-float/2addr p1, p2

    float-to-double p7, p1

    add-double/2addr p10, p7

    iput-wide p10, p0, Lgy;->aQ:D

    .line 14
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p7

    mul-double/2addr p7, p3

    sub-double/2addr p7, p5

    double-to-float p1, p7

    mul-float/2addr p1, p2

    float-to-double p1, p1

    add-double/2addr p12, p1

    iput-wide p12, p0, Lgy;->aR:D

    .line 16
    iget-object p1, p0, Lgy;->bs:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const p2, 0x3e99999a    # 0.3f

    mul-float/2addr p1, p2

    const p2, 0x3f333333    # 0.7f

    add-float/2addr p1, p2

    iput p1, p0, Lgy;->k:F

    iput p1, p0, Lgy;->j:F

    iput p1, p0, Lgy;->i:F

    .line 17
    iget-object p1, p0, Lgy;->bs:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    iget-object p2, p0, Lgy;->bs:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    mul-float/2addr p1, p2

    const/high16 p2, 0x40c00000    # 6.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    iput p1, p0, Lgy;->g:F

    .line 19
    iget-object p1, p0, Lgy;->bs:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    float-to-double p1, p1

    const-wide p3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p1, p3

    const-wide p3, 0x3fc999999999999aL    # 0.2

    add-double/2addr p1, p3

    const-wide/high16 p3, 0x4030000000000000L    # 16.0

    div-double/2addr p3, p1

    double-to-int p1, p3

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgy;->f:I

    return-void
.end method


# virtual methods
.method public a(Lnw;FFFFFF)V
    .registers 8

    .line 32
    invoke-super/range {p0 .. p7}, Lxw;->a(Lnw;FFFFFF)V

    return-void
.end method

.method public w_()V
    .registers 10

    .line 37
    iget-wide v0, p0, Lgy;->aM:D

    iput-wide v0, p0, Lgy;->aJ:D

    .line 38
    iget-wide v0, p0, Lgy;->aN:D

    iput-wide v0, p0, Lgy;->aK:D

    .line 39
    iget-wide v0, p0, Lgy;->aO:D

    iput-wide v0, p0, Lgy;->aL:D

    .line 41
    iget v0, p0, Lgy;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgy;->e:I

    iget v1, p0, Lgy;->f:I

    if-lt v0, v1, :cond_19

    invoke-virtual {p0}, Lgy;->K()V

    .line 43
    :cond_19
    iget v0, p0, Lgy;->e:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lgy;->f:I

    div-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x7

    iput v0, p0, Lgy;->b:I

    .line 45
    iget-wide v0, p0, Lgy;->aQ:D

    const-wide v2, 0x3f70624dd2f1a9fcL    # 0.004

    add-double/2addr v0, v2

    iput-wide v0, p0, Lgy;->aQ:D

    .line 46
    iget-wide v3, p0, Lgy;->aP:D

    iget-wide v5, p0, Lgy;->aQ:D

    iget-wide v7, p0, Lgy;->aR:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lgy;->b(DDD)V

    .line 47
    iget-wide v0, p0, Lgy;->aP:D

    const-wide v2, 0x3fecccccc0000000L    # 0.8999999761581421

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lgy;->aP:D

    .line 48
    iget-wide v0, p0, Lgy;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lgy;->aQ:D

    .line 49
    iget-wide v0, p0, Lgy;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lgy;->aR:D

    .line 51
    iget-boolean v0, p0, Lgy;->aX:Z

    if-eqz v0, :cond_5f

    .line 53
    iget-wide v0, p0, Lgy;->aP:D

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lgy;->aP:D

    .line 54
    iget-wide v0, p0, Lgy;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lgy;->aR:D

    :cond_5f
    return-void
.end method
