###### Class defpackage.cc (cc)
.class public Lcc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:[[I

.field private static final f:D

.field private static final g:D


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field private e:[I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6
    filled-new-array {v0, v0, v1}, [I

    move-result-object v2

    const/4 v3, -0x1

    filled-new-array {v3, v0, v1}, [I

    move-result-object v4

    filled-new-array {v0, v3, v1}, [I

    move-result-object v5

    filled-new-array {v3, v3, v1}, [I

    move-result-object v6

    filled-new-array {v0, v1, v0}, [I

    move-result-object v7

    filled-new-array {v3, v1, v0}, [I

    move-result-object v8

    filled-new-array {v0, v1, v3}, [I

    move-result-object v9

    filled-new-array {v3, v1, v3}, [I

    move-result-object v10

    filled-new-array {v1, v0, v0}, [I

    move-result-object v11

    filled-new-array {v1, v3, v0}, [I

    move-result-object v12

    filled-new-array {v1, v0, v3}, [I

    move-result-object v0

    filled-new-array {v1, v3, v3}, [I

    move-result-object v13

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v0

    filled-new-array/range {v2 .. v13}, [[I

    move-result-object v0

    sput-object v0, Lcc;->d:[[I

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 231
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    sput-wide v2, Lcc;->f:D

    .line 232
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    sput-wide v0, Lcc;->g:D

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lcc;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .registers 8

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lcc;->e:[I

    .line 18
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcc;->a:D

    .line 19
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcc;->b:D

    .line 20
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcc;->c:D

    const/4 v0, 0x0

    move v1, v0

    :goto_22
    const/16 v2, 0x100

    if-ge v1, v2, :cond_2d

    .line 22
    iget-object v2, p0, Lcc;->e:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2d
    :goto_2d
    if-ge v0, v2, :cond_49

    rsub-int v1, v0, 0x100

    .line 26
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 27
    iget-object v3, p0, Lcc;->e:[I

    aget v4, v3, v0

    .line 28
    aget v5, v3, v1

    aput v5, v3, v0

    .line 29
    aput v4, v3, v1

    add-int/lit16 v1, v0, 0x100

    .line 31
    aget v4, v3, v0

    aput v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_49
    return-void
.end method

.method private static a([IDD)D
    .registers 7

    const/4 v0, 0x0

    .line 41
    aget v0, p0, v0

    int-to-double v0, v0

    mul-double/2addr v0, p1

    const/4 p1, 0x1

    aget p0, p0, p1

    int-to-double p0, p0

    mul-double/2addr p0, p3

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static a(D)I
    .registers 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    double-to-int p0, p0

    if-lez v0, :cond_8

    goto :goto_a

    :cond_8
    add-int/lit8 p0, p0, -0x1

    :goto_a
    return p0
.end method


# virtual methods
.method public a([DDDIIDDD)V
    .registers 44

    move-object/from16 v0, p0

    move/from16 v2, p6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v3, v2, :cond_113

    int-to-double v5, v3

    add-double v5, p2, v5

    mul-double v5, v5, p8

    .line 237
    iget-wide v7, v0, Lcc;->a:D

    add-double/2addr v5, v7

    move/from16 v7, p7

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v7, :cond_109

    int-to-double v9, v8

    add-double v9, p4, v9

    mul-double v9, v9, p10

    .line 239
    iget-wide v11, v0, Lcc;->b:D

    add-double/2addr v9, v11

    add-double v11, v5, v9

    .line 242
    sget-wide v13, Lcc;->f:D

    mul-double/2addr v11, v13

    add-double v13, v5, v11

    .line 243
    invoke-static {v13, v14}, Lcc;->a(D)I

    move-result v13

    add-double/2addr v11, v9

    .line 244
    invoke-static {v11, v12}, Lcc;->a(D)I

    move-result v11

    add-int v12, v13, v11

    int-to-double v14, v12

    .line 245
    sget-wide v16, Lcc;->g:D

    mul-double v14, v14, v16

    int-to-double v1, v13

    sub-double/2addr v1, v14

    move/from16 v18, v13

    int-to-double v12, v11

    sub-double/2addr v12, v14

    sub-double v1, v5, v1

    sub-double/2addr v9, v12

    cmpl-double v12, v1, v9

    if-lez v12, :cond_45

    const/4 v12, 0x1

    const/16 v19, 0x0

    goto :goto_48

    :cond_45
    const/4 v12, 0x0

    const/16 v19, 0x1

    :goto_48
    int-to-double v13, v12

    sub-double v13, v1, v13

    add-double v13, v13, v16

    move-wide/from16 v20, v5

    move/from16 v15, v19

    int-to-double v5, v15

    sub-double v5, v9, v5

    add-double v5, v5, v16

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v24, v1, v22

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v28, v16, v26

    move/from16 v19, v8

    add-double v7, v24, v28

    sub-double v22, v9, v22

    mul-double v16, v16, v26

    move/from16 v24, v3

    move/from16 v25, v4

    add-double v3, v22, v16

    move-wide/from16 v16, v3

    move/from16 v3, v18

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v11, 0xff

    .line 271
    iget-object v11, v0, Lcc;->e:[I

    aget v18, v11, v4

    add-int v18, v3, v18

    aget v18, v11, v18

    rem-int/lit8 v18, v18, 0xc

    add-int/2addr v12, v3

    add-int/2addr v15, v4

    .line 272
    aget v15, v11, v15

    add-int/2addr v12, v15

    aget v12, v11, v12

    rem-int/lit8 v12, v12, 0xc

    const/4 v15, 0x1

    add-int/2addr v3, v15

    add-int/2addr v4, v15

    .line 273
    aget v4, v11, v4

    add-int/2addr v3, v4

    aget v3, v11, v3

    rem-int/lit8 v3, v3, 0xc

    mul-double v22, v1, v1

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    sub-double v22, v26, v22

    mul-double v28, v9, v9

    sub-double v22, v22, v28

    const-wide/16 v28, 0x0

    cmpg-double v4, v22, v28

    if-gez v4, :cond_a4

    move-wide/from16 v22, v28

    goto :goto_b2

    :cond_a4
    mul-double v22, v22, v22

    mul-double v22, v22, v22

    .line 279
    sget-object v4, Lcc;->d:[[I

    aget-object v4, v4, v18

    invoke-static {v4, v1, v2, v9, v10}, Lcc;->a([IDD)D

    move-result-wide v1

    mul-double v22, v22, v1

    :goto_b2
    mul-double v1, v13, v13

    sub-double v1, v26, v1

    mul-double v9, v5, v5

    sub-double/2addr v1, v9

    cmpg-double v4, v1, v28

    if-gez v4, :cond_c0

    move-wide/from16 v1, v28

    goto :goto_cb

    :cond_c0
    mul-double/2addr v1, v1

    mul-double/2addr v1, v1

    .line 285
    sget-object v4, Lcc;->d:[[I

    aget-object v4, v4, v12

    invoke-static {v4, v13, v14, v5, v6}, Lcc;->a([IDD)D

    move-result-wide v4

    mul-double/2addr v1, v4

    :goto_cb
    mul-double v4, v7, v7

    sub-double v26, v26, v4

    mul-double v4, v16, v16

    sub-double v26, v26, v4

    cmpg-double v4, v26, v28

    if-gez v4, :cond_d8

    goto :goto_e8

    :cond_d8
    mul-double v26, v26, v26

    mul-double v26, v26, v26

    .line 291
    sget-object v4, Lcc;->d:[[I

    aget-object v3, v4, v3

    move-wide/from16 v4, v16

    invoke-static {v3, v7, v8, v4, v5}, Lcc;->a([IDD)D

    move-result-wide v3

    mul-double v28, v26, v3

    :goto_e8
    add-int/lit8 v4, v25, 0x1

    .line 295
    aget-wide v5, p1, v25

    add-double v22, v22, v1

    add-double v22, v22, v28

    const-wide v1, 0x4051800000000000L    # 70.0

    mul-double v22, v22, v1

    mul-double v22, v22, p12

    add-double v5, v5, v22

    aput-wide v5, p1, v25

    add-int/lit8 v8, v19, 0x1

    move/from16 v2, p6

    move/from16 v7, p7

    move-wide/from16 v5, v20

    move/from16 v3, v24

    goto/16 :goto_13

    :cond_109
    move/from16 v24, v3

    move/from16 v25, v4

    add-int/lit8 v3, v24, 0x1

    move/from16 v2, p6

    goto/16 :goto_6

    :cond_113
    return-void
.end method
