###### Class defpackage.im (im)
.class public Lim;
.super Lxw;
.source "SourceFile"


# instance fields
.field a:F


# direct methods
.method public constructor <init>(Lfd;DDDFFF)V
    .registers 23

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 9
    invoke-direct/range {v0 .. v11}, Lim;-><init>(Lfd;DDDFFFF)V

    return-void
.end method

.method public constructor <init>(Lfd;DDDFFFF)V
    .registers 27

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
    iget-wide v0, v14, Lim;->aP:D

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lim;->aP:D

    .line 17
    iget-wide v0, v14, Lim;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lim;->aQ:D

    .line 18
    iget-wide v0, v14, Lim;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lim;->aR:D

    const/4 v0, 0x0

    cmpl-float v0, p9, v0

    if-nez v0, :cond_2f

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_31

    :cond_2f
    move/from16 v0, p9

    .line 23
    :goto_31
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    add-float/2addr v1, v2

    .line 24
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr v2, v4

    double-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    iput v2, v14, Lim;->i:F

    .line 25
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-float v0, v6

    add-float/2addr v0, v3

    mul-float v0, v0, p10

    mul-float/2addr v0, v1

    iput v0, v14, Lim;->j:F

    .line 26
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-float v0, v6

    add-float/2addr v0, v3

    mul-float v0, v0, p11

    mul-float/2addr v0, v1

    iput v0, v14, Lim;->k:F

    .line 27
    iget v0, v14, Lim;->g:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    iput v0, v14, Lim;->g:F

    .line 28
    iget v0, v14, Lim;->g:F

    mul-float v0, v0, p8

    iput v0, v14, Lim;->g:F

    .line 29
    iget v0, v14, Lim;->g:F

    iput v0, v14, Lim;->a:F

    .line 31
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, v14, Lim;->f:I

    .line 32
    iget v0, v14, Lim;->f:I

    int-to-float v0, v0

    mul-float v0, v0, p8

    float-to-int v0, v0

    iput v0, v14, Lim;->f:I

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, v14, Lim;->bq:Z

    return-void
.end method


# virtual methods
.method public a(Lnw;FFFFFF)V
    .registers 11

    .line 37
    iget v0, p0, Lim;->e:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lim;->f:I

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

    .line 41
    :cond_18
    iget v1, p0, Lim;->a:F

    mul-float/2addr v1, v0

    iput v1, p0, Lim;->g:F

    .line 42
    invoke-super/range {p0 .. p7}, Lxw;->a(Lnw;FFFFFF)V

    return-void
.end method

.method public w_()V
    .registers 9

    .line 46
    iget-wide v0, p0, Lim;->aM:D

    iput-wide v0, p0, Lim;->aJ:D

    .line 47
    iget-wide v0, p0, Lim;->aN:D

    iput-wide v0, p0, Lim;->aK:D

    .line 48
    iget-wide v0, p0, Lim;->aO:D

    iput-wide v0, p0, Lim;->aL:D

    .line 50
    iget v0, p0, Lim;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lim;->e:I

    iget v1, p0, Lim;->f:I

    if-lt v0, v1, :cond_19

    invoke-virtual {p0}, Lim;->K()V

    .line 52
    :cond_19
    iget v0, p0, Lim;->e:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lim;->f:I

    div-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x7

    iput v0, p0, Lim;->b:I

    .line 54
    iget-wide v2, p0, Lim;->aP:D

    iget-wide v4, p0, Lim;->aQ:D

    iget-wide v6, p0, Lim;->aR:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lim;->b(DDD)V

    .line 55
    iget-wide v0, p0, Lim;->aN:D

    iget-wide v2, p0, Lim;->aK:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_45

    .line 56
    iget-wide v0, p0, Lim;->aP:D

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lim;->aP:D

    .line 57
    iget-wide v0, p0, Lim;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lim;->aR:D

    .line 59
    :cond_45
    iget-wide v0, p0, Lim;->aP:D

    const-wide v2, 0x3feeb851e0000000L    # 0.9599999785423279

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lim;->aP:D

    .line 60
    iget-wide v0, p0, Lim;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lim;->aQ:D

    .line 61
    iget-wide v0, p0, Lim;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lim;->aR:D

    .line 63
    iget-boolean v0, p0, Lim;->aX:Z

    if-eqz v0, :cond_6c

    .line 64
    iget-wide v0, p0, Lim;->aP:D

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lim;->aP:D

    .line 65
    iget-wide v0, p0, Lim;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lim;->aR:D

    :cond_6c
    return-void
.end method
