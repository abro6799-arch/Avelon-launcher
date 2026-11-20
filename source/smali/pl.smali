###### Class defpackage.pl (pl)
.class public Lpl;
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
.method public a(Llx;DDDFF)V
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p9

    .line 12
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    double-to-float v9, v2

    double-to-float v10, v4

    double-to-float v11, v6

    .line 14
    invoke-static {v9, v10, v11}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const v9, 0x803a    # 4.5999E-41f

    .line 15
    invoke-static {v9}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/high16 v10, 0x3f000000    # 0.5f

    .line 16
    invoke-static {v10, v10, v10}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const-string v11, "/particles.png"

    .line 19
    invoke-virtual {v0, v11}, Lpl;->a(Ljava/lang/String;)V

    .line 20
    sget-object v11, Lnw;->a:Lnw;

    const/16 v12, 0x8

    int-to-float v12, v12

    const/high16 v13, 0x43000000    # 128.0f

    div-float/2addr v12, v13

    const/16 v15, 0x10

    int-to-float v14, v15

    div-float/2addr v14, v13

    int-to-float v9, v15

    div-float/2addr v9, v13

    const/16 v15, 0x18

    int-to-float v15, v15

    div-float/2addr v15, v13

    .line 34
    iget-object v13, v0, Lpl;->b:Lth;

    iget v13, v13, Lth;->i:F

    const/high16 v23, 0x43340000    # 180.0f

    sub-float v13, v23, v13

    const/4 v10, 0x0

    move/from16 v17, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v10, v14, v10}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 35
    iget-object v13, v0, Lpl;->b:Lth;

    iget v13, v13, Lth;->j:F

    neg-float v13, v13

    invoke-static {v13, v14, v10, v10}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 36
    invoke-virtual {v11}, Lnw;->b()V

    .line 37
    invoke-virtual {v11, v10, v14, v10}, Lnw;->b(FFF)V

    const/high16 v10, -0x41000000    # -0.5f

    float-to-double v13, v10

    const-wide/16 v18, 0x0

    float-to-double v6, v12

    float-to-double v4, v15

    move-object v12, v11

    move-wide/from16 v24, v13

    move/from16 v10, v17

    const/16 v2, 0x10

    move-wide/from16 v15, v24

    move-wide/from16 v17, v18

    move-wide/from16 v19, v6

    move-wide/from16 v21, v4

    .line 38
    invoke-virtual/range {v12 .. v22}, Lnw;->a(DDDDD)V

    const/high16 v3, 0x3f000000    # 0.5f

    float-to-double v13, v3

    const-wide/16 v17, 0x0

    float-to-double v2, v10

    move-wide/from16 v26, v13

    move-wide/from16 v19, v2

    .line 39
    invoke-virtual/range {v12 .. v22}, Lnw;->a(DDDDD)V

    float-to-double v4, v9

    move-wide/from16 v15, v26

    move-wide/from16 v21, v4

    .line 40
    invoke-virtual/range {v12 .. v22}, Lnw;->a(DDDDD)V

    move-wide/from16 v13, v24

    move-wide/from16 v19, v6

    .line 41
    invoke-virtual/range {v12 .. v22}, Lnw;->a(DDDDD)V

    .line 42
    invoke-virtual {v11}, Lnw;->a()V

    const v2, 0x803a    # 4.5999E-41f

    .line 44
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 45
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 48
    iget-object v2, v1, Llx;->b:Lgs;

    if-eqz v2, :cond_241

    .line 49
    iget-object v2, v1, Llx;->b:Lgs;

    iget v2, v2, Lgs;->aU:F

    iget-object v3, v1, Llx;->b:Lgs;

    iget v3, v3, Lgs;->aS:F

    iget-object v4, v1, Llx;->b:Lgs;

    iget v4, v4, Lgs;->aU:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v2, v3

    div-float v2, v2, v23

    .line 51
    invoke-static {v2}, Lin;->a(F)F

    .line 52
    invoke-static {v2}, Lin;->b(F)F

    .line 55
    iget-object v2, v1, Llx;->b:Lgs;

    invoke-virtual {v2, v8}, Lgs;->d(F)F

    move-result v2

    .line 56
    invoke-static {v2}, Lin;->c(F)F

    move-result v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Lin;->a(F)F

    move-result v2

    const-wide/high16 v12, -0x4020000000000000L    # -0.5

    const-wide v14, 0x3f9eb851eb851eb8L    # 0.03

    const-wide v16, 0x3fe999999999999aL    # 0.8

    .line 59
    invoke-static/range {v12 .. v17}, Lbt;->b(DDD)Lbt;

    move-result-object v4

    .line 60
    iget-object v5, v1, Llx;->b:Lgs;

    iget v5, v5, Lgs;->aV:F

    iget-object v6, v1, Llx;->b:Lgs;

    iget v6, v6, Lgs;->aT:F

    iget-object v7, v1, Llx;->b:Lgs;

    iget v7, v7, Lgs;->aV:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    neg-float v5, v5

    mul-float/2addr v5, v3

    div-float v5, v5, v23

    invoke-virtual {v4, v5}, Lbt;->a(F)V

    .line 61
    iget-object v5, v1, Llx;->b:Lgs;

    iget v5, v5, Lgs;->aU:F

    iget-object v6, v1, Llx;->b:Lgs;

    iget v6, v6, Lgs;->aS:F

    iget-object v7, v1, Llx;->b:Lgs;

    iget v7, v7, Lgs;->aU:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    neg-float v5, v5

    mul-float/2addr v5, v3

    div-float v5, v5, v23

    invoke-virtual {v4, v5}, Lbt;->b(F)V

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v10, v2, v5

    .line 62
    invoke-virtual {v4, v10}, Lbt;->b(F)V

    neg-float v2, v2

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v2, v5

    .line 63
    invoke-virtual {v4, v2}, Lbt;->a(F)V

    .line 68
    iget-object v2, v1, Llx;->b:Lgs;

    iget-wide v5, v2, Lgs;->aJ:D

    iget-object v2, v1, Llx;->b:Lgs;

    iget-wide v9, v2, Lgs;->aM:D

    iget-object v2, v1, Llx;->b:Lgs;

    iget-wide v12, v2, Lgs;->aJ:D

    sub-double/2addr v9, v12

    float-to-double v12, v8

    mul-double/2addr v9, v12

    add-double/2addr v5, v9

    iget-wide v9, v4, Lbt;->a:D

    add-double/2addr v5, v9

    .line 69
    iget-object v2, v1, Llx;->b:Lgs;

    iget-wide v9, v2, Lgs;->aK:D

    iget-object v2, v1, Llx;->b:Lgs;

    iget-wide v14, v2, Lgs;->aN:D

    iget-object v2, v1, Llx;->b:Lgs;

    move-object v7, v4

    iget-wide v3, v2, Lgs;->aK:D

    sub-double/2addr v14, v3

    mul-double/2addr v14, v12

    add-double/2addr v9, v14

    move-object v2, v7

    iget-wide v3, v2, Lbt;->b:D

    add-double/2addr v9, v3

    .line 70
    iget-object v3, v1, Llx;->b:Lgs;

    iget-wide v3, v3, Lgs;->aL:D

    iget-object v7, v1, Llx;->b:Lgs;

    iget-wide v14, v7, Lgs;->aO:D

    iget-object v7, v1, Llx;->b:Lgs;

    move-wide/from16 v16, v5

    iget-wide v5, v7, Lgs;->aL:D

    sub-double/2addr v14, v5

    mul-double/2addr v14, v12

    add-double/2addr v3, v14

    iget-wide v5, v2, Lbt;->c:D

    add-double/2addr v3, v5

    .line 73
    iget-object v2, v0, Lpl;->b:Lth;

    iget-object v2, v2, Lth;->k:Lkv;

    iget-boolean v2, v2, Lkv;->A:Z

    if-eqz v2, :cond_1ce

    .line 74
    iget-object v2, v1, Llx;->b:Lgs;

    iget v2, v2, Lgs;->I:F

    iget-object v3, v1, Llx;->b:Lgs;

    iget v3, v3, Lgs;->H:F

    iget-object v4, v1, Llx;->b:Lgs;

    iget v4, v4, Lgs;->I:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v2, v3

    div-float v2, v2, v23

    .line 75
    invoke-static {v2}, Lin;->a(F)F

    move-result v3

    float-to-double v3, v3

    .line 76
    invoke-static {v2}, Lin;->b(F)F

    move-result v2

    float-to-double v5, v2

    .line 77
    iget-object v2, v1, Llx;->b:Lgs;

    iget-wide v7, v2, Lgs;->aJ:D

    iget-object v2, v1, Llx;->b:Lgs;

    iget-wide v9, v2, Lgs;->aM:D

    iget-object v2, v1, Llx;->b:Lgs;

    iget-wide v14, v2, Lgs;->aJ:D

    sub-double/2addr v9, v14

    mul-double/2addr v9, v12

    add-double/2addr v7, v9

    const-wide v9, 0x3fd6666666666666L    # 0.35

    mul-double v14, v5, v9

    sub-double/2addr v7, v14

    const-wide v14, 0x3feb333333333333L    # 0.85

    mul-double v16, v3, v14

    sub-double v7, v7, v16

    .line 78
    iget-object v2, v1, Llx;->b:Lgs;

    iget-wide v14, v2, Lgs;->aK:D

    iget-object v2, v1, Llx;->b:Lgs;

    iget-wide v9, v2, Lgs;->aN:D

    iget-object v2, v1, Llx;->b:Lgs;

    move-wide/from16 v18, v7

    iget-wide v7, v2, Lgs;->aK:D

    sub-double/2addr v9, v7

    mul-double/2addr v9, v12

    add-double/2addr v14, v9

    const-wide v7, 0x3fdccccccccccccdL    # 0.45

    sub-double v9, v14, v7

    .line 79
    iget-object v2, v1, Llx;->b:Lgs;

    iget-wide v7, v2, Lgs;->aL:D

    iget-object v2, v1, Llx;->b:Lgs;

    iget-wide v14, v2, Lgs;->aO:D

    iget-object v2, v1, Llx;->b:Lgs;

    move-wide/from16 v20, v9

    iget-wide v9, v2, Lgs;->aL:D

    sub-double/2addr v14, v9

    mul-double/2addr v14, v12

    add-double/2addr v7, v14

    const-wide v9, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v3, v9

    sub-double/2addr v7, v3

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v5, v2

    add-double v3, v7, v5

    move-wide/from16 v5, v18

    move-wide/from16 v9, v20

    goto :goto_1d0

    :cond_1ce
    move-wide/from16 v5, v16

    .line 82
    :goto_1d0
    iget-wide v7, v1, Llx;->aJ:D

    iget-wide v14, v1, Llx;->aM:D

    move-wide/from16 p8, v3

    iget-wide v2, v1, Llx;->aJ:D

    sub-double/2addr v14, v2

    mul-double/2addr v14, v12

    add-double/2addr v7, v14

    .line 83
    iget-wide v2, v1, Llx;->aK:D

    iget-wide v14, v1, Llx;->aN:D

    move-wide/from16 v16, v9

    iget-wide v9, v1, Llx;->aK:D

    sub-double/2addr v14, v9

    mul-double/2addr v14, v12

    add-double/2addr v2, v14

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    add-double/2addr v2, v9

    .line 84
    iget-wide v14, v1, Llx;->aL:D

    iget-wide v9, v1, Llx;->aO:D

    iget-wide v0, v1, Llx;->aL:D

    sub-double/2addr v9, v0

    mul-double/2addr v9, v12

    add-double/2addr v14, v9

    sub-double/2addr v5, v7

    double-to-float v0, v5

    float-to-double v0, v0

    sub-double v9, v16, v2

    double-to-float v2, v9

    float-to-double v2, v2

    move-wide/from16 v4, p8

    sub-double/2addr v4, v14

    double-to-float v4, v4

    float-to-double v4, v4

    const/16 v6, 0xde1

    .line 90
    invoke-static {v6}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v7, 0xb50

    .line 91
    invoke-static {v7}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/4 v8, 0x3

    .line 92
    invoke-virtual {v11, v8}, Lnw;->a(I)V

    const/4 v8, 0x0

    .line 93
    invoke-virtual {v11, v8}, Lnw;->b(I)V

    :goto_210
    const/16 v9, 0x10

    if-gt v8, v9, :cond_238

    int-to-float v10, v8

    int-to-float v12, v9

    div-float/2addr v10, v12

    float-to-double v12, v10

    mul-double v14, v0, v12

    add-double v14, p2, v14

    mul-float v16, v10, v10

    add-float v10, v16, v10

    float-to-double v9, v10

    mul-double/2addr v9, v2

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v9, v9, v16

    add-double v9, p4, v9

    const-wide/high16 v19, 0x3fd0000000000000L    # 0.25

    add-double v9, v9, v19

    mul-double/2addr v12, v4

    add-double v17, p6, v12

    move-object v12, v11

    move-wide v13, v14

    move-wide v15, v9

    .line 97
    invoke-virtual/range {v12 .. v18}, Lnw;->a(DDD)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_210

    .line 99
    :cond_238
    invoke-virtual {v11}, Lnw;->a()V

    .line 100
    invoke-static {v7}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 101
    invoke-static {v6}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    :cond_241
    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 10
    check-cast p1, Llx;

    invoke-virtual/range {p0 .. p9}, Lpl;->a(Llx;DDDFF)V

    return-void
.end method
