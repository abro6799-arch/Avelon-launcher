###### Class defpackage.o (o)
.class public Lo;
.super Lko;
.source "SourceFile"


# instance fields
.field public a:Lps;

.field public b:Lps;

.field public c:Lps;

.field public d:Lps;

.field public e:Lps;

.field public f:Lps;

.field g:Lps;

.field h:Lps;

.field i:Lps;

.field j:Lps;

.field k:Lps;


# direct methods
.method public constructor <init>()V
    .registers 22

    move-object/from16 v0, p0

    .line 18
    invoke-direct/range {p0 .. p0}, Lko;-><init>()V

    const/4 v8, 0x0

    .line 23
    new-instance v9, Lps;

    const/4 v1, 0x0

    invoke-direct {v9, v1, v1}, Lps;-><init>(II)V

    iput-object v9, v0, Lo;->a:Lps;

    const/high16 v10, -0x3fc00000    # -3.0f

    const/high16 v11, -0x3fc00000    # -3.0f

    const/high16 v12, -0x40000000    # -2.0f

    const/4 v13, 0x6

    const/4 v14, 0x6

    const/4 v15, 0x4

    const/16 v16, 0x0

    .line 24
    invoke-virtual/range {v9 .. v16}, Lps;->a(FFFIIIF)V

    .line 25
    iget-object v2, v0, Lo;->a:Lps;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v9, 0x41580000    # 13.5f

    const/high16 v10, -0x3f200000    # -7.0f

    invoke-virtual {v2, v3, v9, v10}, Lps;->a(FFF)V

    .line 27
    new-instance v11, Lps;

    const/16 v2, 0x12

    const/16 v4, 0xe

    invoke-direct {v11, v2, v4}, Lps;-><init>(II)V

    iput-object v11, v0, Lo;->b:Lps;

    const/high16 v12, -0x3f800000    # -4.0f

    const/high16 v13, -0x40000000    # -2.0f

    const/high16 v14, -0x3fc00000    # -3.0f

    const/4 v15, 0x6

    const/16 v16, 0x9

    const/16 v17, 0x6

    const/16 v18, 0x0

    .line 28
    invoke-virtual/range {v11 .. v18}, Lps;->a(FFFIIIF)V

    .line 29
    iget-object v5, v0, Lo;->b:Lps;

    const/4 v6, 0x0

    const/high16 v7, 0x41600000    # 14.0f

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v5, v6, v7, v11}, Lps;->a(FFF)V

    .line 31
    new-instance v12, Lps;

    const/16 v5, 0x15

    invoke-direct {v12, v5, v1}, Lps;-><init>(II)V

    iput-object v12, v0, Lo;->k:Lps;

    const/high16 v13, -0x3f800000    # -4.0f

    const/high16 v15, -0x3fc00000    # -3.0f

    const/16 v16, 0x8

    const/16 v18, 0x7

    const/16 v19, 0x0

    .line 32
    invoke-virtual/range {v12 .. v19}, Lps;->a(FFFIIIF)V

    .line 33
    iget-object v5, v0, Lo;->k:Lps;

    invoke-virtual {v5, v3, v7, v11}, Lps;->a(FFF)V

    .line 35
    new-instance v12, Lps;

    invoke-direct {v12, v1, v2}, Lps;-><init>(II)V

    iput-object v12, v0, Lo;->c:Lps;

    const/high16 v13, -0x40800000    # -1.0f

    const/4 v14, 0x0

    const/high16 v15, -0x40800000    # -1.0f

    const/16 v16, 0x2

    const/16 v17, 0x8

    const/16 v18, 0x2

    .line 36
    invoke-virtual/range {v12 .. v19}, Lps;->a(FFFIIIF)V

    .line 37
    iget-object v5, v0, Lo;->c:Lps;

    const/high16 v6, -0x3fe00000    # -2.5f

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v11, 0x40e00000    # 7.0f

    invoke-virtual {v5, v6, v7, v11}, Lps;->a(FFF)V

    .line 39
    new-instance v12, Lps;

    invoke-direct {v12, v1, v2}, Lps;-><init>(II)V

    iput-object v12, v0, Lo;->d:Lps;

    .line 40
    invoke-virtual/range {v12 .. v19}, Lps;->a(FFFIIIF)V

    .line 41
    iget-object v5, v0, Lo;->d:Lps;

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v5, v12, v7, v11}, Lps;->a(FFF)V

    .line 43
    new-instance v13, Lps;

    invoke-direct {v13, v1, v2}, Lps;-><init>(II)V

    iput-object v13, v0, Lo;->e:Lps;

    const/high16 v14, -0x40800000    # -1.0f

    const/4 v15, 0x0

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x2

    const/16 v18, 0x8

    const/16 v19, 0x2

    const/16 v20, 0x0

    .line 44
    invoke-virtual/range {v13 .. v20}, Lps;->a(FFFIIIF)V

    .line 45
    iget-object v5, v0, Lo;->e:Lps;

    const/high16 v11, -0x3f800000    # -4.0f

    invoke-virtual {v5, v6, v7, v11}, Lps;->a(FFF)V

    .line 47
    new-instance v13, Lps;

    invoke-direct {v13, v1, v2}, Lps;-><init>(II)V

    iput-object v13, v0, Lo;->f:Lps;

    .line 48
    invoke-virtual/range {v13 .. v20}, Lps;->a(FFFIIIF)V

    .line 49
    iget-object v5, v0, Lo;->f:Lps;

    invoke-virtual {v5, v12, v7, v11}, Lps;->a(FFF)V

    .line 51
    new-instance v13, Lps;

    const/16 v5, 0x9

    invoke-direct {v13, v5, v2}, Lps;-><init>(II)V

    iput-object v13, v0, Lo;->j:Lps;

    .line 52
    invoke-virtual/range {v13 .. v20}, Lps;->a(FFFIIIF)V

    .line 53
    iget-object v2, v0, Lo;->j:Lps;

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v2, v3, v5, v6}, Lps;->a(FFF)V

    .line 59
    new-instance v11, Lps;

    const/16 v2, 0x10

    invoke-direct {v11, v2, v4}, Lps;-><init>(II)V

    iput-object v11, v0, Lo;->g:Lps;

    const/high16 v12, -0x3fc00000    # -3.0f

    const/high16 v13, -0x3f600000    # -5.0f

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 60
    invoke-virtual/range {v11 .. v18}, Lps;->a(FFFIIIF)V

    .line 61
    iget-object v5, v0, Lo;->g:Lps;

    invoke-virtual {v5, v3, v9, v10}, Lps;->a(FFF)V

    .line 63
    new-instance v11, Lps;

    invoke-direct {v11, v2, v4}, Lps;-><init>(II)V

    iput-object v11, v0, Lo;->h:Lps;

    const/high16 v12, 0x3f800000    # 1.0f

    .line 64
    invoke-virtual/range {v11 .. v18}, Lps;->a(FFFIIIF)V

    .line 65
    iget-object v2, v0, Lo;->h:Lps;

    invoke-virtual {v2, v3, v9, v10}, Lps;->a(FFF)V

    .line 67
    new-instance v2, Lps;

    const/16 v3, 0xa

    invoke-direct {v2, v1, v3}, Lps;-><init>(II)V

    iput-object v2, v0, Lo;->i:Lps;

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v4, 0x0

    const/high16 v5, -0x3f600000    # -5.0f

    const/4 v6, 0x3

    const/4 v7, 0x3

    const/4 v11, 0x4

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v11

    .line 68
    invoke-virtual/range {v1 .. v8}, Lps;->a(FFFIIIF)V

    .line 69
    iget-object v1, v0, Lo;->i:Lps;

    const/high16 v2, -0x41000000    # -0.5f

    invoke-virtual {v1, v2, v9, v10}, Lps;->a(FFF)V

    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .registers 7

    .line 92
    invoke-super/range {p0 .. p6}, Lko;->a(FFFFFF)V

    .line 93
    invoke-virtual/range {p0 .. p6}, Lo;->b(FFFFFF)V

    .line 94
    iget-object p1, p0, Lo;->a:Lps;

    invoke-virtual {p1, p6}, Lps;->b(F)V

    .line 95
    iget-object p1, p0, Lo;->b:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 96
    iget-object p1, p0, Lo;->c:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 97
    iget-object p1, p0, Lo;->d:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 98
    iget-object p1, p0, Lo;->e:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 99
    iget-object p1, p0, Lo;->f:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 101
    iget-object p1, p0, Lo;->g:Lps;

    invoke-virtual {p1, p6}, Lps;->b(F)V

    .line 102
    iget-object p1, p0, Lo;->h:Lps;

    invoke-virtual {p1, p6}, Lps;->b(F)V

    .line 103
    iget-object p1, p0, Lo;->i:Lps;

    invoke-virtual {p1, p6}, Lps;->b(F)V

    .line 104
    iget-object p1, p0, Lo;->j:Lps;

    invoke-virtual {p1, p6}, Lps;->b(F)V

    .line 106
    iget-object p1, p0, Lo;->k:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    return-void
.end method

.method public a(Lls;FFF)V
    .registers 20

    move-object v0, p0

    move/from16 v1, p4

    .line 111
    move-object/from16 v2, p1

    check-cast v2, Lgi;

    .line 113
    invoke-virtual {v2}, Lgi;->C()Z

    move-result v3

    const v4, 0x3f2a8c15    # 0.6662f

    const v5, 0x3fb33333    # 1.4f

    const/4 v6, 0x0

    if-eqz v3, :cond_19

    .line 114
    iget-object v3, v0, Lo;->j:Lps;

    iput v6, v3, Lps;->e:F

    goto :goto_26

    .line 116
    :cond_19
    iget-object v3, v0, Lo;->j:Lps;

    mul-float v7, p2, v4

    invoke-static {v7}, Lin;->b(F)F

    move-result v7

    mul-float/2addr v7, v5

    mul-float v7, v7, p3

    iput v7, v3, Lps;->e:F

    .line 119
    :goto_26
    invoke-virtual {v2}, Lgi;->B()Z

    move-result v3

    const/high16 v7, -0x3fc00000    # -3.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, -0x3fe00000    # -2.5f

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, -0x3f800000    # -4.0f

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, 0x41800000    # 16.0f

    if-eqz v3, :cond_96

    .line 120
    iget-object v3, v0, Lo;->k:Lps;

    invoke-virtual {v3, v12, v13, v7}, Lps;->a(FFF)V

    .line 121
    iget-object v3, v0, Lo;->k:Lps;

    const v4, 0x3fa0d97c

    iput v4, v3, Lps;->d:F

    .line 122
    iget-object v3, v0, Lo;->k:Lps;

    iput v6, v3, Lps;->e:F

    .line 124
    iget-object v3, v0, Lo;->b:Lps;

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v3, v6, v4, v6}, Lps;->a(FFF)V

    .line 125
    iget-object v3, v0, Lo;->b:Lps;

    const v4, 0x3f490fdb

    iput v4, v3, Lps;->d:F

    .line 127
    iget-object v3, v0, Lo;->j:Lps;

    const/high16 v4, 0x41a80000    # 21.0f

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {v3, v12, v4, v5}, Lps;->a(FFF)V

    .line 129
    iget-object v3, v0, Lo;->c:Lps;

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v3, v9, v4, v10}, Lps;->a(FFF)V

    .line 130
    iget-object v3, v0, Lo;->c:Lps;

    const v5, 0x4096cbe4

    iput v5, v3, Lps;->d:F

    .line 131
    iget-object v3, v0, Lo;->d:Lps;

    invoke-virtual {v3, v8, v4, v10}, Lps;->a(FFF)V

    .line 132
    iget-object v3, v0, Lo;->d:Lps;

    iput v5, v3, Lps;->d:F

    .line 134
    iget-object v3, v0, Lo;->e:Lps;

    const v4, 0x40b9fb78

    iput v4, v3, Lps;->d:F

    .line 135
    iget-object v3, v0, Lo;->e:Lps;

    const v5, -0x3fe0a3d7    # -2.49f

    const/high16 v7, 0x41880000    # 17.0f

    invoke-virtual {v3, v5, v7, v11}, Lps;->a(FFF)V

    .line 136
    iget-object v3, v0, Lo;->f:Lps;

    iput v4, v3, Lps;->d:F

    .line 137
    iget-object v3, v0, Lo;->f:Lps;

    const v4, 0x3f028f5c    # 0.51f

    invoke-virtual {v3, v4, v7, v11}, Lps;->a(FFF)V

    goto :goto_102

    .line 139
    :cond_96
    iget-object v3, v0, Lo;->b:Lps;

    const/high16 v14, 0x41600000    # 14.0f

    invoke-virtual {v3, v6, v14, v10}, Lps;->a(FFF)V

    .line 140
    iget-object v3, v0, Lo;->b:Lps;

    const v10, 0x3fc90fdb

    iput v10, v3, Lps;->d:F

    .line 142
    iget-object v3, v0, Lo;->k:Lps;

    invoke-virtual {v3, v12, v14, v7}, Lps;->a(FFF)V

    .line 143
    iget-object v3, v0, Lo;->k:Lps;

    iget-object v7, v0, Lo;->b:Lps;

    iget v7, v7, Lps;->d:F

    iput v7, v3, Lps;->d:F

    .line 145
    iget-object v3, v0, Lo;->j:Lps;

    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v10, 0x41000000    # 8.0f

    invoke-virtual {v3, v12, v7, v10}, Lps;->a(FFF)V

    .line 147
    iget-object v3, v0, Lo;->c:Lps;

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-virtual {v3, v9, v13, v7}, Lps;->a(FFF)V

    .line 148
    iget-object v3, v0, Lo;->d:Lps;

    invoke-virtual {v3, v8, v13, v7}, Lps;->a(FFF)V

    .line 149
    iget-object v3, v0, Lo;->e:Lps;

    invoke-virtual {v3, v9, v13, v11}, Lps;->a(FFF)V

    .line 150
    iget-object v3, v0, Lo;->f:Lps;

    invoke-virtual {v3, v8, v13, v11}, Lps;->a(FFF)V

    .line 153
    iget-object v3, v0, Lo;->c:Lps;

    mul-float v4, v4, p2

    invoke-static {v4}, Lin;->b(F)F

    move-result v7

    mul-float/2addr v7, v5

    mul-float v7, v7, p3

    iput v7, v3, Lps;->d:F

    .line 154
    iget-object v3, v0, Lo;->d:Lps;

    const v7, 0x40490fdb    # (float)Math.PI

    add-float/2addr v7, v4

    invoke-static {v7}, Lin;->b(F)F

    move-result v8

    mul-float/2addr v8, v5

    mul-float v8, v8, p3

    iput v8, v3, Lps;->d:F

    .line 155
    iget-object v3, v0, Lo;->e:Lps;

    invoke-static {v7}, Lin;->b(F)F

    move-result v7

    mul-float/2addr v7, v5

    mul-float v7, v7, p3

    iput v7, v3, Lps;->d:F

    .line 156
    iget-object v3, v0, Lo;->f:Lps;

    invoke-static {v4}, Lin;->b(F)F

    move-result v4

    mul-float/2addr v4, v5

    mul-float v4, v4, p3

    iput v4, v3, Lps;->d:F

    .line 160
    :goto_102
    invoke-virtual {v2, v1}, Lgi;->c(F)F

    move-result v3

    invoke-virtual {v2, v1, v6}, Lgi;->a(FF)F

    move-result v4

    add-float/2addr v3, v4

    .line 162
    iget-object v4, v0, Lo;->a:Lps;

    iput v3, v4, Lps;->f:F

    .line 163
    iget-object v4, v0, Lo;->g:Lps;

    iput v3, v4, Lps;->f:F

    .line 164
    iget-object v4, v0, Lo;->h:Lps;

    iput v3, v4, Lps;->f:F

    .line 165
    iget-object v4, v0, Lo;->i:Lps;

    iput v3, v4, Lps;->f:F

    .line 168
    iget-object v3, v0, Lo;->k:Lps;

    const v4, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v1, v4}, Lgi;->a(FF)F

    move-result v4

    iput v4, v3, Lps;->f:F

    .line 169
    iget-object v3, v0, Lo;->b:Lps;

    const v4, -0x41dc28f6    # -0.16f

    invoke-virtual {v2, v1, v4}, Lgi;->a(FF)F

    move-result v4

    iput v4, v3, Lps;->f:F

    .line 170
    iget-object v3, v0, Lo;->j:Lps;

    const v4, -0x41b33333    # -0.2f

    invoke-virtual {v2, v1, v4}, Lgi;->a(FF)F

    move-result v4

    iput v4, v3, Lps;->f:F

    .line 172
    invoke-virtual {v2}, Lgi;->v()Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 173
    invoke-virtual {v2, v1}, Lgi;->a(F)F

    move-result v3

    invoke-virtual {v2, v1}, Lgi;->b_(F)F

    move-result v1

    mul-float/2addr v3, v1

    .line 174
    invoke-static {v3, v3, v3}, Lorg/lwjgl/opengl/GL11;->glColor3f(FFF)V

    :cond_14e
    return-void
.end method

.method public b(FFFFFF)V
    .registers 7

    .line 180
    invoke-super/range {p0 .. p6}, Lko;->b(FFFFFF)V

    .line 181
    iget-object p1, p0, Lo;->a:Lps;

    const p2, 0x42652ee0

    div-float/2addr p5, p2

    iput p5, p1, Lps;->d:F

    .line 182
    iget-object p1, p0, Lo;->a:Lps;

    div-float/2addr p4, p2

    iput p4, p1, Lps;->e:F

    .line 184
    iget-object p1, p0, Lo;->g:Lps;

    iget-object p2, p0, Lo;->a:Lps;

    iget p2, p2, Lps;->e:F

    iput p2, p1, Lps;->e:F

    .line 185
    iget-object p1, p0, Lo;->g:Lps;

    iget-object p2, p0, Lo;->a:Lps;

    iget p2, p2, Lps;->d:F

    iput p2, p1, Lps;->d:F

    .line 187
    iget-object p1, p0, Lo;->h:Lps;

    iget-object p2, p0, Lo;->a:Lps;

    iget p2, p2, Lps;->e:F

    iput p2, p1, Lps;->e:F

    .line 188
    iget-object p1, p0, Lo;->h:Lps;

    iget-object p2, p0, Lo;->a:Lps;

    iget p2, p2, Lps;->d:F

    iput p2, p1, Lps;->d:F

    .line 190
    iget-object p1, p0, Lo;->i:Lps;

    iget-object p2, p0, Lo;->a:Lps;

    iget p2, p2, Lps;->e:F

    iput p2, p1, Lps;->e:F

    .line 191
    iget-object p1, p0, Lo;->i:Lps;

    iget-object p2, p0, Lo;->a:Lps;

    iget p2, p2, Lps;->d:F

    iput p2, p1, Lps;->d:F

    .line 193
    iget-object p1, p0, Lo;->j:Lps;

    iput p3, p1, Lps;->d:F

    return-void
.end method
