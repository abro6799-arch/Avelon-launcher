###### Class defpackage.hl (hl)
.class public Lhl;
.super Lsn;
.source "SourceFile"


# instance fields
.field public a:Liz;

.field public b:I

.field public c:I

.field public d:F

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 6

    .line 48
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lhl;->b:I

    const/4 p1, 0x5

    .line 23
    iput p1, p0, Lhl;->f:I

    .line 25
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Lhl;->d:F

    const/high16 p1, 0x3e800000    # 0.25f

    .line 49
    invoke-virtual {p0, p1, p1}, Lhl;->b(FF)V

    .line 50
    iget p1, p0, Lhl;->bh:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lhl;->bf:F

    return-void
.end method

.method public constructor <init>(Lfd;DDDLiz;)V
    .registers 16

    .line 28
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lhl;->b:I

    const/4 p1, 0x5

    .line 23
    iput p1, p0, Lhl;->f:I

    .line 25
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Lhl;->d:F

    const/high16 p1, 0x3e800000    # 0.25f

    .line 29
    invoke-virtual {p0, p1, p1}, Lhl;->b(FF)V

    .line 30
    iget p1, p0, Lhl;->bh:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lhl;->bf:F

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    .line 31
    invoke-virtual/range {v0 .. v6}, Lhl;->e(DDD)V

    .line 32
    iput-object p8, p0, Lhl;->a:Liz;

    .line 34
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide p3, 0x4076800000000000L    # 360.0

    mul-double/2addr p1, p3

    double-to-float p1, p1

    iput p1, p0, Lhl;->aS:F

    .line 36
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide p3, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr p1, p3

    const-wide p5, 0x3fb99999a0000000L    # 0.10000000149011612

    sub-double/2addr p1, p5

    double-to-float p1, p1

    float-to-double p1, p1

    iput-wide p1, p0, Lhl;->aP:D

    .line 37
    iput-wide p3, p0, Lhl;->aQ:D

    .line 38
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    mul-double/2addr p1, p3

    sub-double/2addr p1, p5

    double-to-float p1, p1

    float-to-double p1, p1

    iput-wide p1, p0, Lhl;->aR:D

    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 3

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0, p1}, Lhl;->a(Lsn;I)Z

    return-void
.end method

.method public a(Lnu;)V
    .registers 3

    const-string v0, "Health"

    .line 133
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lhl;->f:I

    const-string v0, "Age"

    .line 134
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lhl;->b:I

    const-string v0, "Item"

    .line 135
    invoke-virtual {p1, v0}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object p1

    .line 136
    new-instance v0, Liz;

    invoke-direct {v0, p1}, Liz;-><init>(Lnu;)V

    iput-object v0, p0, Lhl;->a:Liz;

    return-void
.end method

.method public a(Lsn;I)Z
    .registers 3

    .line 118
    invoke-virtual {p0}, Lhl;->ai()V

    .line 119
    iget p1, p0, Lhl;->f:I

    sub-int/2addr p1, p2

    iput p1, p0, Lhl;->f:I

    if-gtz p1, :cond_d

    .line 121
    invoke-virtual {p0}, Lhl;->K()V

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method public b(Lgs;)V
    .registers 7

    .line 140
    iget-object v0, p0, Lhl;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-eqz v0, :cond_7

    return-void

    .line 142
    :cond_7
    iget-object v0, p0, Lhl;->a:Liz;

    iget v0, v0, Liz;->a:I

    .line 143
    iget v1, p0, Lhl;->c:I

    if-nez v1, :cond_64

    iget-object v1, p1, Lgs;->c:Lix;

    iget-object v2, p0, Lhl;->a:Liz;

    invoke-virtual {v1, v2}, Lix;->a(Liz;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 144
    iget-object v1, p0, Lhl;->a:Liz;

    iget v1, v1, Liz;->c:I

    sget-object v2, Luu;->K:Luu;

    iget v2, v2, Luu;->bn:I

    if-ne v1, v2, :cond_28

    sget-object v1, Lep;->g:Lny;

    invoke-virtual {p1, v1}, Lgs;->a(Lvr;)V

    .line 145
    :cond_28
    iget-object v1, p0, Lhl;->a:Liz;

    iget v1, v1, Liz;->c:I

    sget-object v2, Lgm;->aD:Lgm;

    iget v2, v2, Lgm;->bf:I

    if-ne v1, v2, :cond_37

    sget-object v1, Lep;->t:Lny;

    invoke-virtual {p1, v1}, Lgs;->a(Lvr;)V

    .line 146
    :cond_37
    iget-object v1, p0, Lhl;->aI:Lfd;

    iget-object v2, p0, Lhl;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget-object v3, p0, Lhl;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    sub-float/2addr v2, v3

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const-string v3, "random.pop"

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, p0, v3, v4, v2}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 147
    invoke-virtual {p1, p0, v0}, Lgs;->b(Lsn;I)V

    .line 149
    iget-object p1, p0, Lhl;->a:Liz;

    iget p1, p1, Liz;->a:I

    if-gtz p1, :cond_64

    invoke-virtual {p0}, Lhl;->K()V

    :cond_64
    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 127
    iget v0, p0, Lhl;->f:I

    int-to-byte v0, v0

    int-to-short v0, v0

    const-string v1, "Health"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 128
    iget v0, p0, Lhl;->b:I

    int-to-short v0, v0

    const-string v1, "Age"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 129
    iget-object v0, p0, Lhl;->a:Liz;

    new-instance v1, Lnu;

    invoke-direct {v1}, Lnu;-><init>()V

    invoke-virtual {v0, v1}, Liz;->a(Lnu;)Lnu;

    move-result-object v0

    const-string v1, "Item"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Lnu;)V

    return-void
.end method

.method public k_()Z
    .registers 4

    .line 110
    iget-object v0, p0, Lhl;->aI:Lfd;

    iget-object v1, p0, Lhl;->aW:Leq;

    sget-object v2, Lln;->g:Lln;

    invoke-virtual {v0, v1, v2, p0}, Lfd;->a(Leq;Lln;Lsn;)Z

    move-result v0

    return v0
.end method

.method protected n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public w_()V
    .registers 8

    .line 59
    invoke-super {p0}, Lsn;->w_()V

    .line 60
    iget v0, p0, Lhl;->c:I

    if-lez v0, :cond_b

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lhl;->c:I

    .line 61
    :cond_b
    iget-wide v0, p0, Lhl;->aM:D

    iput-wide v0, p0, Lhl;->aJ:D

    .line 62
    iget-wide v0, p0, Lhl;->aN:D

    iput-wide v0, p0, Lhl;->aK:D

    .line 63
    iget-wide v0, p0, Lhl;->aO:D

    iput-wide v0, p0, Lhl;->aL:D

    .line 65
    iget-wide v0, p0, Lhl;->aQ:D

    const-wide v2, 0x3fa47ae140000000L    # 0.03999999910593033

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lhl;->aQ:D

    .line 66
    iget-object v0, p0, Lhl;->aI:Lfd;

    iget-wide v1, p0, Lhl;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    iget-wide v2, p0, Lhl;->aN:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    iget-wide v3, p0, Lhl;->aO:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lfd;->f(III)Lln;

    move-result-object v0

    sget-object v1, Lln;->h:Lln;

    if-ne v0, v1, :cond_7d

    const-wide v0, 0x3fc99999a0000000L    # 0.20000000298023224

    .line 67
    iput-wide v0, p0, Lhl;->aQ:D

    .line 68
    iget-object v0, p0, Lhl;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Lhl;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-double v2, v0

    iput-wide v2, p0, Lhl;->aP:D

    .line 69
    iget-object v0, p0, Lhl;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v2, p0, Lhl;->bs:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lhl;->aR:D

    .line 70
    iget-object v0, p0, Lhl;->aI:Lfd;

    iget-object v1, p0, Lhl;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v1, v3

    const-string v3, "random.fizz"

    invoke-virtual {v0, p0, v3, v2, v1}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 72
    :cond_7d
    iget-wide v1, p0, Lhl;->aM:D

    iget-object v0, p0, Lhl;->aW:Leq;

    iget-wide v3, v0, Leq;->b:D

    iget-object v0, p0, Lhl;->aW:Leq;

    iget-wide v5, v0, Leq;->e:D

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    iget-wide v5, p0, Lhl;->aO:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lhl;->c(DDD)Z

    .line 73
    iget-wide v1, p0, Lhl;->aP:D

    iget-wide v3, p0, Lhl;->aQ:D

    iget-wide v5, p0, Lhl;->aR:D

    invoke-virtual/range {v0 .. v6}, Lhl;->b(DDD)V

    .line 77
    iget-boolean v0, p0, Lhl;->aX:Z

    const v1, 0x3f7ae148    # 0.98f

    if-eqz v0, :cond_ca

    .line 79
    iget-object v0, p0, Lhl;->aI:Lfd;

    iget-wide v2, p0, Lhl;->aM:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    iget-object v3, p0, Lhl;->aW:Leq;

    iget-wide v3, v3, Leq;->b:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-wide v4, p0, Lhl;->aO:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lfd;->a(III)I

    move-result v0

    if-lez v0, :cond_c7

    .line 81
    sget-object v2, Luu;->m:[Luu;

    aget-object v0, v2, v0

    iget v0, v0, Luu;->bB:F

    mul-float/2addr v1, v0

    goto :goto_ca

    :cond_c7
    const v1, 0x3f16872c    # 0.58800006f

    .line 85
    :cond_ca
    :goto_ca
    iget-wide v2, p0, Lhl;->aP:D

    float-to-double v0, v1

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lhl;->aP:D

    .line 86
    iget-wide v2, p0, Lhl;->aQ:D

    const-wide v4, 0x3fef5c2900000000L    # 0.9800000190734863

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lhl;->aQ:D

    .line 87
    iget-wide v2, p0, Lhl;->aR:D

    mul-double/2addr v2, v0

    iput-wide v2, p0, Lhl;->aR:D

    .line 97
    iget-boolean v0, p0, Lhl;->aX:Z

    if-eqz v0, :cond_ea

    .line 98
    iget-wide v0, p0, Lhl;->aQ:D

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lhl;->aQ:D

    .line 101
    :cond_ea
    iget v0, p0, Lhl;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhl;->e:I

    .line 102
    iget v0, p0, Lhl;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhl;->b:I

    const/16 v1, 0x1770

    if-lt v0, v1, :cond_fd

    .line 104
    invoke-virtual {p0}, Lhl;->K()V

    :cond_fd
    return-void
.end method
