###### Class defpackage.pi (pi)
.class public Lpi;
.super Lbw;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lbw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc;DDDFF)V
    .registers 56

    move-object/from16 v0, p1

    .line 12
    sget-object v8, Lnw;->a:Lnw;

    const/16 v9, 0xde1

    .line 14
    invoke-static {v9}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v10, 0xb50

    .line 15
    invoke-static {v10}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v11, 0xbe2

    .line 16
    invoke-static {v11}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v1, 0x302

    const/4 v12, 0x1

    .line 17
    invoke-static {v1, v12}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    const/16 v1, 0x8

    new-array v13, v1, [D

    new-array v14, v1, [D

    .line 25
    new-instance v1, Ljava/util/Random;

    iget-wide v2, v0, Lc;->a:J

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const-wide/16 v2, 0x0

    move-wide/from16 v16, v2

    move-wide/from16 v18, v16

    const/4 v2, 0x7

    :goto_2d
    const/16 v6, 0xb

    const/4 v7, 0x5

    if-ltz v2, :cond_49

    .line 27
    aput-wide v16, v13, v2

    .line 28
    aput-wide v18, v14, v2

    .line 29
    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v3, v7

    int-to-double v3, v3

    add-double v16, v16, v3

    .line 30
    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v3, v7

    int-to-double v3, v3

    add-double v18, v18, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    :cond_49
    const/16 v20, 0x0

    move/from16 v4, v20

    :goto_4d
    const/4 v1, 0x4

    if-ge v4, v1, :cond_1af

    .line 35
    new-instance v5, Ljava/util/Random;

    iget-wide v1, v0, Lc;->a:J

    invoke-direct {v5, v1, v2}, Ljava/util/Random;-><init>(J)V

    move/from16 v2, v20

    :goto_59
    const/4 v3, 0x3

    if-ge v2, v3, :cond_19a

    if-lez v2, :cond_61

    rsub-int/lit8 v1, v2, 0x7

    goto :goto_62

    :cond_61
    const/4 v1, 0x7

    :goto_62
    if-lez v2, :cond_69

    add-int/lit8 v21, v1, -0x2

    move/from16 v15, v21

    goto :goto_6b

    :cond_69
    move/from16 v15, v20

    .line 41
    :goto_6b
    aget-wide v21, v13, v1

    sub-double v21, v21, v16

    .line 42
    aget-wide v23, v14, v1

    sub-double v23, v23, v18

    :goto_73
    if-lt v1, v15, :cond_181

    if-nez v2, :cond_88

    .line 47
    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v25

    add-int/lit8 v9, v25, -0x5

    int-to-double v10, v9

    add-double v10, v21, v10

    .line 48
    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    sub-int/2addr v9, v7

    move-object/from16 v27, v13

    goto :goto_9b

    :cond_88
    move-object/from16 v27, v13

    const/16 v9, 0x1f

    .line 50
    invoke-virtual {v5, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/lit8 v10, v10, -0xf

    int-to-double v10, v10

    add-double v10, v21, v10

    .line 51
    invoke-virtual {v5, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/lit8 v9, v9, -0xf

    :goto_9b
    int-to-double v12, v9

    add-double v12, v23, v12

    .line 54
    invoke-virtual {v8, v7}, Lnw;->a(I)V

    const/high16 v9, 0x3f000000    # 0.5f

    const v6, 0x3e99999a    # 0.3f

    const v3, 0x3ee66666    # 0.45f

    .line 56
    invoke-virtual {v8, v3, v3, v9, v6}, Lnw;->a(FFFF)V

    move-object v9, v8

    int-to-double v7, v4

    const-wide v30, 0x3fc999999999999aL    # 0.2

    mul-double v7, v7, v30

    const-wide v30, 0x3fb999999999999aL    # 0.1

    add-double v7, v7, v30

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v34, v7

    if-nez v2, :cond_cc

    int-to-double v6, v1

    mul-double v6, v6, v30

    add-double v6, v6, v32

    mul-double v7, v34, v6

    move-wide/from16 v36, v7

    goto :goto_ce

    :cond_cc
    move-wide/from16 v36, v34

    :goto_ce
    if-nez v2, :cond_db

    add-int/lit8 v6, v1, -0x1

    int-to-double v6, v6

    mul-double v6, v6, v30

    add-double v6, v6, v32

    mul-double v7, v34, v6

    move-wide/from16 v34, v7

    :cond_db
    move/from16 v8, v20

    const/4 v6, 0x5

    :goto_de
    if-ge v8, v6, :cond_155

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    add-double v32, p2, v30

    sub-double v38, v32, v36

    add-double v30, p6, v30

    sub-double v40, v30, v36

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    const/4 v3, 0x2

    const/4 v7, 0x1

    if-eq v8, v7, :cond_f2

    if-ne v8, v3, :cond_f6

    :cond_f2
    mul-double v44, v36, v42

    add-double v38, v38, v44

    :cond_f6
    if-eq v8, v3, :cond_fb

    const/4 v7, 0x3

    if-ne v8, v7, :cond_ff

    :cond_fb
    mul-double v44, v36, v42

    add-double v40, v40, v44

    :cond_ff
    sub-double v32, v32, v34

    sub-double v30, v30, v34

    const/4 v7, 0x1

    if-eq v8, v7, :cond_108

    if-ne v8, v3, :cond_10c

    :cond_108
    mul-double v44, v34, v42

    add-double v32, v32, v44

    :cond_10c
    if-eq v8, v3, :cond_112

    const/4 v3, 0x3

    if-ne v8, v3, :cond_117

    goto :goto_113

    :cond_112
    const/4 v3, 0x3

    :goto_113
    mul-double v42, v42, v34

    add-double v30, v30, v42

    :cond_117
    add-double v32, v32, v10

    mul-int/lit8 v3, v1, 0x10

    int-to-double v6, v3

    add-double v6, p4, v6

    add-double v30, v30, v12

    move/from16 v43, v1

    move-object v1, v9

    move/from16 v29, v2

    const/16 v44, 0x3

    move-wide/from16 v2, v32

    move/from16 v32, v4

    move-object/from16 v33, v5

    move-wide v4, v6

    const/16 v26, 0xb

    const/16 v28, 0x5

    const/16 v42, 0x1

    move-wide/from16 v6, v30

    .line 75
    invoke-virtual/range {v1 .. v7}, Lnw;->a(DDD)V

    add-double v2, v38, v21

    add-int/lit8 v1, v43, 0x1

    mul-int/lit8 v1, v1, 0x10

    int-to-double v4, v1

    add-double v4, p4, v4

    add-double v6, v40, v23

    move-object v1, v9

    .line 76
    invoke-virtual/range {v1 .. v7}, Lnw;->a(DDD)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v28

    move/from16 v2, v29

    move/from16 v4, v32

    move-object/from16 v5, v33

    move/from16 v1, v43

    goto :goto_de

    :cond_155
    move/from16 v43, v1

    move/from16 v29, v2

    move/from16 v32, v4

    move-object/from16 v33, v5

    move/from16 v28, v6

    const/16 v26, 0xb

    const/16 v42, 0x1

    const/16 v44, 0x3

    .line 80
    invoke-virtual {v9}, Lnw;->a()V

    add-int/lit8 v1, v43, -0x1

    move-object v8, v9

    move-wide/from16 v21, v10

    move-wide/from16 v23, v12

    move/from16 v6, v26

    move-object/from16 v13, v27

    move/from16 v7, v28

    move/from16 v12, v42

    move/from16 v3, v44

    const/16 v9, 0xde1

    const/16 v10, 0xb50

    const/16 v11, 0xbe2

    goto/16 :goto_73

    :cond_181
    move/from16 v29, v2

    move/from16 v32, v4

    move-object/from16 v33, v5

    move/from16 v26, v6

    move/from16 v28, v7

    move-object v9, v8

    move/from16 v42, v12

    move-object/from16 v27, v13

    add-int/lit8 v2, v29, 0x1

    const/16 v9, 0xde1

    const/16 v10, 0xb50

    const/16 v11, 0xbe2

    goto/16 :goto_59

    :cond_19a
    move/from16 v32, v4

    move/from16 v26, v6

    move/from16 v28, v7

    move-object v9, v8

    move/from16 v42, v12

    move-object/from16 v27, v13

    add-int/lit8 v4, v32, 0x1

    const/16 v9, 0xde1

    const/16 v10, 0xb50

    const/16 v11, 0xbe2

    goto/16 :goto_4d

    :cond_1af
    move v1, v11

    .line 86
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v0, 0xb50

    .line 87
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0xde1

    .line 88
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 10
    check-cast p1, Lc;

    invoke-virtual/range {p0 .. p9}, Lpi;->a(Lc;DDDFF)V

    return-void
.end method
