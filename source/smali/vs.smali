###### Class defpackage.vs (vs)
.class public Lvs;
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

    invoke-direct {p0, v0}, Law;-><init>(I)V

    const/16 v0, 0x100

    new-array v1, v0, [F

    .line 6
    iput-object v1, p0, Lvs;->g:[F

    new-array v1, v0, [F

    .line 7
    iput-object v1, p0, Lvs;->h:[F

    new-array v1, v0, [F

    .line 8
    iput-object v1, p0, Lvs;->i:[F

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Lvs;->j:[F

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lvs;->k:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 13

    .line 18
    iget v0, p0, Lvs;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvs;->k:I

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ge v1, v3, :cond_3f

    move v4, v0

    :goto_e
    if-ge v4, v3, :cond_3c

    add-int/lit8 v5, v1, -0x1

    move v6, v2

    :goto_13
    add-int/lit8 v7, v1, 0x1

    if-gt v5, v7, :cond_25

    and-int/lit8 v7, v5, 0xf

    and-int/lit8 v8, v4, 0xf

    .line 25
    iget-object v9, p0, Lvs;->g:[F

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    aget v7, v9, v7

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 27
    :cond_25
    iget-object v5, p0, Lvs;->h:[F

    mul-int/lit8 v7, v4, 0x10

    add-int/2addr v7, v1

    const v8, 0x40533333    # 3.3f

    div-float/2addr v6, v8

    iget-object v8, p0, Lvs;->i:[F

    aget v8, v8, v7

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    aput v6, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_3f
    move v1, v0

    :goto_40
    if-ge v1, v3, :cond_7e

    move v4, v0

    :goto_43
    if-ge v4, v3, :cond_7b

    .line 32
    iget-object v5, p0, Lvs;->i:[F

    mul-int/lit8 v6, v4, 0x10

    add-int/2addr v6, v1

    aget v7, v5, v6

    iget-object v8, p0, Lvs;->j:[F

    aget v9, v8, v6

    const v10, 0x3d4ccccd    # 0.05f

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    aput v7, v5, v6

    cmpg-float v7, v7, v2

    if-gez v7, :cond_5d

    .line 34
    aput v2, v5, v6

    .line 35
    :cond_5d
    aget v5, v8, v6

    const v7, 0x3dcccccd    # 0.1f

    sub-float/2addr v5, v7

    aput v5, v8, v6

    .line 36
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x3fa999999999999aL    # 0.05

    cmpg-double v5, v7, v9

    if-gez v5, :cond_78

    .line 37
    iget-object v5, p0, Lvs;->j:[F

    const/high16 v7, 0x3f000000    # 0.5f

    aput v7, v5, v6

    :cond_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 40
    :cond_7e
    iget-object v1, p0, Lvs;->h:[F

    .line 41
    iget-object v3, p0, Lvs;->g:[F

    iput-object v3, p0, Lvs;->h:[F

    .line 42
    iput-object v1, p0, Lvs;->g:[F

    :goto_86
    const/16 v1, 0x100

    if-ge v0, v1, :cond_ea

    .line 45
    iget-object v1, p0, Lvs;->g:[F

    aget v1, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v3

    if-lez v4, :cond_95

    move v1, v3

    :cond_95
    cmpg-float v3, v1, v2

    if-gez v3, :cond_9a

    move v1, v2

    :cond_9a
    mul-float/2addr v1, v1

    const/high16 v3, 0x42000000    # 32.0f

    mul-float v4, v1, v3

    add-float/2addr v4, v3

    float-to-int v3, v4

    const/high16 v4, 0x42800000    # 64.0f

    mul-float/2addr v4, v1

    const/high16 v5, 0x42480000    # 50.0f

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v6, 0x43120000    # 146.0f

    mul-float/2addr v1, v5

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 61
    iget-boolean v5, p0, Lvs;->c:Z

    if-eqz v5, :cond_c7

    mul-int/lit8 v3, v3, 0x1e

    mul-int/lit8 v5, v4, 0x3b

    add-int/2addr v5, v3

    add-int/lit16 v5, v5, 0xaf5

    .line 62
    div-int/lit8 v5, v5, 0x64

    mul-int/lit8 v4, v4, 0x46

    add-int/2addr v4, v3

    .line 63
    div-int/lit8 v4, v4, 0x64

    add-int/lit16 v3, v3, 0x45ba

    .line 64
    div-int/lit8 v3, v3, 0x64

    move v11, v5

    move v5, v3

    move v3, v11

    goto :goto_c9

    :cond_c7
    const/16 v5, 0xff

    .line 71
    :goto_c9
    iget-object v6, p0, Lvs;->a:[B

    mul-int/lit8 v7, v0, 0x4

    add-int/lit8 v8, v7, 0x0

    int-to-byte v3, v3

    aput-byte v3, v6, v8

    .line 72
    iget-object v3, p0, Lvs;->a:[B

    add-int/lit8 v6, v7, 0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    .line 73
    iget-object v3, p0, Lvs;->a:[B

    add-int/lit8 v4, v7, 0x2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 74
    iget-object v3, p0, Lvs;->a:[B

    add-int/lit8 v7, v7, 0x3

    int-to-byte v1, v1

    aput-byte v1, v3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    :cond_ea
    return-void
.end method
