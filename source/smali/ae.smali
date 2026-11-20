###### Class defpackage.ae (ae)
.class public Lae;
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

    .line 10
    invoke-direct/range {v0 .. v14}, Lae;-><init>(Lfd;DDDDDDF)V

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

    .line 16
    invoke-direct/range {v0 .. v13}, Lxw;-><init>(Lfd;DDDDDD)V

    .line 17
    iget-wide v0, v14, Lae;->aP:D

    const-wide v2, 0x3f847ae140000000L    # 0.009999999776482582

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lae;->aP:D

    .line 18
    iget-wide v0, v14, Lae;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lae;->aQ:D

    .line 19
    iget-wide v0, v14, Lae;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lae;->aR:D

    .line 20
    iget-wide v0, v14, Lae;->aQ:D

    const-wide v2, 0x3fc999999999999aL    # 0.2

    add-double/2addr v0, v2

    iput-wide v0, v14, Lae;->aQ:D

    move-wide/from16 v0, p8

    double-to-float v0, v0

    const/4 v1, 0x0

    add-float/2addr v1, v0

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    .line 22
    invoke-static {v1}, Lin;->a(F)F

    move-result v1

    const v4, 0x3f266666    # 0.65f

    mul-float/2addr v1, v4

    const v5, 0x3eb33333    # 0.35f

    add-float/2addr v1, v5

    iput v1, v14, Lae;->i:F

    const v1, 0x3eaaaaab

    add-float/2addr v1, v0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 23
    invoke-static {v1}, Lin;->a(F)F

    move-result v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v5

    iput v1, v14, Lae;->j:F

    const v1, 0x3f2aaaab

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    mul-float/2addr v0, v3

    .line 24
    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    iput v0, v14, Lae;->k:F

    .line 26
    iget v0, v14, Lae;->g:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    iput v0, v14, Lae;->g:F

    .line 27
    iget v0, v14, Lae;->g:F

    mul-float v0, v0, p14

    iput v0, v14, Lae;->g:F

    .line 28
    iget v0, v14, Lae;->g:F

    iput v0, v14, Lae;->a:F

    const/4 v0, 0x6

    .line 30
    iput v0, v14, Lae;->f:I

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, v14, Lae;->bq:Z

    const/16 v0, 0x40

    .line 34
    iput v0, v14, Lae;->b:I

    return-void
.end method


# virtual methods
.method public a(Lnw;FFFFFF)V
    .registers 11

    .line 39
    iget v0, p0, Lae;->e:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lae;->f:I

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

    .line 43
    :cond_18
    iget v1, p0, Lae;->a:F

    mul-float/2addr v1, v0

    iput v1, p0, Lae;->g:F

    .line 44
    invoke-super/range {p0 .. p7}, Lxw;->a(Lnw;FFFFFF)V

    return-void
.end method

.method public w_()V
    .registers 10

    .line 48
    iget-wide v0, p0, Lae;->aM:D

    iput-wide v0, p0, Lae;->aJ:D

    .line 49
    iget-wide v0, p0, Lae;->aN:D

    iput-wide v0, p0, Lae;->aK:D

    .line 50
    iget-wide v0, p0, Lae;->aO:D

    iput-wide v0, p0, Lae;->aL:D

    .line 52
    iget v0, p0, Lae;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lae;->e:I

    iget v1, p0, Lae;->f:I

    if-lt v0, v1, :cond_19

    invoke-virtual {p0}, Lae;->K()V

    .line 55
    :cond_19
    iget-wide v3, p0, Lae;->aP:D

    iget-wide v5, p0, Lae;->aQ:D

    iget-wide v7, p0, Lae;->aR:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lae;->b(DDD)V

    .line 56
    iget-wide v0, p0, Lae;->aN:D

    iget-wide v2, p0, Lae;->aK:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3a

    .line 57
    iget-wide v0, p0, Lae;->aP:D

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lae;->aP:D

    .line 58
    iget-wide v0, p0, Lae;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lae;->aR:D

    .line 60
    :cond_3a
    iget-wide v0, p0, Lae;->aP:D

    const-wide v2, 0x3fe51eb860000000L    # 0.6600000262260437

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lae;->aP:D

    .line 61
    iget-wide v0, p0, Lae;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lae;->aQ:D

    .line 62
    iget-wide v0, p0, Lae;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lae;->aR:D

    .line 64
    iget-boolean v0, p0, Lae;->aX:Z

    if-eqz v0, :cond_61

    .line 65
    iget-wide v0, p0, Lae;->aP:D

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lae;->aP:D

    .line 66
    iget-wide v0, p0, Lae;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lae;->aR:D

    :cond_61
    return-void
.end method
