###### Class defpackage.gv (gv)
.class public Lgv;
.super Lbw;
.source "SourceFile"


# instance fields
.field protected e:Lko;

.field protected f:Lko;


# direct methods
.method public constructor <init>(Lko;F)V
    .registers 3

    .line 18
    invoke-direct {p0}, Lbw;-><init>()V

    .line 19
    iput-object p1, p0, Lgv;->e:Lko;

    .line 20
    iput p2, p0, Lgv;->c:F

    return-void
.end method


# virtual methods
.method protected a(Lls;)F
    .registers 2

    const/high16 p1, 0x42b40000    # 90.0f

    return p1
.end method

.method protected a(Lls;FF)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lko;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lgv;->f:Lko;

    return-void
.end method

.method protected a(Lls;DDD)V
    .registers 19

    .line 175
    invoke-static {}, Lnet/minecraft/client/Minecraft;->w()Z

    move-result v0

    if-eqz v0, :cond_18

    move-object v0, p1

    .line 176
    iget v1, v0, Lls;->aD:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v10, 0x40

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v10}, Lgv;->a(Lls;Ljava/lang/String;DDDI)V

    :cond_18
    return-void
.end method

.method public a(Lls;DDDFF)V
    .registers 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p9

    .line 28
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const/16 v3, 0xb44

    .line 29
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 31
    iget-object v4, v1, Lgv;->e:Lko;

    invoke-virtual {v1, v2, v0}, Lgv;->d(Lls;F)F

    move-result v5

    iput v5, v4, Lko;->m:F

    .line 32
    iget-object v4, v1, Lgv;->f:Lko;

    if-eqz v4, :cond_20

    iget-object v5, v1, Lgv;->e:Lko;

    iget v5, v5, Lko;->m:F

    iput v5, v4, Lko;->m:F

    .line 33
    :cond_20
    iget-object v4, v1, Lgv;->e:Lko;

    invoke-virtual/range {p1 .. p1}, Lls;->al()Z

    move-result v5

    iput-boolean v5, v4, Lko;->n:Z

    .line 34
    iget-object v4, v1, Lgv;->f:Lko;

    if-eqz v4, :cond_32

    iget-object v5, v1, Lgv;->e:Lko;

    iget-boolean v5, v5, Lko;->n:Z

    iput-boolean v5, v4, Lko;->n:Z

    .line 38
    :cond_32
    :try_start_32
    iget v4, v2, Lls;->I:F

    iget v5, v2, Lls;->H:F

    iget v6, v2, Lls;->I:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    .line 39
    iget v5, v2, Lls;->aU:F

    iget v6, v2, Lls;->aS:F

    iget v7, v2, Lls;->aU:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    .line 40
    iget v6, v2, Lls;->aV:F

    iget v7, v2, Lls;->aT:F

    iget v8, v2, Lls;->aV:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    .line 42
    invoke-virtual/range {p0 .. p7}, Lgv;->b(Lls;DDD)V

    .line 44
    invoke-virtual {v1, v2, v0}, Lgv;->c(Lls;F)F

    move-result v7

    .line 45
    invoke-virtual {v1, v2, v7, v4, v0}, Lgv;->a(Lls;FFF)V

    const v15, 0x803a    # 4.5999E-41f

    .line 48
    invoke-static {v15}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 49
    invoke-static {v8, v8, v9}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 51
    invoke-virtual {v1, v2, v0}, Lgv;->a(Lls;F)V

    const/high16 v8, -0x403f0000    # -1.5078125f

    const/4 v14, 0x0

    .line 52
    invoke-static {v14, v8, v14}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 55
    iget v8, v2, Lls;->ak:F

    iget v10, v2, Lls;->al:F

    iget v11, v2, Lls;->ak:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v0

    add-float/2addr v8, v10

    .line 56
    iget v10, v2, Lls;->am:F

    iget v11, v2, Lls;->al:F

    sub-float v12, v9, v0

    mul-float/2addr v11, v12

    sub-float v13, v10, v11

    cmpl-float v10, v8, v9

    if-lez v10, :cond_85

    move v12, v9

    goto :goto_86

    :cond_85
    move v12, v8

    .line 60
    :goto_86
    iget-object v8, v2, Lls;->bA:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lls;->q_()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lgv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v16, 0xbc0

    .line 61
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 63
    iget-object v8, v1, Lgv;->e:Lko;

    invoke-virtual {v8, v2, v13, v12, v0}, Lko;->a(Lls;FFF)V

    .line 64
    iget-object v8, v1, Lgv;->e:Lko;

    sub-float/2addr v5, v4

    const/high16 v4, 0x3d800000    # 0.0625f

    move v9, v13

    move v10, v12

    move v11, v7

    move/from16 v17, v12

    move v12, v5

    move/from16 v18, v13

    move v13, v6

    move v3, v14

    move v14, v4

    invoke-virtual/range {v8 .. v14}, Lko;->a(FFFFFF)V

    const/4 v14, 0x0

    :goto_ad
    const/16 v19, 0xbe2

    const/4 v13, 0x4

    if-ge v14, v13, :cond_d6

    .line 66
    invoke-virtual {v1, v2, v14, v0}, Lgv;->a(Lls;IF)Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 67
    iget-object v8, v1, Lgv;->f:Lko;

    const/high16 v20, 0x3d800000    # 0.0625f

    move/from16 v9, v18

    move/from16 v10, v17

    move v11, v7

    move v12, v5

    move v13, v6

    move/from16 v21, v14

    move/from16 v14, v20

    invoke-virtual/range {v8 .. v14}, Lko;->a(FFFFFF)V

    .line 68
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 69
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    goto :goto_d3

    :cond_d1
    move/from16 v21, v14

    :goto_d3
    add-int/lit8 v14, v21, 0x1

    goto :goto_ad

    .line 73
    :cond_d6
    invoke-virtual {v1, v2, v0}, Lgv;->b(Lls;F)V

    .line 74
    invoke-virtual {v2, v0}, Lls;->a(F)F

    move-result v14

    .line 75
    invoke-virtual {v1, v2, v14, v0}, Lgv;->a(Lls;FF)I

    move-result v12

    shr-int/lit8 v8, v12, 0x18

    and-int/lit16 v11, v8, 0xff

    if-gtz v11, :cond_f3

    .line 77
    iget v8, v2, Lls;->aa:I

    if-gtz v8, :cond_f3

    iget v8, v2, Lls;->ad:I

    if-lez v8, :cond_f0

    goto :goto_f3

    :cond_f0
    move v0, v15

    goto/16 :goto_1d9

    :cond_f3
    :goto_f3
    const/16 v20, 0xde1

    .line 78
    invoke-static/range {v20 .. v20}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 79
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 80
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v8, 0x302

    const/16 v9, 0x303

    .line 81
    invoke-static {v8, v9}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    const/16 v8, 0x202

    .line 82
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glDepthFunc(I)V

    .line 84
    iget v8, v2, Lls;->aa:I

    if-gtz v8, :cond_118

    iget v8, v2, Lls;->ad:I

    if-lez v8, :cond_113

    goto :goto_118

    :cond_113
    move v15, v11

    move/from16 v23, v12

    move v3, v13

    goto :goto_162

    :cond_118
    :goto_118
    const v10, 0x3ecccccd    # 0.4f

    .line 85
    invoke-static {v14, v3, v3, v10}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 86
    iget-object v8, v1, Lgv;->e:Lko;

    const/high16 v21, 0x3d800000    # 0.0625f

    move/from16 v9, v18

    move v4, v10

    move/from16 v10, v17

    move v15, v11

    move v11, v7

    move/from16 v23, v12

    move v12, v5

    move v3, v13

    move v13, v6

    move/from16 v25, v14

    move/from16 v14, v21

    invoke-virtual/range {v8 .. v14}, Lko;->a(FFFFFF)V

    const/4 v14, 0x0

    :goto_136
    if-ge v14, v3, :cond_162

    .line 88
    invoke-virtual {v1, v2, v14, v0}, Lgv;->b(Lls;IF)Z

    move-result v8

    if-eqz v8, :cond_15b

    move/from16 v13, v25

    const/4 v12, 0x0

    .line 89
    invoke-static {v13, v12, v12, v4}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 90
    iget-object v8, v1, Lgv;->f:Lko;

    const/high16 v21, 0x3d800000    # 0.0625f

    move/from16 v9, v18

    move/from16 v10, v17

    move v11, v7

    move/from16 v24, v12

    move v12, v5

    move/from16 v25, v13

    move v13, v6

    move/from16 v26, v14

    move/from16 v14, v21

    invoke-virtual/range {v8 .. v14}, Lko;->a(FFFFFF)V

    goto :goto_15f

    :cond_15b
    move/from16 v26, v14

    const/16 v24, 0x0

    :goto_15f
    add-int/lit8 v14, v26, 0x1

    goto :goto_136

    :cond_162
    :goto_162
    if-lez v15, :cond_1c8

    move/from16 v4, v23

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v14, v8, v9

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float v13, v8, v9

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v9

    int-to-float v8, v15

    div-float v15, v8, v9

    .line 100
    invoke-static {v14, v13, v4, v15}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 101
    iget-object v8, v1, Lgv;->e:Lko;

    const/high16 v21, 0x3d800000    # 0.0625f

    move/from16 v9, v18

    move/from16 v10, v17

    move v11, v7

    move v12, v5

    move/from16 v27, v13

    move v13, v6

    move/from16 v28, v14

    move/from16 v14, v21

    invoke-virtual/range {v8 .. v14}, Lko;->a(FFFFFF)V

    const/4 v14, 0x0

    :goto_195
    if-ge v14, v3, :cond_1c8

    .line 103
    invoke-virtual {v1, v2, v14, v0}, Lgv;->b(Lls;IF)Z

    move-result v8

    if-eqz v8, :cond_1bb

    move/from16 v12, v27

    move/from16 v13, v28

    .line 104
    invoke-static {v13, v12, v4, v15}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 105
    iget-object v8, v1, Lgv;->f:Lko;

    const/high16 v21, 0x3d800000    # 0.0625f

    move/from16 v9, v18

    move/from16 v10, v17

    move v11, v7

    move/from16 v22, v12

    move v12, v5

    move/from16 v23, v13

    move v13, v6

    move/from16 v24, v14

    move/from16 v14, v21

    invoke-virtual/range {v8 .. v14}, Lko;->a(FFFFFF)V

    goto :goto_1c1

    :cond_1bb
    move/from16 v24, v14

    move/from16 v22, v27

    move/from16 v23, v28

    :goto_1c1
    add-int/lit8 v14, v24, 0x1

    move/from16 v27, v22

    move/from16 v28, v23

    goto :goto_195

    :cond_1c8
    const/16 v0, 0x203

    .line 110
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDepthFunc(I)V

    .line 111
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 112
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 113
    invoke-static/range {v20 .. v20}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const v0, 0x803a    # 4.5999E-41f

    .line 115
    :goto_1d9
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_1dc} :catch_1dd

    goto :goto_1e1

    :catch_1dd
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1e1
    const/16 v3, 0xb44

    .line 121
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 123
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 125
    invoke-virtual/range {p0 .. p7}, Lgv;->a(Lls;DDD)V

    return-void
.end method

.method protected a(Lls;F)V
    .registers 3

    return-void
.end method

.method protected a(Lls;FFF)V
    .registers 6

    const/high16 p2, 0x43340000    # 180.0f

    sub-float/2addr p2, p3

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 135
    invoke-static {p2, p3, v0, p3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 136
    iget p2, p1, Lls;->ad:I

    if-lez p2, :cond_2a

    .line 137
    iget p2, p1, Lls;->ad:I

    int-to-float p2, p2

    add-float/2addr p2, p4

    sub-float/2addr p2, v0

    const/high16 p4, 0x41a00000    # 20.0f

    div-float/2addr p2, p4

    const p4, 0x3fcccccd    # 1.6f

    mul-float/2addr p2, p4

    .line 138
    invoke-static {p2}, Lin;->c(F)F

    move-result p2

    cmpl-float p4, p2, v0

    if-lez p4, :cond_22

    move p2, v0

    .line 140
    :cond_22
    invoke-virtual {p0, p1}, Lgv;->a(Lls;)F

    move-result p1

    mul-float/2addr p2, p1

    invoke-static {p2, p3, p3, v0}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    :cond_2a
    return-void
.end method

.method protected a(Lls;Ljava/lang/String;DDDI)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 182
    iget-object v2, v0, Lgv;->b:Lth;

    iget-object v2, v2, Lth;->h:Lls;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lls;->f(Lsn;)F

    move-result v2

    move/from16 v3, p9

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_16

    return-void

    .line 188
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lgv;->a()Lsj;

    move-result-object v2

    .line 193
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    move-wide/from16 v3, p3

    double-to-float v3, v3

    const/4 v4, 0x0

    add-float/2addr v3, v4

    move-wide/from16 v5, p5

    double-to-float v5, v5

    const v6, 0x40133333    # 2.3f

    add-float/2addr v5, v6

    move-wide/from16 v6, p7

    double-to-float v6, v6

    .line 194
    invoke-static {v3, v5, v6}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 195
    invoke-static {v4, v3, v4}, Lorg/lwjgl/opengl/GL11;->glNormal3f(FFF)V

    .line 197
    iget-object v5, v0, Lgv;->b:Lth;

    iget v5, v5, Lth;->i:F

    neg-float v5, v5

    invoke-static {v5, v4, v3, v4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 198
    iget-object v5, v0, Lgv;->b:Lth;

    iget v5, v5, Lth;->j:F

    invoke-static {v5, v3, v4, v4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const v5, -0x43258bf1

    const v6, 0x3cda740f

    .line 200
    invoke-static {v5, v5, v6}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/16 v5, 0xb50

    .line 201
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/4 v6, 0x0

    .line 203
    invoke-static {v6}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    const/16 v7, 0xb71

    .line 204
    invoke-static {v7}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v8, 0xbe2

    .line 205
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v9, 0x302

    const/16 v10, 0x303

    .line 206
    invoke-static {v9, v10}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 207
    sget-object v9, Lnw;->a:Lnw;

    const-string v10, "deadmau5"

    .line 210
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_72

    const/16 v6, -0xa

    :cond_72
    const/16 v10, 0xde1

    .line 212
    invoke-static {v10}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 213
    invoke-virtual {v9}, Lnw;->b()V

    .line 214
    invoke-virtual {v2, v1}, Lsj;->a(Ljava/lang/String;)I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    const/high16 v12, 0x3e800000    # 0.25f

    .line 215
    invoke-virtual {v9, v4, v4, v4, v12}, Lnw;->a(FFFF)V

    neg-int v4, v11

    const/4 v12, 0x1

    sub-int/2addr v4, v12

    int-to-double v13, v4

    add-int/lit8 v4, v6, -0x1

    int-to-double v3, v4

    const-wide/16 v15, 0x0

    move-object/from16 p3, v9

    move-wide/from16 p4, v13

    move-wide/from16 p6, v3

    move-wide/from16 p8, v15

    .line 216
    invoke-virtual/range {p3 .. p9}, Lnw;->a(DDD)V

    add-int/lit8 v15, v6, 0x8

    int-to-double v7, v15

    const-wide/16 v17, 0x0

    move-wide/from16 p6, v7

    move-wide/from16 p8, v17

    .line 217
    invoke-virtual/range {p3 .. p9}, Lnw;->a(DDD)V

    add-int/2addr v11, v12

    int-to-double v13, v11

    move-wide/from16 p4, v13

    .line 218
    invoke-virtual/range {p3 .. p9}, Lnw;->a(DDD)V

    const-wide/16 v7, 0x0

    move-wide/from16 p6, v3

    move-wide/from16 p8, v7

    .line 219
    invoke-virtual/range {p3 .. p9}, Lnw;->a(DDD)V

    .line 220
    invoke-virtual {v9}, Lnw;->a()V

    .line 221
    invoke-static {v10}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 222
    invoke-virtual {v2, v1}, Lsj;->a(Ljava/lang/String;)I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    const v4, 0x20ffffff

    invoke-virtual {v2, v1, v3, v6, v4}, Lsj;->b(Ljava/lang/String;III)V

    const/16 v3, 0xb71

    .line 223
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 225
    invoke-static {v12}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    .line 226
    invoke-virtual {v2, v1}, Lsj;->a(Ljava/lang/String;)I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {v2, v1, v3, v6, v4}, Lsj;->b(Ljava/lang/String;III)V

    .line 227
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v1, 0xbe2

    .line 228
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 229
    invoke-static {v1, v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 230
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 12
    check-cast p1, Lls;

    invoke-virtual/range {p0 .. p9}, Lgv;->a(Lls;DDDFF)V

    return-void
.end method

.method protected a(Lls;IF)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method protected b(Lls;DDD)V
    .registers 8

    double-to-float p1, p2

    double-to-float p2, p4

    double-to-float p3, p6

    .line 130
    invoke-static {p1, p2, p3}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    return-void
.end method

.method protected b(Lls;F)V
    .registers 3

    return-void
.end method

.method protected b(Lls;IF)Z
    .registers 4

    .line 156
    invoke-virtual {p0, p1, p2, p3}, Lgv;->a(Lls;IF)Z

    move-result p1

    return p1
.end method

.method protected c(Lls;F)F
    .registers 3

    .line 149
    iget p1, p1, Lls;->bt:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    return p1
.end method

.method protected d(Lls;F)F
    .registers 3

    .line 145
    invoke-virtual {p1, p2}, Lls;->d(F)F

    move-result p1

    return p1
.end method
