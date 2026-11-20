###### Class defpackage.qu (qu)
.class public Lqu;
.super Lxw;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Lfd;DDDDDD)V
    .registers 14

    .line 13
    invoke-direct/range {p0 .. p13}, Lxw;-><init>(Lfd;DDDDDD)V

    .line 14
    iget-wide p1, p0, Lqu;->aP:D

    const-wide p3, 0x3f847ae140000000L    # 0.009999999776482582

    mul-double/2addr p1, p3

    add-double/2addr p1, p8

    iput-wide p1, p0, Lqu;->aP:D

    .line 15
    iget-wide p1, p0, Lqu;->aQ:D

    mul-double/2addr p1, p3

    add-double/2addr p1, p10

    iput-wide p1, p0, Lqu;->aQ:D

    .line 16
    iget-wide p1, p0, Lqu;->aR:D

    mul-double/2addr p1, p3

    add-double/2addr p1, p12

    iput-wide p1, p0, Lqu;->aR:D

    .line 17
    iget-object p1, p0, Lqu;->bs:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    iget-object p1, p0, Lqu;->bs:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 18
    iget-object p1, p0, Lqu;->bs:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    iget-object p1, p0, Lqu;->bs:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 19
    iget-object p1, p0, Lqu;->bs:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    iget-object p1, p0, Lqu;->bs:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    .line 21
    iget p1, p0, Lqu;->g:F

    iput p1, p0, Lqu;->a:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    iput p1, p0, Lqu;->k:F

    iput p1, p0, Lqu;->j:F

    iput p1, p0, Lqu;->i:F

    .line 24
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide p3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p1, p3

    const-wide p3, 0x3fc999999999999aL    # 0.2

    add-double/2addr p1, p3

    const-wide/high16 p3, 0x4020000000000000L    # 8.0

    div-double/2addr p3, p1

    double-to-int p1, p3

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lqu;->f:I

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lqu;->bq:Z

    const/16 p1, 0x30

    .line 26
    iput p1, p0, Lqu;->b:I

    return-void
.end method


# virtual methods
.method public a(F)F
    .registers 5

    .line 36
    iget v0, p0, Lqu;->e:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget v1, p0, Lqu;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_e

    move v0, v1

    :cond_e
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_15

    move v0, v1

    .line 39
    :cond_15
    invoke-super {p0, p1}, Lxw;->a(F)F

    move-result p1

    mul-float/2addr p1, v0

    sub-float/2addr v1, v0

    add-float/2addr p1, v1

    return p1
.end method

.method public a(Lnw;FFFFFF)V
    .registers 11

    .line 30
    iget v0, p0, Lqu;->e:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lqu;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 31
    iget v1, p0, Lqu;->a:F

    mul-float/2addr v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Lqu;->g:F

    .line 32
    invoke-super/range {p0 .. p7}, Lxw;->a(Lnw;FFFFFF)V

    return-void
.end method

.method public w_()V
    .registers 10

    .line 46
    iget-wide v0, p0, Lqu;->aM:D

    iput-wide v0, p0, Lqu;->aJ:D

    .line 47
    iget-wide v0, p0, Lqu;->aN:D

    iput-wide v0, p0, Lqu;->aK:D

    .line 48
    iget-wide v0, p0, Lqu;->aO:D

    iput-wide v0, p0, Lqu;->aL:D

    .line 50
    iget v0, p0, Lqu;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lqu;->e:I

    iget v1, p0, Lqu;->f:I

    if-lt v0, v1, :cond_19

    invoke-virtual {p0}, Lqu;->K()V

    .line 52
    :cond_19
    iget-wide v3, p0, Lqu;->aP:D

    iget-wide v5, p0, Lqu;->aQ:D

    iget-wide v7, p0, Lqu;->aR:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lqu;->b(DDD)V

    .line 53
    iget-wide v0, p0, Lqu;->aP:D

    const-wide v2, 0x3feeb851e0000000L    # 0.9599999785423279

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lqu;->aP:D

    .line 54
    iget-wide v0, p0, Lqu;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lqu;->aQ:D

    .line 55
    iget-wide v0, p0, Lqu;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lqu;->aR:D

    .line 57
    iget-boolean v0, p0, Lqu;->aX:Z

    if-eqz v0, :cond_4a

    .line 59
    iget-wide v0, p0, Lqu;->aP:D

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lqu;->aP:D

    .line 60
    iget-wide v0, p0, Lqu;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lqu;->aR:D

    :cond_4a
    return-void
.end method
