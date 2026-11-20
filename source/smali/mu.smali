###### Class defpackage.mu (mu)
.class public Lmu;
.super Lxw;
.source "SourceFile"


# instance fields
.field a:F


# direct methods
.method public constructor <init>(Lfd;DDDDDD)V
    .registers 29

    const/high16 v14, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    .line 9
    invoke-direct/range {v0 .. v14}, Lmu;-><init>(Lfd;DDDDDDF)V

    return-void
.end method

.method public constructor <init>(Lfd;DDDDDDF)V
    .registers 15

    .line 15
    invoke-direct/range {p0 .. p13}, Lxw;-><init>(Lfd;DDDDDD)V

    .line 16
    iget-wide p1, p0, Lmu;->aP:D

    const-wide p3, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double/2addr p1, p3

    iput-wide p1, p0, Lmu;->aP:D

    .line 17
    iget-wide p1, p0, Lmu;->aQ:D

    mul-double/2addr p1, p3

    iput-wide p1, p0, Lmu;->aQ:D

    .line 18
    iget-wide p1, p0, Lmu;->aR:D

    mul-double/2addr p1, p3

    iput-wide p1, p0, Lmu;->aR:D

    .line 19
    iget-wide p1, p0, Lmu;->aP:D

    add-double/2addr p1, p8

    iput-wide p1, p0, Lmu;->aP:D

    .line 20
    iget-wide p1, p0, Lmu;->aQ:D

    add-double/2addr p1, p10

    iput-wide p1, p0, Lmu;->aQ:D

    .line 21
    iget-wide p1, p0, Lmu;->aR:D

    add-double/2addr p1, p12

    iput-wide p1, p0, Lmu;->aR:D

    .line 23
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide p3, 0x3fd3333340000000L    # 0.30000001192092896

    mul-double/2addr p1, p3

    double-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    iput p2, p0, Lmu;->k:F

    iput p2, p0, Lmu;->j:F

    iput p2, p0, Lmu;->i:F

    .line 24
    iget p1, p0, Lmu;->g:F

    const/high16 p2, 0x3f400000    # 0.75f

    mul-float/2addr p1, p2

    iput p1, p0, Lmu;->g:F

    .line 25
    iget p1, p0, Lmu;->g:F

    mul-float/2addr p1, p14

    iput p1, p0, Lmu;->g:F

    .line 26
    iget p1, p0, Lmu;->g:F

    iput p1, p0, Lmu;->a:F

    .line 28
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide p3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p1, p3

    const-wide p3, 0x3fc999999999999aL    # 0.2

    add-double/2addr p1, p3

    const-wide/high16 p3, 0x4020000000000000L    # 8.0

    div-double/2addr p3, p1

    double-to-int p1, p3

    iput p1, p0, Lmu;->f:I

    .line 29
    iget p1, p0, Lmu;->f:I

    int-to-float p1, p1

    mul-float/2addr p1, p14

    float-to-int p1, p1

    iput p1, p0, Lmu;->f:I

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lmu;->bq:Z

    return-void
.end method


# virtual methods
.method public a(Lnw;FFFFFF)V
    .registers 11

    .line 34
    iget v0, p0, Lmu;->e:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lmu;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_11

    move v0, v1

    :cond_11
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_18

    move v0, v1

    .line 38
    :cond_18
    iget v1, p0, Lmu;->a:F

    mul-float/2addr v1, v0

    iput v1, p0, Lmu;->g:F

    .line 39
    invoke-super/range {p0 .. p7}, Lxw;->a(Lnw;FFFFFF)V

    return-void
.end method

.method public w_()V
    .registers 10

    .line 43
    iget-wide v0, p0, Lmu;->aM:D

    iput-wide v0, p0, Lmu;->aJ:D

    .line 44
    iget-wide v0, p0, Lmu;->aN:D

    iput-wide v0, p0, Lmu;->aK:D

    .line 45
    iget-wide v0, p0, Lmu;->aO:D

    iput-wide v0, p0, Lmu;->aL:D

    .line 47
    iget v0, p0, Lmu;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmu;->e:I

    iget v1, p0, Lmu;->f:I

    if-lt v0, v1, :cond_19

    invoke-virtual {p0}, Lmu;->K()V

    .line 49
    :cond_19
    iget v0, p0, Lmu;->e:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lmu;->f:I

    div-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x7

    iput v0, p0, Lmu;->b:I

    .line 51
    iget-wide v0, p0, Lmu;->aQ:D

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lmu;->aQ:D

    .line 52
    iget-wide v3, p0, Lmu;->aP:D

    iget-wide v5, p0, Lmu;->aQ:D

    iget-wide v7, p0, Lmu;->aR:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lmu;->b(DDD)V

    .line 53
    iget-wide v0, p0, Lmu;->aP:D

    const-wide v2, 0x3fefae1480000000L    # 0.9900000095367432

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lmu;->aP:D

    .line 54
    iget-wide v0, p0, Lmu;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lmu;->aQ:D

    .line 55
    iget-wide v0, p0, Lmu;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lmu;->aR:D

    .line 57
    iget-boolean v0, p0, Lmu;->aX:Z

    if-eqz v0, :cond_5f

    .line 58
    iget-wide v0, p0, Lmu;->aP:D

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lmu;->aP:D

    .line 59
    iget-wide v0, p0, Lmu;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lmu;->aR:D

    :cond_5f
    return-void
.end method
