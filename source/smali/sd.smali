###### Class defpackage.sd (sd)
.class public Lsd;
.super Law;
.source "SourceFile"


# instance fields
.field protected g:[F

.field protected h:[F


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 13
    sget-object v0, Luu;->as:Lyq;

    iget v0, v0, Lyq;->bm:I

    mul-int/lit8 p1, p1, 0x10

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Law;-><init>(I)V

    const/16 p1, 0x140

    new-array v0, p1, [F

    .line 7
    iput-object v0, p0, Lsd;->g:[F

    new-array p1, p1, [F

    .line 8
    iput-object p1, p0, Lsd;->h:[F

    return-void
.end method


# virtual methods
.method public a()V
    .registers 16

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_75

    move v3, v0

    :goto_7
    const/16 v4, 0x14

    if-ge v3, v4, :cond_72

    .line 22
    iget-object v5, p0, Lsd;->g:[F

    add-int/lit8 v6, v3, 0x1

    rem-int/lit8 v7, v6, 0x14

    mul-int/2addr v7, v2

    add-int/2addr v7, v1

    aget v5, v5, v7

    const/16 v7, 0x12

    int-to-float v8, v7

    mul-float/2addr v5, v8

    add-int/lit8 v8, v1, -0x1

    :goto_1b
    add-int/lit8 v9, v1, 0x1

    if-gt v8, v9, :cond_3a

    move v9, v3

    :goto_20
    if-gt v9, v6, :cond_37

    if-ltz v8, :cond_32

    if-ltz v9, :cond_32

    if-ge v8, v2, :cond_32

    if-ge v9, v4, :cond_32

    .line 30
    iget-object v10, p0, Lsd;->g:[F

    mul-int/lit8 v11, v9, 0x10

    add-int/2addr v11, v8

    aget v10, v10, v11

    add-float/2addr v5, v10

    :cond_32
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    :cond_37
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    .line 34
    :cond_3a
    iget-object v4, p0, Lsd;->h:[F

    mul-int/lit8 v8, v3, 0x10

    add-int/2addr v8, v1

    int-to-float v7, v7

    const v9, 0x3f87ae14    # 1.06f

    mul-float/2addr v7, v9

    div-float/2addr v5, v7

    aput v5, v4, v8

    const/16 v5, 0x13

    if-lt v3, v5, :cond_70

    .line 37
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v9, v11

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    mul-double/2addr v9, v11

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    const-wide v11, 0x3fc99999a0000000L    # 0.20000000298023224

    add-double/2addr v9, v11

    double-to-float v3, v9

    aput v3, v4, v8

    :cond_70
    move v3, v6

    goto :goto_7

    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 40
    :cond_75
    iget-object v1, p0, Lsd;->h:[F

    .line 41
    iget-object v2, p0, Lsd;->g:[F

    iput-object v2, p0, Lsd;->h:[F

    .line 42
    iput-object v1, p0, Lsd;->g:[F

    move v1, v0

    :goto_7e
    const/16 v2, 0x100

    if-ge v1, v2, :cond_f3

    .line 46
    iget-object v2, p0, Lsd;->g:[F

    aget v2, v2, v1

    const v3, 0x3fe66666    # 1.8f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_91

    move v2, v3

    :cond_91
    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_97

    move v2, v3

    :cond_97
    const/high16 v3, 0x431b0000    # 155.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x42c80000    # 100.0f

    add-float/2addr v3, v4

    float-to-int v3, v3

    mul-float v4, v2, v2

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v6, v4, v5

    float-to-int v6, v6

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_b7

    move v2, v0

    goto :goto_b9

    :cond_b7
    const/16 v2, 0xff

    .line 62
    :goto_b9
    iget-boolean v5, p0, Lsd;->c:Z

    if-eqz v5, :cond_d2

    mul-int/lit8 v3, v3, 0x1e

    mul-int/lit8 v5, v6, 0x3b

    add-int/2addr v5, v3

    mul-int/lit8 v7, v4, 0xb

    add-int/2addr v5, v7

    .line 64
    div-int/lit8 v5, v5, 0x64

    mul-int/lit8 v6, v6, 0x46

    add-int/2addr v6, v3

    .line 65
    div-int/lit8 v6, v6, 0x64

    mul-int/lit8 v4, v4, 0x46

    add-int/2addr v3, v4

    .line 66
    div-int/lit8 v4, v3, 0x64

    move v3, v5

    .line 73
    :cond_d2
    iget-object v5, p0, Lsd;->a:[B

    mul-int/lit8 v7, v1, 0x4

    add-int/lit8 v8, v7, 0x0

    int-to-byte v3, v3

    aput-byte v3, v5, v8

    .line 74
    iget-object v3, p0, Lsd;->a:[B

    add-int/lit8 v5, v7, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 75
    iget-object v3, p0, Lsd;->a:[B

    add-int/lit8 v5, v7, 0x2

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 76
    iget-object v3, p0, Lsd;->a:[B

    add-int/lit8 v7, v7, 0x3

    int-to-byte v2, v2

    aput-byte v2, v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    :cond_f3
    return-void
.end method
