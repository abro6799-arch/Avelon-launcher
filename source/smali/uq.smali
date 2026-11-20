###### Class defpackage.uq (uq)
.class public Luq;
.super Lub;
.source "SourceFile"


# static fields
.field private static d:Lbb;


# instance fields
.field public a:Ljava/lang/String;

.field public b:F

.field c:F

.field private e:Ljava/util/List;

.field private f:Ljava/util/Random;

.field private g:Lnet/minecraft/client/Minecraft;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lbb;

    invoke-direct {v0}, Lbb;-><init>()V

    sput-object v0, Luq;->d:Lbb;

    return-void
.end method

.method public constructor <init>(Lnet/minecraft/client/Minecraft;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Lub;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luq;->e:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Luq;->f:Ljava/util/Random;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Luq;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Luq;->h:I

    const-string v1, ""

    .line 48
    iput-object v1, p0, Luq;->i:Ljava/lang/String;

    .line 49
    iput v0, p0, Luq;->j:I

    .line 50
    iput-boolean v0, p0, Luq;->l:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 317
    iput v0, p0, Luq;->c:F

    .line 57
    iput-object p1, p0, Luq;->g:Lnet/minecraft/client/Minecraft;

    return-void
.end method

.method private a(FII)V
    .registers 24

    move-object/from16 v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_c

    move v2, v3

    :cond_c
    cmpl-float v3, v2, v1

    if-lez v3, :cond_11

    move v2, v1

    .line 344
    :cond_11
    iget v3, v0, Luq;->c:F

    float-to-double v4, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v2, v6

    add-double/2addr v4, v2

    double-to-float v2, v4

    iput v2, v0, Luq;->c:F

    const/16 v2, 0xb71

    .line 346
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/4 v3, 0x0

    .line 347
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    const/16 v4, 0x301

    .line 348
    invoke-static {v3, v4}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 349
    iget v3, v0, Luq;->c:F

    invoke-static {v3, v3, v3, v1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 350
    iget-object v3, v0, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v4, "%blur%/misc/vignette.png"

    invoke-virtual {v3, v4}, Lji;->b(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 351
    sget-object v3, Lnw;->a:Lnw;

    .line 352
    invoke-virtual {v3}, Lnw;->b()V

    const-wide/16 v6, 0x0

    move/from16 v4, p3

    int-to-double v14, v4

    const-wide v10, -0x3fa9800000000000L    # -90.0

    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object v5, v3

    move-wide v8, v14

    move-wide/from16 v18, v14

    move-wide/from16 v14, v16

    .line 353
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    move/from16 v4, p2

    int-to-double v14, v4

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide v6, v14

    move-wide/from16 v8, v18

    move-wide/from16 v18, v14

    move-wide/from16 v14, v16

    .line 354
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    const-wide/16 v8, 0x0

    const-wide/16 v14, 0x0

    move-wide/from16 v6, v18

    .line 355
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    const-wide/16 v6, 0x0

    const-wide/16 v12, 0x0

    .line 356
    invoke-virtual/range {v5 .. v15}, Lnw;->a(DDDDD)V

    .line 357
    invoke-virtual {v3}, Lnw;->a()V

    const/4 v3, 0x1

    .line 358
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    .line 359
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 360
    invoke-static {v1, v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    .line 361
    invoke-static {v1, v2}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    return-void
.end method

.method private a(II)V
    .registers 24

    const/16 v0, 0xb71

    .line 320
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/4 v1, 0x0

    .line 321
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    .line 322
    invoke-static {v1, v2}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 323
    invoke-static {v1, v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/16 v2, 0xbc0

    .line 324
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    move-object/from16 v3, p0

    .line 326
    iget-object v4, v3, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v5, "%blur%/misc/pumpkinblur.png"

    invoke-virtual {v4, v5}, Lji;->b(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xde1

    invoke-static {v5, v4}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 327
    sget-object v4, Lnw;->a:Lnw;

    .line 328
    invoke-virtual {v4}, Lnw;->b()V

    const-wide/16 v7, 0x0

    move/from16 v5, p2

    int-to-double v13, v5

    const-wide v11, -0x3fa9800000000000L    # -90.0

    const-wide/16 v15, 0x0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move-object v6, v4

    move-wide v9, v13

    move-wide/from16 v19, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    .line 329
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    move/from16 v5, p1

    int-to-double v13, v5

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move-wide v7, v13

    move-wide/from16 v9, v19

    move-wide/from16 v19, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    .line 330
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/16 v9, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/16 v15, 0x0

    move-wide/from16 v7, v19

    .line 331
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/16 v7, 0x0

    const-wide/16 v13, 0x0

    .line 332
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    .line 333
    invoke-virtual {v4}, Lnw;->a()V

    const/4 v4, 0x1

    .line 334
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    .line 335
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 336
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 337
    invoke-static {v1, v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    return-void
.end method

.method private a(IIIF)V
    .registers 13

    .line 396
    iget-object v0, p0, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->c:Lix;

    iget-object v0, v0, Lix;->a:[Liz;

    aget-object p1, v0, p1

    if-nez p1, :cond_d

    return-void

    .line 399
    :cond_d
    iget v0, p1, Liz;->b:I

    int-to-float v0, v0

    sub-float/2addr v0, p4

    const/4 p4, 0x0

    cmpl-float v7, v0, p4

    if-lez v7, :cond_38

    .line 401
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    add-int/lit8 v2, p2, 0x8

    int-to-float v3, v2

    add-int/lit8 v4, p3, 0xc

    int-to-float v5, v4

    .line 403
    invoke-static {v3, v5, p4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    div-float v3, v1, v0

    add-float/2addr v0, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    .line 404
    invoke-static {v3, v0, v1}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    neg-int v0, v2

    int-to-float v0, v0

    neg-int v1, v4

    int-to-float v1, v1

    .line 405
    invoke-static {v0, v1, p4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 408
    :cond_38
    sget-object v1, Luq;->d:Lbb;

    iget-object p4, p0, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v2, p4, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object p4, p0, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v3, p4, Lnet/minecraft/client/Minecraft;->p:Lji;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lbb;->a(Lsj;Lji;Liz;II)V

    if-lez v7, :cond_4d

    .line 411
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 414
    :cond_4d
    sget-object v1, Luq;->d:Lbb;

    iget-object p4, p0, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v2, p4, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object p4, p0, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v3, p4, Lnet/minecraft/client/Minecraft;->p:Lji;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lbb;->b(Lsj;Lji;Liz;II)V

    return-void
.end method

.method private b(FII)V
    .registers 33

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_12

    mul-float v1, p1, p1

    mul-float/2addr v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v2

    goto :goto_14

    :cond_12
    move/from16 v1, p1

    :goto_14
    const/16 v2, 0xbc0

    .line 371
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v3, 0xb71

    .line 372
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/4 v4, 0x0

    .line 373
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    const/16 v4, 0x302

    const/16 v5, 0x303

    .line 374
    invoke-static {v4, v5}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 375
    invoke-static {v0, v0, v0, v1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    move-object/from16 v1, p0

    .line 376
    iget-object v4, v1, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v5, "/terrain.png"

    invoke-virtual {v4, v5}, Lji;->b(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xde1

    invoke-static {v5, v4}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 378
    sget-object v4, Luu;->bf:Lak;

    iget v4, v4, Lak;->bm:I

    rem-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v4, v5

    .line 379
    sget-object v6, Luu;->bf:Lak;

    iget v6, v6, Lak;->bm:I

    div-int/lit8 v6, v6, 0x10

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 380
    sget-object v7, Luu;->bf:Lak;

    iget v7, v7, Lak;->bm:I

    rem-int/lit8 v7, v7, 0x10

    const/4 v8, 0x1

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v5

    .line 381
    sget-object v9, Luu;->bf:Lak;

    iget v9, v9, Lak;->bm:I

    div-int/lit8 v9, v9, 0x10

    add-int/2addr v9, v8

    int-to-float v9, v9

    div-float/2addr v9, v5

    .line 382
    sget-object v5, Lnw;->a:Lnw;

    .line 383
    invoke-virtual {v5}, Lnw;->b()V

    const-wide/16 v11, 0x0

    move/from16 v10, p3

    int-to-double v13, v10

    const-wide v15, -0x3fa9800000000000L    # -90.0

    float-to-double v0, v4

    float-to-double v9, v9

    move-wide/from16 v21, v9

    move-object v10, v5

    move-wide/from16 v23, v13

    move-wide/from16 v17, v0

    move-wide/from16 v19, v21

    .line 384
    invoke-virtual/range {v10 .. v20}, Lnw;->a(DDDDD)V

    move/from16 v4, p2

    int-to-double v13, v4

    float-to-double v11, v7

    move-wide/from16 v25, v11

    move-wide v11, v13

    move-wide/from16 v27, v13

    move-wide/from16 v13, v23

    move-wide/from16 v17, v25

    .line 385
    invoke-virtual/range {v10 .. v20}, Lnw;->a(DDDDD)V

    const-wide/16 v13, 0x0

    float-to-double v6, v6

    move-wide/from16 v11, v27

    move-wide/from16 v19, v6

    .line 386
    invoke-virtual/range {v10 .. v20}, Lnw;->a(DDDDD)V

    const-wide/16 v11, 0x0

    move-wide/from16 v17, v0

    .line 387
    invoke-virtual/range {v10 .. v20}, Lnw;->a(DDDDD)V

    .line 388
    invoke-virtual {v5}, Lnw;->a()V

    .line 389
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    .line 390
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 391
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 392
    invoke-static {v0, v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 418
    iget v0, p0, Luq;->j:I

    if-lez v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Luq;->j:I

    .line 419
    :cond_8
    iget v0, p0, Luq;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Luq;->h:I

    const/4 v0, 0x0

    .line 420
    :goto_f
    iget-object v1, p0, Luq;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 421
    iget-object v1, p0, Luq;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsw;

    iget v2, v1, Lsw;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lsw;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_28
    return-void
.end method

.method public a(FZII)V
    .registers 36

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 61
    new-instance v0, Lqq;

    iget-object v1, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v2, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget v2, v2, Lnet/minecraft/client/Minecraft;->d:I

    iget-object v3, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget v3, v3, Lnet/minecraft/client/Minecraft;->e:I

    invoke-direct {v0, v1, v2, v3}, Lqq;-><init>(Lkv;II)V

    .line 62
    invoke-virtual {v0}, Lqq;->a()I

    move-result v9

    .line 63
    invoke-virtual {v0}, Lqq;->b()I

    move-result v10

    .line 65
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v11, v0, Lnet/minecraft/client/Minecraft;->q:Lsj;

    .line 66
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->t:Lpx;

    invoke-virtual {v0}, Lpx;->b()V

    const/16 v12, 0xbe2

    .line 68
    invoke-static {v12}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 70
    invoke-static {}, Lnet/minecraft/client/Minecraft;->u()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0, v8}, Ldc;->a(F)F

    move-result v0

    invoke-direct {v7, v0, v9, v10}, Luq;->a(FII)V

    .line 72
    :cond_3e
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->c:Lix;

    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Lix;->d(I)Liz;

    move-result-object v0

    .line 73
    iget-object v1, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v1, v1, Lkv;->A:Z

    if-nez v1, :cond_5e

    if-eqz v0, :cond_5e

    iget v0, v0, Liz;->c:I

    sget-object v1, Luu;->bb:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_5e

    invoke-direct {v7, v9, v10}, Luq;->a(II)V

    .line 74
    :cond_5e
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v0, v0, Ldc;->C:F

    iget-object v1, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v1, v1, Ldc;->B:F

    iget-object v2, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v2, v2, Ldc;->C:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    const/4 v14, 0x0

    cmpl-float v1, v0, v14

    if-lez v1, :cond_7b

    .line 76
    invoke-direct {v7, v0, v9, v10}, Luq;->b(FII)V

    :cond_7b
    const/high16 v15, 0x3f800000    # 1.0f

    .line 80
    invoke-static {v15, v15, v15, v15}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 81
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v1, "/gui/gui.png"

    invoke-virtual {v0, v1}, Lji;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0xde1

    invoke-static {v6, v0}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 83
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v5, v0, Ldc;->c:Lix;

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 85
    iput v0, v7, Luq;->k:F

    .line 86
    div-int/lit8 v4, v9, 0x2

    add-int/lit8 v16, v4, -0x5b

    add-int/lit8 v17, v10, -0x16

    const/4 v3, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xb6

    const/16 v20, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v14, v4

    move/from16 v4, v18

    move-object v15, v5

    move/from16 v5, v19

    move v13, v6

    move/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Luq;->b(IIIIII)V

    add-int/lit8 v0, v16, -0x1

    .line 87
    iget v1, v15, Lix;->c:I

    const/16 v15, 0x14

    mul-int/2addr v1, v15

    add-int/2addr v1, v0

    const/4 v6, 0x1

    add-int/lit8 v2, v17, -0x1

    const/16 v4, 0x16

    const/16 v5, 0x18

    const/16 v17, 0x16

    move-object/from16 v0, p0

    move v15, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Luq;->b(IIIIII)V

    .line 89
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v1, "/gui/icons.png"

    invoke-virtual {v0, v1}, Lji;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v13, v0}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 90
    invoke-static {v12}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0x307

    const/16 v1, 0x301

    .line 91
    invoke-static {v0, v1}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    add-int/lit8 v1, v14, -0x7

    .line 92
    div-int/lit8 v0, v10, 0x2

    add-int/lit8 v2, v0, -0x7

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Luq;->b(IIIIII)V

    .line 93
    invoke-static {v12}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 95
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v0, v0, Ldc;->by:I

    const/4 v1, 0x3

    div-int/2addr v0, v1

    const/4 v13, 0x2

    rem-int/2addr v0, v13

    const/16 v17, 0x0

    if-ne v0, v15, :cond_10b

    move v6, v15

    goto :goto_10d

    :cond_10b
    move/from16 v6, v17

    .line 96
    :goto_10d
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v0, v0, Ldc;->by:I

    const/16 v5, 0xa

    if-ge v0, v5, :cond_11a

    move/from16 v19, v17

    goto :goto_11c

    :cond_11a
    move/from16 v19, v6

    .line 97
    :goto_11c
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v6, v0, Ldc;->Y:I

    .line 98
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v4, v0, Ldc;->Z:I

    .line 99
    iget-object v0, v7, Luq;->f:Ljava/util/Random;

    iget v1, v7, Luq;->h:I

    const v2, 0x4c627

    mul-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 108
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->c:Lob;

    invoke-virtual {v0}, Lob;->d()Z

    move-result v0

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    const/16 v3, 0x9

    if-eqz v0, :cond_2d9

    .line 110
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0}, Ldc;->s()I

    move-result v2

    move/from16 v1, v17

    :goto_14c
    if-ge v1, v5, :cond_25e

    add-int/lit8 v22, v10, -0x20

    if-lez v2, :cond_1b2

    add-int/lit8 v0, v14, 0x5b

    mul-int/lit8 v23, v1, 0x8

    sub-int v0, v0, v23

    add-int/lit8 v23, v0, -0x9

    mul-int/lit8 v0, v1, 0x2

    add-int/2addr v0, v15

    if-ge v0, v2, :cond_182

    const/16 v24, 0x22

    const/16 v25, 0x9

    const/16 v26, 0x9

    const/16 v27, 0x9

    move v12, v0

    move-object/from16 v0, p0

    move/from16 v28, v1

    move/from16 v1, v23

    move v15, v2

    move/from16 v2, v22

    move/from16 v3, v24

    move/from16 v29, v4

    move/from16 v4, v25

    move/from16 v24, v5

    move/from16 v5, v26

    move v13, v6

    move/from16 v6, v27

    .line 115
    invoke-virtual/range {v0 .. v6}, Luq;->b(IIIIII)V

    goto :goto_18b

    :cond_182
    move v12, v0

    move/from16 v28, v1

    move v15, v2

    move/from16 v29, v4

    move/from16 v24, v5

    move v13, v6

    :goto_18b
    if-ne v12, v15, :cond_19e

    const/16 v3, 0x19

    const/16 v4, 0x9

    const/16 v5, 0x9

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    .line 116
    invoke-virtual/range {v0 .. v6}, Luq;->b(IIIIII)V

    :cond_19e
    if-le v12, v15, :cond_1ba

    const/16 v3, 0x10

    const/16 v4, 0x9

    const/16 v5, 0x9

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    .line 117
    invoke-virtual/range {v0 .. v6}, Luq;->b(IIIIII)V

    goto :goto_1ba

    :cond_1b2
    move/from16 v28, v1

    move v15, v2

    move/from16 v29, v4

    move/from16 v24, v5

    move v13, v6

    :cond_1ba
    :goto_1ba
    mul-int/lit8 v1, v28, 0x8

    add-int v12, v16, v1

    const/4 v0, 0x4

    if-gt v13, v0, :cond_1ca

    .line 124
    iget-object v0, v7, Luq;->f:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int v22, v22, v0

    :cond_1ca
    mul-int/lit8 v0, v19, 0x9

    add-int/lit8 v3, v0, 0x10

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v22

    .line 126
    invoke-virtual/range {v0 .. v6}, Luq;->b(IIIIII)V

    if-eqz v19, :cond_21d

    mul-int/lit8 v1, v28, 0x2

    const/4 v0, 0x1

    add-int/lit8 v6, v1, 0x1

    move/from16 v5, v29

    if-ge v6, v5, :cond_201

    const/16 v3, 0x46

    const/4 v4, 0x0

    const/16 v23, 0x9

    const/16 v26, 0x9

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v22

    move/from16 v30, v5

    move/from16 v5, v23

    move/from16 v23, v15

    move v15, v6

    move/from16 v6, v26

    .line 128
    invoke-virtual/range {v0 .. v6}, Luq;->b(IIIIII)V

    move/from16 v6, v30

    goto :goto_205

    :cond_201
    move/from16 v23, v15

    move v15, v6

    move v6, v5

    :goto_205
    if-ne v15, v6, :cond_21a

    const/16 v3, 0x4f

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/16 v15, 0x9

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v22

    move/from16 v26, v6

    move v6, v15

    .line 129
    invoke-virtual/range {v0 .. v6}, Luq;->b(IIIIII)V

    goto :goto_221

    :cond_21a
    move/from16 v26, v6

    goto :goto_221

    :cond_21d
    move/from16 v23, v15

    move/from16 v26, v29

    :goto_221
    mul-int/lit8 v1, v28, 0x2

    const/4 v15, 0x1

    add-int/lit8 v6, v1, 0x1

    if-ge v6, v13, :cond_23b

    const/16 v3, 0x34

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/16 v27, 0x9

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v22

    move v15, v6

    move/from16 v6, v27

    .line 131
    invoke-virtual/range {v0 .. v6}, Luq;->b(IIIIII)V

    goto :goto_23c

    :cond_23b
    move v15, v6

    :goto_23c
    if-ne v15, v13, :cond_24d

    const/16 v3, 0x3d

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v22

    .line 132
    invoke-virtual/range {v0 .. v6}, Luq;->b(IIIIII)V

    :cond_24d
    add-int/lit8 v1, v28, 0x1

    move v6, v13

    move/from16 v2, v23

    move/from16 v5, v24

    move/from16 v4, v26

    const/16 v3, 0x9

    const/16 v12, 0xbe2

    const/4 v13, 0x2

    const/4 v15, 0x1

    goto/16 :goto_14c

    :cond_25e
    move/from16 v24, v5

    .line 137
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    sget-object v1, Lln;->g:Lln;

    invoke-virtual {v0, v1}, Ldc;->a(Lln;)Z

    move-result v0

    if-eqz v0, :cond_2d6

    .line 138
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v0, v0, Ldc;->bz:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    int-to-double v0, v0

    mul-double v0, v0, v20

    const-wide v2, 0x4072c00000000000L    # 300.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v12, v0

    .line 139
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v0, v0, Ldc;->bz:I

    int-to-double v0, v0

    mul-double v0, v0, v20

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int v13, v0, v12

    move/from16 v15, v17

    :goto_295
    add-int v0, v12, v13

    if-ge v15, v0, :cond_2d6

    if-ge v15, v12, :cond_2b8

    mul-int/lit8 v0, v15, 0x8

    add-int v1, v16, v0

    add-int/lit8 v0, v10, -0x20

    const/16 v6, 0x9

    add-int/lit8 v2, v0, -0x9

    const/16 v3, 0x10

    const/16 v4, 0x12

    const/16 v5, 0x9

    const/16 v19, 0x9

    move-object/from16 v0, p0

    move/from16 v22, v12

    move v12, v6

    move/from16 v6, v19

    .line 141
    invoke-virtual/range {v0 .. v6}, Luq;->b(IIIIII)V

    goto :goto_2d1

    :cond_2b8
    move/from16 v22, v12

    const/16 v12, 0x9

    mul-int/lit8 v0, v15, 0x8

    add-int v1, v16, v0

    add-int/lit8 v0, v10, -0x20

    add-int/lit8 v2, v0, -0x9

    const/16 v3, 0x19

    const/16 v4, 0x12

    const/16 v5, 0x9

    const/16 v6, 0x9

    move-object/from16 v0, p0

    .line 142
    invoke-virtual/range {v0 .. v6}, Luq;->b(IIIIII)V

    :goto_2d1
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v22

    goto :goto_295

    :cond_2d6
    const/16 v12, 0x9

    goto :goto_2dc

    :cond_2d9
    move v12, v3

    move/from16 v24, v5

    :goto_2dc
    const/16 v0, 0xbe2

    .line 147
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const v0, 0x803a    # 4.5999E-41f

    .line 149
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 150
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const/high16 v0, 0x42f00000    # 120.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 151
    invoke-static {v0, v1, v2, v2}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 152
    invoke-static {}, Lu;->b()V

    .line 153
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    move/from16 v0, v17

    :goto_2fa
    if-ge v0, v12, :cond_30d

    add-int/lit8 v4, v14, -0x5a

    mul-int/lit8 v1, v0, 0x14

    add-int/2addr v4, v1

    const/4 v1, 0x2

    add-int/2addr v4, v1

    add-int/lit8 v1, v10, -0x10

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    .line 158
    invoke-direct {v7, v0, v4, v1, v8}, Luq;->a(IIIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2fa

    .line 160
    :cond_30d
    invoke-static {}, Lu;->a()V

    const v0, 0x803a    # 4.5999E-41f

    .line 161
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 164
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0}, Ldc;->P()I

    move-result v0

    const/16 v6, 0xbc0

    if-lez v0, :cond_360

    const/16 v0, 0xb71

    .line 165
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 166
    invoke-static {v6}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 167
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0}, Ldc;->P()I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_344

    add-int/lit8 v0, v0, -0x64

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    sub-float v1, v2, v0

    :cond_344
    const/high16 v0, 0x435c0000    # 220.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    shl-int/lit8 v0, v0, 0x18

    const v1, 0x101020

    or-int v5, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v3, v9

    move v4, v10

    .line 175
    invoke-virtual/range {v0 .. v5}, Luq;->a(IIIII)V

    .line 176
    invoke-static {v6}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0xb71

    .line 177
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 228
    :cond_360
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v0, v0, Lkv;->B:Z

    const v13, 0xffffff

    if-eqz v0, :cond_4da

    .line 229
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 230
    sget-wide v0, Lnet/minecraft/client/Minecraft;->H:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_37c

    const/high16 v0, 0x42000000    # 32.0f

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 231
    :cond_37c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Minecraft Beta 1.7.3 ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v11, v0, v1, v1, v13}, Lsj;->a(Ljava/lang/String;III)V

    .line 232
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->o()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v11, v0, v1, v2, v13}, Lsj;->a(Ljava/lang/String;III)V

    .line 233
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->p()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16

    invoke-virtual {v11, v0, v1, v2, v13}, Lsj;->a(Ljava/lang/String;III)V

    .line 234
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->r()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v11, v0, v1, v2, v13}, Lsj;->a(Ljava/lang/String;III)V

    .line 235
    iget-object v0, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->q()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2a

    invoke-virtual {v11, v0, v1, v2, v13}, Lsj;->a(Ljava/lang/String;III)V

    .line 237
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v15

    .line 238
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v22

    .line 239
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    sub-long v0, v22, v0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Used memory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x64

    mul-long/2addr v3, v0

    div-long/2addr v3, v15

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "% ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v26, 0x400

    div-long v0, v0, v26

    div-long v0, v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "MB) of "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, v15, v26

    div-long v0, v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "MB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-virtual {v11, v2}, Lsj;->a(Ljava/lang/String;)I

    move-result v0

    sub-int v0, v9, v0

    const/4 v1, 0x2

    add-int/lit8 v3, v0, -0x2

    const/4 v4, 0x2

    const v5, 0xe0e0e0

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Luq;->b(Lsj;Ljava/lang/String;III)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Allocated memory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x64

    mul-long v1, v1, v22

    div-long/2addr v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "% ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v22, v22, v26

    div-long v1, v22, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "MB)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v11, v2}, Lsj;->a(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v9, v0

    const/4 v0, 0x2

    add-int/lit8 v3, v9, -0x2

    const/16 v4, 0xc

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Luq;->b(Lsj;Ljava/lang/String;III)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v1, v1, Ldc;->aM:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0x40

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Luq;->b(Lsj;Ljava/lang/String;III)V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "y: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v1, v1, Ldc;->aN:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x48

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Luq;->b(Lsj;Ljava/lang/String;III)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "z: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v1, v1, Ldc;->aO:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x50

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Luq;->b(Lsj;Ljava/lang/String;III)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "f: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v1, v1, Ldc;->aS:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    const/4 v2, 0x3

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/16 v4, 0x58

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Luq;->b(Lsj;Ljava/lang/String;III)V

    .line 251
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 254
    :cond_4da
    iget v0, v7, Luq;->j:I

    const/16 v9, 0xff

    if-lez v0, :cond_532

    int-to-float v0, v0

    sub-float/2addr v0, v8

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    if-le v1, v9, :cond_4ec

    move v1, v9

    :cond_4ec
    if-lez v1, :cond_532

    .line 259
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    int-to-float v2, v14

    add-int/lit8 v3, v10, -0x30

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 260
    invoke-static {v2, v3, v4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/16 v2, 0xbe2

    .line 261
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    .line 262
    invoke-static {v2, v3}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 265
    iget-boolean v2, v7, Luq;->l:Z

    if-eqz v2, :cond_518

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v0, v2

    const v2, 0x3f333333    # 0.7f

    const v3, 0x3f19999a    # 0.6f

    .line 266
    invoke-static {v0, v2, v3}, Lmcshim/awt/Color;->HSBtoRGB(FFF)I

    move-result v0

    and-int/2addr v0, v13

    goto :goto_519

    :cond_518
    move v0, v13

    .line 268
    :goto_519
    iget-object v2, v7, Luq;->i:Ljava/lang/String;

    invoke-virtual {v11, v2}, Lsj;->a(Ljava/lang/String;)I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    const/4 v1, -0x4

    invoke-virtual {v11, v2, v3, v1, v0}, Lsj;->b(Ljava/lang/String;III)V

    const/16 v0, 0xbe2

    .line 269
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 270
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    goto :goto_534

    :cond_532
    const/16 v0, 0xbe2

    .line 276
    :goto_534
    iget-object v1, v7, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->r:Lda;

    instance-of v8, v1, Lgc;

    if-eqz v8, :cond_53f

    const/16 v15, 0x14

    goto :goto_541

    :cond_53f
    move/from16 v15, v24

    .line 281
    :goto_541
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 282
    invoke-static {v0, v1}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 283
    invoke-static {v6}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 286
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    add-int/lit8 v10, v10, -0x30

    int-to-float v0, v10

    const/4 v1, 0x0

    .line 287
    invoke-static {v1, v0, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    move/from16 v10, v17

    .line 289
    :goto_55a
    iget-object v0, v7, Luq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_5df

    if-ge v10, v15, :cond_5df

    .line 290
    iget-object v0, v7, Luq;->e:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsw;

    iget v0, v0, Lsw;->b:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_577

    if-eqz v8, :cond_575

    goto :goto_577

    :cond_575
    const/4 v1, 0x2

    goto :goto_5d7

    .line 291
    :cond_577
    :goto_577
    iget-object v0, v7, Luq;->e:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsw;

    iget v0, v0, Lsw;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    mul-double v0, v0, v20

    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_593

    const-wide/16 v0, 0x0

    :cond_593
    cmpl-double v4, v0, v2

    if-lez v4, :cond_598

    goto :goto_599

    :cond_598
    move-wide v2, v0

    :goto_599
    mul-double/2addr v2, v2

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v0

    double-to-int v0, v2

    if-eqz v8, :cond_5a5

    move v14, v9

    goto :goto_5a6

    :cond_5a5
    move v14, v0

    :goto_5a6
    if-lez v14, :cond_575

    neg-int v0, v10

    mul-int/lit8 v5, v0, 0x9

    .line 303
    iget-object v0, v7, Luq;->e:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsw;

    iget-object v4, v0, Lsw;->a:Ljava/lang/String;

    add-int/lit8 v2, v5, -0x1

    const/16 v3, 0x142

    add-int/lit8 v16, v5, 0x8

    .line 304
    div-int/lit8 v0, v14, 0x2

    shl-int/lit8 v17, v0, 0x18

    const/4 v1, 0x2

    move-object/from16 v0, p0

    move-object v9, v4

    move/from16 v4, v16

    move v12, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Luq;->a(IIIII)V

    const/16 v0, 0xbe2

    .line 305
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    shl-int/lit8 v0, v14, 0x18

    add-int/2addr v0, v13

    const/4 v1, 0x2

    .line 307
    invoke-virtual {v11, v9, v1, v12, v0}, Lsj;->a(Ljava/lang/String;III)V

    :goto_5d7
    add-int/lit8 v10, v10, 0x1

    const/16 v9, 0xff

    const/16 v12, 0x9

    goto/16 :goto_55a

    .line 311
    :cond_5df
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 313
    invoke-static {v6}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0xbe2

    .line 314
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    .line 430
    :goto_0
    iget-object v0, p0, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->q:Lsj;

    invoke-virtual {v0, p1}, Lsj;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x140

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_32

    .line 432
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_26

    iget-object v0, p0, Luq;->g:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->q:Lsj;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lsj;->a(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_26

    move v2, v4

    goto :goto_e

    .line 435
    :cond_26
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Luq;->a(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 438
    :cond_32
    iget-object v0, p0, Luq;->e:Ljava/util/List;

    new-instance v1, Lsw;

    invoke-direct {v1, p1}, Lsw;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 439
    :goto_3c
    iget-object p1, p0, Luq;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_51

    .line 440
    iget-object p1, p0, Luq;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3c

    :cond_51
    return-void
.end method

.method public b()V
    .registers 2

    .line 426
    iget-object v0, p0, Luq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Now playing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Luq;->i:Ljava/lang/String;

    const/16 p1, 0x3c

    .line 446
    iput p1, p0, Luq;->j:I

    const/4 p1, 0x1

    .line 447
    iput-boolean p1, p0, Luq;->l:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 451
    invoke-static {}, Lnh;->a()Lnh;

    move-result-object v0

    .line 452
    invoke-virtual {v0, p1}, Lnh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-virtual {p0, p1}, Luq;->a(Ljava/lang/String;)V

    return-void
.end method
