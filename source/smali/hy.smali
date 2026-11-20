###### Class defpackage.hy (hy)
.class public Lhy;
.super Lje;
.source "SourceFile"


# instance fields
.field private b:Lcv;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lje;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;)V
    .registers 3

    .line 73
    new-instance v0, Lcv;

    invoke-direct {v0, p1}, Lcv;-><init>(Lxp;)V

    iput-object v0, p0, Lhy;->b:Lcv;

    return-void
.end method

.method public bridge synthetic a(Low;DDDF)V
    .registers 9

    .line 18
    check-cast p1, Luk;

    invoke-virtual/range {p0 .. p8}, Lhy;->a(Luk;DDDF)V

    return-void
.end method

.method public a(Luk;DDDF)V
    .registers 24

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    .line 26
    sget-object v3, Luu;->m:[Luu;

    invoke-virtual/range {p1 .. p1}, Luk;->a()I

    move-result v4

    aget-object v3, v3, v4

    if-eqz v3, :cond_12a

    .line 27
    invoke-virtual {v1, v2}, Luk;->a(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_12a

    .line 28
    sget-object v4, Lnw;->a:Lnw;

    const-string v5, "/terrain.png"

    .line 30
    invoke-virtual {p0, v5}, Lhy;->a(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lu;->a()V

    const/16 v5, 0x302

    const/16 v6, 0x303

    .line 34
    invoke-static {v5, v6}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    const/16 v5, 0xbe2

    .line 35
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v5, 0xb44

    .line 36
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 37
    invoke-static {}, Lnet/minecraft/client/Minecraft;->v()Z

    move-result v5

    if-eqz v5, :cond_40

    const/16 v5, 0x1d01

    .line 38
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    goto :goto_45

    :cond_40
    const/16 v5, 0x1d00

    .line 40
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    .line 43
    :goto_45
    invoke-virtual {v4}, Lnw;->b()V

    move-wide/from16 v5, p2

    double-to-float v12, v5

    .line 45
    iget v5, v1, Luk;->e:I

    int-to-float v5, v5

    sub-float v5, v12, v5

    invoke-virtual {v1, v2}, Luk;->b(F)F

    move-result v6

    add-float/2addr v5, v6

    float-to-double v6, v5

    move-wide/from16 v8, p4

    double-to-float v13, v8

    iget v5, v1, Luk;->f:I

    int-to-float v5, v5

    sub-float v5, v13, v5

    invoke-virtual {v1, v2}, Luk;->c(F)F

    move-result v8

    add-float/2addr v5, v8

    float-to-double v8, v5

    move-wide/from16 v10, p6

    double-to-float v14, v10

    iget v5, v1, Luk;->g:I

    int-to-float v5, v5

    sub-float v5, v14, v5

    invoke-virtual {v1, v2}, Luk;->d(F)F

    move-result v10

    add-float/2addr v5, v10

    float-to-double v10, v5

    move-object v5, v4

    invoke-virtual/range {v5 .. v11}, Lnw;->b(DDD)V

    const/4 v5, 0x1

    .line 46
    invoke-virtual {v4, v5, v5, v5}, Lnw;->a(III)V

    .line 47
    sget-object v6, Luu;->ab:Lh;

    const/high16 v7, 0x3f000000    # 0.5f

    if-ne v3, v6, :cond_a2

    invoke-virtual {v1, v2}, Luk;->a(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a2

    .line 49
    iget-object v2, v0, Lhy;->b:Lcv;

    iget v5, v1, Luk;->e:I

    iget v6, v1, Luk;->f:I

    iget v1, v1, Luk;->g:I

    const/4 v7, 0x0

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v1

    move/from16 p6, v7

    invoke-virtual/range {p1 .. p6}, Lcv;->a(Luu;IIIZ)V

    goto/16 :goto_113

    .line 50
    :cond_a2
    invoke-virtual/range {p1 .. p1}, Luk;->k()Z

    move-result v6

    if-eqz v6, :cond_108

    invoke-virtual/range {p1 .. p1}, Luk;->b()Z

    move-result v6

    if-nez v6, :cond_108

    .line 52
    sget-object v6, Luu;->ab:Lh;

    move-object v8, v3

    check-cast v8, Ljq;

    invoke-virtual {v8}, Ljq;->i()I

    move-result v8

    invoke-virtual {v6, v8}, Lh;->a_(I)V

    .line 53
    iget-object v6, v0, Lhy;->b:Lcv;

    sget-object v8, Luu;->ab:Lh;

    iget v9, v1, Luk;->e:I

    iget v10, v1, Luk;->f:I

    iget v11, v1, Luk;->g:I

    invoke-virtual {v1, v2}, Luk;->a(F)F

    move-result v2

    cmpg-float v2, v2, v7

    if-gez v2, :cond_cd

    goto :goto_ce

    :cond_cd
    const/4 v5, 0x0

    :goto_ce
    move-object/from16 p2, v6

    move-object/from16 p3, v8

    move/from16 p4, v9

    move/from16 p5, v10

    move/from16 p6, v11

    move/from16 p7, v5

    invoke-virtual/range {p2 .. p7}, Lcv;->a(Luu;IIIZ)V

    .line 54
    sget-object v2, Luu;->ab:Lh;

    invoke-virtual {v2}, Lh;->a()V

    .line 56
    iget v2, v1, Luk;->e:I

    int-to-float v2, v2

    sub-float/2addr v12, v2

    float-to-double v5, v12

    iget v2, v1, Luk;->f:I

    int-to-float v2, v2

    sub-float/2addr v13, v2

    float-to-double v7, v13

    iget v2, v1, Luk;->g:I

    int-to-float v2, v2

    sub-float/2addr v14, v2

    float-to-double v9, v14

    move-object/from16 p2, v4

    move-wide/from16 p3, v5

    move-wide/from16 p5, v7

    move-wide/from16 p7, v9

    invoke-virtual/range {p2 .. p8}, Lnw;->b(DDD)V

    .line 57
    iget-object v2, v0, Lhy;->b:Lcv;

    iget v5, v1, Luk;->e:I

    iget v6, v1, Luk;->f:I

    iget v1, v1, Luk;->g:I

    invoke-virtual {v2, v3, v5, v6, v1}, Lcv;->d(Luu;III)V

    goto :goto_113

    .line 59
    :cond_108
    iget-object v2, v0, Lhy;->b:Lcv;

    iget v5, v1, Luk;->e:I

    iget v6, v1, Luk;->f:I

    iget v1, v1, Luk;->g:I

    invoke-virtual {v2, v3, v5, v6, v1}, Lcv;->a(Luu;III)V

    :goto_113
    const-wide/16 v1, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 p1, v4

    move-wide/from16 p2, v1

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    .line 61
    invoke-virtual/range {p1 .. p7}, Lnw;->b(DDD)V

    .line 62
    invoke-virtual {v4}, Lnw;->a()V

    .line 64
    invoke-static {}, Lu;->b()V

    :cond_12a
    return-void
.end method
