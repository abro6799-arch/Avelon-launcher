###### Class defpackage.wd (wd)
.class public Lwd;
.super Lxa;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lxa;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JF)F
    .registers 4

    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public a()V
    .registers 8

    .line 13
    new-instance v6, Lhd;

    sget-object v1, Lkd;->l:Lkd;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lhd;-><init>(Lkd;DD)V

    iput-object v6, p0, Lwd;->b:Lxv;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lwd;->c:Z

    .line 15
    iput-boolean v0, p0, Lwd;->d:Z

    .line 16
    iput-boolean v0, p0, Lwd;->e:Z

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lwd;->g:I

    return-void
.end method

.method public a(II)Z
    .registers 4

    .line 37
    iget-object v0, p0, Lwd;->a:Lfd;

    invoke-virtual {v0, p1, p2}, Lfd;->a(II)I

    move-result p1

    .line 39
    sget-object p2, Luu;->A:Luu;

    iget p2, p2, Luu;->bn:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_e

    return v0

    :cond_e
    if-nez p1, :cond_11

    return v0

    .line 41
    :cond_11
    sget-object p2, Luu;->o:[Z

    aget-boolean p1, p2, p1

    if-nez p1, :cond_18

    return v0

    :cond_18
    const/4 p1, 0x1

    return p1
.end method

.method public b(FF)Lbt;
    .registers 9

    const-wide v0, 0x3fc99999a0000000L    # 0.20000000298023224

    const-wide v2, 0x3f9eb851e0000000L    # 0.029999999329447746

    const-wide v4, 0x3f9eb851e0000000L    # 0.029999999329447746

    .line 21
    invoke-static/range {v0 .. v5}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcl;
    .registers 5

    .line 33
    new-instance v0, Lqn;

    iget-object v1, p0, Lwd;->a:Lfd;

    iget-object v2, p0, Lwd;->a:Lfd;

    invoke-virtual {v2}, Lfd;->s()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lqn;-><init>(Lfd;J)V

    return-object v0
.end method

.method protected e()V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xf

    if-gt v0, v1, :cond_23

    int-to-float v1, v0

    const/high16 v2, 0x41700000    # 15.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 28
    iget-object v3, p0, Lwd;->f:[F

    sub-float v4, v2, v1

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v1, v5

    add-float/2addr v1, v2

    div-float/2addr v4, v1

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v4, v1

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v4, v1

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
