###### Class defpackage.td (td)
.class public Ltd;
.super Lko;
.source "SourceFile"


# instance fields
.field public a:Lps;

.field public b:Lps;

.field public c:Lps;

.field public d:Lps;

.field public e:Lps;

.field public f:Lps;

.field public g:Lps;

.field public h:Lps;


# direct methods
.method public constructor <init>()V
    .registers 19

    move-object/from16 v0, p0

    .line 6
    invoke-direct/range {p0 .. p0}, Lko;-><init>()V

    .line 8
    new-instance v1, Lps;

    const/4 v9, 0x0

    invoke-direct {v1, v9, v9}, Lps;-><init>(II)V

    iput-object v1, v0, Ltd;->a:Lps;

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, -0x3f400000    # -6.0f

    const/high16 v4, -0x40000000    # -2.0f

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 9
    invoke-virtual/range {v1 .. v8}, Lps;->a(FFFIIIF)V

    .line 10
    iget-object v1, v0, Ltd;->a:Lps;

    const/16 v2, 0xf

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, -0x3f800000    # -4.0f

    invoke-virtual {v1, v3, v2, v4}, Lps;->a(FFF)V

    .line 12
    new-instance v10, Lps;

    const/16 v1, 0xe

    invoke-direct {v10, v1, v9}, Lps;-><init>(II)V

    iput-object v10, v0, Ltd;->g:Lps;

    const/high16 v11, -0x40000000    # -2.0f

    const/high16 v12, -0x3f800000    # -4.0f

    const/high16 v13, -0x3f800000    # -4.0f

    const/4 v14, 0x4

    const/4 v15, 0x2

    const/16 v16, 0x2

    const/16 v17, 0x0

    .line 13
    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    .line 14
    iget-object v5, v0, Ltd;->g:Lps;

    invoke-virtual {v5, v3, v2, v4}, Lps;->a(FFF)V

    .line 16
    new-instance v10, Lps;

    const/4 v5, 0x4

    invoke-direct {v10, v1, v5}, Lps;-><init>(II)V

    iput-object v10, v0, Ltd;->h:Lps;

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, -0x40000000    # -2.0f

    const/high16 v13, -0x3fc00000    # -3.0f

    const/4 v14, 0x2

    .line 17
    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    .line 18
    iget-object v1, v0, Ltd;->h:Lps;

    invoke-virtual {v1, v3, v2, v4}, Lps;->a(FFF)V

    .line 20
    new-instance v10, Lps;

    const/16 v1, 0x9

    invoke-direct {v10, v9, v1}, Lps;-><init>(II)V

    iput-object v10, v0, Ltd;->b:Lps;

    const/high16 v11, -0x3fc00000    # -3.0f

    const/high16 v12, -0x3f800000    # -4.0f

    const/4 v14, 0x6

    const/16 v15, 0x8

    const/16 v16, 0x6

    .line 21
    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    .line 22
    iget-object v1, v0, Ltd;->b:Lps;

    const/16 v2, 0x10

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2, v3}, Lps;->a(FFF)V

    .line 24
    new-instance v10, Lps;

    const/16 v1, 0x1a

    invoke-direct {v10, v1, v9}, Lps;-><init>(II)V

    iput-object v10, v0, Ltd;->c:Lps;

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x5

    const/16 v16, 0x3

    .line 25
    invoke-virtual/range {v10 .. v16}, Lps;->a(FFFIII)V

    .line 26
    iget-object v2, v0, Ltd;->c:Lps;

    const/16 v5, 0x13

    int-to-float v5, v5

    const/high16 v6, -0x40000000    # -2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6, v5, v7}, Lps;->a(FFF)V

    .line 28
    new-instance v10, Lps;

    invoke-direct {v10, v1, v9}, Lps;-><init>(II)V

    iput-object v10, v0, Ltd;->d:Lps;

    .line 29
    invoke-virtual/range {v10 .. v16}, Lps;->a(FFFIII)V

    .line 30
    iget-object v1, v0, Ltd;->d:Lps;

    invoke-virtual {v1, v7, v5, v7}, Lps;->a(FFF)V

    .line 32
    new-instance v8, Lps;

    const/16 v1, 0x18

    const/16 v2, 0xd

    invoke-direct {v8, v1, v2}, Lps;-><init>(II)V

    iput-object v8, v0, Ltd;->e:Lps;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x3fc00000    # -3.0f

    const/4 v12, 0x1

    const/4 v13, 0x4

    const/4 v14, 0x6

    .line 33
    invoke-virtual/range {v8 .. v14}, Lps;->a(FFFIII)V

    .line 34
    iget-object v5, v0, Ltd;->e:Lps;

    int-to-float v6, v2

    invoke-virtual {v5, v4, v6, v3}, Lps;->a(FFF)V

    .line 36
    new-instance v7, Lps;

    invoke-direct {v7, v1, v2}, Lps;-><init>(II)V

    iput-object v7, v0, Ltd;->f:Lps;

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v10, -0x3fc00000    # -3.0f

    const/4 v11, 0x1

    const/4 v12, 0x4

    const/4 v13, 0x6

    .line 37
    invoke-virtual/range {v7 .. v13}, Lps;->a(FFFIII)V

    .line 38
    iget-object v1, v0, Ltd;->f:Lps;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2, v6, v3}, Lps;->a(FFF)V

    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .registers 7

    .line 42
    invoke-virtual/range {p0 .. p6}, Ltd;->b(FFFFFF)V

    .line 44
    iget-object p1, p0, Ltd;->a:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 45
    iget-object p1, p0, Ltd;->g:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 46
    iget-object p1, p0, Ltd;->h:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 47
    iget-object p1, p0, Ltd;->b:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 48
    iget-object p1, p0, Ltd;->c:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 49
    iget-object p1, p0, Ltd;->d:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 50
    iget-object p1, p0, Ltd;->e:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 51
    iget-object p1, p0, Ltd;->f:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    return-void
.end method

.method public b(FFFFFF)V
    .registers 8

    .line 55
    iget-object p6, p0, Ltd;->a:Lps;

    const v0, 0x42652ee0

    div-float/2addr p5, v0

    neg-float p5, p5

    iput p5, p6, Lps;->d:F

    .line 56
    iget-object p5, p0, Ltd;->a:Lps;

    div-float/2addr p4, v0

    iput p4, p5, Lps;->e:F

    .line 58
    iget-object p4, p0, Ltd;->g:Lps;

    iget-object p5, p0, Ltd;->a:Lps;

    iget p5, p5, Lps;->d:F

    iput p5, p4, Lps;->d:F

    .line 59
    iget-object p4, p0, Ltd;->g:Lps;

    iget-object p5, p0, Ltd;->a:Lps;

    iget p5, p5, Lps;->e:F

    iput p5, p4, Lps;->e:F

    .line 61
    iget-object p4, p0, Ltd;->h:Lps;

    iget-object p5, p0, Ltd;->a:Lps;

    iget p5, p5, Lps;->d:F

    iput p5, p4, Lps;->d:F

    .line 62
    iget-object p4, p0, Ltd;->h:Lps;

    iget-object p5, p0, Ltd;->a:Lps;

    iget p5, p5, Lps;->e:F

    iput p5, p4, Lps;->e:F

    .line 64
    iget-object p4, p0, Ltd;->b:Lps;

    const p5, 0x3fc90fdb

    iput p5, p4, Lps;->d:F

    .line 66
    iget-object p4, p0, Ltd;->c:Lps;

    const p5, 0x3f2a8c15    # 0.6662f

    mul-float/2addr p1, p5

    invoke-static {p1}, Lin;->b(F)F

    move-result p5

    const p6, 0x3fb33333    # 1.4f

    mul-float/2addr p5, p6

    mul-float/2addr p5, p2

    iput p5, p4, Lps;->d:F

    .line 67
    iget-object p4, p0, Ltd;->d:Lps;

    const p5, 0x40490fdb    # (float)Math.PI

    add-float/2addr p1, p5

    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    mul-float/2addr p1, p6

    mul-float/2addr p1, p2

    iput p1, p4, Lps;->d:F

    .line 68
    iget-object p1, p0, Ltd;->e:Lps;

    iput p3, p1, Lps;->f:F

    .line 69
    iget-object p1, p0, Ltd;->f:Lps;

    neg-float p2, p3

    iput p2, p1, Lps;->f:F

    return-void
.end method
