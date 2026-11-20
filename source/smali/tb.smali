###### Class defpackage.tb (tb)
.class public Ltb;
.super Lbw;
.source "SourceFile"


# instance fields
.field protected a:Lko;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lbw;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 19
    iput v0, p0, Ltb;->c:F

    .line 20
    new-instance v0, Lnq;

    invoke-direct {v0}, Lnq;-><init>()V

    iput-object v0, p0, Ltb;->a:Lko;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 15
    check-cast p1, Lyl;

    invoke-virtual/range {p0 .. p9}, Ltb;->a(Lyl;DDDFF)V

    return-void
.end method

.method public a(Lyl;DDDFF)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p9

    .line 24
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 26
    iget-wide v1, v10, Lyl;->bl:D

    iget-wide v3, v10, Lyl;->aM:D

    iget-wide v5, v10, Lyl;->bl:D

    sub-double/2addr v3, v5

    float-to-double v5, v11

    mul-double/2addr v3, v5

    add-double v12, v1, v3

    .line 27
    iget-wide v1, v10, Lyl;->bm:D

    iget-wide v3, v10, Lyl;->aN:D

    iget-wide v7, v10, Lyl;->bm:D

    sub-double/2addr v3, v7

    mul-double/2addr v3, v5

    add-double v14, v1, v3

    .line 28
    iget-wide v1, v10, Lyl;->bn:D

    iget-wide v3, v10, Lyl;->aO:D

    iget-wide v7, v10, Lyl;->bn:D

    sub-double/2addr v3, v7

    mul-double/2addr v3, v5

    add-double v16, v1, v3

    move-object/from16 v1, p1

    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v6, v16

    .line 32
    invoke-virtual/range {v1 .. v7}, Lyl;->i(DDD)Lbt;

    move-result-object v8

    .line 34
    iget v1, v10, Lyl;->aV:F

    iget v2, v10, Lyl;->aT:F

    iget v3, v10, Lyl;->aV:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v11

    add-float v18, v1, v2

    if-eqz v8, :cond_bf

    const-wide v19, 0x3fd3333340000000L    # 0.30000001192092896

    move-object/from16 v1, p1

    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v6, v16

    move-object v0, v8

    move-wide/from16 v8, v19

    .line 37
    invoke-virtual/range {v1 .. v9}, Lyl;->a(DDDD)Lbt;

    move-result-object v19

    const-wide v8, -0x402cccccc0000000L    # -0.30000001192092896

    .line 38
    invoke-virtual/range {v1 .. v9}, Lyl;->a(DDDD)Lbt;

    move-result-object v8

    if-nez v19, :cond_5d

    move-object v1, v0

    goto :goto_5f

    :cond_5d
    move-object/from16 v1, v19

    :goto_5f
    if-nez v8, :cond_62

    move-object v8, v0

    .line 42
    :cond_62
    iget-wide v2, v0, Lbt;->a:D

    sub-double/2addr v2, v12

    add-double v2, p2, v2

    .line 43
    iget-wide v4, v1, Lbt;->b:D

    iget-wide v6, v8, Lbt;->b:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    sub-double/2addr v4, v14

    add-double v4, p4, v4

    .line 44
    iget-wide v6, v0, Lbt;->c:D

    sub-double v6, v6, v16

    add-double v6, p6, v6

    .line 46
    iget-wide v12, v1, Lbt;->a:D

    neg-double v12, v12

    iget-wide v14, v1, Lbt;->b:D

    neg-double v14, v14

    iget-wide v0, v1, Lbt;->c:D

    neg-double v0, v0

    move-object/from16 v19, v8

    move-wide/from16 v20, v12

    move-wide/from16 v22, v14

    move-wide/from16 v24, v0

    invoke-virtual/range {v19 .. v25}, Lbt;->c(DDD)Lbt;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lbt;->d()D

    move-result-wide v8

    const-wide/16 v12, 0x0

    cmpl-double v1, v8, v12

    if-nez v1, :cond_98

    goto :goto_c5

    .line 49
    :cond_98
    invoke-virtual {v0}, Lbt;->c()Lbt;

    move-result-object v0

    .line 50
    iget-wide v8, v0, Lbt;->c:D

    iget-wide v12, v0, Lbt;->a:D

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v8, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v12

    double-to-float v1, v8

    .line 51
    iget-wide v8, v0, Lbt;->b:D

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    const-wide v12, 0x4052400000000000L    # 73.0

    mul-double/2addr v8, v12

    double-to-float v0, v8

    goto :goto_c9

    :cond_bf
    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    :goto_c5
    move/from16 v1, p8

    move/from16 v0, v18

    :goto_c9
    double-to-float v2, v2

    double-to-float v3, v4

    double-to-float v4, v6

    .line 54
    invoke-static {v2, v3, v4}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v2, 0x43340000    # 180.0f

    sub-float/2addr v2, v1

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 56
    invoke-static {v2, v1, v3, v1}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    neg-float v0, v0

    .line 57
    invoke-static {v0, v1, v1, v3}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 58
    iget v0, v10, Lyl;->b:I

    int-to-float v0, v0

    sub-float/2addr v0, v11

    .line 59
    iget v2, v10, Lyl;->a:I

    int-to-float v2, v2

    sub-float/2addr v2, v11

    cmpg-float v4, v2, v1

    if-gez v4, :cond_e9

    move v2, v1

    :cond_e9
    cmpl-float v4, v0, v1

    if-lez v4, :cond_fd

    .line 62
    invoke-static {v0}, Lin;->a(F)F

    move-result v4

    mul-float/2addr v4, v0

    mul-float/2addr v4, v2

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr v4, v0

    iget v0, v10, Lyl;->c:I

    int-to-float v0, v0

    mul-float/2addr v4, v0

    invoke-static {v4, v3, v1, v1}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 65
    :cond_fd
    iget v0, v10, Lyl;->d:I

    if-eqz v0, :cond_150

    const-string v0, "/terrain.png"

    move-object/from16 v2, p0

    .line 66
    invoke-virtual {v2, v0}, Ltb;->a(Ljava/lang/String;)V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 68
    invoke-static {v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/high16 v0, 0x3ea00000    # 0.3125f

    .line 69
    invoke-static {v1, v0, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/high16 v0, 0x42b40000    # 90.0f

    .line 70
    invoke-static {v0, v1, v3, v1}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 71
    iget v0, v10, Lyl;->d:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_12c

    .line 72
    new-instance v0, Lcv;

    invoke-direct {v0}, Lcv;-><init>()V

    sget-object v4, Luu;->av:Luu;

    invoke-virtual {v10, v11}, Lyl;->a(F)F

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcv;->a(Luu;IF)V

    goto :goto_13f

    .line 73
    :cond_12c
    iget v0, v10, Lyl;->d:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_13f

    .line 74
    new-instance v0, Lcv;

    invoke-direct {v0}, Lcv;-><init>()V

    sget-object v4, Luu;->aC:Luu;

    invoke-virtual {v10, v11}, Lyl;->a(F)F

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcv;->a(Luu;IF)V

    :cond_13f
    :goto_13f
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 76
    invoke-static {v0, v1, v3, v1}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const/high16 v0, -0x41600000    # -0.3125f

    .line 77
    invoke-static {v1, v0, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const v0, 0x3faaaaab

    .line 78
    invoke-static {v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    goto :goto_152

    :cond_150
    move-object/from16 v2, p0

    :goto_152
    const-string v0, "/item/cart.png"

    .line 81
    invoke-virtual {v2, v0}, Ltb;->a(Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 82
    invoke-static {v0, v0, v3}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 85
    iget-object v0, v2, Ltb;->a:Lko;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const v4, -0x42333333    # -0.1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3d800000    # 0.0625f

    move-object/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    invoke-virtual/range {p1 .. p7}, Lko;->a(FFFFFF)V

    .line 86
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method
