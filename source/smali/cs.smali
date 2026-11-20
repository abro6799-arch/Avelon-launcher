###### Class defpackage.cs (cs)
.class public Lcs;
.super Lgm;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/16 p1, 0x40

    .line 10
    invoke-virtual {p0, p1}, Lcs;->e(I)Lgm;

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcs;->d(I)Lgm;

    return-void
.end method


# virtual methods
.method public a(Liz;Lfd;Lgs;)Liz;
    .registers 7

    .line 23
    iget-object v0, p3, Lgs;->D:Llx;

    if-eqz v0, :cond_11

    .line 24
    iget-object p2, p3, Lgs;->D:Llx;

    invoke-virtual {p2}, Llx;->k()I

    move-result p2

    .line 25
    invoke-virtual {p1, p2, p3}, Liz;->a(ILsn;)V

    .line 26
    invoke-virtual {p3}, Lgs;->J()V

    goto :goto_36

    .line 28
    :cond_11
    sget-object v0, Lcs;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    const v2, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v2

    div-float/2addr v1, v0

    const-string v0, "random.bow"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p2, p3, v0, v2, v1}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 29
    iget-boolean v0, p2, Lfd;->B:Z

    if-nez v0, :cond_33

    .line 30
    new-instance v0, Llx;

    invoke-direct {v0, p2, p3}, Llx;-><init>(Lfd;Lgs;)V

    invoke-virtual {p2, v0}, Lfd;->b(Lsn;)Z

    .line 32
    :cond_33
    invoke-virtual {p3}, Lgs;->J()V

    :goto_36
    return-object p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
