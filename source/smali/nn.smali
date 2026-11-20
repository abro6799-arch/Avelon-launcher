###### Class defpackage.nn (nn)
.class public Lnn;
.super Lko;
.source "SourceFile"


# instance fields
.field public d:Lps;

.field public e:Lps;

.field public f:Lps;

.field public g:Lps;

.field public h:Lps;

.field public i:Lps;


# direct methods
.method public constructor <init>(IF)V
    .registers 21

    move-object/from16 v0, p0

    .line 6
    invoke-direct/range {p0 .. p0}, Lko;-><init>()V

    .line 7
    new-instance v1, Lps;

    const/4 v9, 0x0

    invoke-direct {v1, v9, v9}, Lps;-><init>(II)V

    iput-object v1, v0, Lnn;->d:Lps;

    const/high16 v2, -0x3f800000    # -4.0f

    const/high16 v3, -0x3f800000    # -4.0f

    const/high16 v4, -0x3f000000    # -8.0f

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    move/from16 v8, p2

    .line 8
    invoke-virtual/range {v1 .. v8}, Lps;->a(FFFIIIF)V

    .line 9
    iget-object v1, v0, Lnn;->d:Lps;

    rsub-int/lit8 v2, p1, 0x12

    int-to-float v2, v2

    const/high16 v3, -0x3f400000    # -6.0f

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lps;->a(FFF)V

    .line 11
    new-instance v10, Lps;

    const/16 v1, 0x1c

    const/16 v2, 0x8

    invoke-direct {v10, v1, v2}, Lps;-><init>(II)V

    iput-object v10, v0, Lnn;->e:Lps;

    const/high16 v11, -0x3f600000    # -5.0f

    const/high16 v12, -0x3ee00000    # -10.0f

    const/high16 v13, -0x3f200000    # -7.0f

    const/16 v14, 0xa

    const/16 v15, 0x10

    const/16 v16, 0x8

    move/from16 v17, p2

    .line 12
    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    .line 13
    iget-object v1, v0, Lnn;->e:Lps;

    rsub-int/lit8 v2, p1, 0x11

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v4, v2, v3}, Lps;->a(FFF)V

    .line 15
    new-instance v1, Lps;

    const/16 v10, 0x10

    invoke-direct {v1, v9, v10}, Lps;-><init>(II)V

    iput-object v1, v0, Lnn;->f:Lps;

    const/high16 v2, -0x40000000    # -2.0f

    const/4 v3, 0x0

    const/high16 v4, -0x40000000    # -2.0f

    const/4 v5, 0x4

    const/4 v7, 0x4

    move/from16 v6, p1

    .line 16
    invoke-virtual/range {v1 .. v8}, Lps;->a(FFFIIIF)V

    .line 17
    iget-object v1, v0, Lnn;->f:Lps;

    rsub-int/lit8 v2, p1, 0x18

    int-to-float v11, v2

    const/high16 v12, -0x3fc00000    # -3.0f

    const/high16 v13, 0x40e00000    # 7.0f

    invoke-virtual {v1, v12, v11, v13}, Lps;->a(FFF)V

    .line 19
    new-instance v1, Lps;

    invoke-direct {v1, v9, v10}, Lps;-><init>(II)V

    iput-object v1, v0, Lnn;->g:Lps;

    const/high16 v2, -0x40000000    # -2.0f

    .line 20
    invoke-virtual/range {v1 .. v8}, Lps;->a(FFFIIIF)V

    .line 21
    iget-object v1, v0, Lnn;->g:Lps;

    const/high16 v14, 0x40400000    # 3.0f

    invoke-virtual {v1, v14, v11, v13}, Lps;->a(FFF)V

    .line 23
    new-instance v1, Lps;

    invoke-direct {v1, v9, v10}, Lps;-><init>(II)V

    iput-object v1, v0, Lnn;->h:Lps;

    .line 24
    invoke-virtual/range {v1 .. v8}, Lps;->a(FFFIIIF)V

    .line 25
    iget-object v1, v0, Lnn;->h:Lps;

    const/high16 v13, -0x3f600000    # -5.0f

    invoke-virtual {v1, v12, v11, v13}, Lps;->a(FFF)V

    .line 27
    new-instance v1, Lps;

    invoke-direct {v1, v9, v10}, Lps;-><init>(II)V

    iput-object v1, v0, Lnn;->i:Lps;

    .line 28
    invoke-virtual/range {v1 .. v8}, Lps;->a(FFFIIIF)V

    .line 29
    iget-object v1, v0, Lnn;->i:Lps;

    invoke-virtual {v1, v14, v11, v13}, Lps;->a(FFF)V

    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .registers 7

    .line 33
    invoke-virtual/range {p0 .. p6}, Lnn;->b(FFFFFF)V

    .line 35
    iget-object p1, p0, Lnn;->d:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 36
    iget-object p1, p0, Lnn;->e:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 37
    iget-object p1, p0, Lnn;->f:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 38
    iget-object p1, p0, Lnn;->g:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 39
    iget-object p1, p0, Lnn;->h:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 40
    iget-object p1, p0, Lnn;->i:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    return-void
.end method

.method public b(FFFFFF)V
    .registers 7

    .line 44
    iget-object p3, p0, Lnn;->d:Lps;

    const p6, 0x42652ee0

    div-float/2addr p5, p6

    iput p5, p3, Lps;->d:F

    .line 45
    iget-object p3, p0, Lnn;->d:Lps;

    div-float/2addr p4, p6

    iput p4, p3, Lps;->e:F

    .line 46
    iget-object p3, p0, Lnn;->e:Lps;

    const p4, 0x3fc90fdb

    iput p4, p3, Lps;->d:F

    .line 48
    iget-object p3, p0, Lnn;->f:Lps;

    const p4, 0x3f2a8c15    # 0.6662f

    mul-float/2addr p1, p4

    invoke-static {p1}, Lin;->b(F)F

    move-result p4

    const p5, 0x3fb33333    # 1.4f

    mul-float/2addr p4, p5

    mul-float/2addr p4, p2

    iput p4, p3, Lps;->d:F

    .line 49
    iget-object p3, p0, Lnn;->g:Lps;

    const p4, 0x40490fdb    # (float)Math.PI

    add-float/2addr p4, p1

    invoke-static {p4}, Lin;->b(F)F

    move-result p6

    mul-float/2addr p6, p5

    mul-float/2addr p6, p2

    iput p6, p3, Lps;->d:F

    .line 50
    iget-object p3, p0, Lnn;->h:Lps;

    invoke-static {p4}, Lin;->b(F)F

    move-result p4

    mul-float/2addr p4, p5

    mul-float/2addr p4, p2

    iput p4, p3, Lps;->d:F

    .line 51
    iget-object p3, p0, Lnn;->i:Lps;

    invoke-static {p1}, Lin;->b(F)F

    move-result p1

    mul-float/2addr p1, p5

    mul-float/2addr p1, p2

    iput p1, p3, Lps;->d:F

    return-void
.end method
