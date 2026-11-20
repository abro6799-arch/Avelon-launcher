###### Class defpackage.ej (ej)
.class public Lej;
.super Lfh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lfh;-><init>()V

    return-void
.end method


# virtual methods
.method public b(FFFFFF)V
    .registers 7

    .line 7
    invoke-super/range {p0 .. p6}, Lfh;->b(FFFFFF)V

    .line 9
    iget p1, p0, Lej;->m:F

    const p2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, p2

    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    .line 10
    iget p4, p0, Lej;->m:F

    const/high16 p5, 0x3f800000    # 1.0f

    sub-float p4, p5, p4

    iget p6, p0, Lej;->m:F

    sub-float p6, p5, p6

    mul-float/2addr p4, p6

    sub-float/2addr p5, p4

    mul-float/2addr p5, p2

    invoke-static {p5}, Lin;->a(F)F

    move-result p2

    .line 11
    iget-object p4, p0, Lej;->d:Lps;

    const/4 p5, 0x0

    iput p5, p4, Lps;->f:F

    .line 12
    iget-object p4, p0, Lej;->e:Lps;

    iput p5, p4, Lps;->f:F

    .line 13
    iget-object p4, p0, Lej;->d:Lps;

    const p5, 0x3f19999a    # 0.6f

    mul-float/2addr p5, p1

    const p6, 0x3dcccccd    # 0.1f

    sub-float/2addr p6, p5

    neg-float p5, p6

    iput p5, p4, Lps;->e:F

    .line 14
    iget-object p4, p0, Lej;->e:Lps;

    iput p6, p4, Lps;->e:F

    .line 15
    iget-object p4, p0, Lej;->d:Lps;

    const p5, -0x4036f025

    iput p5, p4, Lps;->d:F

    .line 16
    iget-object p4, p0, Lej;->e:Lps;

    iput p5, p4, Lps;->d:F

    .line 17
    iget-object p4, p0, Lej;->d:Lps;

    iget p5, p4, Lps;->d:F

    const p6, 0x3f99999a    # 1.2f

    mul-float/2addr p1, p6

    const p6, 0x3ecccccd    # 0.4f

    mul-float/2addr p2, p6

    sub-float/2addr p1, p2

    sub-float/2addr p5, p1

    iput p5, p4, Lps;->d:F

    .line 18
    iget-object p2, p0, Lej;->e:Lps;

    iget p4, p2, Lps;->d:F

    sub-float/2addr p4, p1

    iput p4, p2, Lps;->d:F

    .line 23
    iget-object p1, p0, Lej;->d:Lps;

    iget p2, p1, Lps;->f:F

    const p4, 0x3db851ec    # 0.09f

    mul-float/2addr p4, p3

    invoke-static {p4}, Lin;->b(F)F

    move-result p5

    const p6, 0x3d4ccccd    # 0.05f

    mul-float/2addr p5, p6

    add-float/2addr p5, p6

    add-float/2addr p2, p5

    iput p2, p1, Lps;->f:F

    .line 24
    iget-object p1, p0, Lej;->e:Lps;

    iget p2, p1, Lps;->f:F

    invoke-static {p4}, Lin;->b(F)F

    move-result p4

    mul-float/2addr p4, p6

    add-float/2addr p4, p6

    sub-float/2addr p2, p4

    iput p2, p1, Lps;->f:F

    .line 25
    iget-object p1, p0, Lej;->d:Lps;

    iget p2, p1, Lps;->d:F

    const p4, 0x3d89374c    # 0.067f

    mul-float/2addr p3, p4

    invoke-static {p3}, Lin;->a(F)F

    move-result p4

    mul-float/2addr p4, p6

    add-float/2addr p2, p4

    iput p2, p1, Lps;->d:F

    .line 26
    iget-object p1, p0, Lej;->e:Lps;

    iget p2, p1, Lps;->d:F

    invoke-static {p3}, Lin;->a(F)F

    move-result p3

    mul-float/2addr p3, p6

    sub-float/2addr p2, p3

    iput p2, p1, Lps;->d:F

    return-void
.end method
