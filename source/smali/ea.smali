###### Class defpackage.ea (ea)
.class public Lea;
.super Lnn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 24

    move-object/from16 v0, p0

    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lnn;-><init>(IF)V

    .line 7
    new-instance v1, Lps;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3}, Lps;-><init>(II)V

    iput-object v1, v0, Lea;->d:Lps;

    .line 8
    iget-object v4, v0, Lea;->d:Lps;

    const/high16 v5, -0x3fc00000    # -3.0f

    const/high16 v6, -0x3f800000    # -4.0f

    const/high16 v7, -0x3f800000    # -4.0f

    const/4 v8, 0x6

    const/4 v9, 0x6

    const/4 v10, 0x6

    const v11, 0x3f19999a    # 0.6f

    invoke-virtual/range {v4 .. v11}, Lps;->a(FFFIIIF)V

    .line 9
    iget-object v1, v0, Lea;->d:Lps;

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v5, -0x3f000000    # -8.0f

    invoke-virtual {v1, v2, v4, v5}, Lps;->a(FFF)V

    .line 11
    new-instance v1, Lps;

    const/16 v4, 0x1c

    const/16 v5, 0x8

    invoke-direct {v1, v4, v5}, Lps;-><init>(II)V

    iput-object v1, v0, Lea;->e:Lps;

    .line 12
    iget-object v6, v0, Lea;->e:Lps;

    const/high16 v8, -0x3ee00000    # -10.0f

    const/high16 v9, -0x3f200000    # -7.0f

    const/16 v10, 0x8

    const/16 v11, 0x10

    const/4 v12, 0x6

    const/high16 v13, 0x3fe00000    # 1.75f

    invoke-virtual/range {v6 .. v13}, Lps;->a(FFFIIIF)V

    .line 13
    iget-object v1, v0, Lea;->e:Lps;

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v1, v2, v4, v5}, Lps;->a(FFF)V

    const/high16 v13, 0x3f000000    # 0.5f

    .line 16
    new-instance v1, Lps;

    const/16 v2, 0x10

    invoke-direct {v1, v3, v2}, Lps;-><init>(II)V

    iput-object v1, v0, Lea;->f:Lps;

    .line 17
    iget-object v4, v0, Lea;->f:Lps;

    const/high16 v5, -0x40000000    # -2.0f

    const/4 v6, 0x0

    const/high16 v7, -0x40000000    # -2.0f

    const/4 v8, 0x4

    const/4 v9, 0x6

    const/4 v10, 0x4

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual/range {v4 .. v11}, Lps;->a(FFFIIIF)V

    .line 18
    iget-object v1, v0, Lea;->f:Lps;

    const/high16 v4, -0x3fc00000    # -3.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-virtual {v1, v4, v5, v6}, Lps;->a(FFF)V

    .line 20
    new-instance v1, Lps;

    invoke-direct {v1, v3, v2}, Lps;-><init>(II)V

    iput-object v1, v0, Lea;->g:Lps;

    .line 21
    iget-object v14, v0, Lea;->g:Lps;

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v16, 0x0

    const/high16 v17, -0x40000000    # -2.0f

    const/16 v18, 0x4

    const/16 v19, 0x6

    const/16 v20, 0x4

    const/high16 v21, 0x3f000000    # 0.5f

    invoke-virtual/range {v14 .. v21}, Lps;->a(FFFIIIF)V

    .line 22
    iget-object v1, v0, Lea;->g:Lps;

    const/high16 v14, 0x40400000    # 3.0f

    invoke-virtual {v1, v14, v5, v6}, Lps;->a(FFF)V

    .line 24
    new-instance v1, Lps;

    invoke-direct {v1, v3, v2}, Lps;-><init>(II)V

    iput-object v1, v0, Lea;->h:Lps;

    .line 25
    iget-object v15, v0, Lea;->h:Lps;

    const/high16 v16, -0x40000000    # -2.0f

    const/16 v17, 0x0

    const/high16 v18, -0x40000000    # -2.0f

    const/16 v19, 0x4

    const/16 v20, 0x6

    const/16 v21, 0x4

    const/high16 v22, 0x3f000000    # 0.5f

    invoke-virtual/range {v15 .. v22}, Lps;->a(FFFIIIF)V

    .line 26
    iget-object v1, v0, Lea;->h:Lps;

    const/high16 v15, -0x3f600000    # -5.0f

    invoke-virtual {v1, v4, v5, v15}, Lps;->a(FFF)V

    .line 28
    new-instance v1, Lps;

    invoke-direct {v1, v3, v2}, Lps;-><init>(II)V

    iput-object v1, v0, Lea;->i:Lps;

    .line 29
    iget-object v6, v0, Lea;->i:Lps;

    const/4 v8, 0x0

    const/high16 v9, -0x40000000    # -2.0f

    const/4 v11, 0x6

    const/4 v12, 0x4

    invoke-virtual/range {v6 .. v13}, Lps;->a(FFFIIIF)V

    .line 30
    iget-object v1, v0, Lea;->i:Lps;

    invoke-virtual {v1, v14, v5, v15}, Lps;->a(FFF)V

    return-void
.end method
