###### Class defpackage.il (il)
.class public Lil;
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


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lil;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 27

    move-object/from16 v0, p0

    .line 10
    invoke-direct/range {p0 .. p0}, Lko;-><init>()V

    .line 13
    new-instance v1, Lps;

    const/4 v9, 0x0

    invoke-direct {v1, v9, v9}, Lps;-><init>(II)V

    iput-object v1, v0, Lil;->a:Lps;

    const/high16 v2, -0x3f800000    # -4.0f

    const/high16 v3, -0x3f000000    # -8.0f

    const/high16 v4, -0x3f800000    # -4.0f

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    move/from16 v8, p1

    .line 14
    invoke-virtual/range {v1 .. v8}, Lps;->a(FFFIIIF)V

    .line 15
    iget-object v1, v0, Lil;->a:Lps;

    const/4 v2, 0x4

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lps;->a(FFF)V

    .line 17
    new-instance v10, Lps;

    const/16 v1, 0x20

    invoke-direct {v10, v1, v9}, Lps;-><init>(II)V

    iput-object v10, v0, Lil;->b:Lps;

    const/high16 v11, -0x3f800000    # -4.0f

    const/high16 v12, -0x3f000000    # -8.0f

    const/high16 v13, -0x3f800000    # -4.0f

    const/16 v14, 0x8

    const/16 v15, 0x8

    const/16 v16, 0x8

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v17, p1, v1

    .line 18
    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    .line 19
    iget-object v1, v0, Lil;->b:Lps;

    invoke-virtual {v1, v3, v2, v3}, Lps;->a(FFF)V

    .line 21
    new-instance v1, Lps;

    const/16 v4, 0x10

    invoke-direct {v1, v4, v4}, Lps;-><init>(II)V

    iput-object v1, v0, Lil;->c:Lps;

    const/high16 v18, -0x3f800000    # -4.0f

    const/16 v19, 0x0

    const/high16 v20, -0x40000000    # -2.0f

    const/16 v21, 0x8

    const/16 v22, 0xc

    const/16 v23, 0x4

    move-object/from16 v17, v1

    move/from16 v24, p1

    .line 22
    invoke-virtual/range {v17 .. v24}, Lps;->a(FFFIIIF)V

    .line 23
    iget-object v1, v0, Lil;->c:Lps;

    invoke-virtual {v1, v3, v2, v3}, Lps;->a(FFF)V

    .line 25
    new-instance v1, Lps;

    invoke-direct {v1, v9, v4}, Lps;-><init>(II)V

    iput-object v1, v0, Lil;->d:Lps;

    const/high16 v18, -0x40000000    # -2.0f

    const/16 v21, 0x4

    const/16 v22, 0x6

    move-object/from16 v17, v1

    .line 26
    invoke-virtual/range {v17 .. v24}, Lps;->a(FFFIIIF)V

    .line 27
    iget-object v1, v0, Lil;->d:Lps;

    int-to-float v2, v4

    const/high16 v3, -0x40000000    # -2.0f

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v1, v3, v2, v5}, Lps;->a(FFF)V

    .line 29
    new-instance v1, Lps;

    invoke-direct {v1, v9, v4}, Lps;-><init>(II)V

    iput-object v1, v0, Lil;->e:Lps;

    move-object/from16 v17, v1

    .line 30
    invoke-virtual/range {v17 .. v24}, Lps;->a(FFFIIIF)V

    .line 31
    iget-object v1, v0, Lil;->e:Lps;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v1, v6, v2, v5}, Lps;->a(FFF)V

    .line 33
    new-instance v1, Lps;

    invoke-direct {v1, v9, v4}, Lps;-><init>(II)V

    iput-object v1, v0, Lil;->f:Lps;

    move-object/from16 v17, v1

    .line 34
    invoke-virtual/range {v17 .. v24}, Lps;->a(FFFIIIF)V

    .line 35
    iget-object v1, v0, Lil;->f:Lps;

    const/high16 v5, -0x3f800000    # -4.0f

    invoke-virtual {v1, v3, v2, v5}, Lps;->a(FFF)V

    .line 37
    new-instance v1, Lps;

    invoke-direct {v1, v9, v4}, Lps;-><init>(II)V

    iput-object v1, v0, Lil;->g:Lps;

    move-object/from16 v17, v1

    .line 38
    invoke-virtual/range {v17 .. v24}, Lps;->a(FFFIIIF)V

    .line 39
    iget-object v1, v0, Lil;->g:Lps;

    invoke-virtual {v1, v6, v2, v5}, Lps;->a(FFF)V

    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .registers 7

    .line 43
    invoke-virtual/range {p0 .. p6}, Lil;->b(FFFFFF)V

    .line 45
    iget-object p1, p0, Lil;->a:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 46
    iget-object p1, p0, Lil;->c:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 47
    iget-object p1, p0, Lil;->d:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 48
    iget-object p1, p0, Lil;->e:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 49
    iget-object p1, p0, Lil;->f:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 50
    iget-object p1, p0, Lil;->g:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    return-void
.end method

.method public b(FFFFFF)V
    .registers 7

    .line 54
    iget-object p3, p0, Lil;->a:Lps;

    const p6, 0x42652ee0

    div-float/2addr p4, p6

    iput p4, p3, Lps;->e:F

    .line 55
    iget-object p3, p0, Lil;->a:Lps;

    div-float/2addr p5, p6

    iput p5, p3, Lps;->d:F

    .line 57
    iget-object p3, p0, Lil;->d:Lps;

    const p4, 0x3f2a8c15    # 0.6662f

    mul-float/2addr p1, p4

    invoke-static {p1}, Lin;->b(F)F

    move-result p4

    const p5, 0x3fb33333    # 1.4f

    mul-float/2addr p4, p5

    mul-float/2addr p4, p2

    iput p4, p3, Lps;->d:F

    .line 58
    iget-object p3, p0, Lil;->e:Lps;

    const p4, 0x40490fdb    # (float)Math.PI

    add-float/2addr p4, p1

    invoke-static {p4}, Lin;->b(F)F

    move-result p6

    mul-float/2addr p6, p5

    mul-float/2addr p6, p2

    iput p6, p3, Lps;->d:F

    .line 59
    iget-object p3, p0, Lil;->f:Lps;

    invoke-static {p4}, Lin;->b(F)F

    move-result p4

    mul-float/2addr p4, p5

    mul-float/2addr p4, p2

    iput p4, p3, Lps;->d:F

    .line 60
    iget-object p3, p0, Lil;->g:Lps;

    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    mul-float/2addr p1, p5

    mul-float/2addr p1, p2

    iput p1, p3, Lps;->d:F

    return-void
.end method
