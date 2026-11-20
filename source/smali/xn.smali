###### Class defpackage.xn (xn)
.class public Lxn;
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
    invoke-direct/range {v0 .. v14}, Lxn;-><init>(Lfd;DDDDDDF)V

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
    iget-wide v0, v14, Lxn;->aP:D

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lxn;->aP:D

    .line 17
    iget-wide v0, v14, Lxn;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lxn;->aQ:D

    .line 18
    iget-wide v0, v14, Lxn;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lxn;->aR:D

    .line 19
    iget-wide v0, v14, Lxn;->aP:D

    add-double v0, v0, p8

    iput-wide v0, v14, Lxn;->aP:D

    .line 20
    iget-wide v0, v14, Lxn;->aQ:D

    add-double v0, v0, p10

    iput-wide v0, v14, Lxn;->aQ:D

    .line 21
    iget-wide v0, v14, Lxn;->aR:D

    add-double v0, v0, p12

    iput-wide v0, v14, Lxn;->aR:D

    .line 23
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, v14, Lxn;->k:F

    iput v0, v14, Lxn;->j:F

    iput v0, v14, Lxn;->i:F

    .line 24
    iget v0, v14, Lxn;->g:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    iput v0, v14, Lxn;->g:F

    .line 25
    iget v0, v14, Lxn;->g:F

    mul-float v0, v0, p14

    iput v0, v14, Lxn;->g:F

    .line 26
    iget v0, v14, Lxn;->g:F

    iput v0, v14, Lxn;->a:F

    .line 28
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, v14, Lxn;->f:I

    .line 29
    iget v0, v14, Lxn;->f:I

    int-to-float v0, v0

    mul-float v0, v0, p14

    float-to-int v0, v0

    iput v0, v14, Lxn;->f:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, v14, Lxn;->bq:Z

    return-void
.end method


# virtual methods
.method public a(Lnw;FFFFFF)V
    .registers 11

    .line 34
    iget v0, p0, Lxn;->e:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lxn;->f:I

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
    iget v1, p0, Lxn;->a:F

    mul-float/2addr v1, v0

    iput v1, p0, Lxn;->g:F

    .line 39
    invoke-super/range {p0 .. p7}, Lxw;->a(Lnw;FFFFFF)V

    return-void
.end method

.method public w_()V
    .registers 10

    .line 43
    iget-wide v0, p0, Lxn;->aM:D

    iput-wide v0, p0, Lxn;->aJ:D

    .line 44
    iget-wide v0, p0, Lxn;->aN:D

    iput-wide v0, p0, Lxn;->aK:D

    .line 45
    iget-wide v0, p0, Lxn;->aO:D

    iput-wide v0, p0, Lxn;->aL:D

    .line 47
    iget v0, p0, Lxn;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lxn;->e:I

    iget v1, p0, Lxn;->f:I

    if-lt v0, v1, :cond_19

    invoke-virtual {p0}, Lxn;->K()V

    .line 49
    :cond_19
    iget v0, p0, Lxn;->e:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lxn;->f:I

    div-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x7

    iput v0, p0, Lxn;->b:I

    .line 51
    iget-wide v0, p0, Lxn;->aQ:D

    const-wide v2, 0x3f70624dd2f1a9fcL    # 0.004

    add-double/2addr v0, v2

    iput-wide v0, p0, Lxn;->aQ:D

    .line 52
    iget-wide v3, p0, Lxn;->aP:D

    iget-wide v5, p0, Lxn;->aQ:D

    iget-wide v7, p0, Lxn;->aR:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lxn;->b(DDD)V

    .line 53
    iget-wide v0, p0, Lxn;->aN:D

    iget-wide v2, p0, Lxn;->aK:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4f

    .line 54
    iget-wide v0, p0, Lxn;->aP:D

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxn;->aP:D

    .line 55
    iget-wide v0, p0, Lxn;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxn;->aR:D

    .line 57
    :cond_4f
    iget-wide v0, p0, Lxn;->aP:D

    const-wide v2, 0x3feeb851e0000000L    # 0.9599999785423279

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxn;->aP:D

    .line 58
    iget-wide v0, p0, Lxn;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxn;->aQ:D

    .line 59
    iget-wide v0, p0, Lxn;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxn;->aR:D

    .line 61
    iget-boolean v0, p0, Lxn;->aX:Z

    if-eqz v0, :cond_76

    .line 62
    iget-wide v0, p0, Lxn;->aP:D

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxn;->aP:D

    .line 63
    iget-wide v0, p0, Lxn;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lxn;->aR:D

    :cond_76
    return-void
.end method
