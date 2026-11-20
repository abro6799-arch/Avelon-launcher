###### Class defpackage.cg (cg)
.class public Lcg;
.super Law;
.source "SourceFile"


# instance fields
.field protected g:[F

.field protected h:[F

.field protected i:[F

.field protected j:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12
    sget-object v0, Luu;->D:Luu;

    iget v0, v0, Luu;->bm:I

    invoke-direct {p0, v0}, Law;-><init>(I)V

    const/16 v0, 0x100

    new-array v1, v0, [F

    .line 6
    iput-object v1, p0, Lcg;->g:[F

    new-array v1, v0, [F

    .line 7
    iput-object v1, p0, Lcg;->h:[F

    new-array v1, v0, [F

    .line 8
    iput-object v1, p0, Lcg;->i:[F

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Lcg;->j:[F

    return-void
.end method


# virtual methods
.method public a()V
    .registers 15

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-ge v1, v4, :cond_b2

    move v5, v0

    :cond_a
    :goto_a
    if-ge v5, v4, :cond_ae

    int-to-float v6, v5

    const v7, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v6, v7

    mul-float/2addr v6, v2

    const/high16 v8, 0x41800000    # 16.0f

    div-float/2addr v6, v8

    .line 19
    invoke-static {v6}, Lin;->a(F)F

    move-result v6

    const v9, 0x3f99999a    # 1.2f

    mul-float/2addr v6, v9

    float-to-int v6, v6

    int-to-float v10, v1

    mul-float/2addr v10, v7

    mul-float/2addr v10, v2

    div-float/2addr v10, v8

    .line 20
    invoke-static {v10}, Lin;->a(F)F

    move-result v7

    mul-float/2addr v7, v9

    float-to-int v7, v7

    add-int/lit8 v8, v1, -0x1

    move v9, v3

    :goto_2b
    add-int/lit8 v10, v1, 0x1

    if-gt v8, v10, :cond_4a

    add-int/lit8 v10, v5, -0x1

    :goto_31
    add-int/lit8 v11, v5, 0x1

    if-gt v10, v11, :cond_47

    add-int v11, v8, v6

    and-int/lit8 v11, v11, 0xf

    add-int v12, v10, v7

    and-int/lit8 v12, v12, 0xf

    .line 25
    iget-object v13, p0, Lcg;->g:[F

    mul-int/2addr v12, v4

    add-int/2addr v11, v12

    aget v11, v13, v11

    add-float/2addr v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_31

    :cond_47
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    .line 27
    :cond_4a
    iget-object v6, p0, Lcg;->h:[F

    mul-int/lit8 v7, v5, 0x10

    add-int/2addr v7, v1

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v9, v8

    iget-object v8, p0, Lcg;->i:[F

    add-int/lit8 v11, v1, 0x0

    and-int/lit8 v11, v11, 0xf

    add-int/lit8 v12, v5, 0x0

    and-int/lit8 v12, v12, 0xf

    mul-int/2addr v12, v4

    add-int v13, v11, v12

    aget v13, v8, v13

    and-int/lit8 v10, v10, 0xf

    add-int/2addr v12, v10

    aget v12, v8, v12

    add-float/2addr v13, v12

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v12, v5, 0xf

    mul-int/2addr v12, v4

    add-int/2addr v10, v12

    aget v10, v8, v10

    add-float/2addr v13, v10

    add-int/2addr v11, v12

    aget v10, v8, v11

    add-float/2addr v13, v10

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v13, v10

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v13, v10

    add-float/2addr v9, v13

    aput v9, v6, v7

    .line 29
    aget v6, v8, v7

    iget-object v9, p0, Lcg;->j:[F

    aget v10, v9, v7

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    add-float/2addr v6, v10

    aput v6, v8, v7

    cmpg-float v6, v6, v3

    if-gez v6, :cond_91

    .line 31
    aput v3, v8, v7

    .line 32
    :cond_91
    aget v6, v9, v7

    const v8, 0x3d75c28f    # 0.06f

    sub-float/2addr v6, v8

    aput v6, v9, v7

    .line 33
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x3f747ae147ae147bL    # 0.005

    cmpg-double v6, v8, v10

    if-gez v6, :cond_a

    .line 34
    iget-object v6, p0, Lcg;->j:[F

    const/high16 v8, 0x3fc00000    # 1.5f

    aput v8, v6, v7

    goto/16 :goto_a

    :cond_ae
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 37
    :cond_b2
    iget-object v1, p0, Lcg;->h:[F

    .line 38
    iget-object v4, p0, Lcg;->g:[F

    iput-object v4, p0, Lcg;->h:[F

    .line 39
    iput-object v1, p0, Lcg;->g:[F

    :goto_ba
    const/16 v1, 0x100

    if-ge v0, v1, :cond_11c

    .line 42
    iget-object v1, p0, Lcg;->g:[F

    aget v1, v1, v0

    mul-float/2addr v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v4

    if-lez v5, :cond_ca

    move v1, v4

    :cond_ca
    cmpg-float v4, v1, v3

    if-gez v4, :cond_cf

    move v1, v3

    :cond_cf
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, v1

    const/high16 v5, 0x431b0000    # 155.0f

    add-float/2addr v4, v5

    float-to-int v4, v4

    mul-float v5, v1, v1

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    mul-float/2addr v5, v1

    mul-float/2addr v5, v1

    const/high16 v1, 0x43000000    # 128.0f

    mul-float/2addr v5, v1

    float-to-int v1, v5

    .line 51
    iget-boolean v5, p0, Lcg;->c:Z

    if-eqz v5, :cond_fb

    mul-int/lit8 v4, v4, 0x1e

    mul-int/lit8 v5, v6, 0x3b

    add-int/2addr v5, v4

    mul-int/lit8 v7, v1, 0xb

    add-int/2addr v5, v7

    .line 52
    div-int/lit8 v5, v5, 0x64

    mul-int/lit8 v6, v6, 0x46

    add-int/2addr v6, v4

    .line 53
    div-int/lit8 v6, v6, 0x64

    mul-int/lit8 v1, v1, 0x46

    add-int/2addr v4, v1

    .line 54
    div-int/lit8 v1, v4, 0x64

    move v4, v5

    .line 61
    :cond_fb
    iget-object v5, p0, Lcg;->a:[B

    mul-int/lit8 v7, v0, 0x4

    add-int/lit8 v8, v7, 0x0

    int-to-byte v4, v4

    aput-byte v4, v5, v8

    .line 62
    iget-object v4, p0, Lcg;->a:[B

    add-int/lit8 v5, v7, 0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 63
    iget-object v4, p0, Lcg;->a:[B

    add-int/lit8 v5, v7, 0x2

    int-to-byte v1, v1

    aput-byte v1, v4, v5

    .line 64
    iget-object v1, p0, Lcg;->a:[B

    add-int/lit8 v7, v7, 0x3

    const/4 v4, -0x1

    aput-byte v4, v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    :cond_11c
    return-void
.end method
