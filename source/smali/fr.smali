###### Class defpackage.fr (fr)
.class public Lfr;
.super Lgz;
.source "SourceFile"


# static fields
.field private static final a:Liz;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 95
    new-instance v0, Liz;

    sget-object v1, Lgm;->i:Lgm;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Liz;-><init>(Lgm;I)V

    sput-object v0, Lfr;->a:Liz;

    return-void
.end method

.method public constructor <init>(Lfd;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lgz;-><init>(Lfd;)V

    const-string p1, "/mob/skeleton.png"

    .line 15
    iput-object p1, p0, Lfr;->O:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lnu;)V
    .registers 2

    .line 74
    invoke-super {p0, p1}, Lgz;->a(Lnu;)V

    return-void
.end method

.method protected a(Lsn;F)V
    .registers 16

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_8b

    .line 47
    iget-wide v0, p1, Lsn;->aM:D

    iget-wide v2, p0, Lfr;->aM:D

    sub-double/2addr v0, v2

    .line 48
    iget-wide v2, p1, Lsn;->aO:D

    iget-wide v4, p0, Lfr;->aO:D

    sub-double/2addr v2, v4

    .line 50
    iget p2, p0, Lfr;->ae:I

    if-nez p2, :cond_72

    .line 51
    new-instance v4, Lsl;

    iget-object p2, p0, Lfr;->aI:Lfd;

    invoke-direct {v4, p2, p0}, Lsl;-><init>(Lfd;Lls;)V

    .line 52
    iget-wide v5, v4, Lsl;->aN:D

    const-wide v7, 0x3ff6666660000000L    # 1.399999976158142

    add-double/2addr v5, v7

    iput-wide v5, v4, Lsl;->aN:D

    .line 54
    iget-wide v5, p1, Lsn;->aN:D

    invoke-virtual {p1}, Lsn;->w()F

    move-result p1

    float-to-double p1, p1

    add-double/2addr v5, p1

    const-wide p1, 0x3fc99999a0000000L    # 0.20000000298023224

    sub-double/2addr v5, p1

    iget-wide p1, v4, Lsl;->aN:D

    sub-double/2addr v5, p1

    mul-double p1, v0, v0

    mul-double v7, v2, v2

    add-double/2addr p1, v7

    .line 56
    invoke-static {p1, p2}, Lin;->a(D)F

    move-result p1

    const p2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p2

    .line 58
    iget-object p2, p0, Lfr;->aI:Lfd;

    iget-object v7, p0, Lfr;->bs:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const v8, 0x3ecccccd    # 0.4f

    mul-float/2addr v7, v8

    const v8, 0x3f4ccccd    # 0.8f

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v7, v8, v7

    const-string v9, "random.bow"

    invoke-virtual {p2, p0, v9, v8, v7}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 59
    iget-object p2, p0, Lfr;->aI:Lfd;

    invoke-virtual {p2, v4}, Lfd;->b(Lsn;)Z

    float-to-double p1, p1

    add-double v7, v5, p1

    const v11, 0x3f19999a    # 0.6f

    const/high16 v12, 0x41400000    # 12.0f

    move-wide v5, v0

    move-wide v9, v2

    .line 60
    invoke-virtual/range {v4 .. v12}, Lsl;->a(DDDFF)V

    const/16 p1, 0x1e

    .line 61
    iput p1, p0, Lfr;->ae:I

    .line 63
    :cond_72
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, v0

    const-wide v0, 0x400921fb60000000L    # 3.1415927410125732

    div-double/2addr p1, v0

    double-to-float p1, p1

    const/high16 p2, 0x42b40000    # 90.0f

    sub-float/2addr p1, p2

    iput p1, p0, Lfr;->aS:F

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lfr;->e:Z

    :cond_8b
    return-void
.end method

.method public b(Lnu;)V
    .registers 2

    .line 70
    invoke-super {p0, p1}, Lgz;->b(Lnu;)V

    return-void
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.skeleton"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.skeletonhurt"

    return-object v0
.end method

.method protected j()I
    .registers 2

    .line 78
    sget-object v0, Lgm;->j:Lgm;

    iget v0, v0, Lgm;->bf:I

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.skeletonhurt"

    return-object v0
.end method

.method public o()V
    .registers 7

    .line 33
    iget-object v0, p0, Lfr;->aI:Lfd;

    invoke-virtual {v0}, Lfd;->f()Z

    move-result v0

    if-eqz v0, :cond_46

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    invoke-virtual {p0, v0}, Lfr;->a(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_46

    .line 36
    iget-object v1, p0, Lfr;->aI:Lfd;

    iget-wide v2, p0, Lfr;->aM:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    iget-wide v3, p0, Lfr;->aN:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    iget-wide v4, p0, Lfr;->aO:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lfd;->l(III)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lfr;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_46

    const/16 v0, 0x12c

    .line 37
    iput v0, p0, Lfr;->bv:I

    .line 42
    :cond_46
    invoke-super {p0}, Lgz;->o()V

    return-void
.end method

.method protected q()V
    .registers 7

    .line 84
    iget-object v0, p0, Lfr;->bs:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    const/4 v4, 0x1

    if-ge v3, v0, :cond_16

    .line 86
    sget-object v5, Lgm;->j:Lgm;

    iget v5, v5, Lgm;->bf:I

    invoke-virtual {p0, v5, v4}, Lfr;->b(II)Lhl;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 89
    :cond_16
    iget-object v0, p0, Lfr;->bs:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    :goto_1c
    if-ge v2, v0, :cond_28

    .line 91
    sget-object v1, Lgm;->aV:Lgm;

    iget v1, v1, Lgm;->bf:I

    invoke-virtual {p0, v1, v4}, Lfr;->b(II)Lhl;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_28
    return-void
.end method

.method public r_()Liz;
    .registers 2

    .line 98
    sget-object v0, Lfr;->a:Liz;

    return-object v0
.end method
