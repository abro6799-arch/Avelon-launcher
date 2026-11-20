###### Class defpackage.mc (mc)
.class public Lmc;
.super Lbw;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lbw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsl;DDDFF)V
    .registers 37

    move-object/from16 v0, p1

    .line 11
    iget v1, v0, Lsl;->aU:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10

    iget v1, v0, Lsl;->aV:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10

    return-void

    :cond_10
    const-string v1, "/item/arrows.png"

    move-object/from16 v3, p0

    .line 12
    invoke-virtual {v3, v1}, Lmc;->a(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    move-wide/from16 v4, p2

    double-to-float v1, v4

    move-wide/from16 v4, p4

    double-to-float v4, v4

    move-wide/from16 v5, p6

    double-to-float v5, v5

    .line 16
    invoke-static {v1, v4, v5}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 17
    iget v1, v0, Lsl;->aU:F

    iget v4, v0, Lsl;->aS:F

    iget v5, v0, Lsl;->aU:F

    sub-float/2addr v4, v5

    mul-float v4, v4, p9

    add-float/2addr v1, v4

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float/2addr v1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v5, v2}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 18
    iget v1, v0, Lsl;->aV:F

    iget v6, v0, Lsl;->aT:F

    iget v7, v0, Lsl;->aV:F

    sub-float/2addr v6, v7

    mul-float v6, v6, p9

    add-float/2addr v1, v6

    invoke-static {v1, v2, v2, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 20
    sget-object v1, Lnw;->a:Lnw;

    const/4 v15, 0x0

    int-to-float v6, v15

    const/high16 v7, 0x42000000    # 32.0f

    div-float v13, v6, v7

    const/4 v6, 0x5

    int-to-float v6, v6

    div-float/2addr v6, v7

    const/16 v8, 0xa

    int-to-float v8, v8

    div-float v14, v8, v7

    const v17, 0x803a    # 4.5999E-41f

    .line 33
    invoke-static/range {v17 .. v17}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 34
    iget v0, v0, Lsl;->b:I

    int-to-float v0, v0

    sub-float v0, v0, p9

    cmpl-float v7, v0, v2

    if-lez v7, :cond_70

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v0

    .line 37
    invoke-static {v7}, Lin;->a(F)F

    move-result v7

    neg-float v7, v7

    mul-float/2addr v7, v0

    .line 38
    invoke-static {v7, v2, v2, v5}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    :cond_70
    const/high16 v0, 0x42340000    # 45.0f

    .line 40
    invoke-static {v0, v5, v2, v2}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const v0, 0x3d666666    # 0.05625f

    .line 41
    invoke-static {v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/high16 v7, -0x3f800000    # -4.0f

    .line 43
    invoke-static {v7, v2, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 45
    invoke-static {v0, v2, v2}, Lorg/lwjgl/opengl/GL11;->glNormal3f(FFF)V

    .line 46
    invoke-virtual {v1}, Lnw;->b()V

    const-wide/high16 v7, -0x3fe4000000000000L    # -7.0

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    const-wide/high16 v11, -0x4000000000000000L    # -2.0

    float-to-double v4, v2

    float-to-double v2, v6

    move-object v6, v1

    move/from16 v18, v13

    move v0, v14

    move-wide v13, v4

    move/from16 v19, v15

    move-wide v15, v2

    .line 47
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    const/high16 v6, 0x3e200000    # 0.15625f

    float-to-double v13, v6

    move-object v6, v1

    move-wide/from16 v20, v13

    .line 48
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    float-to-double v13, v0

    move-wide/from16 v22, v13

    move-wide/from16 v13, v20

    move-wide/from16 v15, v22

    .line 49
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/high16 v11, -0x4000000000000000L    # -2.0

    move-wide v13, v4

    .line 50
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    .line 51
    invoke-virtual {v1}, Lnw;->a()V

    const v0, -0x4299999a    # -0.05625f

    const/4 v6, 0x0

    .line 53
    invoke-static {v0, v6, v6}, Lorg/lwjgl/opengl/GL11;->glNormal3f(FFF)V

    .line 54
    invoke-virtual {v1}, Lnw;->b()V

    move-object v6, v1

    move-wide v15, v2

    .line 55
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    move-wide/from16 v13, v20

    .line 56
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    move-wide/from16 v15, v22

    .line 57
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/high16 v11, -0x4000000000000000L    # -2.0

    move-wide v13, v4

    .line 58
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    .line 59
    invoke-virtual {v1}, Lnw;->a()V

    move/from16 v0, v19

    :goto_e1
    const/4 v6, 0x4

    if-ge v0, v6, :cond_132

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x42b40000    # 90.0f

    .line 63
    invoke-static {v15, v13, v14, v14}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    const v11, 0x3d666666    # 0.05625f

    .line 64
    invoke-static {v14, v14, v11}, Lorg/lwjgl/opengl/GL11;->glNormal3f(FFF)V

    .line 65
    invoke-virtual {v1}, Lnw;->b()V

    const-wide/high16 v7, -0x3fe0000000000000L    # -8.0

    const-wide/16 v19, 0x0

    move/from16 v12, v18

    float-to-double v9, v12

    move-object v6, v1

    move-wide/from16 v21, v9

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    move/from16 v23, v11

    move-wide/from16 v11, v19

    move/from16 v19, v13

    move/from16 v20, v14

    move-wide v13, v4

    move/from16 v24, v15

    move-wide/from16 v15, v21

    .line 66
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    const-wide/16 v11, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    float-to-double v13, v6

    move-object v6, v1

    move-wide/from16 v25, v13

    .line 67
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    move-wide v15, v2

    .line 68
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    const-wide/high16 v7, -0x3fe0000000000000L    # -8.0

    move-wide v13, v4

    .line 69
    invoke-virtual/range {v6 .. v16}, Lnw;->a(DDDDD)V

    .line 70
    invoke-virtual {v1}, Lnw;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e1

    .line 73
    :cond_132
    invoke-static/range {v17 .. v17}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 74
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 9
    check-cast p1, Lsl;

    invoke-virtual/range {p0 .. p9}, Lmc;->a(Lsl;DDDFF)V

    return-void
.end method
