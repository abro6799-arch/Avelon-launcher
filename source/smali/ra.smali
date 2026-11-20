###### Class defpackage.ra (ra)
.class public Lra;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lnet/minecraft/client/Minecraft;

.field private b:Liz;

.field private c:F

.field private d:F

.field private e:Lcv;

.field private f:Liy;

.field private g:I


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lra;->b:Liz;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lra;->c:F

    .line 36
    iput v0, p0, Lra;->d:F

    .line 37
    new-instance v0, Lcv;

    invoke-direct {v0}, Lcv;-><init>()V

    iput-object v0, p0, Lra;->e:Lcv;

    const/4 v0, -0x1

    .line 493
    iput v0, p0, Lra;->g:I

    .line 41
    iput-object p1, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    .line 42
    new-instance v0, Liy;

    iget-object v1, p1, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object v2, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-direct {v0, v1, v2, p1}, Liy;-><init>(Lsj;Lkv;Lji;)V

    iput-object v0, p0, Lra;->f:Liy;

    return-void
.end method

.method private a(FI)V
    .registers 30

    .line 390
    sget-object v11, Lnw;->a:Lnw;

    move-object/from16 v12, p0

    .line 392
    iget-object v0, v12, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ldc;->a(F)F

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 394
    invoke-static {v0, v0, v0, v1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 396
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 405
    rem-int/lit8 v0, p2, 0x10

    int-to-float v0, v0

    const/high16 v1, 0x43800000    # 256.0f

    div-float v2, v0, v1

    const/high16 v3, 0x3c000000    # 0.0078125f

    sub-float v13, v2, v3

    const v2, 0x417fd70a    # 15.99f

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    .line 407
    div-int/lit8 v4, p2, 0x10

    int-to-float v4, v4

    div-float v5, v4, v1

    sub-float v14, v5, v3

    add-float/2addr v4, v2

    div-float/2addr v4, v1

    add-float/2addr v4, v3

    .line 410
    invoke-virtual {v11}, Lnw;->b()V

    const/high16 v1, -0x40800000    # -1.0f

    float-to-double v9, v1

    const/high16 v1, -0x41000000    # -0.5f

    float-to-double v7, v1

    float-to-double v5, v0

    float-to-double v3, v4

    move-object v0, v11

    move-wide v1, v9

    move-wide v15, v3

    move-wide v3, v9

    move-wide/from16 v17, v5

    move-wide v5, v7

    move-wide/from16 v19, v7

    move-wide/from16 v7, v17

    move-wide/from16 v21, v9

    move-wide v9, v15

    .line 411
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    const/high16 v9, 0x3f800000    # 1.0f

    float-to-double v7, v9

    float-to-double v5, v13

    move-wide v1, v7

    move-wide/from16 v3, v21

    move-wide/from16 v23, v5

    move-wide/from16 v5, v19

    move-wide/from16 v25, v7

    move-wide/from16 v7, v23

    move v13, v9

    move-wide v9, v15

    .line 412
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    float-to-double v14, v14

    move-wide/from16 v1, v25

    move-wide/from16 v3, v25

    move-wide v9, v14

    .line 413
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v1, v21

    move-wide/from16 v7, v17

    .line 414
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    .line 415
    invoke-virtual {v11}, Lnw;->a()V

    .line 416
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 418
    invoke-static {v13, v13, v13, v13}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    return-void
.end method

.method private c(F)V
    .registers 31

    move-object/from16 v0, p0

    .line 423
    sget-object v12, Lnw;->a:Lnw;

    .line 425
    iget-object v1, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ldc;->a(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 426
    invoke-static {v1, v1, v1, v2}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/16 v13, 0xbe2

    .line 427
    invoke-static {v13}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    .line 428
    invoke-static {v1, v2}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 430
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 440
    iget-object v1, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v1, v1, Ldc;->aS:F

    neg-float v1, v1

    const/high16 v2, 0x42800000    # 64.0f

    div-float v14, v1, v2

    .line 441
    iget-object v1, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v1, v1, Ldc;->aT:F

    div-float v15, v1, v2

    .line 443
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v1, -0x40800000    # -1.0f

    float-to-double v10, v1

    const/high16 v1, -0x41000000    # -0.5f

    float-to-double v8, v1

    const/high16 v1, 0x40800000    # 4.0f

    add-float v2, v14, v1

    float-to-double v6, v2

    add-float/2addr v1, v15

    float-to-double v4, v1

    move-object v1, v12

    move-wide v2, v10

    move-wide/from16 v16, v4

    move-wide v4, v10

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide/from16 v20, v8

    move-wide/from16 v8, v18

    move-wide/from16 v22, v10

    move-wide/from16 v10, v16

    .line 444
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    const/high16 v10, 0x3f800000    # 1.0f

    float-to-double v8, v10

    const/16 v24, 0x0

    add-float v14, v14, v24

    float-to-double v6, v14

    move-wide v2, v8

    move-wide/from16 v4, v22

    move-wide/from16 v25, v6

    move-wide/from16 v6, v20

    move-wide/from16 v27, v8

    move-wide/from16 v8, v25

    move v14, v10

    move-wide/from16 v10, v16

    .line 445
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    add-float v15, v15, v24

    float-to-double v10, v15

    move-wide/from16 v2, v27

    move-wide/from16 v4, v27

    move-wide v15, v10

    .line 446
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    move-wide/from16 v2, v22

    move-wide/from16 v8, v18

    .line 447
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 448
    invoke-virtual {v12}, Lnw;->a()V

    .line 449
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 451
    invoke-static {v14, v14, v14, v14}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 452
    invoke-static {v13}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    return-void
.end method

.method private d(F)V
    .registers 29

    .line 456
    sget-object v11, Lnw;->a:Lnw;

    const v0, 0x3f666666    # 0.9f

    const/high16 v12, 0x3f800000    # 1.0f

    .line 457
    invoke-static {v12, v12, v12, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/16 v13, 0xbe2

    .line 458
    invoke-static {v13}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 459
    invoke-static {v0, v1}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    const/4 v0, 0x0

    move v14, v0

    :goto_18
    const/4 v0, 0x2

    if-ge v14, v0, :cond_a4

    .line 463
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 464
    sget-object v0, Luu;->as:Lyq;

    iget v0, v0, Lyq;->bm:I

    mul-int/lit8 v1, v14, 0x10

    add-int/2addr v0, v1

    and-int/lit8 v1, v0, 0xf

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v0, v0, 0xf0

    int-to-float v1, v1

    const/high16 v2, 0x43800000    # 256.0f

    div-float v15, v1, v2

    const v3, 0x417fd70a    # 15.99f

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float v9, v0, v2

    add-float/2addr v0, v3

    div-float/2addr v0, v2

    mul-int/lit8 v2, v14, 0x2

    add-int/lit8 v2, v2, -0x1

    neg-int v3, v2

    int-to-float v3, v3

    const v4, 0x3e75c28f    # 0.24f

    mul-float/2addr v3, v4

    const v4, -0x41666666    # -0.3f

    const/4 v5, 0x0

    .line 478
    invoke-static {v3, v4, v5}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    .line 479
    invoke-static {v2, v5, v12, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 481
    invoke-virtual {v11}, Lnw;->b()V

    const/high16 v2, -0x41000000    # -0.5f

    float-to-double v7, v2

    float-to-double v5, v2

    float-to-double v3, v2

    float-to-double v1, v1

    float-to-double v12, v0

    move-object v0, v11

    move-wide/from16 v16, v1

    move-wide v1, v7

    move-wide/from16 v18, v3

    move-wide v3, v5

    move-wide/from16 v20, v5

    move-wide/from16 v5, v18

    move-wide/from16 v22, v7

    move-wide/from16 v7, v16

    move/from16 v24, v14

    move v14, v9

    move-wide v9, v12

    .line 482
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    const/high16 v9, 0x3f000000    # 0.5f

    float-to-double v7, v9

    float-to-double v5, v15

    move-wide v1, v7

    move-wide/from16 v3, v20

    move-wide/from16 v20, v5

    move-wide/from16 v5, v18

    move-wide/from16 v25, v7

    move-wide/from16 v7, v20

    move v15, v9

    move-wide v9, v12

    .line 483
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    float-to-double v12, v15

    float-to-double v14, v14

    move-wide/from16 v1, v25

    move-wide v3, v12

    move-wide v9, v14

    .line 484
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    move-wide/from16 v1, v22

    move-wide/from16 v7, v16

    .line 485
    invoke-virtual/range {v0 .. v10}, Lnw;->a(DDDDD)V

    .line 486
    invoke-virtual {v11}, Lnw;->a()V

    .line 487
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    add-int/lit8 v14, v24, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v13, 0xbe2

    goto/16 :goto_18

    :cond_a4
    move v0, v12

    .line 489
    invoke-static {v0, v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/16 v0, 0xbe2

    .line 490
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 496
    iget v0, p0, Lra;->c:F

    iput v0, p0, Lra;->d:F

    .line 499
    iget-object v0, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    .line 500
    iget-object v1, v0, Lgs;->c:Lix;

    invoke-virtual {v1}, Lix;->b()Liz;

    move-result-object v1

    .line 505
    iget v2, p0, Lra;->g:I

    iget-object v3, v0, Lgs;->c:Lix;

    iget v3, v3, Lix;->c:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1d

    iget-object v2, p0, Lra;->b:Liz;

    if-ne v1, v2, :cond_1d

    move v2, v4

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 506
    :goto_1e
    iget-object v3, p0, Lra;->b:Liz;

    if-nez v3, :cond_25

    if-nez v1, :cond_25

    move v2, v4

    :cond_25
    if-eqz v1, :cond_42

    if-eqz v3, :cond_42

    if-eq v1, v3, :cond_42

    .line 509
    iget v3, v1, Liz;->c:I

    iget-object v5, p0, Lra;->b:Liz;

    iget v5, v5, Liz;->c:I

    if-ne v3, v5, :cond_42

    invoke-virtual {v1}, Liz;->i()I

    move-result v3

    iget-object v5, p0, Lra;->b:Liz;

    invoke-virtual {v5}, Liz;->i()I

    move-result v5

    if-ne v3, v5, :cond_42

    .line 510
    iput-object v1, p0, Lra;->b:Liz;

    goto :goto_43

    :cond_42
    move v4, v2

    :goto_43
    if-eqz v4, :cond_48

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    .line 516
    :goto_49
    iget v3, p0, Lra;->c:F

    sub-float/2addr v2, v3

    const v4, -0x41333333    # -0.4f

    cmpg-float v5, v2, v4

    if-gez v5, :cond_54

    move v2, v4

    :cond_54
    const v4, 0x3ecccccd    # 0.4f

    cmpl-float v5, v2, v4

    if-lez v5, :cond_5c

    move v2, v4

    :cond_5c
    add-float/2addr v3, v2

    .line 520
    iput v3, p0, Lra;->c:F

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v2, v3, v2

    if-gez v2, :cond_6e

    .line 522
    iput-object v1, p0, Lra;->b:Liz;

    .line 523
    iget-object v0, v0, Lgs;->c:Lix;

    iget v0, v0, Lix;->c:I

    iput v0, p0, Lra;->g:I

    :cond_6e
    return-void
.end method

.method public a(F)V
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 156
    iget v2, v0, Lra;->d:F

    iget v3, v0, Lra;->c:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 157
    iget-object v3, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->h:Ldc;

    .line 160
    iget v4, v3, Lgs;->aV:F

    iget v5, v3, Lgs;->aT:F

    iget v6, v3, Lgs;->aV:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    .line 163
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 164
    invoke-static {v4, v5, v6, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 165
    iget v7, v3, Lgs;->aU:F

    iget v8, v3, Lgs;->aS:F

    iget v9, v3, Lgs;->aU:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    invoke-static {v7, v6, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 166
    invoke-static {}, Lu;->b()V

    .line 167
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 170
    iget-object v7, v0, Lra;->b:Liz;

    .line 172
    iget-object v8, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v8, v8, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-wide v9, v3, Lgs;->aM:D

    invoke-static {v9, v10}, Lin;->b(D)I

    move-result v9

    iget-wide v10, v3, Lgs;->aN:D

    invoke-static {v10, v11}, Lin;->b(D)I

    move-result v10

    iget-wide v11, v3, Lgs;->aO:D

    invoke-static {v11, v12}, Lin;->b(D)I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lfd;->c(III)F

    move-result v8

    if-eqz v7, :cond_78

    .line 174
    sget-object v9, Lgm;->c:[Lgm;

    iget v10, v7, Liz;->c:I

    aget-object v9, v9, v10

    invoke-virtual {v7}, Liz;->i()I

    move-result v10

    invoke-virtual {v9, v10}, Lgm;->f(I)I

    move-result v9

    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-float v10, v10

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v10, v11

    shr-int/lit8 v12, v9, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-float v12, v12

    div-float/2addr v12, v11

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    div-float/2addr v9, v11

    mul-float/2addr v10, v8

    mul-float/2addr v12, v8

    mul-float/2addr v8, v9

    .line 179
    invoke-static {v10, v12, v8, v5}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    goto :goto_7b

    .line 182
    :cond_78
    invoke-static {v8, v8, v8, v5}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    :goto_7b
    const/high16 v12, 0x42340000    # 45.0f

    const v13, -0x40c7ae15    # -0.71999997f

    const/high16 v14, 0x40000000    # 2.0f

    const v15, 0x3e4ccccd    # 0.2f

    const v16, 0x803a    # 4.5999E-41f

    const/high16 v17, 0x41a00000    # 20.0f

    const v8, 0x3ecccccd    # 0.4f

    const v19, 0x40490fdb    # (float)Math.PI

    if-eqz v7, :cond_201

    .line 186
    iget v9, v7, Liz;->c:I

    sget-object v11, Lgm;->bb:Lwr;

    iget v11, v11, Lwr;->bf:I

    if-ne v9, v11, :cond_201

    .line 187
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 191
    invoke-virtual {v3, v1}, Lgs;->d(F)F

    move-result v9

    mul-float v11, v9, v19

    .line 193
    invoke-static {v11}, Lin;->a(F)F

    move-result v11

    .line 194
    invoke-static {v9}, Lin;->c(F)F

    move-result v22

    mul-float v22, v22, v19

    invoke-static/range {v22 .. v22}, Lin;->a(F)F

    move-result v10

    neg-float v10, v10

    mul-float/2addr v10, v8

    .line 195
    invoke-static {v9}, Lin;->c(F)F

    move-result v8

    mul-float v8, v8, v19

    mul-float/2addr v8, v14

    invoke-static {v8}, Lin;->a(F)F

    move-result v8

    mul-float/2addr v8, v15

    neg-float v9, v11

    mul-float/2addr v9, v15

    invoke-static {v10, v8, v9}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    div-float/2addr v4, v12

    sub-float v4, v5, v4

    const v8, 0x3dcccccd    # 0.1f

    add-float/2addr v4, v8

    cmpg-float v8, v4, v6

    if-gez v8, :cond_d0

    move v4, v6

    :cond_d0
    cmpl-float v8, v4, v5

    if-lez v8, :cond_d5

    move v4, v5

    :cond_d5
    mul-float v4, v4, v19

    .line 201
    invoke-static {v4}, Lin;->b(F)F

    move-result v4

    neg-float v4, v4

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v4, v8

    add-float/2addr v4, v8

    sub-float v2, v5, v2

    const v9, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v9

    sub-float v2, v6, v2

    mul-float/2addr v8, v4

    sub-float/2addr v2, v8

    const v8, 0x3d23d70a    # 0.04f

    add-float/2addr v2, v8

    .line 203
    invoke-static {v6, v2, v13}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v2, 0x42b40000    # 90.0f

    .line 205
    invoke-static {v2, v6, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v8, -0x3d560000    # -85.0f

    mul-float/2addr v4, v8

    .line 206
    invoke-static {v4, v6, v6, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 207
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 211
    iget-object v4, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget-object v8, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v8, v8, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v8, v8, Ldc;->bA:Ljava/lang/String;

    iget-object v9, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v9, v9, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v9}, Ldc;->q_()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lji;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/16 v8, 0xde1

    invoke-static {v8, v4}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    const/4 v4, 0x0

    :goto_11b
    const/4 v8, 0x2

    if-ge v4, v8, :cond_160

    mul-int/lit8 v8, v4, 0x2

    add-int/lit8 v8, v8, -0x1

    .line 214
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const v9, 0x3f8ccccd    # 1.1f

    int-to-float v10, v8

    mul-float/2addr v10, v9

    const/high16 v9, -0x80000000

    const v11, -0x40e66666    # -0.6f

    .line 216
    invoke-static {v9, v11, v10}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    mul-int/lit8 v9, v8, -0x2d

    int-to-float v9, v9

    .line 217
    invoke-static {v9, v5, v6, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v9, -0x3d4c0000    # -90.0f

    .line 218
    invoke-static {v9, v6, v6, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v9, 0x426c0000    # 59.0f

    .line 219
    invoke-static {v9, v6, v6, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    mul-int/lit8 v8, v8, -0x41

    int-to-float v8, v8

    .line 220
    invoke-static {v8, v6, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 222
    sget-object v8, Lth;->a:Lth;

    iget-object v9, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v9, v9, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v8, v9}, Lth;->a(Lsn;)Lbw;

    move-result-object v8

    .line 223
    check-cast v8, Lds;

    .line 225
    invoke-static {v5, v5, v5}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 226
    invoke-virtual {v8}, Lds;->b()V

    .line 227
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_11b

    .line 232
    :cond_160
    invoke-virtual {v3, v1}, Lgs;->d(F)F

    move-result v1

    mul-float v3, v1, v1

    mul-float v3, v3, v19

    .line 233
    invoke-static {v3}, Lin;->a(F)F

    move-result v3

    .line 234
    invoke-static {v1}, Lin;->c(F)F

    move-result v1

    mul-float v1, v1, v19

    invoke-static {v1}, Lin;->a(F)F

    move-result v1

    neg-float v3, v3

    mul-float v3, v3, v17

    .line 235
    invoke-static {v3, v6, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    neg-float v1, v1

    mul-float v3, v1, v17

    .line 236
    invoke-static {v3, v6, v6, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v3, 0x42a00000    # 80.0f

    mul-float/2addr v1, v3

    .line 237
    invoke-static {v1, v5, v6, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const v1, 0x3ec28f5c    # 0.38f

    .line 241
    invoke-static {v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 243
    invoke-static {v2, v6, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v1, 0x43340000    # 180.0f

    .line 244
    invoke-static {v1, v6, v6, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 246
    invoke-static {v1, v1, v6}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v2, 0x3c800000    # 0.015625f

    .line 249
    invoke-static {v2, v2, v2}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 251
    iget-object v2, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget-object v3, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v4, "/misc/mapbg.png"

    invoke-virtual {v3, v4}, Lji;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lji;->b(I)V

    .line 252
    sget-object v2, Lnw;->a:Lnw;

    .line 254
    invoke-static {v6, v6, v1}, Lorg/lwjgl/opengl/GL11;->glNormal3f(FFF)V

    .line 255
    invoke-virtual {v2}, Lnw;->b()V

    const/4 v1, -0x7

    int-to-double v3, v1

    const/16 v1, 0x87

    int-to-double v5, v1

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-object/from16 v17, v2

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    .line 257
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v5

    .line 258
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const-wide/16 v26, 0x0

    move-wide/from16 v20, v3

    .line 259
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const-wide/16 v24, 0x0

    move-wide/from16 v18, v3

    .line 260
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 261
    invoke-virtual {v2}, Lnw;->a()V

    .line 263
    sget-object v1, Lgm;->bb:Lwr;

    iget-object v2, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v1, v7, v2}, Lwr;->a(Liz;Lfd;)Liu;

    move-result-object v1

    .line 264
    iget-object v2, v0, Lra;->f:Liy;

    iget-object v3, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v4, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v2, v3, v4, v1}, Liy;->a(Lgs;Lji;Liu;)V

    .line 266
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    goto/16 :goto_33a

    :cond_201
    const v4, 0x3f19999a    # 0.6f

    if-eqz v7, :cond_285

    .line 268
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 272
    invoke-virtual {v3, v1}, Lgs;->d(F)F

    move-result v9

    mul-float v10, v9, v19

    .line 274
    invoke-static {v10}, Lin;->a(F)F

    move-result v10

    .line 275
    invoke-static {v9}, Lin;->c(F)F

    move-result v11

    mul-float v11, v11, v19

    invoke-static {v11}, Lin;->a(F)F

    move-result v11

    neg-float v11, v11

    mul-float/2addr v11, v8

    .line 276
    invoke-static {v9}, Lin;->c(F)F

    move-result v9

    mul-float v9, v9, v19

    mul-float/2addr v9, v14

    invoke-static {v9}, Lin;->a(F)F

    move-result v9

    mul-float/2addr v9, v15

    neg-float v10, v10

    mul-float/2addr v10, v15

    invoke-static {v11, v9, v10}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    sub-float v2, v5, v2

    mul-float/2addr v2, v4

    const v4, -0x40fae148    # -0.52f

    sub-float/2addr v4, v2

    const v2, 0x3f0f5c29    # 0.56f

    .line 279
    invoke-static {v2, v4, v13}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 281
    invoke-static {v12, v6, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 282
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 284
    invoke-virtual {v3, v1}, Lgs;->d(F)F

    move-result v1

    mul-float v2, v1, v1

    mul-float v2, v2, v19

    .line 285
    invoke-static {v2}, Lin;->a(F)F

    move-result v2

    .line 286
    invoke-static {v1}, Lin;->c(F)F

    move-result v1

    mul-float v1, v1, v19

    invoke-static {v1}, Lin;->a(F)F

    move-result v1

    neg-float v2, v2

    mul-float v2, v2, v17

    .line 287
    invoke-static {v2, v6, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    neg-float v1, v1

    mul-float v2, v1, v17

    .line 288
    invoke-static {v2, v6, v6, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v1, v2

    .line 289
    invoke-static {v1, v5, v6, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 292
    invoke-static {v8, v8, v8}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 294
    invoke-virtual {v7}, Liz;->a()Lgm;

    move-result-object v1

    invoke-virtual {v1}, Lgm;->c()Z

    move-result v1

    if-eqz v1, :cond_27d

    const/high16 v1, 0x43340000    # 180.0f

    .line 295
    invoke-static {v1, v6, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 297
    :cond_27d
    invoke-virtual {v0, v3, v7}, Lra;->a(Lls;Liz;)V

    .line 298
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    goto/16 :goto_33a

    .line 300
    :cond_285
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 304
    invoke-virtual {v3, v1}, Lgs;->d(F)F

    move-result v7

    mul-float v9, v7, v19

    .line 306
    invoke-static {v9}, Lin;->a(F)F

    move-result v9

    .line 307
    invoke-static {v7}, Lin;->c(F)F

    move-result v10

    mul-float v10, v10, v19

    invoke-static {v10}, Lin;->a(F)F

    move-result v10

    neg-float v10, v10

    const v11, 0x3e99999a    # 0.3f

    mul-float/2addr v10, v11

    .line 308
    invoke-static {v7}, Lin;->c(F)F

    move-result v7

    mul-float v7, v7, v19

    mul-float/2addr v7, v14

    invoke-static {v7}, Lin;->a(F)F

    move-result v7

    mul-float/2addr v7, v8

    neg-float v9, v9

    mul-float/2addr v9, v8

    invoke-static {v10, v7, v9}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    sub-float v2, v5, v2

    mul-float/2addr v2, v4

    const v4, -0x40e66666    # -0.6f

    sub-float v11, v4, v2

    const v2, 0x3f23d70b    # 0.64000005f

    .line 311
    invoke-static {v2, v11, v13}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 313
    invoke-static {v12, v6, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 314
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 316
    invoke-virtual {v3, v1}, Lgs;->d(F)F

    move-result v1

    mul-float v2, v1, v1

    mul-float v2, v2, v19

    .line 317
    invoke-static {v2}, Lin;->a(F)F

    move-result v2

    .line 318
    invoke-static {v1}, Lin;->c(F)F

    move-result v1

    mul-float v1, v1, v19

    invoke-static {v1}, Lin;->a(F)F

    move-result v1

    const/high16 v3, 0x428c0000    # 70.0f

    mul-float/2addr v1, v3

    .line 319
    invoke-static {v1, v6, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    neg-float v1, v2

    mul-float v1, v1, v17

    .line 320
    invoke-static {v1, v6, v6, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 324
    iget-object v1, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget-object v2, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v2, v2, Ldc;->bA:Ljava/lang/String;

    iget-object v3, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v3}, Ldc;->q_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lji;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    const v1, 0x40666666    # 3.6f

    const/high16 v2, 0x40600000    # 3.5f

    const/high16 v3, -0x40800000    # -1.0f

    .line 325
    invoke-static {v3, v1, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v1, 0x42f00000    # 120.0f

    .line 326
    invoke-static {v1, v6, v6, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v1, 0x43480000    # 200.0f

    .line 327
    invoke-static {v1, v5, v6, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v1, -0x3cf90000    # -135.0f

    .line 328
    invoke-static {v1, v6, v5, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 329
    invoke-static {v5, v5, v5}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const v1, 0x40b33333    # 5.6f

    .line 330
    invoke-static {v1, v6, v6}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 332
    sget-object v1, Lth;->a:Lth;

    iget-object v2, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1, v2}, Lth;->a(Lsn;)Lbw;

    move-result-object v1

    .line 333
    check-cast v1, Lds;

    .line 335
    invoke-static {v5, v5, v5}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 336
    invoke-virtual {v1}, Lds;->b()V

    .line 337
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 340
    :goto_33a
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 341
    invoke-static {}, Lu;->a()V

    return-void
.end method

.method public a(Lls;Liz;)V
    .registers 42

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 46
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 47
    iget v2, v1, Liz;->c:I

    const-string v3, "/terrain.png"

    const/16 v4, 0xde1

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x100

    if-ge v2, v6, :cond_45

    sget-object v2, Luu;->m:[Luu;

    iget v7, v1, Liz;->c:I

    aget-object v2, v2, v7

    invoke-virtual {v2}, Luu;->b()I

    move-result v2

    invoke-static {v2}, Lcv;->a(I)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 48
    iget-object v2, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v2, v3}, Lji;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v4, v2}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 49
    iget-object v2, v0, Lra;->e:Lcv;

    sget-object v3, Luu;->m:[Luu;

    iget v4, v1, Liz;->c:I

    aget-object v3, v3, v4

    invoke-virtual/range {p2 .. p2}, Liz;->i()I

    move-result v1

    move-object/from16 v7, p1

    invoke-virtual {v7, v5}, Lls;->a(F)F

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Lcv;->a(Luu;IF)V

    goto/16 :goto_250

    :cond_45
    move-object/from16 v7, p1

    .line 51
    iget v2, v1, Liz;->c:I

    if-ge v2, v6, :cond_57

    .line 52
    iget-object v2, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v2, v3}, Lji;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v4, v2}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    goto :goto_64

    .line 54
    :cond_57
    iget-object v2, v0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v3, "/gui/items.png"

    invoke-virtual {v2, v3}, Lji;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v4, v2}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 57
    :goto_64
    sget-object v2, Lnw;->a:Lnw;

    .line 59
    invoke-virtual/range {p1 .. p2}, Lls;->c(Liz;)I

    move-result v1

    .line 61
    rem-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v15, 0x0

    add-float v6, v3, v15

    const/high16 v7, 0x43800000    # 256.0f

    div-float v13, v6, v7

    const v6, 0x417fd70a    # 15.99f

    add-float/2addr v3, v6

    div-float/2addr v3, v7

    .line 63
    div-int/2addr v1, v4

    mul-int/2addr v1, v4

    int-to-float v1, v1

    add-float v8, v1, v15

    div-float v14, v8, v7

    add-float/2addr v1, v6

    div-float/2addr v1, v7

    const v17, 0x803a    # 4.5999E-41f

    .line 71
    invoke-static/range {v17 .. v17}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/high16 v6, -0x80000000

    const v7, -0x41666666    # -0.3f

    .line 72
    invoke-static {v6, v7, v15}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v6, 0x3fc00000    # 1.5f

    .line 74
    invoke-static {v6, v6, v6}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/high16 v6, 0x42480000    # 50.0f

    .line 76
    invoke-static {v6, v15, v5, v15}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const v6, 0x43a78000    # 335.0f

    .line 77
    invoke-static {v6, v15, v15, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v6, -0x40900000    # -0.9375f

    const/high16 v11, -0x42800000    # -0.0625f

    .line 78
    invoke-static {v6, v11, v15}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 80
    invoke-virtual {v2}, Lnw;->b()V

    .line 81
    invoke-virtual {v2, v15, v15, v5}, Lnw;->b(FFF)V

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v18, 0x0

    float-to-double v4, v3

    float-to-double v11, v1

    move-object v6, v2

    move-wide/from16 v21, v11

    move-wide/from16 v11, v18

    move/from16 v24, v13

    move/from16 v25, v14

    move-wide v13, v4

    move v0, v15

    move-wide/from16 v15, v21

    .line 82
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const/high16 v6, 0x3f800000    # 1.0f

    float-to-double v13, v6

    const-wide/16 v11, 0x0

    move/from16 v15, v24

    float-to-double v7, v15

    move-object v6, v2

    move-wide/from16 v18, v7

    move-wide v7, v13

    move-wide/from16 v26, v13

    move-wide/from16 v13, v18

    move-wide/from16 v15, v21

    .line 83
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move/from16 v15, v25

    float-to-double v13, v15

    move-wide/from16 v7, v26

    move-wide/from16 v28, v13

    move-wide/from16 v13, v18

    move-wide/from16 v15, v28

    .line 84
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/16 v7, 0x0

    move-wide v13, v4

    .line 85
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    .line 86
    invoke-virtual {v2}, Lnw;->a()V

    .line 88
    invoke-virtual {v2}, Lnw;->b()V

    const/high16 v15, -0x40800000    # -1.0f

    .line 89
    invoke-virtual {v2, v0, v0, v15}, Lnw;->b(FFF)V

    const/high16 v6, -0x42800000    # -0.0625f

    float-to-double v13, v6

    move-object v6, v2

    move-wide v11, v13

    move-wide/from16 v30, v13

    move-wide v13, v4

    move/from16 p2, v1

    move v1, v15

    move-wide/from16 v15, v28

    .line 90
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    move-wide/from16 v7, v26

    move-wide/from16 v11, v30

    move-wide/from16 v13, v18

    .line 91
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/16 v9, 0x0

    move-wide/from16 v15, v21

    .line 92
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/16 v7, 0x0

    move-wide v13, v4

    .line 93
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    .line 94
    invoke-virtual {v2}, Lnw;->a()V

    .line 96
    invoke-virtual {v2}, Lnw;->b()V

    .line 97
    invoke-virtual {v2, v1, v0, v0}, Lnw;->b(FFF)V

    const/16 v23, 0x0

    move/from16 v15, v23

    :goto_131
    const/high16 v32, 0x3b000000    # 0.001953125f

    const/high16 v33, 0x41800000    # 16.0f

    const/16 v6, 0x10

    if-ge v15, v6, :cond_16e

    int-to-float v6, v15

    div-float v6, v6, v33

    sub-float v13, v24, v3

    mul-float/2addr v13, v6

    add-float/2addr v13, v3

    sub-float v13, v13, v32

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    float-to-double v11, v6

    const-wide/16 v9, 0x0

    float-to-double v13, v13

    move-object v6, v2

    move-wide v7, v11

    move-wide/from16 v32, v11

    move-wide/from16 v11, v30

    move-wide/from16 v34, v13

    move/from16 v36, v15

    move-wide/from16 v15, v21

    .line 102
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/16 v11, 0x0

    move-wide/from16 v7, v32

    .line 103
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v15, v28

    .line 104
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    move-wide/from16 v11, v30

    .line 105
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    add-int/lit8 v15, v36, 0x1

    goto :goto_131

    .line 107
    :cond_16e
    invoke-virtual {v2}, Lnw;->a()V

    .line 109
    invoke-virtual {v2}, Lnw;->b()V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 110
    invoke-virtual {v2, v6, v0, v0}, Lnw;->b(FFF)V

    move/from16 v15, v23

    :goto_17b
    const/high16 v34, 0x3d800000    # 0.0625f

    const/16 v7, 0x10

    if-ge v15, v7, :cond_1b8

    int-to-float v7, v15

    div-float v7, v7, v33

    sub-float v13, v24, v3

    mul-float/2addr v13, v7

    add-float/2addr v13, v3

    sub-float v13, v13, v32

    mul-float/2addr v7, v6

    add-float v7, v7, v34

    float-to-double v11, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    float-to-double v13, v13

    move-object v6, v2

    move-wide v7, v11

    move-wide/from16 v34, v11

    move-wide/from16 v11, v30

    move-wide/from16 v36, v13

    move/from16 v38, v15

    move-wide/from16 v15, v28

    .line 115
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/16 v11, 0x0

    move-wide/from16 v7, v34

    .line 116
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/16 v9, 0x0

    move-wide/from16 v15, v21

    .line 117
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    move-wide/from16 v11, v30

    .line 118
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    add-int/lit8 v15, v38, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_17b

    .line 120
    :cond_1b8
    invoke-virtual {v2}, Lnw;->a()V

    .line 122
    invoke-virtual {v2}, Lnw;->b()V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 123
    invoke-virtual {v2, v0, v3, v0}, Lnw;->b(FFF)V

    move/from16 v15, v23

    :goto_1c5
    const/16 v6, 0x10

    if-ge v15, v6, :cond_203

    int-to-float v6, v15

    div-float v6, v6, v33

    sub-float v14, v25, p2

    mul-float/2addr v14, v6

    add-float v7, p2, v14

    sub-float v7, v7, v32

    mul-float/2addr v6, v3

    add-float v6, v6, v34

    const-wide/16 v8, 0x0

    float-to-double v13, v6

    const-wide/16 v11, 0x0

    float-to-double v6, v7

    move-wide/from16 v21, v6

    move-object v6, v2

    move-wide v7, v8

    move-wide v9, v13

    move-wide/from16 v28, v13

    move-wide v13, v4

    move v3, v15

    move-wide/from16 v15, v21

    .line 128
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    move-wide/from16 v7, v26

    move-wide/from16 v9, v28

    move-wide/from16 v13, v18

    .line 129
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    move-wide/from16 v11, v30

    .line 130
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/16 v7, 0x0

    move-wide v13, v4

    .line 131
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    add-int/lit8 v15, v3, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1c5

    .line 133
    :cond_203
    invoke-virtual {v2}, Lnw;->a()V

    .line 135
    invoke-virtual {v2}, Lnw;->b()V

    .line 136
    invoke-virtual {v2, v0, v1, v0}, Lnw;->b(FFF)V

    move/from16 v0, v23

    const/16 v1, 0x10

    :goto_210
    if-ge v0, v1, :cond_24a

    int-to-float v3, v0

    div-float v3, v3, v33

    sub-float v14, v25, p2

    mul-float/2addr v14, v3

    add-float v6, p2, v14

    sub-float v6, v6, v32

    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v3, v3, v20

    float-to-double v13, v3

    const-wide/16 v11, 0x0

    float-to-double v9, v6

    move-object v6, v2

    move-wide/from16 v7, v26

    move-wide/from16 v21, v9

    move-wide v9, v13

    move-wide/from16 v23, v13

    move-wide/from16 v13, v18

    move-wide/from16 v15, v21

    .line 141
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/16 v7, 0x0

    move-wide/from16 v9, v23

    move-wide v13, v4

    .line 142
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    move-wide/from16 v11, v30

    .line 143
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    move-wide/from16 v7, v26

    move-wide/from16 v13, v18

    .line 144
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_210

    .line 146
    :cond_24a
    invoke-virtual {v2}, Lnw;->a()V

    .line 148
    invoke-static/range {v17 .. v17}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 152
    :goto_250
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    .line 528
    iput v0, p0, Lra;->c:F

    return-void
.end method

.method public b(F)V
    .registers 15

    const/16 v0, 0xbc0

    .line 345
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 346
    iget-object v1, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1}, Ldc;->ak()Z

    move-result v1

    const-string v2, "/terrain.png"

    const/16 v3, 0xde1

    if-eqz v1, :cond_21

    .line 347
    iget-object v1, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v1, v2}, Lji;->b(Ljava/lang/String;)I

    move-result v1

    .line 348
    invoke-static {v3, v1}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 349
    invoke-direct {p0, p1}, Lra;->d(F)V

    .line 353
    :cond_21
    iget-object v1, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1}, Ldc;->L()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 355
    iget-object v1, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v4, v1, Ldc;->aM:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v1

    .line 356
    iget-object v4, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v4, v4, Ldc;->aN:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    .line 357
    iget-object v5, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v5, v5, Ldc;->aO:D

    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v5

    .line 359
    iget-object v6, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v6, v6, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v6, v2}, Lji;->b(Ljava/lang/String;)I

    move-result v2

    .line 360
    invoke-static {v3, v2}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 361
    iget-object v2, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v2, v1, v4, v5}, Lfd;->a(III)I

    move-result v2

    .line 362
    iget-object v6, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v6, v6, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v6, v1, v4, v5}, Lfd;->h(III)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_73

    .line 363
    sget-object v1, Luu;->m:[Luu;

    aget-object v1, v1, v2

    invoke-virtual {v1, v7}, Luu;->a(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lra;->a(FI)V

    goto :goto_ce

    :cond_73
    const/4 v6, 0x0

    :goto_74
    const/16 v8, 0x8

    if-ge v6, v8, :cond_ce

    shr-int/lit8 v8, v6, 0x0

    .line 366
    rem-int/2addr v8, v7

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    iget-object v10, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v10, v10, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v10, v10, Ldc;->bg:F

    mul-float/2addr v8, v10

    const v10, 0x3f666666    # 0.9f

    mul-float/2addr v8, v10

    shr-int/lit8 v11, v6, 0x1

    .line 367
    rem-int/2addr v11, v7

    int-to-float v11, v11

    sub-float/2addr v11, v9

    iget-object v12, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v12, v12, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v12, v12, Ldc;->bh:F

    mul-float/2addr v11, v12

    const v12, 0x3e4ccccd    # 0.2f

    mul-float/2addr v11, v12

    shr-int/lit8 v12, v6, 0x2

    .line 368
    rem-int/2addr v12, v7

    int-to-float v12, v12

    sub-float/2addr v12, v9

    iget-object v9, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v9, v9, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v9, v9, Ldc;->bg:F

    mul-float/2addr v12, v9

    mul-float/2addr v12, v10

    int-to-float v9, v1

    add-float/2addr v9, v8

    .line 369
    invoke-static {v9}, Lin;->d(F)I

    move-result v8

    int-to-float v9, v4

    add-float/2addr v9, v11

    .line 370
    invoke-static {v9}, Lin;->d(F)I

    move-result v9

    int-to-float v10, v5

    add-float/2addr v10, v12

    .line 371
    invoke-static {v10}, Lin;->d(F)I

    move-result v10

    .line 372
    iget-object v11, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v11, v11, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v11, v8, v9, v10}, Lfd;->h(III)Z

    move-result v11

    if-eqz v11, :cond_cb

    .line 373
    iget-object v2, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v2, v8, v9, v10}, Lfd;->a(III)I

    move-result v2

    :cond_cb
    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    .line 378
    :cond_ce
    :goto_ce
    sget-object v1, Luu;->m:[Luu;

    aget-object v1, v1, v2

    if-eqz v1, :cond_df

    sget-object v1, Luu;->m:[Luu;

    aget-object v1, v1, v2

    invoke-virtual {v1, v7}, Luu;->a(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lra;->a(FI)V

    .line 381
    :cond_df
    iget-object v1, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    sget-object v2, Lln;->g:Lln;

    invoke-virtual {v1, v2}, Ldc;->a(Lln;)Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 382
    iget-object v1, p0, Lra;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v2, "/misc/water.png"

    invoke-virtual {v1, v2}, Lji;->b(Ljava/lang/String;)I

    move-result v1

    .line 383
    invoke-static {v3, v1}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 384
    invoke-direct {p0, p1}, Lra;->c(F)V

    .line 386
    :cond_fb
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    .line 532
    iput v0, p0, Lra;->c:F

    return-void
.end method
