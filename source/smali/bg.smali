###### Class defpackage.bg (bg)
.class public abstract Lbg;
.super Lii;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lii;-><init>(Lfd;)V

    return-void
.end method


# virtual methods
.method protected a(III)F
    .registers 6

    .line 17
    iget-object v0, p0, Lbg;->aI:Lfd;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, p1, v1, p3}, Lfd;->a(III)I

    move-result v0

    sget-object v1, Luu;->v:Lwp;

    iget v1, v1, Lwp;->bn:I

    if-ne v0, v1, :cond_11

    const/high16 p1, 0x41200000    # 10.0f

    return p1

    .line 18
    :cond_11
    iget-object v0, p0, Lbg;->aI:Lfd;

    invoke-virtual {v0, p1, p2, p3}, Lfd;->c(III)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    return p1
.end method

.method public a(Lnu;)V
    .registers 2

    .line 26
    invoke-super {p0, p1}, Lii;->a(Lnu;)V

    return-void
.end method

.method public b(Lnu;)V
    .registers 2

    .line 22
    invoke-super {p0, p1}, Lii;->b(Lnu;)V

    return-void
.end method

.method public d()Z
    .registers 6

    .line 30
    iget-wide v0, p0, Lbg;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 31
    iget-object v1, p0, Lbg;->aW:Leq;

    iget-wide v1, v1, Leq;->b:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 32
    iget-wide v2, p0, Lbg;->aO:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    .line 33
    iget-object v3, p0, Lbg;->aI:Lfd;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v0, v4, v2}, Lfd;->a(III)I

    move-result v3

    sget-object v4, Luu;->v:Lwp;

    iget v4, v4, Lwp;->bn:I

    if-ne v3, v4, :cond_34

    iget-object v3, p0, Lbg;->aI:Lfd;

    invoke-virtual {v3, v0, v1, v2}, Lfd;->m(III)I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_34

    invoke-super {p0}, Lii;->d()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0
.end method

.method public e()I
    .registers 2

    const/16 v0, 0x78

    return v0
.end method
