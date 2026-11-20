###### Class defpackage.hh (hh)
.class public Lhh;
.super Lnn;
.source "SourceFile"


# instance fields
.field a:Lps;

.field b:Lps;

.field c:Lps;


# direct methods
.method public constructor <init>()V
    .registers 15

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, v0, v1}, Lnn;-><init>(IF)V

    .line 13
    new-instance v0, Lps;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Lps;-><init>(II)V

    iput-object v0, p0, Lhh;->d:Lps;

    .line 14
    iget-object v3, p0, Lhh;->d:Lps;

    const/high16 v4, -0x3f800000    # -4.0f

    const/high16 v5, -0x3f800000    # -4.0f

    const/high16 v6, -0x3f400000    # -6.0f

    const/16 v7, 0x8

    const/16 v8, 0x8

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lps;->a(FFFIIIF)V

    .line 15
    iget-object v0, p0, Lhh;->d:Lps;

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, -0x3f000000    # -8.0f

    invoke-virtual {v0, v1, v3, v4}, Lps;->a(FFF)V

    .line 17
    new-instance v5, Lps;

    const/16 v0, 0x16

    invoke-direct {v5, v0, v2}, Lps;-><init>(II)V

    iput-object v5, p0, Lhh;->b:Lps;

    const/high16 v6, -0x3f800000    # -4.0f

    const/high16 v7, -0x3f600000    # -5.0f

    const/high16 v8, -0x3f800000    # -4.0f

    const/4 v9, 0x1

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 18
    invoke-virtual/range {v5 .. v12}, Lps;->a(FFFIIIF)V

    .line 19
    iget-object v3, p0, Lhh;->b:Lps;

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, -0x3f200000    # -7.0f

    invoke-virtual {v3, v1, v4, v5}, Lps;->a(FFF)V

    .line 21
    new-instance v6, Lps;

    invoke-direct {v6, v0, v2}, Lps;-><init>(II)V

    iput-object v6, p0, Lhh;->c:Lps;

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, -0x3f600000    # -5.0f

    const/high16 v9, -0x3f800000    # -4.0f

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 22
    invoke-virtual/range {v6 .. v13}, Lps;->a(FFFIIIF)V

    .line 23
    iget-object v0, p0, Lhh;->c:Lps;

    invoke-virtual {v0, v1, v4, v5}, Lps;->a(FFF)V

    .line 25
    new-instance v6, Lps;

    const/16 v0, 0x34

    invoke-direct {v6, v0, v2}, Lps;-><init>(II)V

    iput-object v6, p0, Lhh;->a:Lps;

    const/high16 v7, -0x40000000    # -2.0f

    const/high16 v8, -0x3fc00000    # -3.0f

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x6

    const/4 v12, 0x2

    .line 26
    invoke-virtual/range {v6 .. v13}, Lps;->a(FFFIIIF)V

    .line 27
    iget-object v0, p0, Lhh;->a:Lps;

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1, v2, v3}, Lps;->a(FFF)V

    .line 28
    iget-object v0, p0, Lhh;->a:Lps;

    const v2, 0x3fc90fdb

    iput v2, v0, Lps;->d:F

    .line 30
    new-instance v0, Lps;

    const/16 v2, 0x12

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3}, Lps;-><init>(II)V

    iput-object v0, p0, Lhh;->e:Lps;

    .line 31
    iget-object v4, p0, Lhh;->e:Lps;

    const/high16 v5, -0x3f400000    # -6.0f

    const/high16 v6, -0x3ee00000    # -10.0f

    const/high16 v7, -0x3f200000    # -7.0f

    const/16 v8, 0xc

    const/16 v9, 0x12

    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lps;->a(FFFIIIF)V

    .line 32
    iget-object v0, p0, Lhh;->e:Lps;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2, v3}, Lps;->a(FFF)V

    .line 34
    iget-object v0, p0, Lhh;->f:Lps;

    iget v2, v0, Lps;->a:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    iput v2, v0, Lps;->a:F

    .line 35
    iget-object v0, p0, Lhh;->g:Lps;

    iget v2, v0, Lps;->a:F

    add-float/2addr v2, v3

    iput v2, v0, Lps;->a:F

    .line 36
    iget-object v0, p0, Lhh;->f:Lps;

    iget v2, v0, Lps;->c:F

    add-float/2addr v2, v1

    iput v2, v0, Lps;->c:F

    .line 37
    iget-object v0, p0, Lhh;->g:Lps;

    iget v2, v0, Lps;->c:F

    add-float/2addr v2, v1

    iput v2, v0, Lps;->c:F

    .line 38
    iget-object v0, p0, Lhh;->h:Lps;

    iget v1, v0, Lps;->a:F

    sub-float/2addr v1, v3

    iput v1, v0, Lps;->a:F

    .line 39
    iget-object v0, p0, Lhh;->i:Lps;

    iget v1, v0, Lps;->a:F

    add-float/2addr v1, v3

    iput v1, v0, Lps;->a:F

    .line 40
    iget-object v0, p0, Lhh;->h:Lps;

    iget v1, v0, Lps;->c:F

    sub-float/2addr v1, v3

    iput v1, v0, Lps;->c:F

    .line 41
    iget-object v0, p0, Lhh;->i:Lps;

    iget v1, v0, Lps;->c:F

    sub-float/2addr v1, v3

    iput v1, v0, Lps;->c:F

    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .registers 7

    .line 45
    invoke-super/range {p0 .. p6}, Lnn;->a(FFFFFF)V

    .line 46
    iget-object p1, p0, Lhh;->b:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 47
    iget-object p1, p0, Lhh;->c:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 48
    iget-object p1, p0, Lhh;->a:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    return-void
.end method

.method public b(FFFFFF)V
    .registers 7

    .line 52
    invoke-super/range {p0 .. p6}, Lnn;->b(FFFFFF)V

    .line 53
    iget-object p1, p0, Lhh;->b:Lps;

    iget-object p2, p0, Lhh;->d:Lps;

    iget p2, p2, Lps;->e:F

    iput p2, p1, Lps;->e:F

    .line 54
    iget-object p1, p0, Lhh;->b:Lps;

    iget-object p2, p0, Lhh;->d:Lps;

    iget p2, p2, Lps;->d:F

    iput p2, p1, Lps;->d:F

    .line 56
    iget-object p1, p0, Lhh;->c:Lps;

    iget-object p2, p0, Lhh;->d:Lps;

    iget p2, p2, Lps;->e:F

    iput p2, p1, Lps;->e:F

    .line 57
    iget-object p1, p0, Lhh;->c:Lps;

    iget-object p2, p0, Lhh;->d:Lps;

    iget p2, p2, Lps;->d:F

    iput p2, p1, Lps;->d:F

    return-void
.end method
