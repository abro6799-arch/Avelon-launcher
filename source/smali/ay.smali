###### Class defpackage.ay (ay)
.class public Lay;
.super Lxa;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lxa;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JF)F
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public a()V
    .registers 8

    .line 14
    new-instance v6, Lhd;

    sget-object v1, Lkd;->m:Lkd;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/16 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lhd;-><init>(Lkd;DD)V

    iput-object v6, p0, Lay;->b:Lxv;

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lay;->g:I

    return-void
.end method

.method public a(II)Z
    .registers 4

    .line 56
    iget-object v0, p0, Lay;->a:Lfd;

    invoke-virtual {v0, p1, p2}, Lfd;->a(II)I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 60
    :cond_a
    sget-object p2, Luu;->m:[Luu;

    aget-object p1, p2, p1

    iget-object p1, p1, Luu;->bA:Lln;

    invoke-virtual {p1}, Lln;->c()Z

    move-result p1

    return p1
.end method

.method public a(FF)[F
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(FF)Lbt;
    .registers 12

    const p2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    .line 32
    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_15

    move p1, p2

    :cond_15
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p2

    if-lez v0, :cond_1c

    move p1, p2

    :cond_1c
    const/16 p2, 0x80

    int-to-float v0, p2

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    int-to-float p2, p2

    div-float/2addr p2, v1

    const/16 v2, 0xa0

    int-to-float v2, v2

    div-float/2addr v2, v1

    const v1, 0x3f70a3d7    # 0.94f

    mul-float/2addr v1, p1

    const v3, 0x3d75c28f    # 0.06f

    add-float/2addr v1, v3

    mul-float/2addr v0, v1

    mul-float/2addr p2, v1

    const v1, 0x3f68f5c3    # 0.91f

    mul-float/2addr p1, v1

    const v1, 0x3db851ec    # 0.09f

    add-float/2addr p1, v1

    mul-float/2addr v2, p1

    float-to-double v3, v0

    float-to-double v5, p2

    float-to-double v7, v2

    .line 43
    invoke-static/range {v3 .. v8}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcl;
    .registers 5

    .line 19
    new-instance v0, Ljd;

    iget-object v1, p0, Lay;->a:Lfd;

    iget-object v2, p0, Lay;->a:Lfd;

    invoke-virtual {v2}, Lfd;->s()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Ljd;-><init>(Lfd;J)V

    return-object v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()F
    .registers 2

    const/high16 v0, 0x41000000    # 8.0f

    return v0
.end method
