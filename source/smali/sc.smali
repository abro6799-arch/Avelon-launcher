###### Class defpackage.sc (sc)
.class public Lsc;
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

.field public i:Lps;

.field public j:Lps;

.field public k:Lps;


# direct methods
.method public constructor <init>()V
    .registers 20

    move-object/from16 v0, p0

    .line 8
    invoke-direct/range {p0 .. p0}, Lko;-><init>()V

    const/4 v8, 0x0

    .line 13
    new-instance v9, Lps;

    const/16 v1, 0x20

    const/4 v2, 0x4

    invoke-direct {v9, v1, v2}, Lps;-><init>(II)V

    iput-object v9, v0, Lsc;->a:Lps;

    const/high16 v10, -0x3f800000    # -4.0f

    const/high16 v11, -0x3f800000    # -4.0f

    const/high16 v12, -0x3f000000    # -8.0f

    const/16 v13, 0x8

    const/16 v14, 0x8

    const/16 v15, 0x8

    const/16 v16, 0x0

    .line 14
    invoke-virtual/range {v9 .. v16}, Lps;->a(FFFIIIF)V

    .line 15
    iget-object v1, v0, Lsc;->a:Lps;

    const/16 v2, 0xf

    int-to-float v9, v2

    const/high16 v3, -0x3fc00000    # -3.0f

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v9, v3}, Lps;->a(FFF)V

    .line 17
    new-instance v10, Lps;

    const/4 v1, 0x0

    invoke-direct {v10, v1, v1}, Lps;-><init>(II)V

    iput-object v10, v0, Lsc;->b:Lps;

    const/high16 v11, -0x3fc00000    # -3.0f

    const/high16 v12, -0x3fc00000    # -3.0f

    const/high16 v13, -0x3fc00000    # -3.0f

    const/4 v14, 0x6

    const/4 v15, 0x6

    const/16 v16, 0x6

    const/16 v17, 0x0

    .line 18
    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    .line 19
    iget-object v3, v0, Lsc;->b:Lps;

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2, v4}, Lps;->a(FFF)V

    .line 21
    new-instance v10, Lps;

    const/16 v2, 0xc

    invoke-direct {v10, v1, v2}, Lps;-><init>(II)V

    iput-object v10, v0, Lsc;->c:Lps;

    const/high16 v11, -0x3f600000    # -5.0f

    const/high16 v12, -0x3f800000    # -4.0f

    const/high16 v13, -0x3f400000    # -6.0f

    const/16 v14, 0xa

    const/16 v15, 0x8

    const/16 v16, 0xc

    .line 22
    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    .line 23
    iget-object v2, v0, Lsc;->c:Lps;

    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual {v2, v4, v9, v3}, Lps;->a(FFF)V

    .line 26
    new-instance v10, Lps;

    const/16 v2, 0x12

    invoke-direct {v10, v2, v1}, Lps;-><init>(II)V

    iput-object v10, v0, Lsc;->d:Lps;

    const/high16 v11, -0x3e900000    # -15.0f

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v14, 0x10

    const/4 v15, 0x2

    const/16 v16, 0x2

    .line 27
    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    .line 28
    iget-object v3, v0, Lsc;->d:Lps;

    const/high16 v5, -0x3f800000    # -4.0f

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v3, v5, v9, v6}, Lps;->a(FFF)V

    .line 30
    new-instance v10, Lps;

    invoke-direct {v10, v2, v1}, Lps;-><init>(II)V

    iput-object v10, v0, Lsc;->e:Lps;

    const/high16 v11, -0x40800000    # -1.0f

    .line 31
    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    .line 32
    iget-object v3, v0, Lsc;->e:Lps;

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v3, v10, v9, v6}, Lps;->a(FFF)V

    .line 34
    new-instance v11, Lps;

    invoke-direct {v11, v2, v1}, Lps;-><init>(II)V

    iput-object v11, v0, Lsc;->f:Lps;

    const/high16 v12, -0x3e900000    # -15.0f

    const/high16 v14, -0x40800000    # -1.0f

    const/16 v15, 0x10

    const/16 v17, 0x2

    const/16 v18, 0x0

    .line 35
    invoke-virtual/range {v11 .. v18}, Lps;->a(FFFIIIF)V

    .line 36
    iget-object v3, v0, Lsc;->f:Lps;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v9, v6}, Lps;->a(FFF)V

    .line 38
    new-instance v11, Lps;

    invoke-direct {v11, v2, v1}, Lps;-><init>(II)V

    iput-object v11, v0, Lsc;->g:Lps;

    const/high16 v12, -0x40800000    # -1.0f

    .line 39
    invoke-virtual/range {v11 .. v18}, Lps;->a(FFFIIIF)V

    .line 40
    iget-object v3, v0, Lsc;->g:Lps;

    invoke-virtual {v3, v10, v9, v6}, Lps;->a(FFF)V

    .line 42
    new-instance v11, Lps;

    invoke-direct {v11, v2, v1}, Lps;-><init>(II)V

    iput-object v11, v0, Lsc;->h:Lps;

    const/high16 v12, -0x3e900000    # -15.0f

    .line 43
    invoke-virtual/range {v11 .. v18}, Lps;->a(FFFIIIF)V

    .line 44
    iget-object v3, v0, Lsc;->h:Lps;

    invoke-virtual {v3, v5, v9, v4}, Lps;->a(FFF)V

    .line 46
    new-instance v11, Lps;

    invoke-direct {v11, v2, v1}, Lps;-><init>(II)V

    iput-object v11, v0, Lsc;->i:Lps;

    const/high16 v12, -0x40800000    # -1.0f

    .line 47
    invoke-virtual/range {v11 .. v18}, Lps;->a(FFFIIIF)V

    .line 48
    iget-object v3, v0, Lsc;->i:Lps;

    invoke-virtual {v3, v10, v9, v4}, Lps;->a(FFF)V

    .line 50
    new-instance v11, Lps;

    invoke-direct {v11, v2, v1}, Lps;-><init>(II)V

    iput-object v11, v0, Lsc;->j:Lps;

    const/high16 v12, -0x3e900000    # -15.0f

    .line 51
    invoke-virtual/range {v11 .. v18}, Lps;->a(FFFIIIF)V

    .line 52
    iget-object v3, v0, Lsc;->j:Lps;

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v3, v5, v9, v11}, Lps;->a(FFF)V

    .line 54
    new-instance v3, Lps;

    invoke-direct {v3, v2, v1}, Lps;-><init>(II)V

    iput-object v3, v0, Lsc;->k:Lps;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0x10

    const/4 v7, 0x2

    const/4 v12, 0x2

    move-object v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v12

    .line 55
    invoke-virtual/range {v1 .. v8}, Lps;->a(FFFIIIF)V

    .line 56
    iget-object v1, v0, Lsc;->k:Lps;

    invoke-virtual {v1, v10, v9, v11}, Lps;->a(FFF)V

    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .registers 7

    .line 61
    invoke-virtual/range {p0 .. p6}, Lsc;->b(FFFFFF)V

    .line 63
    iget-object p1, p0, Lsc;->a:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 64
    iget-object p1, p0, Lsc;->b:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 65
    iget-object p1, p0, Lsc;->c:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 66
    iget-object p1, p0, Lsc;->d:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 67
    iget-object p1, p0, Lsc;->e:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 68
    iget-object p1, p0, Lsc;->f:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 69
    iget-object p1, p0, Lsc;->g:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 70
    iget-object p1, p0, Lsc;->h:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 71
    iget-object p1, p0, Lsc;->i:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 72
    iget-object p1, p0, Lsc;->j:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 73
    iget-object p1, p0, Lsc;->k:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    return-void
.end method

.method public b(FFFFFF)V
    .registers 12

    .line 78
    iget-object p3, p0, Lsc;->a:Lps;

    const p6, 0x42652ee0

    div-float/2addr p4, p6

    iput p4, p3, Lps;->e:F

    .line 79
    iget-object p3, p0, Lsc;->a:Lps;

    div-float/2addr p5, p6

    iput p5, p3, Lps;->d:F

    .line 82
    iget-object p3, p0, Lsc;->d:Lps;

    const p4, -0x40b6f025

    iput p4, p3, Lps;->f:F

    .line 83
    iget-object p3, p0, Lsc;->e:Lps;

    const p5, 0x3f490fdb

    iput p5, p3, Lps;->f:F

    .line 85
    iget-object p3, p0, Lsc;->f:Lps;

    const p6, -0x40eb36d4

    iput p6, p3, Lps;->f:F

    .line 86
    iget-object p3, p0, Lsc;->g:Lps;

    const v0, 0x3f14c92c

    iput v0, p3, Lps;->f:F

    .line 88
    iget-object p3, p0, Lsc;->h:Lps;

    iput p6, p3, Lps;->f:F

    .line 89
    iget-object p3, p0, Lsc;->i:Lps;

    iput v0, p3, Lps;->f:F

    .line 91
    iget-object p3, p0, Lsc;->j:Lps;

    iput p4, p3, Lps;->f:F

    .line 92
    iget-object p3, p0, Lsc;->k:Lps;

    iput p5, p3, Lps;->f:F

    .line 96
    iget-object p3, p0, Lsc;->d:Lps;

    iput p5, p3, Lps;->e:F

    .line 97
    iget-object p3, p0, Lsc;->e:Lps;

    iput p4, p3, Lps;->e:F

    .line 98
    iget-object p3, p0, Lsc;->f:Lps;

    const p6, 0x3ec90fdb

    iput p6, p3, Lps;->e:F

    .line 99
    iget-object p3, p0, Lsc;->g:Lps;

    const v0, -0x4136f025

    iput v0, p3, Lps;->e:F

    .line 100
    iget-object p3, p0, Lsc;->h:Lps;

    iput v0, p3, Lps;->e:F

    .line 101
    iget-object p3, p0, Lsc;->i:Lps;

    iput p6, p3, Lps;->e:F

    .line 102
    iget-object p3, p0, Lsc;->j:Lps;

    iput p4, p3, Lps;->e:F

    .line 103
    iget-object p3, p0, Lsc;->k:Lps;

    iput p5, p3, Lps;->e:F

    const p3, 0x3f2a8c15    # 0.6662f

    mul-float/2addr p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p3, p1

    const/4 p4, 0x0

    add-float p5, p3, p4

    .line 106
    invoke-static {p5}, Lin;->b(F)F

    move-result p5

    const p6, 0x3ecccccd    # 0.4f

    mul-float/2addr p5, p6

    neg-float p5, p5

    mul-float/2addr p5, p2

    const v0, 0x40490fdb    # (float)Math.PI

    add-float v1, p3, v0

    .line 107
    invoke-static {v1}, Lin;->b(F)F

    move-result v1

    mul-float/2addr v1, p6

    neg-float v1, v1

    mul-float/2addr v1, p2

    const v2, 0x3fc90fdb

    add-float v3, p3, v2

    .line 108
    invoke-static {v3}, Lin;->b(F)F

    move-result v3

    mul-float/2addr v3, p6

    neg-float v3, v3

    mul-float/2addr v3, p2

    const v4, 0x4096cbe4

    add-float/2addr p3, v4

    .line 109
    invoke-static {p3}, Lin;->b(F)F

    move-result p3

    mul-float/2addr p3, p6

    neg-float p3, p3

    mul-float/2addr p3, p2

    add-float/2addr p4, p1

    .line 111
    invoke-static {p4}, Lin;->a(F)F

    move-result p4

    mul-float/2addr p4, p6

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    mul-float/2addr p4, p2

    add-float/2addr v0, p1

    .line 112
    invoke-static {v0}, Lin;->a(F)F

    move-result v0

    mul-float/2addr v0, p6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr v2, p1

    .line 113
    invoke-static {v2}, Lin;->a(F)F

    move-result v2

    mul-float/2addr v2, p6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr p1, v4

    .line 114
    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    mul-float/2addr p1, p6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p2

    .line 116
    iget-object p2, p0, Lsc;->d:Lps;

    iget p6, p2, Lps;->e:F

    add-float/2addr p6, p5

    iput p6, p2, Lps;->e:F

    .line 117
    iget-object p2, p0, Lsc;->e:Lps;

    iget p6, p2, Lps;->e:F

    neg-float p5, p5

    add-float/2addr p6, p5

    iput p6, p2, Lps;->e:F

    .line 118
    iget-object p2, p0, Lsc;->f:Lps;

    iget p5, p2, Lps;->e:F

    add-float/2addr p5, v1

    iput p5, p2, Lps;->e:F

    .line 119
    iget-object p2, p0, Lsc;->g:Lps;

    iget p5, p2, Lps;->e:F

    neg-float p6, v1

    add-float/2addr p5, p6

    iput p5, p2, Lps;->e:F

    .line 120
    iget-object p2, p0, Lsc;->h:Lps;

    iget p5, p2, Lps;->e:F

    add-float/2addr p5, v3

    iput p5, p2, Lps;->e:F

    .line 121
    iget-object p2, p0, Lsc;->i:Lps;

    iget p5, p2, Lps;->e:F

    neg-float p6, v3

    add-float/2addr p5, p6

    iput p5, p2, Lps;->e:F

    .line 122
    iget-object p2, p0, Lsc;->j:Lps;

    iget p5, p2, Lps;->e:F

    add-float/2addr p5, p3

    iput p5, p2, Lps;->e:F

    .line 123
    iget-object p2, p0, Lsc;->k:Lps;

    iget p5, p2, Lps;->e:F

    neg-float p3, p3

    add-float/2addr p5, p3

    iput p5, p2, Lps;->e:F

    .line 125
    iget-object p2, p0, Lsc;->d:Lps;

    iget p3, p2, Lps;->f:F

    add-float/2addr p3, p4

    iput p3, p2, Lps;->f:F

    .line 126
    iget-object p2, p0, Lsc;->e:Lps;

    iget p3, p2, Lps;->f:F

    neg-float p4, p4

    add-float/2addr p3, p4

    iput p3, p2, Lps;->f:F

    .line 127
    iget-object p2, p0, Lsc;->f:Lps;

    iget p3, p2, Lps;->f:F

    add-float/2addr p3, v0

    iput p3, p2, Lps;->f:F

    .line 128
    iget-object p2, p0, Lsc;->g:Lps;

    iget p3, p2, Lps;->f:F

    neg-float p4, v0

    add-float/2addr p3, p4

    iput p3, p2, Lps;->f:F

    .line 129
    iget-object p2, p0, Lsc;->h:Lps;

    iget p3, p2, Lps;->f:F

    add-float/2addr p3, v2

    iput p3, p2, Lps;->f:F

    .line 130
    iget-object p2, p0, Lsc;->i:Lps;

    iget p3, p2, Lps;->f:F

    neg-float p4, v2

    add-float/2addr p3, p4

    iput p3, p2, Lps;->f:F

    .line 131
    iget-object p2, p0, Lsc;->j:Lps;

    iget p3, p2, Lps;->f:F

    add-float/2addr p3, p1

    iput p3, p2, Lps;->f:F

    .line 132
    iget-object p2, p0, Lsc;->k:Lps;

    iget p3, p2, Lps;->f:F

    neg-float p1, p1

    add-float/2addr p3, p1

    iput p3, p2, Lps;->f:F

    return-void
.end method
