###### Class defpackage.gl (gl)
.class public Lgl;
.super Lxw;
.source "SourceFile"


# instance fields
.field private a:I

.field private o:I

.field private p:Lji;


# direct methods
.method public constructor <init>(Lji;Lfd;DDD)V
    .registers 24

    move-object v14, p0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    .line 15
    invoke-direct/range {v0 .. v13}, Lxw;-><init>(Lfd;DDDDDD)V

    const/4 v0, 0x0

    .line 10
    iput v0, v14, Lgl;->a:I

    .line 11
    iput v0, v14, Lgl;->o:I

    move-object/from16 v0, p1

    .line 16
    iput-object v0, v14, Lgl;->p:Lji;

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, v14, Lgl;->aR:D

    iput-wide v0, v14, Lgl;->aQ:D

    iput-wide v0, v14, Lgl;->aP:D

    const/16 v0, 0xc8

    .line 18
    iput v0, v14, Lgl;->o:I

    return-void
.end method


# virtual methods
.method public a(Lnw;FFFFFF)V
    .registers 35

    move-object/from16 v0, p0

    .line 22
    iget v1, v0, Lgl;->a:I

    int-to-float v1, v1

    add-float v1, v1, p2

    iget v2, v0, Lgl;->o:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v1

    if-lez v3, :cond_17

    move v2, v1

    :cond_17
    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v1

    const/16 v1, 0xb50

    .line 29
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 32
    iget-wide v3, v0, Lgl;->aM:D

    sget-wide v5, Lgl;->l:D

    sub-double/2addr v3, v5

    double-to-float v3, v3

    .line 33
    iget-wide v4, v0, Lgl;->aN:D

    sget-wide v6, Lgl;->m:D

    sub-double/2addr v4, v6

    double-to-float v4, v4

    .line 34
    iget-wide v5, v0, Lgl;->aO:D

    sget-wide v7, Lgl;->n:D

    sub-double/2addr v5, v7

    double-to-float v5, v5

    .line 36
    iget-object v6, v0, Lgl;->aI:Lfd;

    iget-wide v7, v0, Lgl;->aM:D

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v7

    iget-wide v8, v0, Lgl;->aN:D

    invoke-static {v8, v9}, Lin;->b(D)I

    move-result v8

    iget-wide v9, v0, Lgl;->aO:D

    invoke-static {v9, v10}, Lin;->b(D)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lfd;->c(III)F

    move-result v6

    .line 38
    iget-object v7, v0, Lgl;->p:Lji;

    const-string v8, "/misc/footprint.png"

    invoke-virtual {v7, v8}, Lji;->b(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lji;->b(I)V

    const/16 v7, 0xbe2

    .line 39
    invoke-static {v7}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v8, 0x302

    const/16 v9, 0x303

    .line 40
    invoke-static {v8, v9}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 42
    invoke-virtual/range {p1 .. p1}, Lnw;->b()V

    move-object/from16 v8, p1

    .line 43
    invoke-virtual {v8, v6, v6, v6, v2}, Lnw;->a(FFFF)V

    const/high16 v2, 0x3e000000    # 0.125f

    sub-float v6, v3, v2

    float-to-double v13, v6

    float-to-double v11, v4

    add-float v4, v5, v2

    float-to-double v9, v4

    const-wide/16 v17, 0x0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v21, v9

    move-object/from16 v10, p1

    move-wide/from16 v23, v11

    move-wide v11, v13

    move-wide/from16 v25, v13

    move-wide/from16 v13, v23

    move-wide/from16 v15, v21

    .line 44
    invoke-virtual/range {v10 .. v20}, Lnw;->a(DDDDD)V

    add-float/2addr v3, v2

    float-to-double v3, v3

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move-wide v11, v3

    .line 45
    invoke-virtual/range {v10 .. v20}, Lnw;->a(DDDDD)V

    sub-float/2addr v5, v2

    float-to-double v5, v5

    const-wide/16 v19, 0x0

    move-wide v15, v5

    .line 46
    invoke-virtual/range {v10 .. v20}, Lnw;->a(DDDDD)V

    const-wide/16 v17, 0x0

    move-wide/from16 v11, v25

    .line 47
    invoke-virtual/range {v10 .. v20}, Lnw;->a(DDDDD)V

    .line 48
    invoke-virtual/range {p1 .. p1}, Lnw;->a()V

    .line 50
    invoke-static {v7}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 51
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    return-void
.end method

.method public c_()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public w_()V
    .registers 3

    .line 55
    iget v0, p0, Lgl;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgl;->a:I

    .line 56
    iget v1, p0, Lgl;->o:I

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lgl;->K()V

    :cond_d
    return-void
.end method
