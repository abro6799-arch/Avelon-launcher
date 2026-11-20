###### Class defpackage.uw (uw)
.class public Luw;
.super Lls;
.source "SourceFile"

# interfaces
.implements Lff;


# instance fields
.field public a:F

.field public b:F

.field private c:I


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 4

    .line 22
    invoke-direct {p0, p1}, Lls;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Luw;->c:I

    const-string p1, "/mob/slime.png"

    .line 23
    iput-object p1, p0, Luw;->O:Ljava/lang/String;

    .line 24
    iget-object p1, p0, Luw;->bs:Ljava/util/Random;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Luw;->bf:F

    .line 26
    iget-object v0, p0, Luw;->bs:Ljava/util/Random;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Luw;->c:I

    .line 27
    invoke-virtual {p0, p1}, Luw;->e(I)V

    return-void
.end method


# virtual methods
.method public K()V
    .registers 18

    move-object/from16 v0, p0

    .line 108
    invoke-virtual/range {p0 .. p0}, Luw;->v()I

    move-result v1

    .line 109
    iget-object v2, v0, Luw;->aI:Lfd;

    iget-boolean v2, v2, Lfd;->B:Z

    if-nez v2, :cond_5b

    const/4 v2, 0x1

    if-le v1, v2, :cond_5b

    iget v2, v0, Luw;->Y:I

    if-nez v2, :cond_5b

    const/4 v2, 0x0

    :goto_14
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5b

    .line 111
    rem-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    int-to-float v5, v1

    mul-float/2addr v3, v5

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v3, v6

    .line 112
    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    sub-float/2addr v7, v4

    mul-float/2addr v7, v5

    div-float/2addr v7, v6

    .line 113
    new-instance v4, Luw;

    iget-object v5, v0, Luw;->aI:Lfd;

    invoke-direct {v4, v5}, Luw;-><init>(Lfd;)V

    .line 114
    div-int/lit8 v5, v1, 0x2

    invoke-virtual {v4, v5}, Luw;->e(I)V

    .line 115
    iget-wide v5, v0, Luw;->aM:D

    float-to-double v8, v3

    add-double v9, v5, v8

    iget-wide v5, v0, Luw;->aN:D

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v5

    iget-wide v5, v0, Luw;->aO:D

    float-to-double v7, v7

    add-double v13, v5, v7

    iget-object v3, v0, Luw;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float v15, v3, v5

    const/16 v16, 0x0

    move-object v8, v4

    invoke-virtual/range {v8 .. v16}, Luw;->c(DDDFF)V

    .line 116
    iget-object v3, v0, Luw;->aI:Lfd;

    invoke-virtual {v3, v4}, Lfd;->b(Lsn;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 119
    :cond_5b
    invoke-super/range {p0 .. p0}, Lls;->K()V

    return-void
.end method

.method public a(Lnu;)V
    .registers 3

    .line 54
    invoke-super {p0, p1}, Lls;->a(Lnu;)V

    const-string v0, "Size"

    .line 55
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Luw;->e(I)V

    return-void
.end method

.method protected b()V
    .registers 4

    .line 32
    invoke-super {p0}, Lls;->b()V

    .line 34
    iget-object v0, p0, Luw;->bD:Lud;

    new-instance v1, Ljava/lang/Byte;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lud;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Lgs;)V
    .registers 9

    .line 123
    invoke-virtual {p0}, Luw;->v()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3e

    .line 125
    invoke-virtual {p0, p1}, Luw;->e(Lsn;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {p0, p1}, Luw;->f(Lsn;)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    int-to-double v5, v0

    mul-double/2addr v5, v3

    cmpg-double v1, v1, v5

    if-gez v1, :cond_3e

    .line 126
    invoke-virtual {p1, p0, v0}, Lgs;->a(Lsn;I)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 127
    iget-object p1, p0, Luw;->aI:Lfd;

    iget-object v0, p0, Luw;->bs:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Luw;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const-string v2, "mob.slimeattack"

    invoke-virtual {p1, p0, v2, v1, v0}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    :cond_3e
    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 49
    invoke-super {p0, p1}, Lls;->b(Lnu;)V

    .line 50
    invoke-virtual {p0}, Luw;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "Size"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public d()Z
    .registers 7

    .line 148
    iget-object v0, p0, Luw;->aI:Lfd;

    iget-wide v1, p0, Luw;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    iget-wide v2, p0, Luw;->aO:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfd;->b(II)Llm;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Luw;->v()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    iget-object v1, p0, Luw;->aI:Lfd;

    iget v1, v1, Lfd;->q:I

    if-lez v1, :cond_3f

    :cond_1f
    iget-object v1, p0, Luw;->bs:Ljava/util/Random;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_3f

    const-wide/32 v4, 0x3ad8025f

    invoke-virtual {v0, v4, v5}, Llm;->a(J)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_3f

    iget-wide v0, p0, Luw;->aN:D

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    cmpg-double v0, v0, v3

    if-gez v0, :cond_3f

    return v2

    :cond_3f
    const/4 v0, 0x0

    return v0
.end method

.method public e(I)V
    .registers 9

    .line 38
    iget-object v0, p0, Luw;->bD:Lud;

    new-instance v1, Ljava/lang/Byte;

    int-to-byte v2, p1

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lud;->b(ILjava/lang/Object;)V

    const v0, 0x3f19999a    # 0.6f

    int-to-float v1, p1

    mul-float/2addr v1, v0

    .line 39
    invoke-virtual {p0, v1, v1}, Luw;->b(FF)V

    mul-int/2addr p1, p1

    .line 40
    iput p1, p0, Luw;->Y:I

    .line 41
    iget-wide v1, p0, Luw;->aM:D

    iget-wide v3, p0, Luw;->aN:D

    iget-wide v5, p0, Luw;->aO:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Luw;->e(DDD)V

    return-void
.end method

.method protected f_()V
    .registers 7

    .line 81
    invoke-virtual {p0}, Luw;->X()V

    .line 82
    iget-object v0, p0, Luw;->aI:Lfd;

    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    invoke-virtual {v0, p0, v1, v2}, Lfd;->a(Lsn;D)Lgs;

    move-result-object v0

    if-eqz v0, :cond_14

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41a00000    # 20.0f

    .line 84
    invoke-virtual {p0, v0, v1, v2}, Luw;->a(Lsn;FF)V

    .line 86
    :cond_14
    iget-boolean v1, p0, Luw;->aX:Z

    if-eqz v1, :cond_75

    iget v1, p0, Luw;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Luw;->c:I

    if-gtz v1, :cond_75

    .line 87
    iget-object v1, p0, Luw;->bs:Ljava/util/Random;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Luw;->c:I

    if-eqz v0, :cond_32

    .line 89
    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Luw;->c:I

    :cond_32
    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Luw;->az:Z

    .line 92
    invoke-virtual {p0}, Luw;->v()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-le v1, v0, :cond_5e

    .line 93
    iget-object v1, p0, Luw;->aI:Lfd;

    invoke-virtual {p0}, Luw;->k()F

    move-result v3

    iget-object v4, p0, Luw;->bs:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget-object v5, p0, Luw;->bs:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    sub-float/2addr v4, v5

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    const-string v5, "mob.slime"

    invoke-virtual {v1, p0, v5, v3, v4}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 96
    :cond_5e
    iput v2, p0, Luw;->a:F

    .line 97
    iget-object v1, p0, Luw;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    iput v2, p0, Luw;->aw:F

    .line 98
    invoke-virtual {p0}, Luw;->v()I

    move-result v1

    mul-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Luw;->ax:F

    goto :goto_81

    :cond_75
    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Luw;->az:Z

    .line 101
    iget-boolean v0, p0, Luw;->aX:Z

    if-eqz v0, :cond_81

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Luw;->ax:F

    iput v0, p0, Luw;->aw:F

    :cond_81
    :goto_81
    return-void
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.slime"

    return-object v0
.end method

.method protected j()I
    .registers 3

    .line 143
    invoke-virtual {p0}, Luw;->v()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    sget-object v0, Lgm;->aK:Lgm;

    iget v0, v0, Lgm;->bf:I

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.slime"

    return-object v0
.end method

.method protected k()F
    .registers 2

    const v0, 0x3f19999a    # 0.6f

    return v0
.end method

.method public v()I
    .registers 3

    .line 45
    iget-object v0, p0, Luw;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    return v0
.end method

.method public w_()V
    .registers 22

    move-object/from16 v0, p0

    .line 59
    iget v1, v0, Luw;->a:F

    iput v1, v0, Luw;->b:F

    .line 60
    iget-boolean v1, v0, Luw;->aX:Z

    .line 61
    invoke-super/range {p0 .. p0}, Lls;->w_()V

    .line 62
    iget-boolean v2, v0, Luw;->aX:Z

    if-eqz v2, :cond_86

    if-nez v1, :cond_86

    .line 63
    invoke-virtual/range {p0 .. p0}, Luw;->v()I

    move-result v1

    const/4 v2, 0x0

    :goto_16
    mul-int/lit8 v3, v1, 0x8

    if-ge v2, v3, :cond_5c

    .line 65
    iget-object v3, v0, Luw;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    .line 66
    iget-object v4, v0, Luw;->bs:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v5

    .line 67
    invoke-static {v3}, Lin;->a(F)F

    move-result v6

    int-to-float v7, v1

    mul-float/2addr v6, v7

    mul-float/2addr v6, v5

    mul-float/2addr v6, v4

    .line 68
    invoke-static {v3}, Lin;->b(F)F

    move-result v3

    mul-float/2addr v3, v7

    mul-float/2addr v3, v5

    mul-float/2addr v3, v4

    .line 69
    iget-object v7, v0, Luw;->aI:Lfd;

    const-string v8, "slime"

    iget-wide v4, v0, Luw;->aM:D

    float-to-double v9, v6

    add-double/2addr v9, v4

    iget-object v4, v0, Luw;->aW:Leq;

    iget-wide v11, v4, Leq;->b:D

    iget-wide v4, v0, Luw;->aO:D

    float-to-double v13, v3

    add-double/2addr v13, v4

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v7 .. v20}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_5c
    const/4 v2, 0x2

    if-le v1, v2, :cond_82

    .line 73
    iget-object v1, v0, Luw;->aI:Lfd;

    invoke-virtual/range {p0 .. p0}, Luw;->k()F

    move-result v2

    iget-object v3, v0, Luw;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget-object v4, v0, Luw;->bs:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    sub-float/2addr v3, v4

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    const v4, 0x3f4ccccd    # 0.8f

    div-float/2addr v3, v4

    const-string v4, "mob.slime"

    invoke-virtual {v1, v0, v4, v2, v3}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    :cond_82
    const/high16 v1, -0x41000000    # -0.5f

    .line 75
    iput v1, v0, Luw;->a:F

    .line 77
    :cond_86
    iget v1, v0, Luw;->a:F

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    iput v1, v0, Luw;->a:F

    return-void
.end method
