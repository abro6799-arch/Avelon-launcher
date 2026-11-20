###### Class defpackage.kl (kl)
.class public Lkl;
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
.method public a(Lcf;DDDFF)V
    .registers 36

    move-object/from16 v0, p0

    .line 11
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    move-wide/from16 v1, p2

    double-to-float v1, v1

    move-wide/from16 v2, p4

    double-to-float v2, v2

    move-wide/from16 v3, p6

    double-to-float v3, v3

    .line 13
    invoke-static {v1, v2, v3}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const v1, 0x803a    # 4.5999E-41f

    .line 14
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 16
    invoke-static {v2, v2, v2}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    .line 17
    sget-object v2, Lgm;->aB:Lgm;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgm;->a(I)I

    move-result v2

    const-string v3, "/gui/items.png"

    .line 18
    invoke-virtual {v0, v3}, Lkl;->a(Ljava/lang/String;)V

    .line 19
    sget-object v3, Lnw;->a:Lnw;

    .line 21
    rem-int/lit8 v4, v2, 0x10

    mul-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v4, 0x0

    int-to-float v5, v5

    const/high16 v6, 0x43800000    # 256.0f

    div-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    div-float v15, v4, v6

    .line 23
    div-int/lit8 v2, v2, 0x10

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v4, v2, 0x0

    int-to-float v4, v4

    div-float v13, v4, v6

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    div-float/2addr v2, v6

    .line 33
    iget-object v4, v0, Lkl;->b:Lth;

    iget v4, v4, Lth;->i:F

    const/high16 v6, 0x43340000    # 180.0f

    sub-float/2addr v6, v4

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v4, v7, v4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 34
    iget-object v6, v0, Lkl;->b:Lth;

    iget v6, v6, Lth;->j:F

    neg-float v6, v6

    invoke-static {v6, v7, v4, v4}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 35
    invoke-virtual {v3}, Lnw;->b()V

    .line 36
    invoke-virtual {v3, v4, v7, v4}, Lnw;->b(FFF)V

    const/high16 v4, -0x41000000    # -0.5f

    float-to-double v11, v4

    const/high16 v4, -0x41800000    # -0.25f

    float-to-double v9, v4

    const-wide/16 v16, 0x0

    float-to-double v7, v5

    float-to-double v5, v2

    move-object v4, v3

    move-wide/from16 v18, v5

    move-wide v5, v11

    move-wide/from16 v20, v7

    move-wide v7, v9

    move-wide/from16 v22, v9

    move-wide/from16 v9, v16

    move-wide/from16 v16, v11

    move-wide/from16 v11, v20

    move v2, v13

    move-wide/from16 v13, v18

    .line 37
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    const/high16 v4, 0x3f000000    # 0.5f

    float-to-double v13, v4

    const-wide/16 v9, 0x0

    float-to-double v11, v15

    move-object v4, v3

    move-wide v5, v13

    move-wide/from16 v7, v22

    move-wide/from16 v22, v11

    move-wide/from16 v24, v13

    move-wide/from16 v13, v18

    .line 38
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    const/high16 v4, 0x3f400000    # 0.75f

    float-to-double v13, v4

    float-to-double v11, v2

    move-object v4, v3

    move-wide/from16 v5, v24

    move-wide v7, v13

    move-wide/from16 v18, v11

    move-wide/from16 v11, v22

    move-wide/from16 v22, v13

    move-wide/from16 v13, v18

    .line 39
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    move-wide/from16 v5, v16

    move-wide/from16 v7, v22

    move-wide/from16 v11, v20

    .line 40
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    .line 41
    invoke-virtual {v3}, Lnw;->a()V

    .line 43
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 44
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method

.method public bridge synthetic a(Lsn;DDDFF)V
    .registers 10

    .line 9
    check-cast p1, Lcf;

    invoke-virtual/range {p0 .. p9}, Lkl;->a(Lcf;DDDFF)V

    return-void
.end method
