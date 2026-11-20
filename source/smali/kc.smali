###### Class defpackage.kc (kc)
.class public Lkc;
.super Lxw;
.source "SourceFile"


# instance fields
.field a:F


# direct methods
.method public constructor <init>(Lfd;DDDDDD)V
    .registers 29

    const/high16 v14, 0x40000000    # 2.0f

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    .line 9
    invoke-direct/range {v0 .. v14}, Lkc;-><init>(Lfd;DDDDDDF)V

    return-void
.end method

.method public constructor <init>(Lfd;DDDDDDF)V
    .registers 30

    move-object v14, p0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 15
    invoke-direct/range {v0 .. v13}, Lxw;-><init>(Lfd;DDDDDD)V

    .line 16
    iget-wide v0, v14, Lkc;->aP:D

    const-wide v2, 0x3f847ae140000000L    # 0.009999999776482582

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lkc;->aP:D

    .line 17
    iget-wide v0, v14, Lkc;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lkc;->aQ:D

    .line 18
    iget-wide v0, v14, Lkc;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lkc;->aR:D

    .line 19
    iget-wide v0, v14, Lkc;->aQ:D

    const-wide v2, 0x3fb999999999999aL    # 0.1

    add-double/2addr v0, v2

    iput-wide v0, v14, Lkc;->aQ:D

    .line 25
    iget v0, v14, Lkc;->g:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    iput v0, v14, Lkc;->g:F

    .line 26
    iget v0, v14, Lkc;->g:F

    mul-float v0, v0, p14

    iput v0, v14, Lkc;->g:F

    .line 27
    iget v0, v14, Lkc;->g:F

    iput v0, v14, Lkc;->a:F

    const/16 v0, 0x10

    .line 29
    iput v0, v14, Lkc;->f:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, v14, Lkc;->bq:Z

    const/16 v0, 0x50

    .line 33
    iput v0, v14, Lkc;->b:I

    return-void
.end method


# virtual methods
.method public a(Lnw;FFFFFF)V
    .registers 11

    .line 38
    iget v0, p0, Lkc;->e:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lkc;->f:I

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

    .line 42
    :cond_18
    iget v1, p0, Lkc;->a:F

    mul-float/2addr v1, v0

    iput v1, p0, Lkc;->g:F

    .line 43
    invoke-super/range {p0 .. p7}, Lxw;->a(Lnw;FFFFFF)V

    return-void
.end method

.method public w_()V
    .registers 10

    .line 47
    iget-wide v0, p0, Lkc;->aM:D

    iput-wide v0, p0, Lkc;->aJ:D

    .line 48
    iget-wide v0, p0, Lkc;->aN:D

    iput-wide v0, p0, Lkc;->aK:D

    .line 49
    iget-wide v0, p0, Lkc;->aO:D

    iput-wide v0, p0, Lkc;->aL:D

    .line 51
    iget v0, p0, Lkc;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkc;->e:I

    iget v1, p0, Lkc;->f:I

    if-lt v0, v1, :cond_19

    invoke-virtual {p0}, Lkc;->K()V

    .line 54
    :cond_19
    iget-wide v3, p0, Lkc;->aP:D

    iget-wide v5, p0, Lkc;->aQ:D

    iget-wide v7, p0, Lkc;->aR:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lkc;->b(DDD)V

    .line 55
    iget-wide v0, p0, Lkc;->aN:D

    iget-wide v2, p0, Lkc;->aK:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3a

    .line 56
    iget-wide v0, p0, Lkc;->aP:D

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lkc;->aP:D

    .line 57
    iget-wide v0, p0, Lkc;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lkc;->aR:D

    .line 59
    :cond_3a
    iget-wide v0, p0, Lkc;->aP:D

    const-wide v2, 0x3feb851ec0000000L    # 0.8600000143051147

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lkc;->aP:D

    .line 60
    iget-wide v0, p0, Lkc;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lkc;->aQ:D

    .line 61
    iget-wide v0, p0, Lkc;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lkc;->aR:D

    .line 63
    iget-boolean v0, p0, Lkc;->aX:Z

    if-eqz v0, :cond_61

    .line 64
    iget-wide v0, p0, Lkc;->aP:D

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lkc;->aP:D

    .line 65
    iget-wide v0, p0, Lkc;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lkc;->aR:D

    :cond_61
    return-void
.end method
