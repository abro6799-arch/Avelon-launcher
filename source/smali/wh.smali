###### Class defpackage.wh (wh)
.class public Lwh;
.super Lbg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lbg;-><init>(Lfd;)V

    const-string p1, "/mob/pig.png"

    .line 18
    iput-object p1, p0, Lwh;->O:Ljava/lang/String;

    const p1, 0x3f666666    # 0.9f

    .line 19
    invoke-virtual {p0, p1, p1}, Lwh;->b(FF)V

    return-void
.end method


# virtual methods
.method public a(Lc;)V
    .registers 11

    .line 75
    iget-object p1, p0, Lwh;->aI:Lfd;

    iget-boolean p1, p1, Lfd;->B:Z

    if-eqz p1, :cond_7

    return-void

    .line 77
    :cond_7
    new-instance p1, Lya;

    iget-object v0, p0, Lwh;->aI:Lfd;

    invoke-direct {p1, v0}, Lya;-><init>(Lfd;)V

    .line 78
    iget-wide v1, p0, Lwh;->aM:D

    iget-wide v3, p0, Lwh;->aN:D

    iget-wide v5, p0, Lwh;->aO:D

    iget v7, p0, Lwh;->aS:F

    iget v8, p0, Lwh;->aT:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lya;->c(DDDFF)V

    .line 79
    iget-object v0, p0, Lwh;->aI:Lfd;

    invoke-virtual {v0, p1}, Lfd;->b(Lsn;)Z

    .line 80
    invoke-virtual {p0}, Lwh;->K()V

    return-void
.end method

.method public a(Lnu;)V
    .registers 3

    .line 33
    invoke-super {p0, p1}, Lbg;->a(Lnu;)V

    const-string v0, "Saddle"

    .line 34
    invoke-virtual {p1, v0}, Lnu;->m(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lwh;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    const/16 v0, 0x10

    if-eqz p1, :cond_f

    .line 68
    iget-object p1, p0, Lwh;->bD:Lud;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lud;->b(ILjava/lang/Object;)V

    goto :goto_19

    .line 70
    :cond_f
    iget-object p1, p0, Lwh;->bD:Lud;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lud;->b(ILjava/lang/Object;)V

    :goto_19
    return-void
.end method

.method public a(Lgs;)Z
    .registers 3

    .line 50
    invoke-virtual {p0}, Lwh;->v()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lwh;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lwh;->aG:Lsn;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lwh;->aG:Lsn;

    if-ne v0, p1, :cond_19

    .line 51
    :cond_14
    invoke-virtual {p1, p0}, Lgs;->i(Lsn;)V

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .registers 4

    .line 24
    iget-object v0, p0, Lwh;->bD:Lud;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lud;->a(ILjava/lang/Object;)V

    return-void
.end method

.method protected b(F)V
    .registers 3

    .line 84
    invoke-super {p0, p1}, Lbg;->b(F)V

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_18

    .line 86
    iget-object p1, p0, Lwh;->aG:Lsn;

    instance-of p1, p1, Lgs;

    if-eqz p1, :cond_18

    .line 87
    iget-object p1, p0, Lwh;->aG:Lsn;

    check-cast p1, Lgs;

    sget-object v0, Lep;->u:Lny;

    invoke-virtual {p1, v0}, Lgs;->a(Lvr;)V

    :cond_18
    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 28
    invoke-super {p0, p1}, Lbg;->b(Lnu;)V

    const-string v0, "Saddle"

    .line 29
    invoke-virtual {p0}, Lwh;->v()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.pig"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.pigdeath"

    return-object v0
.end method

.method protected j()I
    .registers 2

    .line 58
    iget v0, p0, Lwh;->bv:I

    if-lez v0, :cond_9

    sget-object v0, Lgm;->ap:Lgm;

    iget v0, v0, Lgm;->bf:I

    return v0

    .line 59
    :cond_9
    sget-object v0, Lgm;->ao:Lgm;

    iget v0, v0, Lgm;->bf:I

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.pig"

    return-object v0
.end method

.method public v()Z
    .registers 3

    .line 63
    iget-object v0, p0, Lwh;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method
