###### Class defpackage.xt (xt)
.class public Lxt;
.super Lar;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Lar;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lxt;->a:F

    iput p1, p0, Lxt;->b:F

    .line 14
    iput p1, p0, Lxt;->c:F

    iput p1, p0, Lxt;->f:F

    .line 16
    iput p1, p0, Lxt;->g:F

    iput p1, p0, Lxt;->h:F

    .line 17
    iput p1, p0, Lxt;->i:F

    iput p1, p0, Lxt;->j:F

    .line 19
    iput p1, p0, Lxt;->k:F

    .line 20
    iput p1, p0, Lxt;->l:F

    .line 21
    iput p1, p0, Lxt;->m:F

    .line 23
    iput p1, p0, Lxt;->n:F

    iput p1, p0, Lxt;->o:F

    iput p1, p0, Lxt;->p:F

    const-string p1, "/mob/squid.png"

    .line 27
    iput-object p1, p0, Lxt;->O:Ljava/lang/String;

    const p1, 0x3f733333    # 0.95f

    .line 28
    invoke-virtual {p0, p1, p1}, Lxt;->b(FF)V

    .line 29
    iget-object p1, p0, Lxt;->bs:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    div-float/2addr v0, p1

    const p1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, p1

    iput v0, p0, Lxt;->l:F

    return-void
.end method


# virtual methods
.method public a(Lnu;)V
    .registers 2

    .line 37
    invoke-super {p0, p1}, Lar;->a(Lnu;)V

    return-void
.end method

.method public a(Lgs;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a_(FF)V
    .registers 10

    .line 140
    iget-wide v1, p0, Lxt;->aP:D

    iget-wide v3, p0, Lxt;->aQ:D

    iget-wide v5, p0, Lxt;->aR:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lxt;->b(DDD)V

    return-void
.end method

.method public ag()Z
    .registers 9

    .line 73
    iget-object v0, p0, Lxt;->aI:Lfd;

    iget-object v1, p0, Lxt;->aW:Leq;

    const-wide/16 v2, 0x0

    const-wide v4, -0x401cccccc0000000L    # -0.6000000238418579

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Leq;->b(DDD)Leq;

    move-result-object v1

    sget-object v2, Lln;->g:Lln;

    invoke-virtual {v0, v1, v2, p0}, Lfd;->a(Leq;Lln;Lsn;)Z

    move-result v0

    return v0
.end method

.method public b(Lnu;)V
    .registers 2

    .line 33
    invoke-super {p0, p1}, Lar;->b(Lnu;)V

    return-void
.end method

.method protected f_()V
    .registers 5

    .line 147
    iget-object v0, p0, Lxt;->bs:Ljava/util/Random;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lxt;->bx:Z

    if-eqz v0, :cond_21

    iget v0, p0, Lxt;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4c

    iget v0, p0, Lxt;->o:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4c

    iget v0, p0, Lxt;->p:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4c

    .line 148
    :cond_21
    iget-object v0, p0, Lxt;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 149
    invoke-static {v0}, Lin;->b(F)F

    move-result v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    iput v1, p0, Lxt;->n:F

    .line 150
    iget-object v1, p0, Lxt;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v2

    const v3, -0x42333333    # -0.1f

    add-float/2addr v1, v3

    iput v1, p0, Lxt;->o:F

    .line 151
    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    mul-float/2addr v0, v2

    iput v0, p0, Lxt;->p:F

    .line 154
    :cond_4c
    invoke-virtual {p0}, Lxt;->X()V

    return-void
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected j()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()F
    .registers 2

    const v0, 0x3ecccccd    # 0.4f

    return v0
.end method

.method public o()V
    .registers 11

    .line 79
    invoke-super {p0}, Lar;->o()V

    .line 81
    iget v0, p0, Lxt;->a:F

    iput v0, p0, Lxt;->b:F

    .line 82
    iget v0, p0, Lxt;->c:F

    iput v0, p0, Lxt;->f:F

    .line 84
    iget v0, p0, Lxt;->g:F

    iput v0, p0, Lxt;->h:F

    .line 85
    iget v1, p0, Lxt;->i:F

    iput v1, p0, Lxt;->j:F

    .line 87
    iget v1, p0, Lxt;->l:F

    add-float/2addr v0, v1

    iput v0, p0, Lxt;->g:F

    const v1, 0x40c90fdb

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_3d

    sub-float/2addr v0, v1

    .line 89
    iput v0, p0, Lxt;->g:F

    .line 90
    iget-object v0, p0, Lxt;->bs:Ljava/util/Random;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lxt;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    add-float/2addr v0, v3

    div-float v0, v3, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lxt;->l:F

    .line 93
    :cond_3d
    invoke-virtual {p0}, Lxt;->ag()Z

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x40490fdb    # (float)Math.PI

    if-eqz v0, :cond_eb

    .line 94
    iget v0, p0, Lxt;->g:F

    cmpg-float v4, v0, v2

    if-gez v4, :cond_6f

    div-float/2addr v0, v2

    mul-float v4, v0, v0

    mul-float/2addr v4, v2

    .line 96
    invoke-static {v4}, Lin;->a(F)F

    move-result v4

    mul-float/2addr v4, v2

    mul-float/2addr v4, v1

    iput v4, p0, Lxt;->i:F

    float-to-double v0, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpl-double v0, v0, v4

    if-lez v0, :cond_66

    .line 99
    iput v3, p0, Lxt;->k:F

    .line 100
    iput v3, p0, Lxt;->m:F

    goto :goto_82

    .line 102
    :cond_66
    iget v0, p0, Lxt;->m:F

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lxt;->m:F

    goto :goto_82

    :cond_6f
    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lxt;->i:F

    .line 106
    iget v0, p0, Lxt;->k:F

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    iput v0, p0, Lxt;->k:F

    .line 107
    iget v0, p0, Lxt;->m:F

    const v1, 0x3f7d70a4    # 0.99f

    mul-float/2addr v0, v1

    iput v0, p0, Lxt;->m:F

    .line 110
    :goto_82
    iget-boolean v0, p0, Lxt;->V:Z

    if-nez v0, :cond_9e

    .line 111
    iget v0, p0, Lxt;->n:F

    iget v1, p0, Lxt;->k:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lxt;->aP:D

    .line 112
    iget v0, p0, Lxt;->o:F

    iget v1, p0, Lxt;->k:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lxt;->aQ:D

    .line 113
    iget v0, p0, Lxt;->p:F

    iget v1, p0, Lxt;->k:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lxt;->aR:D

    .line 116
    :cond_9e
    iget-wide v0, p0, Lxt;->aP:D

    iget-wide v3, p0, Lxt;->aP:D

    mul-double/2addr v0, v3

    iget-wide v3, p0, Lxt;->aR:D

    iget-wide v5, p0, Lxt;->aR:D

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    .line 118
    iget v1, p0, Lxt;->H:F

    iget-wide v3, p0, Lxt;->aP:D

    iget-wide v5, p0, Lxt;->aR:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    neg-float v3, v3

    const/high16 v4, 0x43340000    # 180.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v2

    iget v5, p0, Lxt;->H:F

    sub-float/2addr v3, v5

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    iput v1, p0, Lxt;->H:F

    .line 119
    iget v1, p0, Lxt;->H:F

    iput v1, p0, Lxt;->aS:F

    .line 120
    iget v1, p0, Lxt;->c:F

    iget v3, p0, Lxt;->m:F

    mul-float/2addr v3, v2

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iput v1, p0, Lxt;->c:F

    .line 121
    iget v1, p0, Lxt;->a:F

    float-to-double v6, v0

    iget-wide v8, p0, Lxt;->aQ:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    neg-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    iget v2, p0, Lxt;->a:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, v5

    add-float/2addr v1, v0

    iput v1, p0, Lxt;->a:F

    goto :goto_128

    .line 123
    :cond_eb
    iget v0, p0, Lxt;->g:F

    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    invoke-static {v0}, Lin;->e(F)F

    move-result v0

    mul-float/2addr v0, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lxt;->i:F

    .line 125
    iget-boolean v0, p0, Lxt;->V:Z

    if-nez v0, :cond_117

    const-wide/16 v0, 0x0

    .line 127
    iput-wide v0, p0, Lxt;->aP:D

    .line 128
    iget-wide v2, p0, Lxt;->aQ:D

    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lxt;->aQ:D

    .line 129
    iget-wide v2, p0, Lxt;->aQ:D

    const-wide v4, 0x3fef5c2900000000L    # 0.9800000190734863

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lxt;->aQ:D

    .line 130
    iput-wide v0, p0, Lxt;->aR:D

    .line 134
    :cond_117
    iget v0, p0, Lxt;->a:F

    float-to-double v1, v0

    const/high16 v3, -0x3d4c0000    # -90.0f

    sub-float/2addr v3, v0

    float-to-double v3, v3

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v0, v1

    iput v0, p0, Lxt;->a:F

    :goto_128
    return-void
.end method

.method protected q()V
    .registers 7

    .line 62
    iget-object v0, p0, Lxt;->bs:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_1b

    .line 64
    new-instance v4, Liz;

    sget-object v5, Lgm;->aU:Lgm;

    invoke-direct {v4, v5, v1, v2}, Liz;-><init>(Lgm;II)V

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lxt;->a(Liz;F)Lhl;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method
