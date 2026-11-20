###### Class defpackage.oh (oh)
.class public Loh;
.super Law;
.source "SourceFile"


# instance fields
.field protected g:[F

.field protected h:[F

.field protected i:[F

.field protected j:[F

.field private k:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    sget-object v0, Luu;->B:Luu;

    iget v0, v0, Luu;->bm:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Law;-><init>(I)V

    const/16 v0, 0x100

    new-array v1, v0, [F

    .line 6
    iput-object v1, p0, Loh;->g:[F

    new-array v1, v0, [F

    .line 7
    iput-object v1, p0, Loh;->h:[F

    new-array v1, v0, [F

    .line 8
    iput-object v1, p0, Loh;->i:[F

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Loh;->j:[F

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Loh;->k:I

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Loh;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 13

    .line 19
    iget v0, p0, Loh;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loh;->k:I

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ge v1, v3, :cond_3d

    move v4, v0

    :goto_e
    if-ge v4, v3, :cond_3a

    add-int/lit8 v5, v4, -0x2

    move v6, v2

    :goto_13
    if-gt v5, v4, :cond_23

    and-int/lit8 v7, v1, 0xf

    and-int/lit8 v8, v5, 0xf

    .line 26
    iget-object v9, p0, Loh;->g:[F

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    aget v7, v9, v7

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 28
    :cond_23
    iget-object v5, p0, Loh;->h:[F

    mul-int/lit8 v7, v4, 0x10

    add-int/2addr v7, v1

    const v8, 0x404ccccd    # 3.2f

    div-float/2addr v6, v8

    iget-object v8, p0, Loh;->i:[F

    aget v8, v8, v7

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    aput v6, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_3d
    move v1, v0

    :goto_3e
    if-ge v1, v3, :cond_7c

    move v4, v0

    :goto_41
    if-ge v4, v3, :cond_79

    .line 33
    iget-object v5, p0, Loh;->i:[F

    mul-int/lit8 v6, v4, 0x10

    add-int/2addr v6, v1

    aget v7, v5, v6

    iget-object v8, p0, Loh;->j:[F

    aget v9, v8, v6

    const v10, 0x3d4ccccd    # 0.05f

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    aput v7, v5, v6

    cmpg-float v7, v7, v2

    if-gez v7, :cond_5b

    .line 35
    aput v2, v5, v6

    .line 36
    :cond_5b
    aget v5, v8, v6

    const v7, 0x3e99999a    # 0.3f

    sub-float/2addr v5, v7

    aput v5, v8, v6

    .line 37
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x3fc999999999999aL    # 0.2

    cmpg-double v5, v7, v9

    if-gez v5, :cond_76

    .line 38
    iget-object v5, p0, Loh;->j:[F

    const/high16 v7, 0x3f000000    # 0.5f

    aput v7, v5, v6

    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 41
    :cond_7c
    iget-object v1, p0, Loh;->h:[F

    .line 42
    iget-object v4, p0, Loh;->g:[F

    iput-object v4, p0, Loh;->h:[F

    .line 43
    iput-object v1, p0, Loh;->g:[F

    :goto_84
    const/16 v1, 0x100

    if-ge v0, v1, :cond_ed

    .line 46
    iget-object v1, p0, Loh;->g:[F

    iget v4, p0, Loh;->k:I

    mul-int/2addr v4, v3

    sub-int v4, v0, v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    aget v1, v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v4

    if-lez v6, :cond_9b

    move v1, v4

    :cond_9b
    cmpg-float v4, v1, v2

    if-gez v4, :cond_a0

    move v1, v2

    :cond_a0
    mul-float/2addr v1, v1

    const/high16 v4, 0x42000000    # 32.0f

    mul-float v6, v1, v4

    add-float/2addr v6, v4

    float-to-int v4, v6

    const/high16 v6, 0x42800000    # 64.0f

    mul-float/2addr v6, v1

    const/high16 v7, 0x42480000    # 50.0f

    add-float/2addr v6, v7

    float-to-int v6, v6

    const/high16 v8, 0x43120000    # 146.0f

    mul-float/2addr v1, v7

    add-float/2addr v1, v8

    float-to-int v1, v1

    .line 57
    iget-boolean v7, p0, Loh;->c:Z

    if-eqz v7, :cond_cc

    mul-int/lit8 v4, v4, 0x1e

    mul-int/lit8 v5, v6, 0x3b

    add-int/2addr v5, v4

    add-int/lit16 v5, v5, 0xaf5

    .line 58
    div-int/lit8 v5, v5, 0x64

    mul-int/lit8 v6, v6, 0x46

    add-int/2addr v6, v4

    .line 59
    div-int/lit8 v6, v6, 0x64

    add-int/lit16 v4, v4, 0x45ba

    .line 60
    div-int/lit8 v4, v4, 0x64

    move v11, v5

    move v5, v4

    move v4, v11

    .line 67
    :cond_cc
    iget-object v7, p0, Loh;->a:[B

    mul-int/lit8 v8, v0, 0x4

    add-int/lit8 v9, v8, 0x0

    int-to-byte v4, v4

    aput-byte v4, v7, v9

    .line 68
    iget-object v4, p0, Loh;->a:[B

    add-int/lit8 v7, v8, 0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    .line 69
    iget-object v4, p0, Loh;->a:[B

    add-int/lit8 v6, v8, 0x2

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    .line 70
    iget-object v4, p0, Loh;->a:[B

    add-int/lit8 v8, v8, 0x3

    int-to-byte v1, v1

    aput-byte v1, v4, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    :cond_ed
    return-void
.end method
