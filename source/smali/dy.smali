###### Class defpackage.dy (dy)
.class public Ldy;
.super Lbw;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lbw;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Ldy;->a:Ljava/util/Random;

    return-void
.end method

.method private a(Lqv;FF)V
    .registers 12

    .line 113
    iget-wide v0, p1, Lqv;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 114
    iget-wide v1, p1, Lqv;->aN:D

    const/high16 v3, 0x41800000    # 16.0f

    div-float/2addr p3, v3

    float-to-double v4, p3

    add-double/2addr v1, v4

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result p3

    .line 115
    iget-wide v1, p1, Lqv;->aO:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 116
    iget v2, p1, Lqv;->a:I

    if-nez v2, :cond_25

    iget-wide v4, p1, Lqv;->aM:D

    div-float v0, p2, v3

    float-to-double v6, v0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v0

    .line 117
    :cond_25
    iget v2, p1, Lqv;->a:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_34

    iget-wide v1, p1, Lqv;->aO:D

    div-float v4, p2, v3

    float-to-double v4, v4

    sub-double/2addr v1, v4

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 118
    :cond_34
    iget v2, p1, Lqv;->a:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_43

    iget-wide v4, p1, Lqv;->aM:D

    div-float v0, p2, v3

    float-to-double v6, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v0

    .line 119
    :cond_43
    iget v2, p1, Lqv;->a:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_51

    iget-wide v1, p1, Lqv;->aO:D

    div-float/2addr p2, v3

    float-to-double p1, p2

    add-double/2addr v1, p1

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 120
    :cond_51
    iget-object p1, p0, Ldy;->b:Lth;

    iget-object p1, p1, Lth;->g:Lfd;

    invoke-virtual {p1, v0, p3, v1}, Lfd;->c(III)F

    move-result p1

    .line 121
    invoke-static {p1, p1, p1}, Lorg/lwjgl/opengl/GL11;->glColor3f(FFF)V

    return-void
.end method

.method private a(Lqv;IIII)V
    .registers 48

    move/from16 v0, p2

    move/from16 v1, p3

    neg-int v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    neg-int v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v3

    const/4 v6, 0x0

    .line 42
    :goto_d
    div-int/lit8 v7, v0, 0x10

    if-ge v6, v7, :cond_181

    const/4 v7, 0x0

    .line 43
    :goto_12
    div-int/lit8 v8, v1, 0x10

    if-ge v7, v8, :cond_170

    add-int/lit8 v8, v6, 0x1

    mul-int/lit8 v8, v8, 0x10

    int-to-float v9, v8

    add-float/2addr v9, v2

    mul-int/lit8 v10, v6, 0x10

    int-to-float v11, v10

    add-float/2addr v11, v2

    add-int/lit8 v12, v7, 0x1

    mul-int/lit8 v13, v12, 0x10

    int-to-float v14, v13

    add-float/2addr v14, v4

    mul-int/lit8 v7, v7, 0x10

    int-to-float v15, v7

    add-float/2addr v15, v4

    add-float v16, v9, v11

    div-float v5, v16, v3

    add-float v16, v14, v15

    move/from16 v17, v2

    div-float v2, v16, v3

    move-object/from16 v3, p0

    move/from16 v18, v4

    move-object/from16 v4, p1

    .line 49
    invoke-direct {v3, v4, v5, v2}, Ldy;->a(Lqv;FF)V

    add-int v2, p4, v0

    sub-int v5, v2, v10

    int-to-float v5, v5

    const/high16 v10, 0x43800000    # 256.0f

    div-float/2addr v5, v10

    sub-int/2addr v2, v8

    int-to-float v2, v2

    div-float/2addr v2, v10

    add-int v8, p5, v1

    sub-int v7, v8, v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    sub-int/2addr v8, v13

    int-to-float v8, v8

    div-float/2addr v8, v10

    .line 71
    sget-object v10, Lnw;->a:Lnw;

    .line 72
    invoke-virtual {v10}, Lnw;->b()V

    const/4 v13, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 73
    invoke-virtual {v10, v13, v13, v0}, Lnw;->b(FFF)V

    float-to-double v0, v9

    move v9, v14

    float-to-double v13, v15

    const/high16 v15, -0x41000000    # -0.5f

    float-to-double v3, v15

    move v15, v8

    move/from16 v30, v9

    float-to-double v8, v2

    move v2, v6

    float-to-double v6, v7

    move-object/from16 v19, v10

    move-wide/from16 v20, v0

    move-wide/from16 v22, v13

    move-wide/from16 v24, v3

    move-wide/from16 v26, v8

    move-wide/from16 v28, v6

    .line 74
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move/from16 v31, v12

    float-to-double v11, v11

    move-wide/from16 v32, v8

    float-to-double v8, v5

    move-wide/from16 v20, v11

    move-wide/from16 v26, v8

    .line 75
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move/from16 v5, v30

    float-to-double v5, v5

    move-wide/from16 v34, v13

    move v7, v15

    float-to-double v13, v7

    move-wide/from16 v22, v5

    move-wide/from16 v28, v13

    .line 76
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v20, v0

    move-wide/from16 v26, v32

    .line 77
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 79
    invoke-virtual {v10, v8, v8, v7}, Lnw;->b(FFF)V

    const/high16 v9, 0x3f000000    # 0.5f

    float-to-double v13, v9

    const/high16 v9, 0x3f400000    # 0.75f

    move-wide/from16 v32, v3

    move v4, v2

    float-to-double v2, v9

    move-wide/from16 v36, v11

    float-to-double v11, v8

    move-wide/from16 v24, v13

    move-wide/from16 v26, v2

    move-wide/from16 v28, v11

    .line 80
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    const/high16 v8, 0x3f500000    # 0.8125f

    float-to-double v8, v8

    move-wide/from16 v20, v36

    move-wide/from16 v26, v8

    .line 81
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    const/high16 v15, 0x3d800000    # 0.0625f

    move-wide/from16 v38, v8

    float-to-double v7, v15

    move-wide/from16 v22, v34

    move-wide/from16 v26, v38

    move-wide/from16 v28, v7

    .line 82
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v20, v0

    move-wide/from16 v26, v2

    .line 83
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v15, 0x0

    .line 85
    invoke-virtual {v10, v15, v9, v15}, Lnw;->b(FFF)V

    const/high16 v9, 0x3b000000    # 0.001953125f

    move-wide/from16 v40, v7

    float-to-double v7, v9

    move-wide/from16 v22, v5

    move-wide/from16 v24, v32

    move-wide/from16 v28, v7

    .line 86
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v20, v36

    move-wide/from16 v26, v38

    .line 87
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v24, v13

    .line 88
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v20, v0

    move-wide/from16 v26, v2

    .line 89
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    .line 91
    invoke-virtual {v10, v15, v9, v15}, Lnw;->b(FFF)V

    move-wide/from16 v22, v34

    .line 92
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v20, v36

    move-wide/from16 v26, v38

    .line 93
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v24, v32

    .line 94
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v20, v0

    move-wide/from16 v26, v2

    .line 95
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 97
    invoke-virtual {v10, v2, v3, v3}, Lnw;->b(FFF)V

    const v2, 0x3f408000

    float-to-double v2, v2

    move-wide/from16 v22, v5

    move-wide/from16 v24, v13

    move-wide/from16 v26, v2

    move-wide/from16 v28, v11

    .line 98
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v22, v34

    move-wide/from16 v28, v40

    .line 99
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v24, v32

    .line 100
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v22, v5

    move-wide/from16 v28, v11

    .line 101
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v10, v0, v1, v1}, Lnw;->b(FFF)V

    move-wide/from16 v20, v36

    .line 104
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v22, v34

    move-wide/from16 v28, v40

    .line 105
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v24, v13

    .line 106
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    move-wide/from16 v22, v5

    move-wide/from16 v28, v11

    .line 107
    invoke-virtual/range {v19 .. v29}, Lnw;->a(DDDDD)V

    .line 108
    invoke-virtual {v10}, Lnw;->a()V

    move/from16 v0, p2

    move/from16 v1, p3

    move v6, v4

    move/from16 v2, v17

    move/from16 v4, v18

    move/from16 v7, v31

    const/high16 v3, 0x40000000    # 2.0f

    goto/16 :goto_12

    :cond_170
    move/from16 v17, v2

    move/from16 v18, v4

    move v4, v6

    add-int/lit8 v6, v4, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v4, v18

    const/high16 v3, 0x40000000    # 2.0f

    goto/16 :goto_d

    :cond_181
    return-void
.end method


# virtual methods
.method public a(Lqv;DDDFF)V
    .registers 16

    .line 18
    iget-object p9, p0, Ldy;->a:Ljava/util/Random;

    const-wide/16 v0, 0xbb

    invoke-virtual {p9, v0, v1}, Ljava/util/Random;->setSeed(J)V

    .line 20
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    double-to-float p2, p2

    double-to-float p3, p4

    double-to-float p4, p6

    .line 21
    invoke-static {p2, p3, p4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    .line 22
    invoke-static {p8, p2, p3, p2}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const p2, 0x803a    # 4.5999E-41f

    .line 23
    invoke-static {p2}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const-string p3, "/art/kz.png"

    .line 24
    invoke-virtual {p0, p3}, Ldy;->a(Ljava/lang/String;)V

    .line 26
    iget-object p3, p1, Lqv;->e:Liq;

    const/high16 p4, 0x3d800000    # 0.0625f

    .line 29
    invoke-static {p4, p4, p4}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 30
    iget v2, p3, Liq;->B:I

    iget v3, p3, Liq;->C:I

    iget v4, p3, Liq;->D:I

    iget v5, p3, Liq;->E:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ldy;->a(Lqv;IIII)V

    .line 31
    invoke-static {p2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 32
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 14
    check-cast p1, Lqv;

    invoke-virtual/range {p0 .. p9}, Ldy;->a(Lqv;DDDFF)V

    return-void
.end method
