###### Class defpackage.xa (xa)
.class public abstract Lxa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lfd;

.field public b:Lxv;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:[F

.field public g:I

.field private h:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lxa;->c:Z

    .line 19
    iput-boolean v0, p0, Lxa;->d:Z

    .line 20
    iput-boolean v0, p0, Lxa;->e:Z

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 21
    iput-object v1, p0, Lxa;->f:[F

    .line 22
    iput v0, p0, Lxa;->g:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 71
    iput-object v0, p0, Lxa;->h:[F

    return-void
.end method

.method public static a(I)Lxa;
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    .line 112
    new-instance p0, Lwd;

    invoke-direct {p0}, Lwd;-><init>()V

    return-object p0

    :cond_9
    if-nez p0, :cond_11

    .line 113
    new-instance p0, Lrh;

    invoke-direct {p0}, Lrh;-><init>()V

    return-object p0

    :cond_11
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1a

    .line 114
    new-instance p0, Lay;

    invoke-direct {p0}, Lay;-><init>()V

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(JF)F
    .registers 8

    const-wide/16 v0, 0x5dc0

    .line 59
    rem-long/2addr p1, v0

    long-to-int p1, p1

    int-to-float p1, p1

    add-float/2addr p1, p3

    const p2, 0x46bb8000    # 24000.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3e800000    # 0.25f

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    const/high16 p3, 0x3f800000    # 1.0f

    if-gez p2, :cond_15

    add-float/2addr p1, p3

    :cond_15
    cmpl-float p2, p1, p3

    if-lez p2, :cond_1a

    sub-float/2addr p1, p3

    :cond_1a
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float p2, v0

    sub-float/2addr p3, p2

    sub-float/2addr p3, p1

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p3, p2

    add-float/2addr p1, p3

    return p1
.end method

.method protected a()V
    .registers 3

    .line 39
    new-instance v0, Lxv;

    iget-object v1, p0, Lxa;->a:Lfd;

    invoke-direct {v0, v1}, Lxv;-><init>(Lfd;)V

    iput-object v0, p0, Lxa;->b:Lxv;

    return-void
.end method

.method public final a(Lfd;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lxa;->a:Lfd;

    .line 26
    invoke-virtual {p0}, Lxa;->a()V

    .line 27
    invoke-virtual {p0}, Lxa;->e()V

    return-void
.end method

.method public a(II)Z
    .registers 4

    .line 51
    iget-object v0, p0, Lxa;->a:Lfd;

    invoke-virtual {v0, p1, p2}, Lfd;->a(II)I

    move-result p1

    .line 53
    sget-object p2, Luu;->F:Luu;

    iget p2, p2, Luu;->bn:I

    if-eq p1, p2, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method public a(FF)[F
    .registers 8

    const p2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, p2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 76
    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    const/4 v0, 0x0

    sub-float/2addr p1, v0

    const v1, -0x41333333    # -0.4f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_51

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_51

    const/high16 v2, -0x80000000

    sub-float/2addr p1, v2

    div-float/2addr p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    add-float/2addr p1, v1

    mul-float/2addr p2, p1

    .line 80
    invoke-static {p2}, Lin;->a(F)F

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p2, v1, p2

    const v2, 0x3f7d70a4    # 0.99f

    mul-float/2addr p2, v2

    sub-float/2addr v1, p2

    mul-float/2addr v1, v1

    .line 82
    iget-object p2, p0, Lxa;->h:[F

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v2, p1

    const v3, 0x3f333333    # 0.7f

    add-float/2addr v2, v3

    const/4 v4, 0x0

    aput v2, p2, v4

    mul-float/2addr p1, p1

    mul-float/2addr v3, p1

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v3, v2

    const/4 v4, 0x1

    .line 83
    aput v3, p2, v4

    mul-float/2addr p1, v0

    add-float/2addr p1, v2

    const/4 v0, 0x2

    .line 84
    aput p1, p2, v0

    const/4 p1, 0x3

    .line 85
    aput v1, p2, p1

    return-object p2

    :cond_51
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(FF)Lbt;
    .registers 11

    const p2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    .line 93
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
    const v0, 0x3f70a3d7    # 0.94f

    mul-float/2addr v0, p1

    const v1, 0x3d75c28f    # 0.06f

    add-float/2addr v0, v1

    const v1, 0x3f40c0c1

    mul-float/2addr v1, v0

    const v2, 0x3f58d8d9

    mul-float/2addr v0, v2

    const v2, 0x3f68f5c3    # 0.91f

    mul-float/2addr p1, v2

    const v2, 0x3db851ec    # 0.09f

    add-float/2addr p1, v2

    mul-float/2addr p1, p2

    float-to-double v2, v1

    float-to-double v4, v0

    float-to-double v6, p1

    .line 104
    invoke-static/range {v2 .. v7}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcl;
    .registers 5

    .line 43
    new-instance v0, Lyf;

    iget-object v1, p0, Lxa;->a:Lfd;

    invoke-virtual {v1}, Lfd;->s()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lyf;-><init>(Lfd;J)V

    return-object v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public d()F
    .registers 2

    const/high16 v0, 0x42d80000    # 108.0f

    return v0
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

    .line 34
    iget-object v3, p0, Lxa;->f:[F

    sub-float v4, v2, v1

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v1, v5

    add-float/2addr v1, v2

    div-float/2addr v4, v1

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v4, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v4, v1

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
