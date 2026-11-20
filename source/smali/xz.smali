###### Class defpackage.xz (xz)
.class public Lxz;
.super Lgs;
.source "SourceFile"


# instance fields
.field a:F

.field private b:I

.field private bN:D

.field private bO:D

.field private bP:D

.field private bQ:D

.field private bR:D


# direct methods
.method public constructor <init>(Lfd;Ljava/lang/String;)V
    .registers 4

    .line 14
    invoke-direct {p0, p1}, Lgs;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lxz;->a:F

    .line 15
    iput-object p2, p0, Lxz;->l:Ljava/lang/String;

    .line 17
    iput p1, p0, Lxz;->bf:F

    .line 18
    iput p1, p0, Lxz;->bp:F

    if-eqz p2, :cond_29

    .line 19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_29

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "http://s3.amazonaws.com/MinecraftSkins/"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lxz;->bA:Ljava/lang/String;

    :cond_29
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lxz;->bq:Z

    const/high16 p1, 0x3e800000    # 0.25f

    .line 24
    iput p1, p0, Lxz;->x:F

    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    .line 26
    iput-wide p1, p0, Lxz;->aE:D

    return-void
.end method


# virtual methods
.method protected E()V
    .registers 2

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lxz;->bf:F

    return-void
.end method

.method public a(DDDFFI)V
    .registers 10

    .line 43
    iput-wide p1, p0, Lxz;->bN:D

    .line 44
    iput-wide p3, p0, Lxz;->bO:D

    .line 45
    iput-wide p5, p0, Lxz;->bP:D

    float-to-double p1, p7

    .line 46
    iput-wide p1, p0, Lxz;->bQ:D

    float-to-double p1, p8

    .line 47
    iput-wide p1, p0, Lxz;->bR:D

    .line 49
    iput p9, p0, Lxz;->b:I

    return-void
.end method

.method public a(Lsn;I)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public c(III)V
    .registers 6

    const/4 v0, 0x1

    if-ltz p2, :cond_9

    .line 105
    new-instance v1, Liz;

    invoke-direct {v1, p2, v0, p3}, Liz;-><init>(III)V

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-nez p1, :cond_17

    .line 107
    iget-object p1, p0, Lxz;->c:Lix;

    iget-object p1, p1, Lix;->a:[Liz;

    iget-object p2, p0, Lxz;->c:Lix;

    iget p2, p2, Lix;->c:I

    aput-object v1, p1, p2

    goto :goto_1e

    .line 109
    :cond_17
    iget-object p2, p0, Lxz;->c:Lix;

    iget-object p2, p2, Lix;->b:[Liz;

    sub-int/2addr p1, v0

    aput-object v1, p2, p1

    :goto_1e
    return-void
.end method

.method public o()V
    .registers 14

    .line 72
    invoke-super {p0}, Lgs;->f_()V

    .line 73
    iget v0, p0, Lxz;->b:I

    if-lez v0, :cond_7c

    .line 74
    iget-wide v0, p0, Lxz;->aM:D

    iget-wide v2, p0, Lxz;->bN:D

    iget-wide v4, p0, Lxz;->aM:D

    sub-double/2addr v2, v4

    iget v4, p0, Lxz;->b:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    add-double v5, v0, v2

    .line 75
    iget-wide v0, p0, Lxz;->aN:D

    iget-wide v2, p0, Lxz;->bO:D

    iget-wide v7, p0, Lxz;->aN:D

    sub-double/2addr v2, v7

    iget v4, p0, Lxz;->b:I

    int-to-double v7, v4

    div-double/2addr v2, v7

    add-double v7, v0, v2

    .line 76
    iget-wide v0, p0, Lxz;->aO:D

    iget-wide v2, p0, Lxz;->bP:D

    iget-wide v9, p0, Lxz;->aO:D

    sub-double/2addr v2, v9

    iget v4, p0, Lxz;->b:I

    int-to-double v9, v4

    div-double/2addr v2, v9

    add-double v9, v0, v2

    .line 78
    iget-wide v0, p0, Lxz;->bQ:D

    iget v2, p0, Lxz;->aS:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    :goto_34
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v0, v2

    const-wide v3, 0x4076800000000000L    # 360.0

    if-gez v2, :cond_44

    add-double/2addr v0, v3

    goto :goto_34

    :cond_44
    :goto_44
    const-wide v11, 0x4066800000000000L    # 180.0

    cmpl-double v2, v0, v11

    if-ltz v2, :cond_4f

    sub-double/2addr v0, v3

    goto :goto_44

    .line 84
    :cond_4f
    iget v2, p0, Lxz;->aS:F

    float-to-double v2, v2

    iget v4, p0, Lxz;->b:I

    int-to-double v11, v4

    div-double/2addr v0, v11

    add-double/2addr v2, v0

    double-to-float v0, v2

    iput v0, p0, Lxz;->aS:F

    .line 85
    iget v0, p0, Lxz;->aT:F

    float-to-double v0, v0

    iget-wide v2, p0, Lxz;->bR:D

    iget v4, p0, Lxz;->aT:F

    float-to-double v11, v4

    sub-double/2addr v2, v11

    iget v4, p0, Lxz;->b:I

    int-to-double v11, v4

    div-double/2addr v2, v11

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lxz;->aT:F

    .line 87
    iget v0, p0, Lxz;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lxz;->b:I

    move-object v4, p0

    .line 88
    invoke-virtual/range {v4 .. v10}, Lxz;->e(DDD)V

    .line 89
    iget v0, p0, Lxz;->aS:F

    iget v1, p0, Lxz;->aT:F

    invoke-virtual {p0, v0, v1}, Lxz;->c(FF)V

    .line 91
    :cond_7c
    iget v0, p0, Lxz;->i:F

    iput v0, p0, Lxz;->h:F

    .line 93
    iget-wide v0, p0, Lxz;->aP:D

    iget-wide v2, p0, Lxz;->aP:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lxz;->aR:D

    iget-wide v4, p0, Lxz;->aR:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    .line 94
    iget-wide v1, p0, Lxz;->aQ:D

    neg-double v1, v1

    const-wide v3, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v1, v2

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_a8

    move v0, v2

    .line 96
    :cond_a8
    iget-boolean v2, p0, Lxz;->aX:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_b1

    iget v2, p0, Lxz;->Y:I

    if-gtz v2, :cond_b2

    :cond_b1
    move v0, v3

    .line 97
    :cond_b2
    iget-boolean v2, p0, Lxz;->aX:Z

    if-nez v2, :cond_ba

    iget v2, p0, Lxz;->Y:I

    if-gtz v2, :cond_bb

    :cond_ba
    move v1, v3

    .line 98
    :cond_bb
    iget v2, p0, Lxz;->i:F

    iget v3, p0, Lxz;->i:F

    sub-float/2addr v0, v3

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    iput v2, p0, Lxz;->i:F

    .line 99
    iget v0, p0, Lxz;->ag:F

    iget v2, p0, Lxz;->ag:F

    sub-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lxz;->ag:F

    return-void
.end method

.method public v()V
    .registers 1

    return-void
.end method

.method public w_()V
    .registers 7

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lxz;->x:F

    .line 56
    invoke-super {p0}, Lgs;->w_()V

    .line 58
    iget v0, p0, Lxz;->al:F

    iput v0, p0, Lxz;->ak:F

    .line 59
    iget-wide v0, p0, Lxz;->aM:D

    iget-wide v2, p0, Lxz;->aJ:D

    sub-double/2addr v0, v2

    .line 60
    iget-wide v2, p0, Lxz;->aO:D

    iget-wide v4, p0, Lxz;->aL:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    .line 61
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_25

    move v0, v1

    .line 63
    :cond_25
    iget v1, p0, Lxz;->al:F

    iget v2, p0, Lxz;->al:F

    sub-float/2addr v0, v2

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lxz;->al:F

    .line 64
    iget v0, p0, Lxz;->am:F

    iget v1, p0, Lxz;->al:F

    add-float/2addr v0, v1

    iput v0, p0, Lxz;->am:F

    return-void
.end method

.method public x_()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
