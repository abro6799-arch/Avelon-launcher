###### Class defpackage.ww (ww)
.class public Lww;
.super Lbg;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:F

.field public c:F

.field public f:F

.field public g:F

.field public h:F

.field public i:I


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Lbg;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lww;->a:Z

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lww;->b:F

    .line 11
    iput p1, p0, Lww;->c:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    iput p1, p0, Lww;->h:F

    const-string p1, "/mob/chicken.png"

    .line 18
    iput-object p1, p0, Lww;->O:Ljava/lang/String;

    const p1, 0x3e99999a    # 0.3f

    const v0, 0x3ecccccd    # 0.4f

    .line 19
    invoke-virtual {p0, p1, v0}, Lww;->b(FF)V

    const/4 p1, 0x4

    .line 20
    iput p1, p0, Lww;->Y:I

    .line 21
    iget-object p1, p0, Lww;->bs:Ljava/util/Random;

    const/16 v0, 0x1770

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lww;->i:I

    return-void
.end method


# virtual methods
.method public a(Lnu;)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lbg;->a(Lnu;)V

    return-void
.end method

.method protected b(F)V
    .registers 2

    return-void
.end method

.method public b(Lnu;)V
    .registers 2

    .line 55
    invoke-super {p0, p1}, Lbg;->b(Lnu;)V

    return-void
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.chicken"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.chickenhurt"

    return-object v0
.end method

.method protected j()I
    .registers 2

    .line 75
    sget-object v0, Lgm;->J:Lgm;

    iget v0, v0, Lgm;->bf:I

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.chickenhurt"

    return-object v0
.end method

.method public o()V
    .registers 7

    .line 25
    invoke-super {p0}, Lbg;->o()V

    .line 27
    iget v0, p0, Lww;->b:F

    iput v0, p0, Lww;->g:F

    .line 28
    iget v0, p0, Lww;->c:F

    iput v0, p0, Lww;->f:F

    float-to-double v0, v0

    .line 30
    iget-boolean v2, p0, Lww;->aX:Z

    if-eqz v2, :cond_12

    const/4 v2, -0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x4

    :goto_13
    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lww;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_25

    .line 31
    iput v1, p0, Lww;->c:F

    .line 32
    :cond_25
    iget v0, p0, Lww;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2f

    iput v1, p0, Lww;->c:F

    .line 34
    :cond_2f
    iget-boolean v0, p0, Lww;->aX:Z

    if-nez v0, :cond_3b

    iget v0, p0, Lww;->h:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3b

    iput v1, p0, Lww;->h:F

    .line 35
    :cond_3b
    iget v0, p0, Lww;->h:F

    float-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-float v0, v2

    iput v0, p0, Lww;->h:F

    .line 37
    iget-boolean v0, p0, Lww;->aX:Z

    if-nez v0, :cond_5d

    iget-wide v2, p0, Lww;->aQ:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_5d

    .line 38
    iget-wide v2, p0, Lww;->aQ:D

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lww;->aQ:D

    .line 41
    :cond_5d
    iget v0, p0, Lww;->b:F

    iget v2, p0, Lww;->h:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lww;->b:F

    .line 43
    iget-object v0, p0, Lww;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_a0

    iget v0, p0, Lww;->i:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lww;->i:I

    if-gtz v0, :cond_a0

    .line 44
    iget-object v0, p0, Lww;->aI:Lfd;

    iget-object v3, p0, Lww;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget-object v4, p0, Lww;->bs:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    sub-float/2addr v3, v4

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    const-string v4, "mob.chickenplop"

    invoke-virtual {v0, p0, v4, v1, v3}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 45
    sget-object v0, Lgm;->aN:Lgm;

    iget v0, v0, Lgm;->bf:I

    invoke-virtual {p0, v0, v2}, Lww;->b(II)Lhl;

    .line 46
    iget-object v0, p0, Lww;->bs:Ljava/util/Random;

    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lww;->i:I

    :cond_a0
    return-void
.end method
