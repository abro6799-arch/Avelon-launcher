###### Class defpackage.dg (dg)
.class public Ldg;
.super Lbw;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lbw;-><init>()V

    .line 12
    iput p1, p0, Ldg;->a:I

    return-void
.end method


# virtual methods
.method public a(Lsn;DDDFF)V
    .registers 36

    move-object/from16 v0, p0

    .line 16
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    move-wide/from16 v1, p2

    double-to-float v1, v1

    move-wide/from16 v2, p4

    double-to-float v2, v2

    move-wide/from16 v3, p6

    double-to-float v3, v3

    .line 18
    invoke-static {v1, v2, v3}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const v1, 0x803a    # 4.5999E-41f

    .line 19
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/high16 v2, 0x3f000000    # 0.5f

    .line 20
    invoke-static {v2, v2, v2}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const-string v3, "/gui/items.png"

    .line 21
    invoke-virtual {v0, v3}, Ldg;->a(Ljava/lang/String;)V

    .line 22
    sget-object v3, Lnw;->a:Lnw;

    .line 24
    iget v4, v0, Ldg;->a:I

    rem-int/lit8 v5, v4, 0x10

    mul-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    const/high16 v6, 0x43800000    # 256.0f

    div-float/2addr v5, v6

    .line 25
    rem-int/lit8 v7, v4, 0x10

    mul-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x10

    int-to-float v7, v7

    div-float v15, v7, v6

    .line 26
    div-int/lit8 v7, v4, 0x10

    mul-int/lit8 v7, v7, 0x10

    add-int/lit8 v7, v7, 0x0

    int-to-float v7, v7

    div-float v13, v7, v6

    .line 27
    div-int/lit8 v4, v4, 0x10

    mul-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    div-float/2addr v4, v6

    .line 36
    iget-object v6, v0, Ldg;->b:Lth;

    iget v6, v6, Lth;->i:F

    const/high16 v7, 0x43340000    # 180.0f

    sub-float/2addr v7, v6

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v6, v8, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 37
    iget-object v7, v0, Ldg;->b:Lth;

    iget v7, v7, Lth;->j:F

    neg-float v7, v7

    invoke-static {v7, v8, v6, v6}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 38
    invoke-virtual {v3}, Lnw;->b()V

    .line 39
    invoke-virtual {v3, v6, v8, v6}, Lnw;->b(FFF)V

    const/high16 v6, -0x41000000    # -0.5f

    float-to-double v11, v6

    const/high16 v6, -0x41800000    # -0.25f

    float-to-double v9, v6

    const-wide/16 v16, 0x0

    float-to-double v7, v5

    float-to-double v5, v4

    move-object v4, v3

    move-wide/from16 v18, v5

    move-wide v5, v11

    move-wide/from16 v20, v7

    move-wide v7, v9

    move-wide/from16 v22, v9

    move-wide/from16 v9, v16

    move-wide/from16 v16, v11

    move-wide/from16 v11, v20

    move v1, v13

    move-wide/from16 v13, v18

    .line 40
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    float-to-double v13, v2

    const-wide/16 v9, 0x0

    float-to-double v11, v15

    move-wide v5, v13

    move-wide/from16 v7, v22

    move-wide/from16 v22, v11

    move-wide/from16 v24, v13

    move-wide/from16 v13, v18

    .line 41
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    const/high16 v2, 0x3f400000    # 0.75f

    float-to-double v13, v2

    float-to-double v1, v1

    move-wide/from16 v5, v24

    move-wide v7, v13

    move-wide/from16 v18, v13

    move-wide v13, v1

    .line 42
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move-wide/from16 v11, v20

    .line 43
    invoke-virtual/range {v4 .. v14}, Lnw;->a(DDDDD)V

    .line 44
    invoke-virtual {v3}, Lnw;->a()V

    const v1, 0x803a    # 4.5999E-41f

    .line 46
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 47
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    return-void
.end method
