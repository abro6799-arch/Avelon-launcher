###### Class defpackage.wn (wn)
.class public Lwn;
.super Lko;
.source "SourceFile"


# instance fields
.field a:Lps;

.field b:[Lps;


# direct methods
.method public constructor <init>()V
    .registers 15

    .line 7
    invoke-direct {p0}, Lko;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [Lps;

    .line 5
    iput-object v1, p0, Lwn;->b:[Lps;

    .line 9
    new-instance v2, Lps;

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1}, Lps;-><init>(II)V

    iput-object v2, p0, Lwn;->a:Lps;

    const/high16 v3, -0x3f400000    # -6.0f

    const/high16 v4, -0x3f000000    # -8.0f

    const/high16 v5, -0x3f400000    # -6.0f

    const/16 v6, 0xc

    const/16 v7, 0x10

    const/16 v8, 0xc

    .line 10
    invoke-virtual/range {v2 .. v8}, Lps;->a(FFFIII)V

    .line 11
    iget-object v2, p0, Lwn;->a:Lps;

    iget v3, v2, Lps;->b:F

    int-to-float v0, v0

    add-float/2addr v3, v0

    iput v3, v2, Lps;->b:F

    move v0, v1

    .line 13
    :goto_29
    iget-object v2, p0, Lwn;->b:[Lps;

    array-length v3, v2

    if-ge v0, v3, :cond_8f

    .line 14
    new-instance v3, Lps;

    const/16 v4, 0x30

    invoke-direct {v3, v4, v1}, Lps;-><init>(II)V

    aput-object v3, v2, v0

    int-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v2

    .line 16
    iget-object v6, p0, Lwn;->b:[Lps;

    array-length v6, v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v6, v7

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v7

    .line 19
    iget-object v5, p0, Lwn;->b:[Lps;

    aget-object v7, v5, v0

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x2

    const/16 v12, 0x12

    const/4 v13, 0x2

    invoke-virtual/range {v7 .. v13}, Lps;->a(FFFIII)V

    .line 21
    iget-object v5, p0, Lwn;->b:[Lps;

    aget-object v5, v5, v0

    iput v6, v5, Lps;->a:F

    .line 22
    iget-object v5, p0, Lwn;->b:[Lps;

    aget-object v5, v5, v0

    iput v4, v5, Lps;->c:F

    .line 23
    iget-object v4, p0, Lwn;->b:[Lps;

    aget-object v4, v4, v0

    const/16 v5, 0xf

    int-to-float v5, v5

    iput v5, v4, Lps;->b:F

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    mul-double/2addr v2, v4

    .line 25
    iget-object v4, p0, Lwn;->b:[Lps;

    array-length v5, v4

    int-to-double v5, v5

    div-double/2addr v2, v5

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v2, v5

    .line 26
    aget-object v4, v4, v0

    double-to-float v2, v2

    iput v2, v4, Lps;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_8f
    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .registers 7

    .line 39
    invoke-virtual/range {p0 .. p6}, Lwn;->b(FFFFFF)V

    .line 41
    iget-object p1, p0, Lwn;->a:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    const/4 p1, 0x0

    .line 42
    :goto_9
    iget-object p2, p0, Lwn;->b:[Lps;

    array-length p3, p2

    if-ge p1, p3, :cond_16

    .line 43
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

    .line 31
    :goto_1
    iget-object p2, p0, Lwn;->b:[Lps;

    array-length p4, p2

    if-ge p1, p4, :cond_d

    .line 34
    aget-object p2, p2, p1

    iput p3, p2, Lps;->d:F

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method
