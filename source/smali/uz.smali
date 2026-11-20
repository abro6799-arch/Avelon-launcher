###### Class defpackage.uz (uz)
.class public Luz;
.super Lgz;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lgz;-><init>(Lfd;)V

    const-string p1, "/mob/zombie.png"

    .line 10
    iput-object p1, p0, Luz;->O:Ljava/lang/String;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 11
    iput p1, p0, Luz;->aB:F

    const/4 p1, 0x5

    .line 12
    iput p1, p0, Luz;->c:I

    return-void
.end method


# virtual methods
.method protected g()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.zombie"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.zombiedeath"

    return-object v0
.end method

.method protected j()I
    .registers 2

    .line 40
    sget-object v0, Lgm;->J:Lgm;

    iget v0, v0, Lgm;->bf:I

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.zombiehurt"

    return-object v0
.end method

.method public o()V
    .registers 7

    .line 16
    iget-object v0, p0, Luz;->aI:Lfd;

    invoke-virtual {v0}, Lfd;->f()Z

    move-result v0

    if-eqz v0, :cond_46

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {p0, v0}, Luz;->a(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_46

    .line 19
    iget-object v1, p0, Luz;->aI:Lfd;

    iget-wide v2, p0, Luz;->aM:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    iget-wide v3, p0, Luz;->aN:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    iget-wide v4, p0, Luz;->aO:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lfd;->l(III)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Luz;->bs:Ljava/util/Random;

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

    .line 20
    iput v0, p0, Luz;->bv:I

    .line 24
    :cond_46
    invoke-super {p0}, Lgz;->o()V

    return-void
.end method
