###### Class defpackage.bx (bx)
.class public Lbx;
.super Lbg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lbg;-><init>(Lfd;)V

    const-string p1, "/mob/cow.png"

    .line 14
    iput-object p1, p0, Lbx;->O:Ljava/lang/String;

    const p1, 0x3f666666    # 0.9f

    const v0, 0x3fa66666    # 1.3f

    .line 15
    invoke-virtual {p0, p1, v0}, Lbx;->b(FF)V

    return-void
.end method


# virtual methods
.method public a(Lnu;)V
    .registers 2

    .line 23
    invoke-super {p0, p1}, Lbg;->a(Lnu;)V

    return-void
.end method

.method public a(Lgs;)Z
    .registers 5

    .line 47
    iget-object v0, p1, Lgs;->c:Lix;

    invoke-virtual {v0}, Lix;->b()Liz;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 48
    iget v0, v0, Liz;->c:I

    sget-object v1, Lgm;->au:Lgm;

    iget v1, v1, Lgm;->bf:I

    if-ne v0, v1, :cond_22

    .line 49
    iget-object v0, p1, Lgs;->c:Lix;

    iget-object p1, p1, Lgs;->c:Lix;

    iget p1, p1, Lix;->c:I

    new-instance v1, Liz;

    sget-object v2, Lgm;->aE:Lgm;

    invoke-direct {v1, v2}, Liz;-><init>(Lgm;)V

    invoke-virtual {v0, p1, v1}, Lix;->a(ILiz;)V

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lnu;)V
    .registers 2

    .line 19
    invoke-super {p0, p1}, Lbg;->b(Lnu;)V

    return-void
.end method

.method protected g()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.cow"

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.cowhurt"

    return-object v0
.end method

.method protected j()I
    .registers 2

    .line 43
    sget-object v0, Lgm;->aD:Lgm;

    iget v0, v0, Lgm;->bf:I

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.cowhurt"

    return-object v0
.end method

.method protected k()F
    .registers 2

    const v0, 0x3ecccccd    # 0.4f

    return v0
.end method
