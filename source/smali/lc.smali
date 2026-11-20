###### Class defpackage.lc (lc)
.class public Llc;
.super Lej;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 20

    move-object/from16 v0, p0

    .line 6
    invoke-direct/range {p0 .. p0}, Lej;-><init>()V

    const/4 v8, 0x0

    .line 9
    new-instance v1, Lps;

    const/16 v2, 0x28

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lps;-><init>(II)V

    iput-object v1, v0, Llc;->d:Lps;

    .line 10
    iget-object v9, v0, Llc;->d:Lps;

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, -0x40000000    # -2.0f

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x2

    const/16 v14, 0xc

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lps;->a(FFFIIIF)V

    .line 11
    iget-object v1, v0, Llc;->d:Lps;

    const/high16 v4, -0x3f600000    # -5.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    invoke-virtual {v1, v4, v9, v10}, Lps;->a(FFF)V

    .line 13
    new-instance v1, Lps;

    invoke-direct {v1, v2, v3}, Lps;-><init>(II)V

    iput-object v1, v0, Llc;->e:Lps;

    .line 14
    iget-object v1, v0, Llc;->e:Lps;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lps;->g:Z

    .line 15
    iget-object v11, v0, Llc;->e:Lps;

    const/high16 v13, -0x40000000    # -2.0f

    const/high16 v14, -0x40800000    # -1.0f

    const/16 v16, 0xc

    const/16 v17, 0x2

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Lps;->a(FFFIIIF)V

    .line 16
    iget-object v1, v0, Llc;->e:Lps;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v1, v4, v9, v10}, Lps;->a(FFF)V

    .line 18
    new-instance v1, Lps;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Lps;-><init>(II)V

    iput-object v1, v0, Llc;->f:Lps;

    .line 19
    iget-object v11, v0, Llc;->f:Lps;

    const/4 v13, 0x0

    invoke-virtual/range {v11 .. v18}, Lps;->a(FFFIIIF)V

    .line 20
    iget-object v1, v0, Llc;->f:Lps;

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v1, v5, v11, v10}, Lps;->a(FFF)V

    .line 22
    new-instance v1, Lps;

    invoke-direct {v1, v4, v3}, Lps;-><init>(II)V

    iput-object v1, v0, Llc;->g:Lps;

    .line 23
    iget-object v1, v0, Llc;->g:Lps;

    iput-boolean v2, v1, Lps;->g:Z

    .line 24
    iget-object v1, v0, Llc;->g:Lps;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x2

    const/16 v6, 0xc

    const/4 v7, 0x2

    invoke-virtual/range {v1 .. v8}, Lps;->a(FFFIIIF)V

    .line 25
    iget-object v1, v0, Llc;->g:Lps;

    invoke-virtual {v1, v9, v11, v10}, Lps;->a(FFF)V

    return-void
.end method
