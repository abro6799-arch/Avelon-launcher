###### Class defpackage.lo (lo)
.class public Llo;
.super Lko;
.source "SourceFile"


# instance fields
.field a:Lps;

.field b:[Lps;


# direct methods
.method public constructor <init>()V
    .registers 15

    .line 11
    invoke-direct {p0}, Lko;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Lps;

    .line 9
    iput-object v0, p0, Llo;->b:[Lps;

    .line 13
    new-instance v1, Lps;

    const/4 v0, 0x0

    invoke-direct {v1, v0, v0}, Lps;-><init>(II)V

    iput-object v1, p0, Llo;->a:Lps;

    const/high16 v2, -0x3f000000    # -8.0f

    const/high16 v3, -0x3f000000    # -8.0f

    const/high16 v4, -0x3f000000    # -8.0f

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0x10

    .line 14
    invoke-virtual/range {v1 .. v7}, Lps;->a(FFFIII)V

    .line 15
    iget-object v1, p0, Llo;->a:Lps;

    iget v2, v1, Lps;->b:F

    const/16 v3, 0x8

    int-to-float v4, v3

    add-float/2addr v2, v4

    iput v2, v1, Lps;->b:F

    .line 17
    new-instance v1, Ljava/util/Random;

    const-wide/16 v4, 0x67c

    invoke-direct {v1, v4, v5}, Ljava/util/Random;-><init>(J)V

    move v2, v0

    .line 18
    :goto_32
    iget-object v4, p0, Llo;->b:[Lps;

    array-length v5, v4

    if-ge v2, v5, :cond_89

    .line 19
    new-instance v5, Lps;

    invoke-direct {v5, v0, v0}, Lps;-><init>(II)V

    aput-object v5, v4, v2

    .line 21
    rem-int/lit8 v4, v2, 0x3

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x3

    rem-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    const/high16 v6, 0x3e800000    # 0.25f

    add-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    mul-float/2addr v4, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v4, v7

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v4, v8

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v6

    sub-float/2addr v5, v7

    mul-float/2addr v5, v8

    const/4 v6, 0x7

    .line 23
    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v12, v6, 0x8

    .line 24
    iget-object v6, p0, Llo;->b:[Lps;

    aget-object v7, v6, v2

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x2

    const/4 v13, 0x2

    invoke-virtual/range {v7 .. v13}, Lps;->a(FFFIII)V

    .line 26
    iget-object v6, p0, Llo;->b:[Lps;

    aget-object v6, v6, v2

    iput v4, v6, Lps;->a:F

    .line 27
    iget-object v4, p0, Llo;->b:[Lps;

    aget-object v4, v4, v2

    iput v5, v4, Lps;->c:F

    .line 28
    iget-object v4, p0, Llo;->b:[Lps;

    aget-object v4, v4, v2

    const/16 v5, 0xf

    int-to-float v5, v5

    iput v5, v4, Lps;->b:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_89
    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .registers 7

    .line 40
    invoke-virtual/range {p0 .. p6}, Llo;->b(FFFFFF)V

    .line 42
    iget-object p1, p0, Llo;->a:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    const/4 p1, 0x0

    .line 43
    :goto_9
    iget-object p2, p0, Llo;->b:[Lps;

    array-length p3, p2

    if-ge p1, p3, :cond_16

    .line 44
    aget-object p2, p2, p1

    invoke-virtual {p2, p6}, Lps;->a(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_16
    return-void
.end method

.method public b(FFFFFF)V
    .registers 7

    const/4 p1, 0x0

    .line 33
    :goto_1
    iget-object p2, p0, Llo;->b:[Lps;

    array-length p4, p2

    if-ge p1, p4, :cond_1f

    .line 35
    aget-object p2, p2, p1

    const p4, 0x3e99999a    # 0.3f

    mul-float/2addr p4, p3

    int-to-float p5, p1

    add-float/2addr p4, p5

    invoke-static {p4}, Lin;->a(F)F

    move-result p4

    const p5, 0x3e4ccccd    # 0.2f

    mul-float/2addr p4, p5

    const p5, 0x3ecccccd    # 0.4f

    add-float/2addr p4, p5

    iput p4, p2, Lps;->d:F

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method
