###### Class defpackage.am (am)
.class public Lam;
.super Ldf;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field private d:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lam;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .registers 8

    .line 15
    invoke-direct {p0}, Ldf;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [I

    .line 6
    iput-object v0, p0, Lam;->d:[I

    .line 16
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lam;->a:D

    .line 17
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lam;->b:D

    .line 18
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lam;->c:D

    const/4 v0, 0x0

    move v1, v0

    :goto_22
    const/16 v2, 0x100

    if-ge v1, v2, :cond_2d

    .line 20
    iget-object v2, p0, Lam;->d:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2d
    :goto_2d
    if-ge v0, v2, :cond_49

    rsub-int v1, v0, 0x100

    .line 24
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    iget-object v3, p0, Lam;->d:[I

    aget v4, v3, v0

    .line 26
    aget v5, v3, v1

    aput v5, v3, v0

    .line 27
    aput v4, v3, v1

    add-int/lit16 v1, v0, 0x100

    .line 29
    aget v4, v3, v0

    aput v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_49
    return-void
.end method


# virtual methods
.method public a(DD)D
    .registers 12

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 93
    invoke-virtual/range {v0 .. v6}, Lam;->a(DDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public a(DDD)D
    .registers 43

    move-object/from16 v8, p0

    .line 34
    iget-wide v0, v8, Lam;->a:D

    add-double v0, p1, v0

    .line 35
    iget-wide v2, v8, Lam;->b:D

    add-double v2, p3, v2

    .line 36
    iget-wide v4, v8, Lam;->c:D

    add-double v4, p5, v4

    double-to-int v6, v0

    double-to-int v7, v2

    double-to-int v9, v4

    int-to-double v10, v6

    cmpg-double v10, v0, v10

    if-gez v10, :cond_18

    add-int/lit8 v6, v6, -0x1

    :cond_18
    int-to-double v10, v7

    cmpg-double v10, v2, v10

    if-gez v10, :cond_1f

    add-int/lit8 v7, v7, -0x1

    :cond_1f
    int-to-double v10, v9

    cmpg-double v10, v4, v10

    if-gez v10, :cond_26

    add-int/lit8 v9, v9, -0x1

    :cond_26
    and-int/lit16 v10, v6, 0xff

    and-int/lit16 v11, v7, 0xff

    and-int/lit16 v12, v9, 0xff

    int-to-double v13, v6

    sub-double v13, v0, v13

    int-to-double v0, v7

    sub-double v15, v2, v0

    int-to-double v0, v9

    sub-double v17, v4, v0

    mul-double v0, v13, v13

    mul-double/2addr v0, v13

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double v4, v13, v2

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    sub-double/2addr v4, v6

    mul-double/2addr v4, v13

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    add-double v4, v4, v19

    mul-double v21, v0, v4

    mul-double v0, v15, v15

    mul-double/2addr v0, v15

    mul-double v4, v15, v2

    sub-double/2addr v4, v6

    mul-double/2addr v4, v15

    add-double v4, v4, v19

    mul-double v23, v0, v4

    mul-double v0, v17, v17

    mul-double v0, v0, v17

    mul-double v2, v2, v17

    sub-double/2addr v2, v6

    mul-double v2, v2, v17

    add-double v2, v2, v19

    mul-double v19, v0, v2

    .line 58
    iget-object v0, v8, Lam;->d:[I

    aget v1, v0, v10

    add-int/2addr v1, v11

    aget v2, v0, v1

    add-int v9, v2, v12

    add-int/lit8 v1, v1, 0x1

    aget v1, v0, v1

    add-int v25, v1, v12

    add-int/lit8 v10, v10, 0x1

    .line 59
    aget v1, v0, v10

    add-int/2addr v1, v11

    aget v2, v0, v1

    add-int v10, v2, v12

    add-int/lit8 v1, v1, 0x1

    aget v1, v0, v1

    add-int v11, v1, v12

    .line 61
    aget v1, v0, v9

    move-object/from16 v0, p0

    move-wide v2, v13

    move-wide v4, v15

    move-wide/from16 v6, v17

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v26

    iget-object v0, v8, Lam;->d:[I

    aget v1, v0, v10

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v30, v13, v28

    move-object/from16 v0, p0

    move-wide/from16 v2, v30

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v5

    move-wide/from16 v1, v21

    move-wide/from16 v3, v26

    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v26

    iget-object v0, v8, Lam;->d:[I

    aget v1, v0, v25

    sub-double v32, v15, v28

    move-object/from16 v0, p0

    move-wide v2, v13

    move-wide/from16 v4, v32

    move-wide/from16 v6, v17

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v34

    iget-object v0, v8, Lam;->d:[I

    aget v1, v0, v11

    move-object/from16 v0, p0

    move-wide/from16 v2, v30

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v5

    move-wide/from16 v1, v21

    move-wide/from16 v3, v34

    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v5

    move-wide/from16 v1, v23

    move-wide/from16 v3, v26

    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v26

    iget-object v0, v8, Lam;->d:[I

    add-int/lit8 v9, v9, 0x1

    aget v1, v0, v9

    sub-double v17, v17, v28

    move-object/from16 v0, p0

    move-wide v2, v13

    move-wide v4, v15

    move-wide/from16 v6, v17

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v28

    iget-object v0, v8, Lam;->d:[I

    add-int/lit8 v10, v10, 0x1

    aget v1, v0, v10

    move-object/from16 v0, p0

    move-wide/from16 v2, v30

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v5

    move-wide/from16 v1, v21

    move-wide/from16 v3, v28

    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v9

    iget-object v0, v8, Lam;->d:[I

    add-int/lit8 v25, v25, 0x1

    aget v1, v0, v25

    move-object/from16 v0, p0

    move-wide v2, v13

    move-wide/from16 v4, v32

    move-wide/from16 v6, v17

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v12

    iget-object v0, v8, Lam;->d:[I

    add-int/lit8 v11, v11, 0x1

    aget v1, v0, v11

    move-object/from16 v0, p0

    move-wide/from16 v2, v30

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v5

    move-wide/from16 v1, v21

    move-wide v3, v12

    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v5

    move-wide/from16 v1, v23

    move-wide v3, v9

    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v5

    move-wide/from16 v1, v19

    move-wide/from16 v3, v26

    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final a(IDD)D
    .registers 9

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 v0, p1, 0x8

    shr-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    mul-double/2addr v0, p2

    const/4 v2, 0x4

    if-ge p1, v2, :cond_10

    const-wide/16 p2, 0x0

    goto :goto_1a

    :cond_10
    const/16 v2, 0xc

    if-eq p1, v2, :cond_1a

    const/16 v2, 0xe

    if-ne p1, v2, :cond_19

    goto :goto_1a

    :cond_19
    move-wide p2, p4

    :cond_1a
    :goto_1a
    and-int/lit8 p4, p1, 0x1

    if-nez p4, :cond_1f

    goto :goto_20

    :cond_1f
    neg-double v0, v0

    :goto_20
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_25

    goto :goto_26

    :cond_25
    neg-double p2, p2

    :goto_26
    add-double/2addr v0, p2

    return-wide v0
.end method

.method public final a(IDDD)D
    .registers 11

    and-int/lit8 p1, p1, 0xf

    const/16 v0, 0x8

    if-ge p1, v0, :cond_8

    move-wide v0, p2

    goto :goto_9

    :cond_8
    move-wide v0, p4

    :goto_9
    const/4 v2, 0x4

    if-ge p1, v2, :cond_e

    move-wide p2, p4

    goto :goto_18

    :cond_e
    const/16 p4, 0xc

    if-eq p1, p4, :cond_18

    const/16 p4, 0xe

    if-ne p1, p4, :cond_17

    goto :goto_18

    :cond_17
    move-wide p2, p6

    :cond_18
    :goto_18
    and-int/lit8 p4, p1, 0x1

    if-nez p4, :cond_1d

    goto :goto_1e

    :cond_1d
    neg-double v0, v0

    :goto_1e
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_23

    goto :goto_24

    :cond_23
    neg-double p2, p2

    :goto_24
    add-double/2addr v0, p2

    return-wide v0
.end method

.method public a([DDDDIIIDDDD)V
    .registers 77

    move-object/from16 v8, p0

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    const-wide/high16 v14, 0x402e000000000000L    # 15.0

    const-wide/high16 v16, 0x4018000000000000L    # 6.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const/16 v20, 0x0

    const/4 v6, 0x1

    if-ne v10, v6, :cond_f5

    div-double v21, v18, p17

    move/from16 v0, v20

    move v10, v0

    :goto_1a
    if-ge v10, v9, :cond_f4

    int-to-double v1, v10

    add-double v1, p2, v1

    mul-double v1, v1, p11

    .line 107
    iget-wide v3, v8, Lam;->a:D

    add-double/2addr v1, v3

    double-to-int v3, v1

    int-to-double v4, v3

    cmpg-double v4, v1, v4

    if-gez v4, :cond_2c

    add-int/lit8 v3, v3, -0x1

    :cond_2c
    and-int/lit16 v7, v3, 0xff

    int-to-double v3, v3

    sub-double v23, v1, v3

    mul-double v1, v23, v23

    mul-double v1, v1, v23

    mul-double v3, v23, v16

    sub-double/2addr v3, v14

    mul-double v3, v3, v23

    add-double/2addr v3, v12

    mul-double v25, v1, v3

    move/from16 v27, v0

    move/from16 v4, v20

    :goto_41
    if-ge v4, v11, :cond_ec

    int-to-double v0, v4

    add-double v0, p6, v0

    mul-double v0, v0, p15

    .line 115
    iget-wide v2, v8, Lam;->c:D

    add-double/2addr v0, v2

    double-to-int v2, v0

    move/from16 p4, v7

    int-to-double v6, v2

    cmpg-double v3, v0, v6

    if-gez v3, :cond_55

    add-int/lit8 v2, v2, -0x1

    :cond_55
    and-int/lit16 v3, v2, 0xff

    int-to-double v5, v2

    sub-double v29, v0, v5

    mul-double v0, v29, v29

    mul-double v0, v0, v29

    mul-double v5, v29, v16

    sub-double/2addr v5, v14

    mul-double v5, v5, v29

    add-double/2addr v5, v12

    mul-double v31, v0, v5

    .line 122
    iget-object v0, v8, Lam;->d:[I

    aget v1, v0, p4

    add-int/lit8 v1, v1, 0x0

    .line 123
    aget v1, v0, v1

    add-int v33, v1, v3

    const/4 v6, 0x1

    add-int/lit8 v7, p4, 0x1

    .line 124
    aget v1, v0, v7

    add-int/lit8 v1, v1, 0x0

    .line 125
    aget v1, v0, v1

    add-int v28, v1, v3

    .line 126
    aget v1, v0, v33

    move-object/from16 v0, p0

    move-wide/from16 v2, v23

    move/from16 v34, v4

    move-wide/from16 v4, v29

    invoke-virtual/range {v0 .. v5}, Lam;->a(IDD)D

    move-result-wide v35

    iget-object v0, v8, Lam;->d:[I

    aget v1, v0, v28

    sub-double v37, v23, v18

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v2, v37

    move/from16 v39, p4

    move/from16 v40, v6

    move-wide/from16 v6, v29

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v5

    move-wide/from16 v1, v25

    move-wide/from16 v3, v35

    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v35

    .line 127
    iget-object v0, v8, Lam;->d:[I

    add-int/lit8 v33, v33, 0x1

    aget v1, v0, v33

    const-wide/16 v4, 0x0

    sub-double v29, v29, v18

    move-object/from16 v0, p0

    move-wide/from16 v2, v23

    move-wide/from16 v6, v29

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v41

    iget-object v0, v8, Lam;->d:[I

    add-int/lit8 v28, v28, 0x1

    aget v1, v0, v28

    move-object/from16 v0, p0

    move-wide/from16 v2, v37

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v5

    move-wide/from16 v1, v25

    move-wide/from16 v3, v41

    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v5

    move-wide/from16 v1, v31

    move-wide/from16 v3, v35

    .line 129
    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v0

    add-int/lit8 v2, v27, 0x1

    .line 131
    aget-wide v3, p1, v27

    mul-double v0, v0, v21

    add-double/2addr v3, v0

    aput-wide v3, p1, v27

    add-int/lit8 v4, v34, 0x1

    move/from16 v27, v2

    move/from16 v7, v39

    move/from16 v6, v40

    goto/16 :goto_41

    :cond_ec
    move/from16 v40, v6

    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v27

    goto/16 :goto_1a

    :cond_f4
    return-void

    :cond_f5
    move/from16 v40, v6

    div-double v21, v18, p17

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    move-wide v4, v0

    move-wide v6, v4

    move/from16 v23, v2

    move/from16 v12, v20

    move v13, v12

    move-wide v2, v6

    :goto_104
    if-ge v12, v9, :cond_2de

    int-to-double v14, v12

    add-double v14, p2, v14

    mul-double v14, v14, p11

    move-wide/from16 p17, v0

    .line 143
    iget-wide v0, v8, Lam;->a:D

    add-double/2addr v14, v0

    double-to-int v0, v14

    move-wide/from16 v28, v2

    int-to-double v1, v0

    cmpg-double v1, v14, v1

    if-gez v1, :cond_11a

    add-int/lit8 v0, v0, -0x1

    :cond_11a
    and-int/lit16 v2, v0, 0xff

    int-to-double v0, v0

    sub-double/2addr v14, v0

    mul-double v0, v14, v14

    mul-double/2addr v0, v14

    mul-double v30, v14, v16

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    sub-double v30, v30, v26

    mul-double v30, v30, v14

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    add-double v30, v30, v24

    mul-double v30, v30, v0

    move-wide/from16 v0, p17

    move/from16 v3, v20

    :goto_133
    if-ge v3, v11, :cond_2c8

    move-wide/from16 p17, v0

    int-to-double v0, v3

    add-double v0, p6, v0

    mul-double v0, v0, p15

    move-wide/from16 v32, v4

    move v5, v3

    .line 152
    iget-wide v3, v8, Lam;->c:D

    add-double/2addr v0, v3

    double-to-int v3, v0

    move/from16 v34, v5

    int-to-double v4, v3

    cmpg-double v4, v0, v4

    if-gez v4, :cond_14c

    add-int/lit8 v3, v3, -0x1

    :cond_14c
    and-int/lit16 v4, v3, 0xff

    move-wide/from16 v35, v6

    int-to-double v5, v3

    sub-double v37, v0, v5

    mul-double v0, v37, v37

    mul-double v0, v0, v37

    mul-double v5, v37, v16

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    sub-double v5, v5, v26

    mul-double v5, v5, v37

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    add-double v5, v5, v24

    mul-double v41, v0, v5

    move-wide/from16 v0, p17

    move/from16 v5, v20

    move/from16 v3, v23

    move-wide/from16 v6, v35

    :goto_16d
    if-ge v5, v10, :cond_2ad

    move-wide/from16 p17, v0

    int-to-double v0, v5

    add-double v0, p4, v0

    mul-double v0, v0, p13

    move-wide/from16 v35, v6

    .line 161
    iget-wide v6, v8, Lam;->b:D

    add-double/2addr v0, v6

    double-to-int v6, v0

    int-to-double v9, v6

    cmpg-double v7, v0, v9

    if-gez v7, :cond_183

    add-int/lit8 v6, v6, -0x1

    :cond_183
    and-int/lit16 v9, v6, 0xff

    int-to-double v6, v6

    sub-double v43, v0, v6

    mul-double v0, v43, v43

    mul-double v0, v0, v43

    mul-double v6, v43, v16

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    sub-double v6, v6, v26

    mul-double v6, v6, v43

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    add-double v6, v6, v24

    mul-double v45, v0, v6

    if-eqz v5, :cond_1ae

    if-eq v9, v3, :cond_19f

    goto :goto_1ae

    :cond_19f
    move-wide/from16 v43, p17

    move v9, v3

    move/from16 v47, v4

    move-wide/from16 v48, v32

    move/from16 v39, v34

    move/from16 v34, v2

    move/from16 v32, v5

    goto/16 :goto_272

    .line 170
    :cond_1ae
    :goto_1ae
    iget-object v0, v8, Lam;->d:[I

    aget v1, v0, v2

    add-int/2addr v1, v9

    .line 171
    aget v3, v0, v1

    add-int v10, v3, v4

    add-int/lit8 v1, v1, 0x1

    .line 172
    aget v1, v0, v1

    add-int v23, v1, v4

    add-int/lit8 v6, v2, 0x1

    .line 173
    aget v1, v0, v6

    add-int/2addr v1, v9

    .line 174
    aget v3, v0, v1

    add-int v28, v3, v4

    add-int/lit8 v1, v1, 0x1

    .line 175
    aget v1, v0, v1

    add-int v29, v1, v4

    .line 176
    aget v1, v0, v10

    move-object/from16 v0, p0

    move/from16 v39, v34

    move/from16 v34, v2

    move-wide v2, v14

    move/from16 v47, v4

    move/from16 v32, v5

    move-wide/from16 v4, v43

    move-wide/from16 v6, v37

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v35

    iget-object v0, v8, Lam;->d:[I

    aget v1, v0, v28

    sub-double v48, v14, v18

    move-object/from16 v0, p0

    move-wide/from16 v2, v48

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v5

    move-wide/from16 v1, v30

    move-wide/from16 v3, v35

    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v35

    .line 177
    iget-object v0, v8, Lam;->d:[I

    aget v1, v0, v23

    sub-double v50, v43, v18

    move-object/from16 v0, p0

    move-wide v2, v14

    move-wide/from16 v4, v50

    move-wide/from16 v6, v37

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v52

    iget-object v0, v8, Lam;->d:[I

    aget v1, v0, v29

    move-object/from16 v0, p0

    move-wide/from16 v2, v48

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v5

    move-wide/from16 v1, v30

    move-wide/from16 v3, v52

    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v52

    .line 178
    iget-object v0, v8, Lam;->d:[I

    add-int/lit8 v10, v10, 0x1

    aget v1, v0, v10

    sub-double v54, v37, v18

    move-object/from16 v0, p0

    move-wide v2, v14

    move-wide/from16 v4, v43

    move-wide/from16 v6, v54

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v56

    iget-object v0, v8, Lam;->d:[I

    add-int/lit8 v28, v28, 0x1

    aget v1, v0, v28

    move-object/from16 v0, p0

    move-wide/from16 v2, v48

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v5

    move-wide/from16 v1, v30

    move-wide/from16 v3, v56

    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v43

    .line 179
    iget-object v0, v8, Lam;->d:[I

    add-int/lit8 v23, v23, 0x1

    aget v1, v0, v23

    move-object/from16 v0, p0

    move-wide v2, v14

    move-wide/from16 v4, v50

    move-wide/from16 v6, v54

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v56

    iget-object v0, v8, Lam;->d:[I

    add-int/lit8 v29, v29, 0x1

    aget v1, v0, v29

    move-object/from16 v0, p0

    move-wide/from16 v2, v48

    invoke-virtual/range {v0 .. v7}, Lam;->a(IDDD)D

    move-result-wide v5

    move-wide/from16 v1, v30

    move-wide/from16 v3, v56

    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v0

    move-wide/from16 v28, v0

    move-wide/from16 v48, v35

    move-wide/from16 v35, v52

    :goto_272
    move-object/from16 v0, p0

    move-wide/from16 v1, v45

    move-wide/from16 v3, v48

    move-wide/from16 v5, v35

    .line 183
    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v50

    move-wide/from16 v3, v43

    move-wide/from16 v5, v28

    .line 184
    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v5

    move-wide/from16 v1, v41

    move-wide/from16 v3, v50

    .line 185
    invoke-virtual/range {v0 .. v6}, Lam;->b(DDD)D

    move-result-wide v0

    add-int/lit8 v2, v13, 0x1

    .line 187
    aget-wide v3, p1, v13

    mul-double v0, v0, v21

    add-double/2addr v3, v0

    aput-wide v3, p1, v13

    add-int/lit8 v5, v32, 0x1

    move/from16 v10, p9

    move v13, v2

    move v3, v9

    move/from16 v2, v34

    move-wide/from16 v6, v35

    move/from16 v34, v39

    move-wide/from16 v0, v43

    move/from16 v4, v47

    move-wide/from16 v32, v48

    move/from16 v9, p8

    goto/16 :goto_16d

    :cond_2ad
    move-wide/from16 p17, v0

    move-wide/from16 v35, v6

    move/from16 v39, v34

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    move/from16 v34, v2

    add-int/lit8 v0, v39, 0x1

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v23, v3

    move-wide/from16 v4, v32

    move v3, v0

    move-wide/from16 v0, p17

    goto/16 :goto_133

    :cond_2c8
    move-wide/from16 p17, v0

    move-wide/from16 v32, v4

    move-wide/from16 v35, v6

    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    add-int/lit8 v12, v12, 0x1

    move/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v14, v26

    move-wide/from16 v2, v28

    goto/16 :goto_104

    :cond_2de
    return-void
.end method

.method public final b(DDD)D
    .registers 7

    sub-double/2addr p5, p3

    mul-double/2addr p1, p5

    add-double/2addr p3, p1

    return-wide p3
.end method
