###### Class defpackage.fh (fh)
.class public Lfh;
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

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lfh;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lfh;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 27

    move-object/from16 v0, p0

    .line 20
    invoke-direct/range {p0 .. p0}, Lko;-><init>()V

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lfh;->j:Z

    .line 9
    iput-boolean v1, v0, Lfh;->k:Z

    .line 10
    iput-boolean v1, v0, Lfh;->l:Z

    .line 21
    new-instance v2, Lps;

    invoke-direct {v2, v1, v1}, Lps;-><init>(II)V

    iput-object v2, v0, Lfh;->i:Lps;

    const/high16 v3, -0x3f600000    # -5.0f

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0xa

    const/16 v7, 0x10

    const/4 v8, 0x1

    move/from16 v9, p1

    .line 22
    invoke-virtual/range {v2 .. v9}, Lps;->a(FFFIIIF)V

    .line 24
    new-instance v9, Lps;

    const/16 v2, 0x18

    invoke-direct {v9, v2, v1}, Lps;-><init>(II)V

    iput-object v9, v0, Lfh;->h:Lps;

    const/high16 v10, -0x3fc00000    # -3.0f

    const/high16 v11, -0x3f400000    # -6.0f

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x6

    const/4 v14, 0x6

    const/4 v15, 0x1

    move/from16 v16, p1

    .line 25
    invoke-virtual/range {v9 .. v16}, Lps;->a(FFFIIIF)V

    .line 27
    new-instance v2, Lps;

    invoke-direct {v2, v1, v1}, Lps;-><init>(II)V

    iput-object v2, v0, Lfh;->a:Lps;

    const/high16 v17, -0x3f800000    # -4.0f

    const/high16 v18, -0x3f000000    # -8.0f

    const/high16 v19, -0x3f800000    # -4.0f

    const/16 v20, 0x8

    const/16 v21, 0x8

    const/16 v22, 0x8

    move-object/from16 v16, v2

    move/from16 v23, p1

    .line 28
    invoke-virtual/range {v16 .. v23}, Lps;->a(FFFIIIF)V

    .line 29
    iget-object v2, v0, Lfh;->a:Lps;

    const/4 v3, 0x0

    add-float v4, p2, v3

    invoke-virtual {v2, v3, v4, v3}, Lps;->a(FFF)V

    .line 31
    new-instance v5, Lps;

    const/16 v2, 0x20

    invoke-direct {v5, v2, v1}, Lps;-><init>(II)V

    iput-object v5, v0, Lfh;->b:Lps;

    const/high16 v6, -0x3f800000    # -4.0f

    const/high16 v7, -0x3f000000    # -8.0f

    const/high16 v8, -0x3f800000    # -4.0f

    const/16 v9, 0x8

    const/16 v10, 0x8

    const/16 v11, 0x8

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v12, p1, v2

    .line 32
    invoke-virtual/range {v5 .. v12}, Lps;->a(FFFIIIF)V

    .line 33
    iget-object v2, v0, Lfh;->b:Lps;

    invoke-virtual {v2, v3, v4, v3}, Lps;->a(FFF)V

    .line 35
    new-instance v12, Lps;

    const/16 v2, 0x10

    invoke-direct {v12, v2, v2}, Lps;-><init>(II)V

    iput-object v12, v0, Lfh;->c:Lps;

    const/high16 v13, -0x3f800000    # -4.0f

    const/4 v14, 0x0

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v16, 0x8

    const/16 v17, 0xc

    const/16 v18, 0x4

    move/from16 v19, p1

    .line 36
    invoke-virtual/range {v12 .. v19}, Lps;->a(FFFIIIF)V

    .line 37
    iget-object v5, v0, Lfh;->c:Lps;

    invoke-virtual {v5, v3, v4, v3}, Lps;->a(FFF)V

    .line 39
    new-instance v12, Lps;

    const/16 v4, 0x28

    invoke-direct {v12, v4, v2}, Lps;-><init>(II)V

    iput-object v12, v0, Lfh;->d:Lps;

    const/high16 v13, -0x3fc00000    # -3.0f

    const/high16 v14, -0x40000000    # -2.0f

    const/16 v16, 0x4

    .line 40
    invoke-virtual/range {v12 .. v19}, Lps;->a(FFFIIIF)V

    .line 41
    iget-object v5, v0, Lfh;->d:Lps;

    const/high16 v6, 0x40000000    # 2.0f

    add-float v7, p2, v6

    const/high16 v8, -0x3f600000    # -5.0f

    invoke-virtual {v5, v8, v7, v3}, Lps;->a(FFF)V

    .line 43
    new-instance v5, Lps;

    invoke-direct {v5, v4, v2}, Lps;-><init>(II)V

    iput-object v5, v0, Lfh;->e:Lps;

    const/4 v4, 0x1

    .line 44
    iput-boolean v4, v5, Lps;->g:Z

    .line 45
    iget-object v12, v0, Lfh;->e:Lps;

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual/range {v12 .. v19}, Lps;->a(FFFIIIF)V

    .line 46
    iget-object v5, v0, Lfh;->e:Lps;

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-virtual {v5, v8, v7, v3}, Lps;->a(FFF)V

    .line 48
    new-instance v12, Lps;

    invoke-direct {v12, v1, v2}, Lps;-><init>(II)V

    iput-object v12, v0, Lfh;->f:Lps;

    const/high16 v13, -0x40000000    # -2.0f

    const/4 v14, 0x0

    .line 49
    invoke-virtual/range {v12 .. v19}, Lps;->a(FFFIIIF)V

    .line 50
    iget-object v5, v0, Lfh;->f:Lps;

    const/high16 v7, 0x41400000    # 12.0f

    add-float v7, p2, v7

    const/high16 v8, -0x40000000    # -2.0f

    invoke-virtual {v5, v8, v7, v3}, Lps;->a(FFF)V

    .line 52
    new-instance v5, Lps;

    invoke-direct {v5, v1, v2}, Lps;-><init>(II)V

    iput-object v5, v0, Lfh;->g:Lps;

    .line 53
    iput-boolean v4, v5, Lps;->g:Z

    .line 54
    iget-object v12, v0, Lfh;->g:Lps;

    invoke-virtual/range {v12 .. v19}, Lps;->a(FFFIIIF)V

    .line 55
    iget-object v1, v0, Lfh;->g:Lps;

    invoke-virtual {v1, v6, v7, v3}, Lps;->a(FFF)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 4

    .line 162
    iget-object v0, p0, Lfh;->h:Lps;

    iget-object v1, p0, Lfh;->a:Lps;

    iget v1, v1, Lps;->e:F

    iput v1, v0, Lps;->e:F

    .line 163
    iget-object v0, p0, Lfh;->h:Lps;

    iget-object v1, p0, Lfh;->a:Lps;

    iget v1, v1, Lps;->d:F

    iput v1, v0, Lps;->d:F

    .line 164
    iget-object v0, p0, Lfh;->h:Lps;

    const/4 v1, 0x0

    iput v1, v0, Lps;->a:F

    .line 165
    iget-object v0, p0, Lfh;->h:Lps;

    iput v1, v0, Lps;->b:F

    .line 166
    iget-object v0, p0, Lfh;->h:Lps;

    invoke-virtual {v0, p1}, Lps;->a(F)V

    return-void
.end method

.method public a(FFFFFF)V
    .registers 7

    .line 59
    invoke-virtual/range {p0 .. p6}, Lfh;->b(FFFFFF)V

    .line 61
    iget-object p1, p0, Lfh;->a:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 62
    iget-object p1, p0, Lfh;->c:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 63
    iget-object p1, p0, Lfh;->d:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 64
    iget-object p1, p0, Lfh;->e:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 65
    iget-object p1, p0, Lfh;->f:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 66
    iget-object p1, p0, Lfh;->g:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 67
    iget-object p1, p0, Lfh;->b:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    return-void
.end method

.method public b(F)V
    .registers 3

    .line 170
    iget-object v0, p0, Lfh;->i:Lps;

    invoke-virtual {v0, p1}, Lps;->a(F)V

    return-void
.end method

.method public b(FFFFFF)V
    .registers 16

    .line 71
    iget-object p6, p0, Lfh;->a:Lps;

    const v0, 0x42652ee0

    div-float/2addr p4, v0

    iput p4, p6, Lps;->e:F

    .line 72
    iget-object p4, p0, Lfh;->a:Lps;

    div-float/2addr p5, v0

    iput p5, p4, Lps;->d:F

    .line 73
    iget-object p4, p0, Lfh;->b:Lps;

    iget-object p5, p0, Lfh;->a:Lps;

    iget p5, p5, Lps;->e:F

    iput p5, p4, Lps;->e:F

    .line 74
    iget-object p4, p0, Lfh;->b:Lps;

    iget-object p5, p0, Lfh;->a:Lps;

    iget p5, p5, Lps;->d:F

    iput p5, p4, Lps;->d:F

    .line 76
    iget-object p4, p0, Lfh;->d:Lps;

    const p5, 0x3f2a8c15    # 0.6662f

    mul-float/2addr p1, p5

    const p5, 0x40490fdb    # (float)Math.PI

    add-float p6, p1, p5

    invoke-static {p6}, Lin;->b(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    iput v0, p4, Lps;->d:F

    .line 79
    iget-object p4, p0, Lfh;->e:Lps;

    invoke-static {p1}, Lin;->b(F)F

    move-result v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    mul-float/2addr v0, v2

    iput v0, p4, Lps;->d:F

    .line 81
    iget-object p4, p0, Lfh;->d:Lps;

    const/4 v0, 0x0

    iput v0, p4, Lps;->f:F

    .line 82
    iget-object p4, p0, Lfh;->e:Lps;

    iput v0, p4, Lps;->f:F

    .line 84
    iget-object p4, p0, Lfh;->f:Lps;

    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    const v3, 0x3fb33333    # 1.4f

    mul-float/2addr p1, v3

    mul-float/2addr p1, p2

    iput p1, p4, Lps;->d:F

    .line 85
    iget-object p1, p0, Lfh;->g:Lps;

    invoke-static {p6}, Lin;->b(F)F

    move-result p4

    mul-float/2addr p4, v3

    mul-float/2addr p4, p2

    iput p4, p1, Lps;->d:F

    .line 86
    iget-object p1, p0, Lfh;->f:Lps;

    iput v0, p1, Lps;->e:F

    .line 87
    iget-object p1, p0, Lfh;->g:Lps;

    iput v0, p1, Lps;->e:F

    .line 89
    iget-boolean p1, p0, Lfh;->n:Z

    const p2, 0x3ea0d97c

    if-eqz p1, :cond_96

    .line 90
    iget-object p1, p0, Lfh;->d:Lps;

    iget p4, p1, Lps;->d:F

    const p6, -0x40df2684

    add-float/2addr p4, p6

    iput p4, p1, Lps;->d:F

    .line 91
    iget-object p1, p0, Lfh;->e:Lps;

    iget p4, p1, Lps;->d:F

    add-float/2addr p4, p6

    iput p4, p1, Lps;->d:F

    .line 92
    iget-object p1, p0, Lfh;->f:Lps;

    const p4, -0x405f2684

    iput p4, p1, Lps;->d:F

    .line 93
    iget-object p1, p0, Lfh;->g:Lps;

    iput p4, p1, Lps;->d:F

    .line 94
    iget-object p1, p0, Lfh;->f:Lps;

    iput p2, p1, Lps;->e:F

    .line 95
    iget-object p1, p0, Lfh;->g:Lps;

    const p4, -0x415f2684

    iput p4, p1, Lps;->e:F

    .line 98
    :cond_96
    iget-boolean p1, p0, Lfh;->j:Z

    if-eqz p1, :cond_a2

    .line 99
    iget-object p1, p0, Lfh;->e:Lps;

    iget p4, p1, Lps;->d:F

    mul-float/2addr p4, v2

    sub-float/2addr p4, p2

    iput p4, p1, Lps;->d:F

    .line 101
    :cond_a2
    iget-boolean p1, p0, Lfh;->k:Z

    if-eqz p1, :cond_ae

    .line 102
    iget-object p1, p0, Lfh;->d:Lps;

    iget p4, p1, Lps;->d:F

    mul-float/2addr p4, v2

    sub-float/2addr p4, p2

    iput p4, p1, Lps;->d:F

    .line 104
    :cond_ae
    iget-object p1, p0, Lfh;->d:Lps;

    iput v0, p1, Lps;->e:F

    .line 105
    iget-object p1, p0, Lfh;->e:Lps;

    iput v0, p1, Lps;->e:F

    .line 106
    iget p1, p0, Lfh;->m:F

    const p2, -0x39e3e800    # -9990.0f

    cmpl-float p1, p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    if-lez p1, :cond_17c

    .line 107
    iget p1, p0, Lfh;->m:F

    .line 108
    iget-object p4, p0, Lfh;->c:Lps;

    invoke-static {p1}, Lin;->c(F)F

    move-result p1

    mul-float/2addr p1, p5

    mul-float/2addr p1, v1

    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    const p6, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p6

    iput p1, p4, Lps;->e:F

    .line 109
    iget-object p1, p0, Lfh;->d:Lps;

    iget-object p4, p0, Lfh;->c:Lps;

    iget p4, p4, Lps;->e:F

    invoke-static {p4}, Lin;->a(F)F

    move-result p4

    const/high16 p6, 0x40a00000    # 5.0f

    mul-float/2addr p4, p6

    iput p4, p1, Lps;->c:F

    .line 110
    iget-object p1, p0, Lfh;->d:Lps;

    iget-object p4, p0, Lfh;->c:Lps;

    iget p4, p4, Lps;->e:F

    invoke-static {p4}, Lin;->b(F)F

    move-result p4

    neg-float p4, p4

    mul-float/2addr p4, p6

    iput p4, p1, Lps;->a:F

    .line 111
    iget-object p1, p0, Lfh;->e:Lps;

    iget-object p4, p0, Lfh;->c:Lps;

    iget p4, p4, Lps;->e:F

    invoke-static {p4}, Lin;->a(F)F

    move-result p4

    neg-float p4, p4

    mul-float/2addr p4, p6

    iput p4, p1, Lps;->c:F

    .line 112
    iget-object p1, p0, Lfh;->e:Lps;

    iget-object p4, p0, Lfh;->c:Lps;

    iget p4, p4, Lps;->e:F

    invoke-static {p4}, Lin;->b(F)F

    move-result p4

    mul-float/2addr p4, p6

    iput p4, p1, Lps;->a:F

    .line 113
    iget-object p1, p0, Lfh;->d:Lps;

    iget p4, p1, Lps;->e:F

    iget-object p6, p0, Lfh;->c:Lps;

    iget p6, p6, Lps;->e:F

    add-float/2addr p4, p6

    iput p4, p1, Lps;->e:F

    .line 114
    iget-object p1, p0, Lfh;->e:Lps;

    iget p4, p1, Lps;->e:F

    iget-object p6, p0, Lfh;->c:Lps;

    iget p6, p6, Lps;->e:F

    add-float/2addr p4, p6

    iput p4, p1, Lps;->e:F

    .line 115
    iget-object p1, p0, Lfh;->e:Lps;

    iget p4, p1, Lps;->d:F

    iget-object p6, p0, Lfh;->c:Lps;

    iget p6, p6, Lps;->e:F

    add-float/2addr p4, p6

    iput p4, p1, Lps;->d:F

    .line 117
    iget p1, p0, Lfh;->m:F

    sub-float p1, p2, p1

    mul-float/2addr p1, p1

    mul-float/2addr p1, p1

    sub-float p1, p2, p1

    mul-float/2addr p1, p5

    .line 121
    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    .line 122
    iget p4, p0, Lfh;->m:F

    mul-float/2addr p4, p5

    invoke-static {p4}, Lin;->a(F)F

    move-result p4

    iget-object p6, p0, Lfh;->a:Lps;

    iget p6, p6, Lps;->d:F

    const v3, 0x3f333333    # 0.7f

    sub-float/2addr p6, v3

    neg-float p6, p6

    mul-float/2addr p4, p6

    const/high16 p6, 0x3f400000    # 0.75f

    mul-float/2addr p4, p6

    .line 123
    iget-object p6, p0, Lfh;->d:Lps;

    iget v3, p6, Lps;->d:F

    float-to-double v3, v3

    float-to-double v5, p1

    const-wide v7, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v5, v7

    float-to-double v7, p4

    add-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-float p1, v3

    iput p1, p6, Lps;->d:F

    .line 124
    iget-object p1, p0, Lfh;->d:Lps;

    iget p4, p1, Lps;->e:F

    iget-object p6, p0, Lfh;->c:Lps;

    iget p6, p6, Lps;->e:F

    mul-float/2addr p6, v1

    add-float/2addr p4, p6

    iput p4, p1, Lps;->e:F

    .line 125
    iget-object p1, p0, Lfh;->d:Lps;

    iget p4, p0, Lfh;->m:F

    mul-float/2addr p4, p5

    invoke-static {p4}, Lin;->a(F)F

    move-result p4

    const p5, -0x41333333    # -0.4f

    mul-float/2addr p4, p5

    iput p4, p1, Lps;->f:F

    .line 128
    :cond_17c
    iget-boolean p1, p0, Lfh;->l:Z

    if-eqz p1, :cond_1bc

    .line 129
    iget-object p1, p0, Lfh;->c:Lps;

    iput v2, p1, Lps;->d:F

    .line 130
    iget-object p1, p0, Lfh;->f:Lps;

    iget p4, p1, Lps;->d:F

    sub-float/2addr p4, v0

    iput p4, p1, Lps;->d:F

    .line 131
    iget-object p1, p0, Lfh;->g:Lps;

    iget p4, p1, Lps;->d:F

    sub-float/2addr p4, v0

    iput p4, p1, Lps;->d:F

    .line 132
    iget-object p1, p0, Lfh;->d:Lps;

    iget p4, p1, Lps;->d:F

    const p5, 0x3ecccccd    # 0.4f

    add-float/2addr p4, p5

    iput p4, p1, Lps;->d:F

    .line 133
    iget-object p1, p0, Lfh;->e:Lps;

    iget p4, p1, Lps;->d:F

    add-float/2addr p4, p5

    iput p4, p1, Lps;->d:F

    .line 134
    iget-object p1, p0, Lfh;->f:Lps;

    const/high16 p4, 0x40800000    # 4.0f

    iput p4, p1, Lps;->c:F

    .line 135
    iget-object p1, p0, Lfh;->g:Lps;

    iput p4, p1, Lps;->c:F

    .line 136
    iget-object p1, p0, Lfh;->f:Lps;

    const/high16 p4, 0x41100000    # 9.0f

    iput p4, p1, Lps;->b:F

    .line 137
    iget-object p1, p0, Lfh;->g:Lps;

    iput p4, p1, Lps;->b:F

    .line 138
    iget-object p1, p0, Lfh;->a:Lps;

    iput p2, p1, Lps;->b:F

    goto :goto_1d6

    .line 140
    :cond_1bc
    iget-object p1, p0, Lfh;->c:Lps;

    iput v0, p1, Lps;->d:F

    .line 141
    iget-object p1, p0, Lfh;->f:Lps;

    iput v0, p1, Lps;->c:F

    .line 142
    iget-object p1, p0, Lfh;->g:Lps;

    iput v0, p1, Lps;->c:F

    .line 143
    iget-object p1, p0, Lfh;->f:Lps;

    const/high16 p2, 0x41400000    # 12.0f

    iput p2, p1, Lps;->b:F

    .line 144
    iget-object p1, p0, Lfh;->g:Lps;

    iput p2, p1, Lps;->b:F

    .line 145
    iget-object p1, p0, Lfh;->a:Lps;

    iput v0, p1, Lps;->b:F

    .line 149
    :goto_1d6
    iget-object p1, p0, Lfh;->d:Lps;

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

    .line 150
    iget-object p1, p0, Lfh;->e:Lps;

    iget p2, p1, Lps;->f:F

    invoke-static {p4}, Lin;->b(F)F

    move-result p4

    mul-float/2addr p4, p6

    add-float/2addr p4, p6

    sub-float/2addr p2, p4

    iput p2, p1, Lps;->f:F

    .line 151
    iget-object p1, p0, Lfh;->d:Lps;

    iget p2, p1, Lps;->d:F

    const p4, 0x3d89374c    # 0.067f

    mul-float/2addr p3, p4

    invoke-static {p3}, Lin;->a(F)F

    move-result p4

    mul-float/2addr p4, p6

    add-float/2addr p2, p4

    iput p2, p1, Lps;->d:F

    .line 152
    iget-object p1, p0, Lfh;->e:Lps;

    iget p2, p1, Lps;->d:F

    invoke-static {p3}, Lin;->a(F)F

    move-result p3

    mul-float/2addr p3, p6

    sub-float/2addr p2, p3

    iput p2, p1, Lps;->d:F

    return-void
.end method
