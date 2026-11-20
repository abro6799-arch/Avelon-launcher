###### Class defpackage.fg (fg)
.class public Lfg;
.super Lxw;
.source "SourceFile"


# instance fields
.field private a:F


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

    .line 11
    invoke-direct/range {v0 .. v13}, Lxw;-><init>(Lfd;DDDDDD)V

    .line 12
    iget-wide v0, v14, Lfg;->aP:D

    const-wide v2, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lfg;->aP:D

    .line 13
    iget-wide v0, v14, Lfg;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lfg;->aQ:D

    .line 14
    iget-wide v0, v14, Lfg;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v14, Lfg;->aR:D

    .line 15
    iget-object v0, v14, Lfg;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, v14, Lfg;->aQ:D

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, v14, Lfg;->k:F

    iput v0, v14, Lfg;->j:F

    iput v0, v14, Lfg;->i:F

    .line 18
    iget v0, v14, Lfg;->g:F

    iget-object v1, v14, Lfg;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, v14, Lfg;->g:F

    .line 19
    iget v0, v14, Lfg;->g:F

    iput v0, v14, Lfg;->a:F

    .line 21
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    div-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, v14, Lfg;->f:I

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, v14, Lfg;->bq:Z

    const/16 v0, 0x31

    .line 23
    iput v0, v14, Lfg;->b:I

    return-void
.end method


# virtual methods
.method public a(F)F
    .registers 2

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public a(Lnw;FFFFFF)V
    .registers 11

    .line 31
    iget v0, p0, Lfg;->e:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lfg;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 32
    iget v1, p0, Lfg;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v0

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Lfg;->g:F

    .line 33
    invoke-super/range {p0 .. p7}, Lxw;->a(Lnw;FFFFFF)V

    return-void
.end method

.method public w_()V
    .registers 16

    .line 37
    iget-wide v0, p0, Lfg;->aM:D

    iput-wide v0, p0, Lfg;->aJ:D

    .line 38
    iget-wide v0, p0, Lfg;->aN:D

    iput-wide v0, p0, Lfg;->aK:D

    .line 39
    iget-wide v0, p0, Lfg;->aO:D

    iput-wide v0, p0, Lfg;->aL:D

    .line 41
    iget v0, p0, Lfg;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfg;->e:I

    iget v1, p0, Lfg;->f:I

    if-lt v0, v1, :cond_19

    invoke-virtual {p0}, Lfg;->K()V

    .line 42
    :cond_19
    iget v0, p0, Lfg;->e:I

    int-to-float v0, v0

    iget v1, p0, Lfg;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 43
    iget-object v1, p0, Lfg;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3d

    iget-object v1, p0, Lfg;->aI:Lfd;

    const-string v2, "smoke"

    iget-wide v3, p0, Lfg;->aM:D

    iget-wide v5, p0, Lfg;->aN:D

    iget-wide v7, p0, Lfg;->aO:D

    iget-wide v9, p0, Lfg;->aP:D

    iget-wide v11, p0, Lfg;->aQ:D

    iget-wide v13, p0, Lfg;->aR:D

    invoke-virtual/range {v1 .. v14}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    .line 45
    :cond_3d
    iget-wide v0, p0, Lfg;->aQ:D

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lfg;->aQ:D

    .line 46
    iget-wide v3, p0, Lfg;->aP:D

    iget-wide v5, p0, Lfg;->aQ:D

    iget-wide v7, p0, Lfg;->aR:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lfg;->b(DDD)V

    .line 47
    iget-wide v0, p0, Lfg;->aP:D

    const-wide v2, 0x3feff7cee0000000L    # 0.9990000128746033

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lfg;->aP:D

    .line 48
    iget-wide v0, p0, Lfg;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lfg;->aQ:D

    .line 49
    iget-wide v0, p0, Lfg;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lfg;->aR:D

    .line 51
    iget-boolean v0, p0, Lfg;->aX:Z

    if-eqz v0, :cond_78

    .line 52
    iget-wide v0, p0, Lfg;->aP:D

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lfg;->aP:D

    .line 53
    iget-wide v0, p0, Lfg;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lfg;->aR:D

    :cond_78
    return-void
.end method
