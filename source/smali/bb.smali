###### Class defpackage.bb (bb)
.class public Lbb;
.super Lbw;
.source "SourceFile"


# instance fields
.field public a:Z

.field private e:Lcv;

.field private f:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lbw;-><init>()V

    .line 27
    new-instance v0, Lcv;

    invoke-direct {v0}, Lcv;-><init>()V

    iput-object v0, p0, Lbb;->e:Lcv;

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lbb;->f:Ljava/util/Random;

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lbb;->a:Z

    const v0, 0x3e19999a    # 0.15f

    .line 32
    iput v0, p0, Lbb;->c:F

    const/high16 v0, 0x3f400000    # 0.75f

    .line 33
    iput v0, p0, Lbb;->d:F

    return-void
.end method

.method private a(Lnw;IIIII)V
    .registers 21

    .line 222
    invoke-virtual {p1}, Lnw;->b()V

    move-object v7, p1

    move/from16 v0, p6

    .line 223
    invoke-virtual {p1, v0}, Lnw;->b(I)V

    add-int/lit8 v0, p2, 0x0

    int-to-double v8, v0

    add-int/lit8 v0, p3, 0x0

    int-to-double v10, v0

    const-wide/16 v5, 0x0

    move-object v0, p1

    move-wide v1, v8

    move-wide v3, v10

    .line 224
    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    add-int v0, p3, p5

    int-to-double v12, v0

    move-object v0, p1

    move-wide v3, v12

    .line 225
    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    add-int v0, p2, p4

    int-to-double v8, v0

    move-object v0, p1

    move-wide v1, v8

    .line 226
    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    move-wide v3, v10

    .line 227
    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 228
    invoke-virtual {p1}, Lnw;->a()V

    return-void
.end method


# virtual methods
.method public a(IIIIII)V
    .registers 32

    .line 235
    sget-object v11, Lnw;->a:Lnw;

    .line 236
    invoke-virtual {v11}, Lnw;->b()V

    add-int/lit8 v0, p1, 0x0

    int-to-double v12, v0

    add-int v0, p2, p6

    int-to-double v14, v0

    const/4 v0, 0x0

    float-to-double v9, v0

    add-int/lit8 v0, p3, 0x0

    int-to-float v0, v0

    const/high16 v16, 0x3b800000    # 0.00390625f

    mul-float v0, v0, v16

    float-to-double v7, v0

    add-int v0, p4, p6

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-double v5, v0

    move-object v0, v11

    move-wide v1, v12

    move-wide v3, v14

    move-wide/from16 v17, v5

    move-wide v5, v9

    move-wide/from16 v19, v7

    move-wide/from16 v21, v9

    move-wide/from16 v9, v17

    .line 237
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-int v0, p1, p5

    int-to-double v9, v0

    add-int v0, p3, p5

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-double v7, v0

    move-object v0, v11

    move-wide v1, v9

    move-wide/from16 v5, v21

    move-wide v14, v7

    move-wide/from16 v23, v9

    move-wide/from16 v9, v17

    .line 238
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    add-int/lit8 v0, p2, 0x0

    int-to-double v9, v0

    add-int/lit8 v0, p4, 0x0

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-double v7, v0

    move-object v0, v11

    move-wide/from16 v1, v23

    move-wide v3, v9

    move-wide/from16 v16, v7

    move-wide v7, v14

    move-wide v14, v9

    move-wide/from16 v9, v16

    .line 239
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide v1, v12

    move-wide v3, v14

    move-wide/from16 v7, v19

    .line 240
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    .line 241
    invoke-virtual {v11}, Lnw;->a()V

    return-void
.end method

.method public a(Lhl;DDDFF)V
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p9

    .line 38
    iget-object v3, v0, Lbb;->f:Ljava/util/Random;

    const-wide/16 v4, 0xbb

    invoke-virtual {v3, v4, v5}, Ljava/util/Random;->setSeed(J)V

    .line 39
    iget-object v3, v1, Lhl;->a:Liz;

    .line 41
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 42
    iget v4, v1, Lhl;->b:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    iget v5, v1, Lhl;->d:F

    add-float/2addr v4, v5

    invoke-static {v4}, Lin;->a(F)F

    move-result v4

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v5

    add-float/2addr v4, v5

    .line 43
    iget v5, v1, Lhl;->b:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v5, v6

    iget v6, v1, Lhl;->d:F

    add-float/2addr v5, v6

    const v6, 0x42652ee0

    mul-float/2addr v5, v6

    .line 46
    iget-object v6, v1, Lhl;->a:Liz;

    iget v6, v6, Liz;->a:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_3b

    const/4 v7, 0x2

    .line 47
    :cond_3b
    iget-object v6, v1, Lhl;->a:Liz;

    iget v6, v6, Liz;->a:I

    const/4 v8, 0x5

    if-le v6, v8, :cond_43

    const/4 v7, 0x3

    .line 48
    :cond_43
    iget-object v6, v1, Lhl;->a:Liz;

    iget v6, v6, Liz;->a:I

    const/16 v8, 0x14

    if-le v6, v8, :cond_4c

    const/4 v7, 0x4

    :cond_4c
    move-wide/from16 v8, p2

    double-to-float v6, v8

    move-wide/from16 v8, p4

    double-to-float v8, v8

    add-float/2addr v8, v4

    move-wide/from16 v9, p6

    double-to-float v4, v9

    .line 50
    invoke-static {v6, v8, v4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const v4, 0x803a    # 4.5999E-41f

    .line 51
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 52
    iget v6, v3, Liz;->c:I

    const-string v8, "/terrain.png"

    const/16 v9, 0x100

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    const/16 v14, 0x10

    const/high16 v15, 0x3f800000    # 1.0f

    if-ge v6, v9, :cond_f4

    sget-object v6, Luu;->m:[Luu;

    iget v10, v3, Liz;->c:I

    aget-object v6, v6, v10

    invoke-virtual {v6}, Luu;->b()I

    move-result v6

    invoke-static {v6}, Lcv;->a(I)Z

    move-result v6

    if-eqz v6, :cond_f4

    .line 53
    invoke-static {v5, v13, v15, v13}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 55
    invoke-virtual {v0, v8}, Lbb;->a(Ljava/lang/String;)V

    .line 57
    sget-object v5, Luu;->m:[Luu;

    iget v6, v3, Liz;->c:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Luu;->d()Z

    move-result v5

    if-nez v5, :cond_a7

    iget v5, v3, Liz;->c:I

    sget-object v6, Luu;->al:Luu;

    iget v6, v6, Luu;->bn:I

    if-eq v5, v6, :cond_a7

    sget-object v5, Luu;->m:[Luu;

    iget v6, v3, Liz;->c:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Luu;->b()I

    move-result v5

    if-eq v5, v14, :cond_a7

    goto :goto_a9

    :cond_a7
    const/high16 v11, 0x3e800000    # 0.25f

    .line 61
    :goto_a9
    invoke-static {v11, v11, v11}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/4 v10, 0x0

    :goto_ad
    if-ge v10, v7, :cond_f1

    .line 63
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    if-lez v10, :cond_d8

    .line 65
    iget-object v5, v0, Lbb;->f:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v5, v12

    sub-float/2addr v5, v15

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    div-float/2addr v5, v11

    .line 66
    iget-object v8, v0, Lbb;->f:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v8, v12

    sub-float/2addr v8, v15

    mul-float/2addr v8, v6

    div-float/2addr v8, v11

    .line 67
    iget-object v9, v0, Lbb;->f:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    mul-float/2addr v9, v12

    sub-float/2addr v9, v15

    mul-float/2addr v9, v6

    div-float/2addr v9, v11

    .line 68
    invoke-static {v5, v8, v9}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 70
    :cond_d8
    iget-object v5, v0, Lbb;->e:Lcv;

    sget-object v6, Luu;->m:[Luu;

    iget v8, v3, Liz;->c:I

    aget-object v6, v6, v8

    invoke-virtual {v3}, Liz;->i()I

    move-result v8

    invoke-virtual {v1, v2}, Lhl;->a(F)F

    move-result v9

    invoke-virtual {v5, v6, v8, v9}, Lcv;->a(Luu;IF)V

    .line 71
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_ad

    :cond_f1
    move v1, v4

    goto/16 :goto_1d9

    .line 74
    :cond_f4
    invoke-static {v11, v11, v11}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 75
    invoke-virtual {v3}, Liz;->b()I

    move-result v5

    .line 76
    iget v6, v3, Liz;->c:I

    if-ge v6, v9, :cond_103

    .line 77
    invoke-virtual {v0, v8}, Lbb;->a(Ljava/lang/String;)V

    goto :goto_108

    :cond_103
    const-string v6, "/gui/items.png"

    .line 79
    invoke-virtual {v0, v6}, Lbb;->a(Ljava/lang/String;)V

    .line 81
    :goto_108
    sget-object v6, Lnw;->a:Lnw;

    .line 83
    rem-int/lit8 v8, v5, 0x10

    mul-int/2addr v8, v14

    add-int/lit8 v9, v8, 0x0

    int-to-float v9, v9

    const/high16 v10, 0x43800000    # 256.0f

    div-float/2addr v9, v10

    add-int/2addr v8, v14

    int-to-float v8, v8

    div-float/2addr v8, v10

    .line 85
    div-int/2addr v5, v14

    mul-int/2addr v5, v14

    add-int/lit8 v4, v5, 0x0

    int-to-float v4, v4

    div-float/2addr v4, v10

    add-int/2addr v5, v14

    int-to-float v5, v5

    div-float/2addr v5, v10

    .line 94
    iget-boolean v10, v0, Lbb;->a:Z

    if-eqz v10, :cond_14d

    .line 95
    sget-object v10, Lgm;->c:[Lgm;

    iget v14, v3, Liz;->c:I

    aget-object v10, v10, v14

    invoke-virtual {v3}, Liz;->i()I

    move-result v3

    invoke-virtual {v10, v3}, Lgm;->f(I)I

    move-result v3

    shr-int/lit8 v10, v3, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v10, v14

    shr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    div-float/2addr v11, v14

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v14

    .line 99
    invoke-virtual {v1, v2}, Lhl;->a(F)F

    move-result v1

    mul-float/2addr v10, v1

    mul-float/2addr v11, v1

    mul-float/2addr v3, v1

    .line 101
    invoke-static {v10, v11, v3, v15}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    :cond_14d
    const/4 v10, 0x0

    :goto_14e
    if-ge v10, v7, :cond_1d6

    .line 108
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    if-lez v10, :cond_176

    .line 110
    iget-object v1, v0, Lbb;->f:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v12

    sub-float/2addr v1, v15

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    .line 111
    iget-object v3, v0, Lbb;->f:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v12

    sub-float/2addr v3, v15

    mul-float/2addr v3, v2

    .line 112
    iget-object v11, v0, Lbb;->f:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v11

    mul-float/2addr v11, v12

    sub-float/2addr v11, v15

    mul-float/2addr v11, v2

    .line 113
    invoke-static {v1, v3, v11}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 115
    :cond_176
    iget-object v1, v0, Lbb;->b:Lth;

    iget v1, v1, Lth;->i:F

    const/high16 v2, 0x43340000    # 180.0f

    sub-float/2addr v2, v1

    invoke-static {v2, v13, v15, v13}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 116
    invoke-virtual {v6}, Lnw;->b()V

    .line 117
    invoke-virtual {v6, v13, v15, v13}, Lnw;->b(FFF)V

    const/high16 v1, -0x41000000    # -0.5f

    float-to-double v1, v1

    const/high16 v3, -0x41800000    # -0.25f

    float-to-double v12, v3

    const-wide/16 v21, 0x0

    float-to-double v14, v9

    move/from16 p7, v9

    move v3, v10

    float-to-double v9, v5

    move-object/from16 v16, v6

    move-wide/from16 v17, v1

    move-wide/from16 v19, v12

    move-wide/from16 v23, v14

    move-wide/from16 v25, v9

    .line 118
    invoke-virtual/range {v16 .. v26}, Lnw;->a(DDDDD)V

    move-wide/from16 p8, v14

    const/high16 v11, 0x3f000000    # 0.5f

    float-to-double v14, v11

    float-to-double v11, v8

    move-wide/from16 v17, v14

    move-wide/from16 v23, v11

    .line 119
    invoke-virtual/range {v16 .. v26}, Lnw;->a(DDDDD)V

    const/high16 v9, 0x3f400000    # 0.75f

    float-to-double v9, v9

    move v13, v7

    move/from16 v27, v8

    float-to-double v7, v4

    move-wide/from16 v19, v9

    move-wide/from16 v25, v7

    .line 120
    invoke-virtual/range {v16 .. v26}, Lnw;->a(DDDDD)V

    move-wide/from16 v17, v1

    move-wide/from16 v23, p8

    .line 121
    invoke-virtual/range {v16 .. v26}, Lnw;->a(DDDDD)V

    .line 122
    invoke-virtual {v6}, Lnw;->a()V

    .line 124
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    add-int/lit8 v10, v3, 0x1

    move/from16 v9, p7

    move v7, v13

    move/from16 v8, v27

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_14e

    :cond_1d6
    const v1, 0x803a    # 4.5999E-41f

    .line 127
    :goto_1d9
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 128
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method

.method public a(Lsj;Lji;IIIII)V
    .registers 17

    move-object v7, p0

    move-object v0, p2

    move v1, p3

    move v2, p4

    const-string v3, "/terrain.png"

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x100

    if-ge v1, v6, :cond_87

    .line 132
    sget-object v8, Luu;->m:[Luu;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Luu;->b()I

    move-result v8

    invoke-static {v8}, Lcv;->a(I)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 134
    invoke-virtual {p2, v3}, Lji;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lji;->b(I)V

    .line 136
    sget-object v0, Luu;->m:[Luu;

    aget-object v0, v0, v1

    .line 137
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    add-int/lit8 v3, p6, -0x2

    int-to-float v3, v3

    add-int/lit8 v6, p7, 0x3

    int-to-float v6, v6

    const/high16 v8, -0x3fc00000    # -3.0f

    .line 138
    invoke-static {v3, v6, v8}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 139
    invoke-static {v3, v3, v3}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 140
    invoke-static {v5, v3, v5}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v3, -0x40800000    # -1.0f

    .line 141
    invoke-static {v5, v5, v3}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/high16 v3, 0x43520000    # 210.0f

    const/4 v6, 0x0

    .line 142
    invoke-static {v3, v5, v6, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v3, 0x42340000    # 45.0f

    .line 143
    invoke-static {v3, v6, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 145
    sget-object v3, Lgm;->c:[Lgm;

    aget-object v1, v3, v1

    invoke-virtual {v1, p4}, Lgm;->f(I)I

    move-result v1

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v4

    shr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float/2addr v8, v4

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 150
    iget-boolean v4, v7, Lbb;->a:Z

    if-eqz v4, :cond_6e

    invoke-static {v3, v8, v1, v5}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    :cond_6e
    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 151
    invoke-static {v1, v6, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 152
    iget-object v1, v7, Lbb;->e:Lcv;

    iget-boolean v3, v7, Lbb;->a:Z

    iput-boolean v3, v1, Lcv;->b:Z

    .line 153
    iget-object v1, v7, Lbb;->e:Lcv;

    invoke-virtual {v1, v0, p4, v5}, Lcv;->a(Luu;IF)V

    .line 154
    iget-object v0, v7, Lbb;->e:Lcv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcv;->b:Z

    .line 156
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    goto :goto_d6

    :cond_87
    if-ltz p5, :cond_d6

    const/16 v8, 0xb50

    .line 158
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    if-ge v1, v6, :cond_98

    .line 160
    invoke-virtual {p2, v3}, Lji;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lji;->b(I)V

    goto :goto_a1

    :cond_98
    const-string v3, "/gui/items.png"

    .line 162
    invoke-virtual {p2, v3}, Lji;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Lji;->b(I)V

    .line 165
    :goto_a1
    sget-object v0, Lgm;->c:[Lgm;

    aget-object v0, v0, v1

    invoke-virtual {v0, p4}, Lgm;->f(I)I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v4

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v4

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 170
    iget-boolean v3, v7, Lbb;->a:Z

    if-eqz v3, :cond_c0

    invoke-static {v1, v2, v0, v5}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 171
    :cond_c0
    rem-int/lit8 v0, p5, 0x10

    mul-int/lit8 v3, v0, 0x10

    div-int/lit8 v0, p5, 0x10

    mul-int/lit8 v4, v0, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x10

    move-object v0, p0

    move v1, p6

    move/from16 v2, p7

    invoke-virtual/range {v0 .. v6}, Lbb;->a(IIIIII)V

    .line 172
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    :cond_d6
    :goto_d6
    const/16 v0, 0xb44

    .line 174
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    return-void
.end method

.method public a(Lsj;Lji;Liz;II)V
    .registers 14

    if-nez p3, :cond_3

    return-void

    .line 182
    :cond_3
    iget v3, p3, Liz;->c:I

    invoke-virtual {p3}, Liz;->i()I

    move-result v4

    invoke-virtual {p3}, Liz;->b()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lbb;->a(Lsj;Lji;IIIII)V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 26
    check-cast p1, Lhl;

    invoke-virtual/range {p0 .. p9}, Lbb;->a(Lhl;DDDFF)V

    return-void
.end method

.method public b(Lsj;Lji;Liz;II)V
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-nez v1, :cond_7

    return-void

    .line 190
    :cond_7
    iget v2, v1, Liz;->a:I

    const/4 v3, 0x1

    const/16 v4, 0xb71

    const/16 v5, 0xb50

    if-le v2, v3, :cond_3f

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Liz;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 193
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    add-int/lit8 v3, p4, 0x13

    add-int/lit8 v3, v3, -0x2

    .line 194
    invoke-virtual {v0, v2}, Lsj;->a(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v3, v6

    add-int/lit8 v6, p5, 0x6

    add-int/lit8 v6, v6, 0x3

    const v7, 0xffffff

    invoke-virtual {v0, v2, v3, v6, v7}, Lsj;->a(Ljava/lang/String;III)V

    .line 195
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 196
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 199
    :cond_3f
    invoke-virtual/range {p3 .. p3}, Liz;->g()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 200
    invoke-virtual/range {p3 .. p3}, Liz;->h()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v6, 0x402a000000000000L    # 13.0

    mul-double/2addr v2, v6

    invoke-virtual/range {p3 .. p3}, Liz;->j()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v2, v8

    sub-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v10, v2

    .line 201
    invoke-virtual/range {p3 .. p3}, Liz;->h()I

    move-result v0

    int-to-double v2, v0

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v6

    invoke-virtual/range {p3 .. p3}, Liz;->j()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v2, v0

    sub-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 202
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 203
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v1, 0xde1

    .line 204
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 206
    sget-object v7, Lnw;->a:Lnw;

    rsub-int v2, v0, 0xff

    shl-int/lit8 v3, v2, 0x10

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    .line 209
    div-int/lit8 v2, v2, 0x4

    shl-int/lit8 v2, v2, 0x10

    or-int/lit16 v2, v2, 0x3f00

    add-int/lit8 v8, p4, 0x2

    add-int/lit8 v9, p5, 0xd

    const/16 v15, 0xd

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object/from16 v11, p0

    move-object v12, v7

    move v13, v8

    move v14, v9

    .line 210
    invoke-direct/range {v11 .. v17}, Lbb;->a(Lnw;IIIII)V

    const/16 v15, 0xc

    const/16 v16, 0x1

    move/from16 v17, v2

    .line 211
    invoke-direct/range {v11 .. v17}, Lbb;->a(Lnw;IIIII)V

    const/4 v11, 0x1

    move-object/from16 v6, p0

    move v12, v0

    .line 212
    invoke-direct/range {v6 .. v12}, Lbb;->a(Lnw;IIIII)V

    .line 214
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 215
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 216
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 217
    invoke-static {v0, v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    :cond_ba
    return-void
.end method
