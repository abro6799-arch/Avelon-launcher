###### Class defpackage.hs (hs)
.class public Lhs;
.super Law;
.source "SourceFile"


# instance fields
.field private g:I

.field private h:[[B


# direct methods
.method public constructor <init>()V
    .registers 18

    move-object/from16 v0, p0

    .line 13
    sget-object v1, Luu;->bf:Lak;

    iget v1, v1, Lak;->bm:I

    invoke-direct {v0, v1}, Law;-><init>(I)V

    const/4 v1, 0x0

    .line 9
    iput v1, v0, Lhs;->g:I

    const/16 v2, 0x400

    const/16 v3, 0x20

    .line 10
    filled-new-array {v3, v2}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, v0, Lhs;->h:[[B

    .line 15
    new-instance v2, Ljava/util/Random;

    const-wide/16 v4, 0x64

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    move v4, v1

    :goto_26
    if-ge v4, v3, :cond_de

    move v5, v1

    :goto_29
    const/16 v6, 0x10

    if-ge v5, v6, :cond_da

    move v7, v1

    :goto_2e
    if-ge v7, v6, :cond_d6

    const/4 v8, 0x0

    move v9, v1

    :goto_32
    const/4 v10, 0x2

    if-ge v9, v10, :cond_93

    mul-int/lit8 v10, v9, 0x8

    int-to-float v10, v10

    int-to-float v11, v5

    sub-float/2addr v11, v10

    const/high16 v12, 0x41800000    # 16.0f

    div-float/2addr v11, v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v11, v13

    int-to-float v14, v7

    sub-float/2addr v14, v10

    div-float/2addr v14, v12

    mul-float/2addr v14, v13

    const/high16 v10, -0x40800000    # -1.0f

    cmpg-float v12, v11, v10

    if-gez v12, :cond_4b

    add-float/2addr v11, v13

    :cond_4b
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v15, v11, v12

    if-ltz v15, :cond_52

    sub-float/2addr v11, v13

    :cond_52
    cmpg-float v10, v14, v10

    if-gez v10, :cond_57

    add-float/2addr v14, v13

    :cond_57
    cmpl-float v10, v14, v12

    if-ltz v10, :cond_5c

    sub-float/2addr v14, v13

    :cond_5c
    mul-float v10, v11, v11

    mul-float v15, v14, v14

    add-float/2addr v10, v15

    float-to-double v14, v14

    move/from16 v16, v7

    float-to-double v6, v11

    .line 34
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v6, v6

    int-to-float v7, v4

    const/high16 v11, 0x42000000    # 32.0f

    div-float/2addr v7, v11

    const v11, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v7, v11

    mul-float/2addr v7, v13

    const/high16 v11, 0x41200000    # 10.0f

    mul-float/2addr v11, v10

    sub-float/2addr v7, v11

    mul-int/lit8 v11, v9, 0x2

    int-to-float v14, v11

    add-float/2addr v7, v14

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    mul-float/2addr v7, v11

    add-float/2addr v6, v7

    .line 36
    invoke-static {v6}, Lin;->a(F)F

    move-result v6

    add-float/2addr v6, v12

    div-float/2addr v6, v13

    add-float/2addr v10, v12

    div-float/2addr v6, v10

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    add-float/2addr v8, v6

    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v16

    const/16 v6, 0x10

    goto :goto_32

    :cond_93
    move/from16 v16, v7

    .line 42
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v7

    add-float/2addr v8, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v8

    const/high16 v7, 0x431b0000    # 155.0f

    add-float/2addr v6, v7

    float-to-int v6, v6

    mul-float v7, v8, v8

    const/high16 v9, 0x43480000    # 200.0f

    mul-float/2addr v9, v7

    const/high16 v10, 0x425c0000    # 55.0f

    add-float/2addr v9, v10

    float-to-int v9, v9

    mul-float/2addr v7, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    mul-int/lit8 v8, v16, 0x10

    add-int/2addr v8, v5

    .line 50
    iget-object v10, v0, Lhs;->h:[[B

    aget-object v10, v10, v4

    mul-int/lit8 v8, v8, 0x4

    add-int/lit8 v11, v8, 0x0

    int-to-byte v9, v9

    aput-byte v9, v10, v11

    add-int/lit8 v9, v8, 0x1

    int-to-byte v7, v7

    .line 51
    aput-byte v7, v10, v9

    add-int/lit8 v7, v8, 0x2

    int-to-byte v6, v6

    .line 52
    aput-byte v6, v10, v7

    add-int/lit8 v8, v8, 0x3

    .line 53
    aput-byte v6, v10, v8

    add-int/lit8 v7, v16, 0x1

    const/16 v6, 0x10

    goto/16 :goto_2e

    :cond_d6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_29

    :cond_da
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_26

    :cond_de
    return-void
.end method


# virtual methods
.method public a()V
    .registers 13

    .line 59
    iget v0, p0, Lhs;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhs;->g:I

    .line 60
    iget-object v1, p0, Lhs;->h:[[B

    and-int/lit8 v0, v0, 0x1f

    aget-object v0, v1, v0

    const/4 v1, 0x0

    :goto_d
    const/16 v2, 0x100

    if-ge v1, v2, :cond_5b

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, v2, 0x0

    .line 63
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    .line 64
    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x2

    .line 65
    aget-byte v8, v0, v7

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v2, v2, 0x3

    .line 66
    aget-byte v9, v0, v2

    and-int/lit16 v9, v9, 0xff

    .line 68
    iget-boolean v10, p0, Lhs;->c:Z

    if-eqz v10, :cond_44

    mul-int/lit8 v4, v4, 0x1e

    mul-int/lit8 v10, v6, 0x3b

    add-int/2addr v10, v4

    mul-int/lit8 v11, v8, 0xb

    add-int/2addr v10, v11

    .line 69
    div-int/lit8 v10, v10, 0x64

    mul-int/lit8 v6, v6, 0x46

    add-int/2addr v6, v4

    .line 70
    div-int/lit8 v6, v6, 0x64

    mul-int/lit8 v8, v8, 0x46

    add-int/2addr v4, v8

    .line 71
    div-int/lit8 v8, v4, 0x64

    move v4, v10

    .line 77
    :cond_44
    iget-object v10, p0, Lhs;->a:[B

    int-to-byte v4, v4

    aput-byte v4, v10, v3

    .line 78
    iget-object v3, p0, Lhs;->a:[B

    int-to-byte v4, v6

    aput-byte v4, v3, v5

    .line 79
    iget-object v3, p0, Lhs;->a:[B

    int-to-byte v4, v8

    aput-byte v4, v3, v7

    .line 80
    iget-object v3, p0, Lhs;->a:[B

    int-to-byte v4, v9

    aput-byte v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_5b
    return-void
.end method
