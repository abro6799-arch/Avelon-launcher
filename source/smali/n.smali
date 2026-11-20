###### Class defpackage.n (n)
.class public Ln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpm;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Ljava/util/List;

.field private T:[Ltg;

.field public a:Ljava/util/List;

.field b:[I

.field c:Ljava/nio/IntBuffer;

.field d:I

.field e:I

.field f:D

.field g:D

.field h:D

.field public i:F

.field j:I

.field private k:Lfd;

.field private l:Lji;

.field private m:Ljava/util/List;

.field private n:[Ldk;

.field private o:[Ldk;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Lnet/minecraft/client/Minecraft;

.field private u:Lcv;

.field private v:Ljava/nio/IntBuffer;

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;Lji;)V
    .registers 26

    move-object/from16 v0, p0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ln;->a:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ln;->m:Ljava/util/List;

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, v0, Ln;->w:Z

    .line 68
    iput v1, v0, Ln;->x:I

    const/4 v2, -0x1

    .line 211
    iput v2, v0, Ln;->H:I

    const/4 v2, 0x2

    .line 279
    iput v2, v0, Ln;->I:I

    const v3, 0xc350

    new-array v3, v3, [I

    .line 360
    iput-object v3, v0, Ln;->b:[I

    const/16 v3, 0x40

    .line 361
    invoke-static {v3}, Lge;->d(I)Ljava/nio/IntBuffer;

    move-result-object v3

    iput-object v3, v0, Ln;->c:Ljava/nio/IntBuffer;

    .line 575
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Ln;->S:Ljava/util/List;

    .line 633
    new-instance v3, Ltg;

    invoke-direct {v3}, Ltg;-><init>()V

    new-instance v4, Ltg;

    invoke-direct {v4}, Ltg;-><init>()V

    new-instance v5, Ltg;

    invoke-direct {v5}, Ltg;-><init>()V

    new-instance v6, Ltg;

    invoke-direct {v6}, Ltg;-><init>()V

    filled-new-array {v3, v4, v5, v6}, [Ltg;

    move-result-object v3

    iput-object v3, v0, Ln;->T:[Ltg;

    .line 637
    iput v1, v0, Ln;->d:I

    const/4 v3, 0x1

    .line 638
    invoke-static {v3}, Lge;->a(I)I

    move-result v4

    iput v4, v0, Ln;->e:I

    const-wide v4, -0x3f3c788000000000L    # -9999.0

    .line 1021
    iput-wide v4, v0, Ln;->f:D

    .line 1022
    iput-wide v4, v0, Ln;->g:D

    .line 1023
    iput-wide v4, v0, Ln;->h:D

    .line 1357
    iput v1, v0, Ln;->j:I

    move-object/from16 v4, p1

    .line 74
    iput-object v4, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    move-object/from16 v5, p2

    .line 75
    iput-object v5, v0, Ln;->l:Lji;

    const/high16 v5, 0xc0000

    .line 77
    invoke-static {v5}, Lge;->a(I)I

    move-result v5

    iput v5, v0, Ln;->s:I

    .line 79
    invoke-virtual/range {p1 .. p1}, Lnet/minecraft/client/Minecraft;->n()Lcx;

    move-result-object v4

    invoke-virtual {v4}, Lcx;->a()Z

    move-result v4

    iput-boolean v4, v0, Ln;->w:Z

    if-eqz v4, :cond_9f

    .line 81
    iget-object v4, v0, Ln;->c:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    const/high16 v4, 0x40000

    .line 87
    invoke-static {v4}, Lge;->d(I)Ljava/nio/IntBuffer;

    move-result-object v5

    iput-object v5, v0, Ln;->v:Ljava/nio/IntBuffer;

    .line 88
    invoke-virtual {v5}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 89
    iget-object v5, v0, Ln;->v:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    iget-object v1, v0, Ln;->v:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    .line 91
    iget-object v1, v0, Ln;->v:Ljava/nio/IntBuffer;

    invoke-static {v1}, Lorg/lwjgl/opengl/ARBOcclusionQuery;->glGenQueriesARB(Ljava/nio/IntBuffer;)V

    :cond_9f
    const/4 v1, 0x3

    .line 95
    invoke-static {v1}, Lge;->a(I)I

    move-result v1

    iput v1, v0, Ln;->y:I

    .line 97
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 98
    iget v1, v0, Ln;->y:I

    const/16 v4, 0x1300

    invoke-static {v1, v4}, Lorg/lwjgl/opengl/GL11;->glNewList(II)V

    .line 99
    invoke-direct/range {p0 .. p0}, Ln;->g()V

    .line 100
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glEndList()V

    .line 101
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 103
    sget-object v1, Lnw;->a:Lnw;

    .line 104
    iget v5, v0, Ln;->y:I

    add-int/2addr v5, v3

    iput v5, v0, Ln;->z:I

    .line 105
    invoke-static {v5, v4}, Lorg/lwjgl/opengl/GL11;->glNewList(II)V

    const/16 v3, -0x180

    move v12, v3

    :goto_c6
    const/16 v13, 0x180

    if-gt v12, v13, :cond_104

    move v14, v3

    :goto_cb
    if-gt v14, v13, :cond_101

    .line 112
    invoke-virtual {v1}, Lnw;->b()V

    add-int/lit8 v5, v12, 0x0

    int-to-double v10, v5

    const/high16 v5, 0x41800000    # 16.0f

    float-to-double v8, v5

    add-int/lit8 v5, v14, 0x0

    int-to-double v6, v5

    move-object v5, v1

    move-wide v15, v6

    move-wide v6, v10

    move-wide/from16 v17, v8

    move-wide/from16 v19, v10

    move-wide v10, v15

    .line 113
    invoke-virtual/range {v5 .. v11}, Lnw;->a(DDD)V

    add-int/lit8 v5, v12, 0x40

    int-to-double v10, v5

    move-object v5, v1

    move-wide v6, v10

    move-wide/from16 v21, v10

    move-wide v10, v15

    .line 114
    invoke-virtual/range {v5 .. v11}, Lnw;->a(DDD)V

    add-int/lit8 v14, v14, 0x40

    int-to-double v10, v14

    move-wide/from16 v6, v21

    move-wide v15, v10

    .line 115
    invoke-virtual/range {v5 .. v11}, Lnw;->a(DDD)V

    move-wide/from16 v6, v19

    .line 116
    invoke-virtual/range {v5 .. v11}, Lnw;->a(DDD)V

    .line 117
    invoke-virtual {v1}, Lnw;->a()V

    goto :goto_cb

    :cond_101
    add-int/lit8 v12, v12, 0x40

    goto :goto_c6

    .line 120
    :cond_104
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glEndList()V

    .line 122
    iget v5, v0, Ln;->y:I

    add-int/2addr v5, v2

    iput v5, v0, Ln;->A:I

    .line 123
    invoke-static {v5, v4}, Lorg/lwjgl/opengl/GL11;->glNewList(II)V

    .line 125
    invoke-virtual {v1}, Lnw;->b()V

    move v2, v3

    :goto_113
    if-gt v2, v13, :cond_14d

    move v4, v3

    :goto_116
    if-gt v4, v13, :cond_14a

    add-int/lit8 v5, v2, 0x40

    int-to-double v14, v5

    const/high16 v5, -0x3e800000    # -16.0f

    float-to-double v10, v5

    add-int/lit8 v5, v4, 0x0

    int-to-double v8, v5

    move-object v5, v1

    move-wide v6, v14

    move-wide/from16 v16, v8

    move-wide v8, v10

    move-wide/from16 v18, v10

    move-wide/from16 v10, v16

    .line 128
    invoke-virtual/range {v5 .. v11}, Lnw;->a(DDD)V

    add-int/lit8 v5, v2, 0x0

    int-to-double v10, v5

    move-object v5, v1

    move-wide v6, v10

    move-wide/from16 v8, v18

    move-wide/from16 v20, v10

    move-wide/from16 v10, v16

    .line 129
    invoke-virtual/range {v5 .. v11}, Lnw;->a(DDD)V

    add-int/lit8 v4, v4, 0x40

    int-to-double v10, v4

    move-wide/from16 v6, v20

    move-wide/from16 v16, v10

    .line 130
    invoke-virtual/range {v5 .. v11}, Lnw;->a(DDD)V

    move-wide v6, v14

    .line 131
    invoke-virtual/range {v5 .. v11}, Lnw;->a(DDD)V

    goto :goto_116

    :cond_14a
    add-int/lit8 v2, v2, 0x40

    goto :goto_113

    .line 134
    :cond_14d
    invoke-virtual {v1}, Lnw;->a()V

    .line 135
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glEndList()V

    return-void
.end method

.method private a(IIID)I
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p4

    .line 580
    iget-object v4, v0, Ln;->S:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move/from16 v5, p1

    move/from16 v6, p2

    const/4 v7, 0x0

    :goto_10
    if-ge v5, v6, :cond_89

    if-nez v1, :cond_53

    .line 585
    iget v8, v0, Ln;->M:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Ln;->M:I

    .line 586
    iget-object v8, v0, Ln;->n:[Ldk;

    aget-object v8, v8, v5

    iget-object v8, v8, Ldk;->p:[Z

    aget-boolean v8, v8, v1

    if-eqz v8, :cond_2b

    iget v8, v0, Ln;->Q:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Ln;->Q:I

    goto :goto_53

    .line 587
    :cond_2b
    iget-object v8, v0, Ln;->n:[Ldk;

    aget-object v8, v8, v5

    iget-boolean v8, v8, Ldk;->o:Z

    if-nez v8, :cond_3a

    iget v8, v0, Ln;->N:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Ln;->N:I

    goto :goto_53

    .line 588
    :cond_3a
    iget-boolean v8, v0, Ln;->w:Z

    if-eqz v8, :cond_4d

    iget-object v8, v0, Ln;->n:[Ldk;

    aget-object v8, v8, v5

    iget-boolean v8, v8, Ldk;->x:Z

    if-nez v8, :cond_4d

    iget v8, v0, Ln;->O:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Ln;->O:I

    goto :goto_53

    .line 589
    :cond_4d
    iget v8, v0, Ln;->P:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Ln;->P:I

    .line 593
    :cond_53
    :goto_53
    iget-object v8, v0, Ln;->n:[Ldk;

    aget-object v8, v8, v5

    iget-object v8, v8, Ldk;->p:[Z

    aget-boolean v8, v8, v1

    if-nez v8, :cond_86

    iget-object v8, v0, Ln;->n:[Ldk;

    aget-object v8, v8, v5

    iget-boolean v8, v8, Ldk;->o:Z

    if-eqz v8, :cond_86

    iget-boolean v8, v0, Ln;->w:Z

    if-eqz v8, :cond_71

    iget-object v8, v0, Ln;->n:[Ldk;

    aget-object v8, v8, v5

    iget-boolean v8, v8, Ldk;->x:Z

    if-eqz v8, :cond_86

    .line 594
    :cond_71
    iget-object v8, v0, Ln;->n:[Ldk;

    aget-object v8, v8, v5

    invoke-virtual {v8, v1}, Ldk;->a(I)I

    move-result v8

    if-ltz v8, :cond_86

    .line 596
    iget-object v8, v0, Ln;->S:Ljava/util/List;

    iget-object v9, v0, Ln;->n:[Ldk;

    aget-object v9, v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 602
    :cond_89
    iget-object v5, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 603
    iget-wide v8, v5, Lls;->bl:D

    iget-wide v10, v5, Lls;->aM:D

    iget-wide v12, v5, Lls;->bl:D

    sub-double/2addr v10, v12

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    .line 604
    iget-wide v10, v5, Lls;->bm:D

    iget-wide v12, v5, Lls;->aN:D

    iget-wide v14, v5, Lls;->bm:D

    sub-double/2addr v12, v14

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    .line 605
    iget-wide v12, v5, Lls;->bn:D

    iget-wide v14, v5, Lls;->aO:D

    iget-wide v5, v5, Lls;->bn:D

    sub-double/2addr v14, v5

    mul-double/2addr v14, v2

    add-double v5, v12, v14

    const/4 v12, 0x0

    .line 608
    :goto_aa
    iget-object v13, v0, Ln;->T:[Ltg;

    array-length v14, v13

    if-ge v12, v14, :cond_b7

    .line 609
    aget-object v13, v13, v12

    invoke-virtual {v13}, Ltg;->b()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_aa

    :cond_b7
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 611
    :goto_b9
    iget-object v12, v0, Ln;->S:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v15, v12, :cond_128

    .line 612
    iget-object v12, v0, Ln;->S:Ljava/util/List;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ldk;

    const/4 v12, -0x1

    const/4 v4, 0x0

    :goto_cc
    if-ge v4, v14, :cond_ec

    move/from16 v16, v15

    .line 616
    iget-object v15, v0, Ln;->T:[Ltg;

    aget-object v15, v15, v4

    move/from16 p1, v7

    iget v7, v13, Ldk;->i:I

    iget v2, v13, Ldk;->j:I

    iget v3, v13, Ldk;->k:I

    invoke-virtual {v15, v7, v2, v3}, Ltg;->a(III)Z

    move-result v2

    if-eqz v2, :cond_e3

    move v12, v4

    :cond_e3
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, p1

    move-wide/from16 v2, p4

    move/from16 v15, v16

    goto :goto_cc

    :cond_ec
    move/from16 p1, v7

    move/from16 v16, v15

    if-gez v12, :cond_10f

    add-int/lit8 v2, v14, 0x1

    .line 622
    iget-object v3, v0, Ln;->T:[Ltg;

    aget-object v12, v3, v14

    iget v3, v13, Ldk;->i:I

    iget v4, v13, Ldk;->j:I

    iget v15, v13, Ldk;->k:I

    move-object v7, v13

    move v13, v3

    move v3, v14

    move v14, v4

    move/from16 v4, v16

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v5

    invoke-virtual/range {v12 .. v21}, Ltg;->a(IIIDDD)V

    move v14, v3

    goto :goto_115

    :cond_10f
    move-object v7, v13

    move v3, v14

    move/from16 v4, v16

    move v2, v3

    move v14, v12

    .line 625
    :goto_115
    iget-object v3, v0, Ln;->T:[Ltg;

    aget-object v3, v3, v14

    invoke-virtual {v7, v1}, Ldk;->a(I)I

    move-result v7

    invoke-virtual {v3, v7}, Ltg;->a(I)V

    add-int/lit8 v15, v4, 0x1

    move/from16 v7, p1

    move v14, v2

    move-wide/from16 v2, p4

    goto :goto_b9

    :cond_128
    move/from16 p1, v7

    .line 628
    invoke-virtual {v0, v1, v2, v3}, Ln;->a(ID)V

    return p1
.end method

.method private a(II)V
    .registers 7

    :goto_0
    if-ge p1, p2, :cond_51

    .line 561
    iget-object v0, p0, Ln;->n:[Ldk;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Ldk;->y:Z

    if-eqz v0, :cond_4e

    .line 562
    iget-object v0, p0, Ln;->c:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 563
    iget-object v0, p0, Ln;->n:[Ldk;

    aget-object v0, v0, p1

    iget v0, v0, Ldk;->z:I

    const v1, 0x8867

    iget-object v2, p0, Ln;->c:Ljava/nio/IntBuffer;

    invoke-static {v0, v1, v2}, Lorg/lwjgl/opengl/ARBOcclusionQuery;->glGetQueryObjectuARB(IILjava/nio/IntBuffer;)V

    .line 565
    iget-object v0, p0, Ln;->c:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    if-eqz v0, :cond_4e

    .line 566
    iget-object v0, p0, Ln;->n:[Ldk;

    aget-object v0, v0, p1

    iput-boolean v1, v0, Ldk;->y:Z

    .line 567
    iget-object v0, p0, Ln;->c:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 568
    iget-object v0, p0, Ln;->n:[Ldk;

    aget-object v0, v0, p1

    iget v0, v0, Ldk;->z:I

    const v2, 0x8866

    iget-object v3, p0, Ln;->c:Ljava/nio/IntBuffer;

    invoke-static {v0, v2, v3}, Lorg/lwjgl/opengl/ARBOcclusionQuery;->glGetQueryObjectuARB(IILjava/nio/IntBuffer;)V

    .line 569
    iget-object v0, p0, Ln;->n:[Ldk;

    aget-object v0, v0, p1

    iget-object v2, p0, Ln;->c:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v1, 0x1

    :cond_4c
    iput-boolean v1, v0, Ldk;->x:Z

    :cond_4e
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_51
    return-void
.end method

.method private a(Leq;)V
    .registers 11

    .line 1284
    sget-object v7, Lnw;->a:Lnw;

    const/4 v8, 0x3

    .line 1286
    invoke-virtual {v7, v8}, Lnw;->a(I)V

    .line 1287
    iget-wide v1, p1, Leq;->a:D

    iget-wide v3, p1, Leq;->b:D

    iget-wide v5, p1, Leq;->c:D

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1288
    iget-wide v1, p1, Leq;->d:D

    iget-wide v3, p1, Leq;->b:D

    iget-wide v5, p1, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1289
    iget-wide v1, p1, Leq;->d:D

    iget-wide v3, p1, Leq;->b:D

    iget-wide v5, p1, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1290
    iget-wide v1, p1, Leq;->a:D

    iget-wide v3, p1, Leq;->b:D

    iget-wide v5, p1, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1291
    iget-wide v1, p1, Leq;->a:D

    iget-wide v3, p1, Leq;->b:D

    iget-wide v5, p1, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1292
    invoke-virtual {v7}, Lnw;->a()V

    .line 1294
    invoke-virtual {v7, v8}, Lnw;->a(I)V

    .line 1295
    iget-wide v1, p1, Leq;->a:D

    iget-wide v3, p1, Leq;->e:D

    iget-wide v5, p1, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1296
    iget-wide v1, p1, Leq;->d:D

    iget-wide v3, p1, Leq;->e:D

    iget-wide v5, p1, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1297
    iget-wide v1, p1, Leq;->d:D

    iget-wide v3, p1, Leq;->e:D

    iget-wide v5, p1, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1298
    iget-wide v1, p1, Leq;->a:D

    iget-wide v3, p1, Leq;->e:D

    iget-wide v5, p1, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1299
    iget-wide v1, p1, Leq;->a:D

    iget-wide v3, p1, Leq;->e:D

    iget-wide v5, p1, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1300
    invoke-virtual {v7}, Lnw;->a()V

    const/4 v0, 0x1

    .line 1302
    invoke-virtual {v7, v0}, Lnw;->a(I)V

    .line 1303
    iget-wide v1, p1, Leq;->a:D

    iget-wide v3, p1, Leq;->b:D

    iget-wide v5, p1, Leq;->c:D

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1304
    iget-wide v1, p1, Leq;->a:D

    iget-wide v3, p1, Leq;->e:D

    iget-wide v5, p1, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1305
    iget-wide v1, p1, Leq;->d:D

    iget-wide v3, p1, Leq;->b:D

    iget-wide v5, p1, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1306
    iget-wide v1, p1, Leq;->d:D

    iget-wide v3, p1, Leq;->e:D

    iget-wide v5, p1, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1307
    iget-wide v1, p1, Leq;->d:D

    iget-wide v3, p1, Leq;->b:D

    iget-wide v5, p1, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1308
    iget-wide v1, p1, Leq;->d:D

    iget-wide v3, p1, Leq;->e:D

    iget-wide v5, p1, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1309
    iget-wide v1, p1, Leq;->a:D

    iget-wide v3, p1, Leq;->b:D

    iget-wide v5, p1, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1310
    iget-wide v1, p1, Leq;->a:D

    iget-wide v3, p1, Leq;->e:D

    iget-wide v5, p1, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 1311
    invoke-virtual {v7}, Lnw;->a()V

    return-void
.end method

.method private b(III)V
    .registers 15

    add-int/lit8 p1, p1, -0x8

    add-int/lit8 p3, p3, -0x8

    const p2, 0x7fffffff

    .line 370
    iput p2, p0, Ln;->B:I

    .line 371
    iput p2, p0, Ln;->C:I

    .line 372
    iput p2, p0, Ln;->D:I

    const/high16 p2, -0x80000000

    .line 373
    iput p2, p0, Ln;->E:I

    .line 374
    iput p2, p0, Ln;->F:I

    .line 375
    iput p2, p0, Ln;->G:I

    .line 377
    iget p2, p0, Ln;->p:I

    mul-int/lit8 p2, p2, 0x10

    .line 378
    div-int/lit8 v0, p2, 0x2

    const/4 v1, 0x0

    move v2, v1

    .line 382
    :goto_1d
    iget v3, p0, Ln;->p:I

    if-ge v2, v3, :cond_8e

    mul-int/lit8 v3, v2, 0x10

    add-int v4, v3, v0

    sub-int/2addr v4, p1

    if-gez v4, :cond_2b

    add-int/lit8 v5, p2, -0x1

    sub-int/2addr v4, v5

    .line 387
    :cond_2b
    div-int/2addr v4, p2

    mul-int/2addr v4, p2

    sub-int/2addr v3, v4

    .line 392
    iget v4, p0, Ln;->B:I

    if-ge v3, v4, :cond_34

    iput v3, p0, Ln;->B:I

    .line 393
    :cond_34
    iget v4, p0, Ln;->E:I

    if-le v3, v4, :cond_3a

    iput v3, p0, Ln;->E:I

    :cond_3a
    move v4, v1

    .line 395
    :goto_3b
    iget v5, p0, Ln;->r:I

    if-ge v4, v5, :cond_8b

    mul-int/lit8 v5, v4, 0x10

    add-int v6, v5, v0

    sub-int/2addr v6, p3

    if-gez v6, :cond_49

    add-int/lit8 v7, p2, -0x1

    sub-int/2addr v6, v7

    .line 399
    :cond_49
    div-int/2addr v6, p2

    mul-int/2addr v6, p2

    sub-int/2addr v5, v6

    .line 405
    iget v6, p0, Ln;->D:I

    if-ge v5, v6, :cond_52

    iput v5, p0, Ln;->D:I

    .line 406
    :cond_52
    iget v6, p0, Ln;->G:I

    if-le v5, v6, :cond_58

    iput v5, p0, Ln;->G:I

    :cond_58
    move v6, v1

    .line 408
    :goto_59
    iget v7, p0, Ln;->q:I

    if-ge v6, v7, :cond_88

    mul-int/lit8 v8, v6, 0x10

    .line 410
    iget v9, p0, Ln;->C:I

    if-ge v8, v9, :cond_65

    iput v8, p0, Ln;->C:I

    .line 411
    :cond_65
    iget v9, p0, Ln;->F:I

    if-le v8, v9, :cond_6b

    iput v8, p0, Ln;->F:I

    .line 413
    :cond_6b
    iget-object v9, p0, Ln;->o:[Ldk;

    mul-int/2addr v7, v4

    add-int/2addr v7, v6

    iget v10, p0, Ln;->p:I

    mul-int/2addr v7, v10

    add-int/2addr v7, v2

    aget-object v7, v9, v7

    .line 414
    iget-boolean v9, v7, Ldk;->u:Z

    .line 415
    invoke-virtual {v7, v3, v8, v5}, Ldk;->a(III)V

    if-nez v9, :cond_85

    .line 416
    iget-boolean v8, v7, Ldk;->u:Z

    if-eqz v8, :cond_85

    .line 417
    iget-object v8, p0, Ln;->m:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_85
    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_8e
    return-void
.end method

.method private g()V
    .registers 37

    .line 139
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2a5a

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 140
    sget-object v1, Lnw;->a:Lnw;

    .line 141
    invoke-virtual {v1}, Lnw;->b()V

    const/4 v2, 0x0

    move v10, v2

    :goto_e
    const/16 v3, 0x5dc

    if-ge v10, v3, :cond_da

    .line 143
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v3, v5

    float-to-double v6, v3

    .line 144
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v4

    sub-float/2addr v3, v5

    float-to-double v8, v3

    .line 145
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v4

    sub-float/2addr v3, v5

    float-to-double v3, v3

    .line 146
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float/2addr v5, v11

    add-float/2addr v5, v11

    float-to-double v11, v5

    mul-double v13, v6, v6

    mul-double v15, v8, v8

    add-double/2addr v13, v15

    mul-double v15, v3, v3

    add-double/2addr v13, v15

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v13, v15

    if-gez v5, :cond_d6

    const-wide v17, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v5, v13, v17

    if-lez v5, :cond_d6

    .line 149
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    div-double/2addr v15, v13

    mul-double/2addr v6, v15

    mul-double/2addr v8, v15

    mul-double/2addr v3, v15

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double v15, v6, v13

    mul-double v17, v8, v13

    mul-double/2addr v13, v3

    .line 157
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v19

    .line 158
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    .line 159
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double/2addr v6, v6

    mul-double/2addr v3, v3

    add-double/2addr v6, v3

    .line 161
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 162
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    .line 163
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    .line 165
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    .line 166
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    .line 167
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    move v3, v2

    :goto_8f
    const/4 v4, 0x4

    if-ge v3, v4, :cond_d6

    and-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    mul-double/2addr v4, v11

    add-int/lit8 v31, v3, 0x1

    and-int/lit8 v3, v31, 0x2

    add-int/lit8 v3, v3, -0x1

    int-to-double v6, v3

    mul-double/2addr v6, v11

    mul-double v8, v4, v29

    mul-double v32, v6, v27

    sub-double v8, v8, v32

    mul-double v6, v6, v29

    mul-double v4, v4, v27

    add-double/2addr v6, v4

    mul-double v3, v8, v23

    const-wide/16 v32, 0x0

    mul-double v34, v25, v32

    add-double v3, v3, v34

    mul-double v32, v32, v23

    mul-double v8, v8, v25

    sub-double v32, v32, v8

    mul-double v8, v32, v21

    mul-double v34, v6, v19

    sub-double v8, v8, v34

    mul-double v6, v6, v21

    mul-double v32, v32, v19

    add-double v6, v6, v32

    add-double/2addr v8, v15

    add-double v32, v17, v3

    add-double v34, v13, v6

    move-object v3, v1

    move-wide v4, v8

    move-wide/from16 v6, v32

    move-wide/from16 v8, v34

    .line 186
    invoke-virtual/range {v3 .. v9}, Lnw;->a(DDD)V

    move/from16 v3, v31

    goto :goto_8f

    :cond_d6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_e

    .line 190
    :cond_da
    invoke-virtual {v1}, Lnw;->a()V

    return-void
.end method


# virtual methods
.method public a(Lls;ID)I
    .registers 27

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    move v0, v8

    :goto_6
    const/16 v1, 0xa

    const/4 v9, 0x1

    if-ge v0, v1, :cond_2a

    .line 428
    iget v1, v6, Ln;->R:I

    add-int/2addr v1, v9

    iget-object v2, v6, Ln;->o:[Ldk;

    array-length v3, v2

    rem-int/2addr v1, v3

    iput v1, v6, Ln;->R:I

    .line 429
    aget-object v1, v2, v1

    .line 430
    iget-boolean v2, v1, Ldk;->u:Z

    if-eqz v2, :cond_27

    iget-object v2, v6, Ln;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 431
    iget-object v2, v6, Ln;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 436
    :cond_2a
    iget-object v0, v6, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v0, v0, Lkv;->e:I

    iget v1, v6, Ln;->H:I

    if-eq v0, v1, :cond_37

    .line 437
    invoke-virtual/range {p0 .. p0}, Ln;->a()V

    :cond_37
    if-nez p2, :cond_43

    .line 440
    iput v8, v6, Ln;->M:I

    .line 441
    iput v8, v6, Ln;->N:I

    .line 442
    iput v8, v6, Ln;->O:I

    .line 443
    iput v8, v6, Ln;->P:I

    .line 444
    iput v8, v6, Ln;->Q:I

    .line 447
    :cond_43
    iget-wide v0, v7, Lls;->bl:D

    iget-wide v2, v7, Lls;->aM:D

    iget-wide v4, v7, Lls;->bl:D

    sub-double/2addr v2, v4

    mul-double v2, v2, p3

    add-double v10, v0, v2

    .line 448
    iget-wide v0, v7, Lls;->bm:D

    iget-wide v2, v7, Lls;->aN:D

    iget-wide v4, v7, Lls;->bm:D

    sub-double/2addr v2, v4

    mul-double v2, v2, p3

    add-double v12, v0, v2

    .line 449
    iget-wide v0, v7, Lls;->bn:D

    iget-wide v2, v7, Lls;->aO:D

    iget-wide v4, v7, Lls;->bn:D

    sub-double/2addr v2, v4

    mul-double v2, v2, p3

    add-double v14, v0, v2

    .line 451
    iget-wide v0, v7, Lls;->aM:D

    iget-wide v2, v6, Ln;->f:D

    sub-double/2addr v0, v2

    .line 452
    iget-wide v2, v7, Lls;->aN:D

    iget-wide v4, v6, Ln;->g:D

    sub-double/2addr v2, v4

    .line 453
    iget-wide v4, v7, Lls;->aO:D

    move-wide/from16 v16, v10

    iget-wide v9, v6, Ln;->h:D

    sub-double/2addr v4, v9

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_ab

    .line 455
    iget-wide v0, v7, Lls;->aM:D

    iput-wide v0, v6, Ln;->f:D

    .line 456
    iget-wide v0, v7, Lls;->aN:D

    iput-wide v0, v6, Ln;->g:D

    .line 457
    iget-wide v0, v7, Lls;->aO:D

    iput-wide v0, v6, Ln;->h:D

    .line 459
    iget-wide v0, v7, Lls;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iget-wide v1, v7, Lls;->aN:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    iget-wide v2, v7, Lls;->aO:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    invoke-direct {v6, v0, v1, v2}, Ln;->b(III)V

    .line 460
    iget-object v0, v6, Ln;->n:[Ldk;

    new-instance v1, Ljo;

    invoke-direct {v1, v7}, Ljo;-><init>(Lsn;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 465
    :cond_ab
    invoke-static {}, Lu;->a()V

    .line 468
    iget-boolean v0, v6, Ln;->w:Z

    if-eqz v0, :cond_212

    iget-object v0, v6, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v0, v0, Lkv;->h:Z

    if-eqz v0, :cond_212

    iget-object v0, v6, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v0, v0, Lkv;->g:Z

    if-nez v0, :cond_212

    if-nez p2, :cond_212

    const/16 v9, 0x10

    .line 471
    invoke-direct {v6, v8, v9}, Ln;->a(II)V

    move v0, v8

    :goto_ca
    if-ge v0, v9, :cond_d6

    .line 473
    iget-object v1, v6, Ln;->n:[Ldk;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ldk;->x:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_ca

    :cond_d6
    const/4 v1, 0x0

    const/16 v2, 0x10

    move-object/from16 v0, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    .line 476
    invoke-direct/range {v0 .. v5}, Ln;->a(IIID)I

    move-result v0

    add-int/2addr v0, v8

    move v1, v9

    move v9, v0

    :goto_e6
    mul-int/lit8 v0, v1, 0x2

    .line 481
    iget-object v2, v6, Ln;->n:[Ldk;

    array-length v3, v2

    if-le v0, v3, :cond_ee

    array-length v0, v2

    :cond_ee
    move v10, v0

    const/16 v0, 0xde1

    .line 483
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v2, 0xb50

    .line 484
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v2, 0xbc0

    .line 485
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v3, 0xb60

    .line 486
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 487
    invoke-static {v8, v8, v8, v8}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    .line 488
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    .line 490
    invoke-direct {v6, v1, v10}, Ln;->a(II)V

    .line 491
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const/4 v4, 0x0

    move v5, v1

    move v11, v4

    move/from16 v18, v11

    move/from16 v19, v18

    :goto_116
    if-ge v5, v10, :cond_1c4

    .line 496
    iget-object v3, v6, Ln;->n:[Ldk;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ldk;->e()Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 497
    iget-object v3, v6, Ln;->n:[Ldk;

    aget-object v3, v3, v5

    iput-boolean v8, v3, Ldk;->o:Z

    :cond_128
    move/from16 v20, v1

    move/from16 v21, v9

    goto/16 :goto_1b5

    .line 500
    :cond_12e
    iget-object v3, v6, Ln;->n:[Ldk;

    aget-object v3, v3, v5

    iget-boolean v3, v3, Ldk;->o:Z

    if-nez v3, :cond_13d

    .line 501
    iget-object v3, v6, Ln;->n:[Ldk;

    aget-object v3, v3, v5

    const/4 v2, 0x1

    iput-boolean v2, v3, Ldk;->x:Z

    .line 504
    :cond_13d
    iget-object v2, v6, Ln;->n:[Ldk;

    aget-object v2, v2, v5

    iget-boolean v2, v2, Ldk;->o:Z

    if-eqz v2, :cond_128

    iget-object v2, v6, Ln;->n:[Ldk;

    aget-object v2, v2, v5

    iget-boolean v2, v2, Ldk;->y:Z

    if-nez v2, :cond_128

    .line 505
    iget-object v2, v6, Ln;->n:[Ldk;

    aget-object v2, v2, v5

    invoke-virtual {v2, v7}, Ldk;->a(Lsn;)F

    move-result v2

    invoke-static {v2}, Lin;->c(F)F

    move-result v2

    const/high16 v3, 0x43000000    # 128.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 509
    iget v3, v6, Ln;->x:I

    rem-int/2addr v3, v2

    rem-int v2, v5, v2

    if-ne v3, v2, :cond_128

    .line 510
    iget-object v2, v6, Ln;->n:[Ldk;

    aget-object v2, v2, v5

    .line 511
    iget v3, v2, Ldk;->i:I

    move/from16 v20, v1

    int-to-double v0, v3

    sub-double v0, v0, v16

    double-to-float v0, v0

    .line 512
    iget v1, v2, Ldk;->j:I

    move/from16 v21, v9

    int-to-double v8, v1

    sub-double/2addr v8, v12

    double-to-float v1, v8

    .line 513
    iget v2, v2, Ldk;->k:I

    int-to-double v2, v2

    sub-double/2addr v2, v14

    double-to-float v2, v2

    sub-float/2addr v0, v11

    sub-float v1, v1, v18

    sub-float v2, v2, v19

    cmpl-float v3, v0, v4

    if-nez v3, :cond_190

    cmpl-float v3, v1, v4

    if-nez v3, :cond_190

    cmpl-float v3, v2, v4

    if-eqz v3, :cond_198

    .line 519
    :cond_190
    invoke-static {v0, v1, v2}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    add-float/2addr v11, v0

    add-float v18, v18, v1

    add-float v19, v19, v2

    .line 526
    :cond_198
    iget-object v0, v6, Ln;->n:[Ldk;

    aget-object v0, v0, v5

    iget v0, v0, Ldk;->z:I

    const v1, 0x8914

    invoke-static {v1, v0}, Lorg/lwjgl/opengl/ARBOcclusionQuery;->glBeginQueryARB(II)V

    .line 527
    iget-object v0, v6, Ln;->n:[Ldk;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ldk;->d()V

    .line 528
    invoke-static {v1}, Lorg/lwjgl/opengl/ARBOcclusionQuery;->glEndQueryARB(I)V

    .line 529
    iget-object v0, v6, Ln;->n:[Ldk;

    aget-object v0, v0, v5

    const/4 v1, 0x1

    iput-boolean v1, v0, Ldk;->y:Z

    :goto_1b5
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v20

    move/from16 v9, v21

    const/16 v0, 0xde1

    const/16 v2, 0xbc0

    const/16 v3, 0xb60

    const/4 v8, 0x0

    goto/16 :goto_116

    :cond_1c4
    move/from16 v20, v1

    move/from16 v21, v9

    .line 533
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 536
    iget-object v0, v6, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v0, v0, Lkv;->g:Z

    if-eqz v0, :cond_1e3

    .line 537
    sget v0, Lpx;->b:I

    if-nez v0, :cond_1dd

    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-static {v0, v8, v8, v8}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    goto :goto_1e7

    :cond_1dd
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 538
    invoke-static {v8, v0, v0, v8}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    goto :goto_1e7

    :cond_1e3
    const/4 v8, 0x1

    .line 540
    invoke-static {v8, v8, v8, v8}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    .line 543
    :goto_1e7
    invoke-static {v8}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    const/16 v0, 0xde1

    .line 544
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0xbc0

    .line 545
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0xb60

    .line 546
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v10

    move/from16 v3, p2

    move-wide/from16 v4, p3

    .line 548
    invoke-direct/range {v0 .. v5}, Ln;->a(IIID)I

    move-result v0

    add-int v9, v21, v0

    .line 550
    iget-object v0, v6, Ln;->n:[Ldk;

    array-length v0, v0

    if-lt v10, v0, :cond_20e

    goto :goto_223

    :cond_20e
    move v1, v10

    const/4 v8, 0x0

    goto/16 :goto_e6

    :cond_212
    const/4 v1, 0x0

    .line 553
    iget-object v0, v6, Ln;->n:[Ldk;

    array-length v2, v0

    move-object/from16 v0, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Ln;->a(IIID)I

    move-result v0

    const/4 v1, 0x0

    add-int v9, v1, v0

    :goto_223
    return v9
.end method

.method public a()V
    .registers 20

    move-object/from16 v0, p0

    .line 214
    sget-object v1, Luu;->L:Lbk;

    iget-object v2, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v2, v2, Lkv;->j:Z

    invoke-virtual {v1, v2}, Lbk;->a(Z)V

    .line 215
    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget v1, v1, Lkv;->e:I

    iput v1, v0, Ln;->H:I

    .line 216
    iget-object v1, v0, Ln;->o:[Ldk;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    move v1, v2

    .line 217
    :goto_1b
    iget-object v3, v0, Ln;->o:[Ldk;

    array-length v4, v3

    if-ge v1, v4, :cond_28

    .line 218
    aget-object v3, v3, v1

    invoke-virtual {v3}, Ldk;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 222
    :cond_28
    iget v1, v0, Ln;->H:I

    rsub-int/lit8 v1, v1, 0x3

    const/16 v3, 0x40

    shl-int v1, v3, v1

    const/16 v3, 0x190

    if-le v1, v3, :cond_35

    move v1, v3

    .line 227
    :cond_35
    div-int/lit8 v1, v1, 0x10

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Ln;->p:I

    const/16 v4, 0x8

    .line 228
    iput v4, v0, Ln;->q:I

    .line 229
    iput v1, v0, Ln;->r:I

    mul-int/lit8 v5, v1, 0x8

    mul-int/2addr v5, v1

    .line 231
    new-array v5, v5, [Ldk;

    iput-object v5, v0, Ln;->o:[Ldk;

    mul-int/lit8 v5, v1, 0x8

    mul-int/2addr v5, v1

    .line 232
    new-array v5, v5, [Ldk;

    iput-object v5, v0, Ln;->n:[Ldk;

    .line 236
    iput v2, v0, Ln;->B:I

    .line 237
    iput v2, v0, Ln;->C:I

    .line 238
    iput v2, v0, Ln;->D:I

    .line 239
    iput v1, v0, Ln;->E:I

    .line 240
    iput v4, v0, Ln;->F:I

    .line 241
    iput v1, v0, Ln;->G:I

    move v1, v2

    .line 242
    :goto_5c
    iget-object v4, v0, Ln;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_71

    .line 243
    iget-object v4, v0, Ln;->m:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldk;

    iput-boolean v2, v4, Ldk;->u:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 245
    :cond_71
    iget-object v1, v0, Ln;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 247
    iget-object v1, v0, Ln;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v2

    move v4, v1

    move v5, v4

    .line 249
    :goto_7e
    iget v6, v0, Ln;->p:I

    if-ge v1, v6, :cond_140

    move v6, v2

    .line 250
    :goto_83
    iget v7, v0, Ln;->q:I

    if-ge v6, v7, :cond_13c

    move v7, v2

    .line 251
    :goto_88
    iget v8, v0, Ln;->r:I

    if-ge v7, v8, :cond_138

    .line 252
    iget-object v8, v0, Ln;->o:[Ldk;

    iget v9, v0, Ln;->q:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v6

    iget v10, v0, Ln;->p:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v1

    new-instance v18, Ldk;

    iget-object v11, v0, Ln;->k:Lfd;

    iget-object v12, v0, Ln;->a:Ljava/util/List;

    mul-int/lit8 v13, v1, 0x10

    mul-int/lit8 v14, v6, 0x10

    mul-int/lit8 v15, v7, 0x10

    const/16 v16, 0x10

    iget v10, v0, Ln;->s:I

    add-int v17, v10, v4

    move-object/from16 v10, v18

    invoke-direct/range {v10 .. v17}, Ldk;-><init>(Lfd;Ljava/util/List;IIIII)V

    aput-object v18, v8, v9

    .line 253
    iget-boolean v8, v0, Ln;->w:Z

    if-eqz v8, :cond_c7

    .line 254
    iget-object v8, v0, Ln;->o:[Ldk;

    iget v9, v0, Ln;->q:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v6

    iget v10, v0, Ln;->p:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v1

    aget-object v8, v8, v9

    iget-object v9, v0, Ln;->v:Ljava/nio/IntBuffer;

    invoke-virtual {v9, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    iput v9, v8, Ldk;->z:I

    .line 256
    :cond_c7
    iget-object v8, v0, Ln;->o:[Ldk;

    iget v9, v0, Ln;->q:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v6

    iget v10, v0, Ln;->p:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v1

    aget-object v8, v8, v9

    iput-boolean v2, v8, Ldk;->y:Z

    .line 257
    iget-object v8, v0, Ln;->o:[Ldk;

    iget v9, v0, Ln;->q:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v6

    iget v10, v0, Ln;->p:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v1

    aget-object v8, v8, v9

    iput-boolean v3, v8, Ldk;->x:Z

    .line 258
    iget-object v8, v0, Ln;->o:[Ldk;

    iget v9, v0, Ln;->q:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v6

    iget v10, v0, Ln;->p:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v1

    aget-object v8, v8, v9

    iput-boolean v3, v8, Ldk;->o:Z

    .line 259
    iget-object v8, v0, Ln;->o:[Ldk;

    iget v9, v0, Ln;->q:I

    mul-int/2addr v9, v7

    add-int/2addr v9, v6

    iget v10, v0, Ln;->p:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v1

    aget-object v8, v8, v9

    add-int/lit8 v9, v5, 0x1

    iput v5, v8, Ldk;->w:I

    .line 260
    iget-object v5, v0, Ln;->o:[Ldk;

    iget v8, v0, Ln;->q:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v6

    iget v10, v0, Ln;->p:I

    mul-int/2addr v8, v10

    add-int/2addr v8, v1

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ldk;->f()V

    .line 261
    iget-object v5, v0, Ln;->n:[Ldk;

    iget v8, v0, Ln;->q:I

    mul-int v10, v7, v8

    add-int/2addr v10, v6

    iget v11, v0, Ln;->p:I

    mul-int/2addr v10, v11

    add-int/2addr v10, v1

    iget-object v12, v0, Ln;->o:[Ldk;

    mul-int v13, v7, v8

    add-int/2addr v13, v6

    mul-int/2addr v13, v11

    add-int/2addr v13, v1

    aget-object v13, v12, v13

    aput-object v13, v5, v10

    .line 262
    iget-object v5, v0, Ln;->m:Ljava/util/List;

    mul-int/2addr v8, v7

    add-int/2addr v8, v6

    mul-int/2addr v8, v11

    add-int/2addr v8, v1

    aget-object v8, v12, v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto/16 :goto_88

    :cond_138
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_83

    :cond_13c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7e

    .line 269
    :cond_140
    iget-object v1, v0, Ln;->k:Lfd;

    if-eqz v1, :cond_169

    .line 270
    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->i:Lls;

    if-eqz v1, :cond_169

    .line 272
    iget-wide v2, v1, Lsn;->aM:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    iget-wide v3, v1, Lsn;->aN:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    iget-wide v4, v1, Lsn;->aO:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Ln;->b(III)V

    .line 273
    iget-object v2, v0, Ln;->n:[Ldk;

    new-instance v3, Ljo;

    invoke-direct {v3, v1}, Ljo;-><init>(Lsn;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_169
    const/4 v1, 0x2

    .line 276
    iput v1, v0, Ln;->I:I

    return-void
.end method

.method public a(F)V
    .registers 33

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 651
    iget-object v2, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v2, v2, Lfd;->t:Lxa;

    iget-boolean v2, v2, Lxa;->c:Z

    if-eqz v2, :cond_f

    return-void

    :cond_f
    const/16 v2, 0xde1

    .line 653
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 655
    iget-object v3, v0, Ln;->k:Lfd;

    iget-object v4, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->i:Lls;

    invoke-virtual {v3, v4, v1}, Lfd;->a(Lsn;F)Lbt;

    move-result-object v3

    .line 656
    iget-wide v4, v3, Lbt;->a:D

    double-to-float v4, v4

    .line 657
    iget-wide v5, v3, Lbt;->b:D

    double-to-float v5, v5

    .line 658
    iget-wide v6, v3, Lbt;->c:D

    double-to-float v3, v6

    .line 660
    iget-object v6, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v6, v6, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v6, v6, Lkv;->g:Z

    const/high16 v7, 0x41300000    # 11.0f

    const/high16 v8, 0x426c0000    # 59.0f

    const/high16 v9, 0x41f00000    # 30.0f

    const/high16 v10, 0x428c0000    # 70.0f

    const/high16 v11, 0x42c80000    # 100.0f

    if-eqz v6, :cond_49

    mul-float/2addr v4, v9

    mul-float v6, v5, v8

    add-float/2addr v6, v4

    mul-float v12, v3, v7

    add-float/2addr v6, v12

    div-float/2addr v6, v11

    mul-float/2addr v5, v10

    add-float/2addr v5, v4

    div-float/2addr v5, v11

    mul-float/2addr v3, v10

    add-float/2addr v4, v3

    div-float v3, v4, v11

    move v4, v6

    .line 669
    :cond_49
    invoke-static {v4, v5, v3}, Lorg/lwjgl/opengl/GL11;->glColor3f(FFF)V

    .line 671
    sget-object v6, Lnw;->a:Lnw;

    const/16 v19, 0x0

    .line 673
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    const/16 v23, 0xb60

    .line 675
    invoke-static/range {v23 .. v23}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 676
    invoke-static {v4, v5, v3}, Lorg/lwjgl/opengl/GL11;->glColor3f(FFF)V

    .line 677
    iget v12, v0, Ln;->z:I

    invoke-static {v12}, Lorg/lwjgl/opengl/GL11;->glCallList(I)V

    .line 679
    invoke-static/range {v23 .. v23}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v24, 0xbc0

    .line 680
    invoke-static/range {v24 .. v24}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v25, 0xbe2

    .line 681
    invoke-static/range {v25 .. v25}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v12, 0x303

    const/16 v15, 0x302

    .line 682
    invoke-static {v15, v12}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 683
    invoke-static {}, Lu;->a()V

    .line 686
    iget-object v12, v0, Ln;->k:Lfd;

    iget-object v12, v12, Lfd;->t:Lxa;

    iget-object v13, v0, Ln;->k:Lfd;

    invoke-virtual {v13, v1}, Lfd;->b(F)F

    move-result v13

    invoke-virtual {v12, v13, v1}, Lxa;->a(FF)[F

    move-result-object v20

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-eqz v20, :cond_14b

    .line 688
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v16, 0x1d01

    .line 689
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    .line 691
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const/high16 v15, 0x42b40000    # 90.0f

    .line 693
    invoke-static {v15, v14, v12, v12}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 694
    iget-object v15, v0, Ln;->k:Lfd;

    invoke-virtual {v15, v1}, Lfd;->b(F)F

    move-result v15

    const/high16 v17, 0x3f000000    # 0.5f

    cmpl-float v15, v15, v17

    if-lez v15, :cond_aa

    const/high16 v15, 0x43340000    # 180.0f

    goto :goto_ab

    :cond_aa
    move v15, v12

    .line 695
    :goto_ab
    invoke-static {v15, v12, v12, v14}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 697
    aget v15, v20, v19

    .line 698
    aget v17, v20, v13

    const/16 v21, 0x2

    .line 699
    aget v18, v20, v21

    .line 700
    iget-object v12, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v12, v12, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v12, v12, Lkv;->g:Z

    if-eqz v12, :cond_d4

    mul-float/2addr v15, v9

    mul-float v8, v8, v17

    add-float/2addr v8, v15

    mul-float v7, v7, v18

    add-float/2addr v8, v7

    div-float v7, v8, v11

    mul-float v17, v17, v10

    add-float v17, v15, v17

    div-float v17, v17, v11

    mul-float v18, v18, v10

    add-float v15, v15, v18

    div-float v18, v15, v11

    move v15, v7

    :cond_d4
    move/from16 v7, v17

    move/from16 v8, v18

    const/4 v10, 0x6

    .line 710
    invoke-virtual {v6, v10}, Lnw;->a(I)V

    const/4 v10, 0x3

    .line 711
    aget v11, v20, v10

    invoke-virtual {v6, v15, v7, v8, v11}, Lnw;->a(FFFF)V

    const-wide/16 v7, 0x0

    const-wide/high16 v17, 0x4059000000000000L    # 100.0

    const-wide/16 v26, 0x0

    const/4 v11, 0x0

    move-object v12, v6

    move v15, v13

    move v9, v14

    move-wide v13, v7

    move v8, v15

    const/16 v7, 0x302

    move-wide/from16 v15, v17

    move-wide/from16 v17, v26

    .line 713
    invoke-virtual/range {v12 .. v18}, Lnw;->a(DDD)V

    .line 715
    aget v12, v20, v19

    aget v13, v20, v8

    aget v14, v20, v21

    invoke-virtual {v6, v12, v13, v14, v11}, Lnw;->a(FFFF)V

    move/from16 v15, v19

    :goto_102
    const/16 v12, 0x10

    if-gt v15, v12, :cond_13b

    int-to-float v13, v15

    const v14, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    int-to-float v12, v12

    div-float/2addr v13, v12

    .line 718
    invoke-static {v13}, Lin;->a(F)F

    move-result v12

    .line 719
    invoke-static {v13}, Lin;->b(F)F

    move-result v13

    const/high16 v14, 0x42f00000    # 120.0f

    mul-float/2addr v12, v14

    float-to-double v7, v12

    mul-float/2addr v14, v13

    move/from16 v28, v3

    float-to-double v2, v14

    neg-float v12, v13

    const/high16 v13, 0x42200000    # 40.0f

    mul-float/2addr v12, v13

    .line 720
    aget v13, v20, v10

    mul-float/2addr v12, v13

    float-to-double v13, v12

    move-object v12, v6

    move-wide/from16 v17, v13

    move-wide v13, v7

    move v7, v15

    move-wide v15, v2

    invoke-virtual/range {v12 .. v18}, Lnw;->a(DDD)V

    add-int/lit8 v15, v7, 0x1

    move/from16 v3, v28

    const/16 v2, 0xde1

    const/16 v7, 0x302

    const/4 v8, 0x1

    goto :goto_102

    :cond_13b
    move/from16 v28, v3

    .line 722
    invoke-virtual {v6}, Lnw;->a()V

    .line 724
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    const/16 v2, 0x1d00

    .line 725
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    const/16 v2, 0xde1

    goto :goto_14f

    :cond_14b
    move/from16 v28, v3

    move v11, v12

    move v9, v14

    .line 729
    :goto_14f
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v2, 0x302

    const/4 v3, 0x1

    .line 730
    invoke-static {v2, v3}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 731
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 733
    iget-object v2, v0, Ln;->k:Lfd;

    invoke-virtual {v2, v1}, Lfd;->g(F)F

    move-result v2

    sub-float v2, v9, v2

    .line 737
    invoke-static {v9, v9, v9, v2}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 738
    invoke-static {v11, v11, v11}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 739
    invoke-static {v11, v11, v11, v9}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 740
    iget-object v3, v0, Ln;->k:Lfd;

    invoke-virtual {v3, v1}, Lfd;->b(F)F

    move-result v3

    const/high16 v7, 0x43b40000    # 360.0f

    mul-float/2addr v3, v7

    invoke-static {v3, v9, v11, v11}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 743
    iget-object v3, v0, Ln;->l:Lji;

    const-string v7, "/terrain/sun.png"

    invoke-virtual {v3, v7}, Lji;->b(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0xde1

    invoke-static {v7, v3}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 744
    invoke-virtual {v6}, Lnw;->b()V

    const/high16 v3, -0x3e100000    # -30.0f

    float-to-double v7, v3

    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object v12, v6

    move-wide v13, v7

    move-wide/from16 v17, v7

    .line 745
    invoke-virtual/range {v12 .. v22}, Lnw;->a(DDDDD)V

    const/high16 v3, 0x41f00000    # 30.0f

    float-to-double v13, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v29, v13

    .line 746
    invoke-virtual/range {v12 .. v22}, Lnw;->a(DDDDD)V

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v17, v29

    .line 747
    invoke-virtual/range {v12 .. v22}, Lnw;->a(DDDDD)V

    const-wide/16 v19, 0x0

    move-wide v13, v7

    .line 748
    invoke-virtual/range {v12 .. v22}, Lnw;->a(DDDDD)V

    .line 749
    invoke-virtual {v6}, Lnw;->a()V

    .line 752
    iget-object v3, v0, Ln;->l:Lji;

    const-string v7, "/terrain/moon.png"

    invoke-virtual {v3, v7}, Lji;->b(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0xde1

    invoke-static {v7, v3}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 753
    invoke-virtual {v6}, Lnw;->b()V

    const/high16 v3, -0x3e600000    # -20.0f

    float-to-double v7, v3

    const-wide/high16 v15, -0x3fa7000000000000L    # -100.0

    const/high16 v3, 0x41a00000    # 20.0f

    float-to-double v13, v3

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v29, v13

    move-wide v13, v7

    move-wide/from16 v17, v29

    .line 754
    invoke-virtual/range {v12 .. v22}, Lnw;->a(DDDDD)V

    const-wide/16 v19, 0x0

    move-wide/from16 v13, v29

    .line 755
    invoke-virtual/range {v12 .. v22}, Lnw;->a(DDDDD)V

    const-wide/16 v21, 0x0

    move-wide/from16 v17, v7

    .line 756
    invoke-virtual/range {v12 .. v22}, Lnw;->a(DDDDD)V

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide v13, v7

    .line 757
    invoke-virtual/range {v12 .. v22}, Lnw;->a(DDDDD)V

    .line 758
    invoke-virtual {v6}, Lnw;->a()V

    const/16 v3, 0xde1

    .line 760
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 761
    iget-object v3, v0, Ln;->k:Lfd;

    invoke-virtual {v3, v1}, Lfd;->e(F)F

    move-result v1

    mul-float/2addr v1, v2

    cmpl-float v2, v1, v11

    if-lez v2, :cond_203

    .line 763
    invoke-static {v1, v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 764
    iget v1, v0, Ln;->y:I

    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glCallList(I)V

    .line 766
    :cond_203
    invoke-static {v9, v9, v9, v9}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 768
    invoke-static/range {v25 .. v25}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 769
    invoke-static/range {v24 .. v24}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 770
    invoke-static/range {v23 .. v23}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 772
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 773
    iget-object v1, v0, Ln;->k:Lfd;

    iget-object v1, v1, Lfd;->t:Lxa;

    invoke-virtual {v1}, Lxa;->c()Z

    move-result v1

    if-eqz v1, :cond_233

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v1

    const v2, 0x3d23d70a    # 0.04f

    add-float/2addr v4, v2

    mul-float/2addr v5, v1

    add-float/2addr v5, v2

    const v1, 0x3f19999a    # 0.6f

    mul-float v3, v28, v1

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v3, v1

    .line 774
    invoke-static {v4, v5, v3}, Lorg/lwjgl/opengl/GL11;->glColor3f(FFF)V

    goto :goto_238

    :cond_233
    move/from16 v3, v28

    .line 777
    invoke-static {v4, v5, v3}, Lorg/lwjgl/opengl/GL11;->glColor3f(FFF)V

    :goto_238
    const/16 v1, 0xde1

    .line 779
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 780
    iget v2, v0, Ln;->A:I

    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glCallList(I)V

    .line 781
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/4 v1, 0x1

    .line 783
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    return-void
.end method

.method public a(ID)V
    .registers 4

    const/4 p1, 0x0

    .line 641
    :goto_1
    iget-object p2, p0, Ln;->T:[Ltg;

    array-length p3, p2

    if-ge p1, p3, :cond_e

    .line 642
    aget-object p2, p2, p1

    invoke-virtual {p2}, Ltg;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public a(III)V
    .registers 11

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v3, p3, -0x1

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v6, p3, 0x1

    move-object v0, p0

    .line 1350
    invoke-virtual/range {v0 .. v6}, Ln;->a(IIIIII)V

    return-void
.end method

.method public a(IIIIII)V
    .registers 13

    const/16 v0, 0x10

    .line 1315
    invoke-static {p1, v0}, Lin;->a(II)I

    move-result p1

    .line 1316
    invoke-static {p2, v0}, Lin;->a(II)I

    move-result p2

    .line 1317
    invoke-static {p3, v0}, Lin;->a(II)I

    move-result p3

    .line 1318
    invoke-static {p4, v0}, Lin;->a(II)I

    move-result p4

    .line 1319
    invoke-static {p5, v0}, Lin;->a(II)I

    move-result p5

    .line 1320
    invoke-static {p6, v0}, Lin;->a(II)I

    move-result p6

    :goto_1a
    if-gt p1, p4, :cond_58

    .line 1329
    iget v0, p0, Ln;->p:I

    rem-int v1, p1, v0

    if-gez v1, :cond_23

    add-int/2addr v1, v0

    :cond_23
    move v0, p2

    :goto_24
    if-gt v0, p5, :cond_55

    .line 1332
    iget v2, p0, Ln;->q:I

    rem-int v3, v0, v2

    if-gez v3, :cond_2d

    add-int/2addr v3, v2

    :cond_2d
    move v2, p3

    :goto_2e
    if-gt v2, p6, :cond_52

    .line 1335
    iget v4, p0, Ln;->r:I

    rem-int v5, v2, v4

    if-gez v5, :cond_37

    add-int/2addr v5, v4

    .line 1338
    :cond_37
    iget v4, p0, Ln;->q:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    iget v4, p0, Ln;->p:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v1

    .line 1339
    iget-object v4, p0, Ln;->o:[Ldk;

    aget-object v4, v4, v5

    .line 1340
    iget-boolean v5, v4, Ldk;->u:Z

    if-nez v5, :cond_4f

    .line 1341
    iget-object v5, p0, Ln;->m:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1342
    invoke-virtual {v4}, Ldk;->f()V

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_55
    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :cond_58
    return-void
.end method

.method public a(IIILow;)V
    .registers 5

    return-void
.end method

.method public a(Lbt;Lyn;F)V
    .registers 18

    move-object v0, p0

    move-object v1, p1

    move/from16 v9, p3

    .line 285
    iget v2, v0, Ln;->I:I

    if-lez v2, :cond_d

    add-int/lit8 v2, v2, -0x1

    .line 286
    iput v2, v0, Ln;->I:I

    return-void

    .line 289
    :cond_d
    sget-object v2, Lll;->a:Lll;

    iget-object v3, v0, Ln;->k:Lfd;

    iget-object v4, v0, Ln;->l:Lji;

    iget-object v5, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object v6, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v6, v6, Lnet/minecraft/client/Minecraft;->i:Lls;

    move/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lll;->a(Lfd;Lji;Lsj;Lls;F)V

    .line 290
    sget-object v2, Lth;->a:Lth;

    iget-object v3, v0, Ln;->k:Lfd;

    iget-object v4, v0, Ln;->l:Lji;

    iget-object v5, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object v6, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v6, v6, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-object v7, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v7, v7, Lnet/minecraft/client/Minecraft;->z:Lkv;

    move/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lth;->a(Lfd;Lji;Lsj;Lls;Lkv;F)V

    const/4 v2, 0x0

    .line 294
    iput v2, v0, Ln;->J:I

    .line 295
    iput v2, v0, Ln;->K:I

    .line 296
    iput v2, v0, Ln;->L:I

    .line 298
    iget-object v3, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->i:Lls;

    .line 299
    iget-wide v4, v3, Lsn;->bl:D

    iget-wide v6, v3, Lsn;->aM:D

    iget-wide v10, v3, Lsn;->bl:D

    sub-double/2addr v6, v10

    float-to-double v10, v9

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    sput-wide v4, Lth;->b:D

    .line 300
    iget-wide v4, v3, Lsn;->bm:D

    iget-wide v6, v3, Lsn;->aN:D

    iget-wide v12, v3, Lsn;->bm:D

    sub-double/2addr v6, v12

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    sput-wide v4, Lth;->c:D

    .line 301
    iget-wide v4, v3, Lsn;->bn:D

    iget-wide v6, v3, Lsn;->aO:D

    iget-wide v12, v3, Lsn;->bn:D

    sub-double/2addr v6, v12

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    sput-wide v4, Lth;->d:D

    .line 302
    iget-wide v4, v3, Lsn;->bl:D

    iget-wide v6, v3, Lsn;->aM:D

    iget-wide v12, v3, Lsn;->bl:D

    sub-double/2addr v6, v12

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    sput-wide v4, Lll;->b:D

    .line 303
    iget-wide v4, v3, Lsn;->bm:D

    iget-wide v6, v3, Lsn;->aN:D

    iget-wide v12, v3, Lsn;->bm:D

    sub-double/2addr v6, v12

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    sput-wide v4, Lll;->c:D

    .line 304
    iget-wide v4, v3, Lsn;->bn:D

    iget-wide v6, v3, Lsn;->aO:D

    iget-wide v12, v3, Lsn;->bn:D

    sub-double/2addr v6, v12

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    sput-wide v4, Lll;->d:D

    .line 306
    iget-object v3, v0, Ln;->k:Lfd;

    invoke-virtual {v3}, Lfd;->o()Ljava/util/List;

    move-result-object v3

    .line 307
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v0, Ln;->J:I

    move v4, v2

    .line 308
    :goto_92
    iget-object v5, v0, Ln;->k:Lfd;

    iget-object v5, v5, Lfd;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_ba

    .line 309
    iget-object v5, v0, Ln;->k:Lfd;

    iget-object v5, v5, Lfd;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsn;

    .line 310
    iget v6, v0, Ln;->K:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Ln;->K:I

    .line 311
    invoke-virtual {v5, p1}, Lsn;->a(Lbt;)Z

    move-result v6

    if-eqz v6, :cond_b7

    sget-object v6, Lth;->a:Lth;

    invoke-virtual {v6, v5, v9}, Lth;->a(Lsn;F)V

    :cond_b7
    add-int/lit8 v4, v4, 0x1

    goto :goto_92

    :cond_ba
    move v4, v2

    .line 314
    :goto_bb
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_12c

    .line 315
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsn;

    .line 317
    invoke-virtual {v5, p1}, Lsn;->a(Lbt;)Z

    move-result v6

    if-eqz v6, :cond_127

    iget-boolean v6, v5, Lsn;->bM:Z

    if-nez v6, :cond_dc

    iget-object v6, v5, Lsn;->aW:Leq;

    move-object/from16 v7, p2

    invoke-interface {v7, v6}, Lyn;->a(Leq;)Z

    move-result v6

    if-eqz v6, :cond_129

    goto :goto_de

    :cond_dc
    move-object/from16 v7, p2

    .line 318
    :goto_de
    iget-object v6, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v6, v6, Lnet/minecraft/client/Minecraft;->i:Lls;

    if-ne v5, v6, :cond_f7

    iget-object v6, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v6, v6, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v6, v6, Lkv;->A:Z

    if-nez v6, :cond_f7

    iget-object v6, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v6, v6, Lnet/minecraft/client/Minecraft;->i:Lls;

    invoke-virtual {v6}, Lls;->N()Z

    move-result v6

    if-nez v6, :cond_f7

    goto :goto_129

    .line 319
    :cond_f7
    iget-wide v10, v5, Lsn;->aN:D

    invoke-static {v10, v11}, Lin;->b(D)I

    move-result v6

    if-gez v6, :cond_100

    move v6, v2

    :cond_100
    const/16 v8, 0x80

    if-lt v6, v8, :cond_106

    const/16 v6, 0x7f

    .line 322
    :cond_106
    iget-object v8, v0, Ln;->k:Lfd;

    iget-wide v10, v5, Lsn;->aM:D

    invoke-static {v10, v11}, Lin;->b(D)I

    move-result v10

    iget-wide v11, v5, Lsn;->aO:D

    invoke-static {v11, v12}, Lin;->b(D)I

    move-result v11

    invoke-virtual {v8, v10, v6, v11}, Lfd;->i(III)Z

    move-result v6

    if-nez v6, :cond_11b

    goto :goto_129

    .line 325
    :cond_11b
    iget v6, v0, Ln;->K:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Ln;->K:I

    .line 326
    sget-object v6, Lth;->a:Lth;

    invoke-virtual {v6, v5, v9}, Lth;->a(Lsn;F)V

    goto :goto_129

    :cond_127
    move-object/from16 v7, p2

    :cond_129
    :goto_129
    add-int/lit8 v4, v4, 0x1

    goto :goto_bb

    .line 330
    :cond_12c
    :goto_12c
    iget-object v1, v0, Ln;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_144

    .line 331
    sget-object v1, Lll;->a:Lll;

    iget-object v3, v0, Ln;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Low;

    invoke-virtual {v1, v3, v9}, Lll;->a(Low;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12c

    :cond_144
    return-void
.end method

.method public a(Lfd;)V
    .registers 4

    .line 194
    iget-object v0, p0, Ln;->k:Lfd;

    if-eqz v0, :cond_7

    .line 195
    invoke-virtual {v0, p0}, Lfd;->b(Lpm;)V

    :cond_7
    const-wide v0, -0x3f3c788000000000L    # -9999.0

    .line 198
    iput-wide v0, p0, Ln;->f:D

    .line 199
    iput-wide v0, p0, Ln;->g:D

    .line 200
    iput-wide v0, p0, Ln;->h:D

    .line 202
    sget-object v0, Lth;->a:Lth;

    invoke-virtual {v0, p1}, Lth;->a(Lfd;)V

    .line 203
    iput-object p1, p0, Ln;->k:Lfd;

    .line 204
    new-instance v0, Lcv;

    invoke-direct {v0, p1}, Lcv;-><init>(Lxp;)V

    iput-object v0, p0, Ln;->u:Lcv;

    if-eqz p1, :cond_28

    .line 206
    invoke-virtual {p1, p0}, Lfd;->a(Lpm;)V

    .line 207
    invoke-virtual {p0}, Ln;->a()V

    :cond_28
    return-void
.end method

.method public a(Lgs;IIIII)V
    .registers 43

    move-object/from16 v14, p0

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    .line 1447
    iget-object v5, v14, Ln;->k:Lfd;

    iget-object v15, v5, Lfd;->r:Ljava/util/Random;

    const/16 v5, 0x7d0

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    if-eq v0, v5, :cond_14e

    const/16 v5, 0x7d1

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f000000    # 0.5f

    if-eq v0, v5, :cond_106

    packed-switch v0, :pswitch_data_1ea

    goto/16 :goto_1e9

    .line 1494
    :pswitch_24
    sget-object v0, Lgm;->c:[Lgm;

    aget-object v0, v0, v4

    instance-of v0, v0, Ltr;

    if-eqz v0, :cond_3b

    .line 1495
    iget-object v0, v14, Ln;->k:Lfd;

    sget-object v5, Lgm;->c:[Lgm;

    aget-object v4, v5, v4

    check-cast v4, Ltr;

    iget-object v4, v4, Ltr;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v2, v3}, Lfd;->a(Ljava/lang/String;III)V

    goto/16 :goto_1e9

    .line 1497
    :cond_3b
    iget-object v0, v14, Ln;->k:Lfd;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lfd;->a(Ljava/lang/String;III)V

    goto/16 :goto_1e9

    .line 1491
    :pswitch_43
    iget-object v0, v14, Ln;->k:Lfd;

    int-to-float v1, v1

    add-float/2addr v1, v7

    float-to-double v4, v1

    int-to-float v1, v2

    add-float/2addr v1, v7

    float-to-double v1, v1

    int-to-float v3, v3

    add-float/2addr v3, v7

    float-to-double v7, v3

    const-string v22, "random.fizz"

    const/high16 v23, 0x3f000000    # 0.5f

    invoke-virtual {v15}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-virtual {v15}, Ljava/util/Random;->nextFloat()F

    move-result v9

    sub-float/2addr v3, v9

    mul-float/2addr v3, v6

    const v6, 0x40266666    # 2.6f

    add-float v24, v3, v6

    move-object v15, v0

    move-wide/from16 v16, v4

    move-wide/from16 v18, v1

    move-wide/from16 v20, v7

    invoke-virtual/range {v15 .. v24}, Lfd;->a(DDDLjava/lang/String;FF)V

    goto/16 :goto_1e9

    .line 1484
    :pswitch_6d
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    cmpg-double v0, v4, v16

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3dcccccd    # 0.1f

    if-gez v0, :cond_9a

    .line 1485
    iget-object v0, v14, Ln;->k:Lfd;

    int-to-double v6, v1

    add-double v19, v6, v16

    int-to-double v1, v2

    add-double v21, v1, v16

    int-to-double v1, v3

    add-double v23, v1, v16

    const-string v25, "random.door_open"

    const/high16 v26, 0x3f800000    # 1.0f

    iget-object v1, v0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v5

    add-float v27, v1, v4

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v27}, Lfd;->a(DDDLjava/lang/String;FF)V

    goto/16 :goto_1e9

    .line 1487
    :cond_9a
    iget-object v0, v14, Ln;->k:Lfd;

    int-to-double v6, v1

    add-double v6, v6, v16

    int-to-double v1, v2

    add-double v8, v1, v16

    int-to-double v1, v3

    add-double v10, v1, v16

    const-string v12, "random.door_close"

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v1, v0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v5

    add-float v15, v1, v4

    move-object v1, v0

    move-wide v2, v6

    move-wide v4, v8

    move-wide v6, v10

    move-object v8, v12

    move v9, v13

    move v10, v15

    invoke-virtual/range {v1 .. v10}, Lfd;->a(DDDLjava/lang/String;FF)V

    goto/16 :goto_1e9

    .line 1456
    :pswitch_be
    iget-object v0, v14, Ln;->k:Lfd;

    int-to-double v4, v1

    int-to-double v1, v2

    int-to-double v6, v3

    const-string v23, "random.bow"

    const/high16 v24, 0x3f800000    # 1.0f

    const v25, 0x3f99999a    # 1.2f

    move-object/from16 v16, v0

    move-wide/from16 v17, v4

    move-wide/from16 v19, v1

    move-wide/from16 v21, v6

    invoke-virtual/range {v16 .. v25}, Lfd;->a(DDDLjava/lang/String;FF)V

    goto/16 :goto_1e9

    .line 1450
    :pswitch_d7
    iget-object v0, v14, Ln;->k:Lfd;

    int-to-double v4, v1

    int-to-double v1, v2

    int-to-double v6, v3

    const-string v33, "random.click"

    const/high16 v34, 0x3f800000    # 1.0f

    const v35, 0x3f99999a    # 1.2f

    move-object/from16 v26, v0

    move-wide/from16 v27, v4

    move-wide/from16 v29, v1

    move-wide/from16 v31, v6

    invoke-virtual/range {v26 .. v35}, Lfd;->a(DDDLjava/lang/String;FF)V

    goto/16 :goto_1e9

    .line 1453
    :pswitch_f0
    iget-object v15, v14, Ln;->k:Lfd;

    int-to-double v0, v1

    int-to-double v4, v2

    int-to-double v2, v3

    const-string v22, "random.click"

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    move-wide/from16 v16, v0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v2

    invoke-virtual/range {v15 .. v24}, Lfd;->a(DDDLjava/lang/String;FF)V

    goto/16 :goto_1e9

    :cond_106
    and-int/lit16 v5, v4, 0xff

    if-lez v5, :cond_139

    .line 1478
    sget-object v0, Luu;->m:[Luu;

    aget-object v0, v0, v5

    .line 1479
    iget-object v8, v14, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v15, v8, Lnet/minecraft/client/Minecraft;->B:Lyo;

    iget-object v8, v0, Luu;->by:Lct;

    invoke-virtual {v8}, Lct;->a()Ljava/lang/String;

    move-result-object v16

    int-to-float v8, v1

    add-float v17, v8, v7

    int-to-float v8, v2

    add-float v18, v8, v7

    int-to-float v8, v3

    add-float v19, v8, v7

    iget-object v7, v0, Luu;->by:Lct;

    invoke-virtual {v7}, Lct;->b()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v20, v7, v8

    iget-object v0, v0, Luu;->by:Lct;

    invoke-virtual {v0}, Lct;->c()F

    move-result v0

    mul-float v21, v0, v6

    invoke-virtual/range {v15 .. v21}, Lyo;->b(Ljava/lang/String;FFFFF)V

    .line 1481
    :cond_139
    iget-object v0, v14, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->j:Ldn;

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v6, v4, 0xff

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ldn;->a(IIIII)V

    goto/16 :goto_1e9

    .line 1459
    :cond_14e
    rem-int/lit8 v0, v4, 0x3

    add-int/lit8 v0, v0, -0x1

    .line 1460
    div-int/lit8 v4, v4, 0x3

    rem-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, -0x1

    int-to-double v5, v1

    int-to-double v12, v0

    const-wide v0, 0x3fe3333333333333L    # 0.6

    mul-double v7, v12, v0

    add-double/2addr v5, v7

    add-double v18, v5, v16

    int-to-double v5, v2

    add-double v20, v5, v16

    int-to-double v2, v3

    int-to-double v10, v4

    mul-double/2addr v0, v10

    add-double/2addr v2, v0

    add-double v22, v2, v16

    const/4 v0, 0x0

    move v8, v0

    :goto_16f
    const/16 v0, 0xa

    if-ge v8, v0, :cond_1e9

    .line 1465
    invoke-virtual {v15}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v2

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v0, v2

    mul-double v4, v12, v2

    add-double v4, v18, v4

    .line 1466
    invoke-virtual {v15}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    sub-double v6, v6, v16

    mul-double/2addr v6, v10

    mul-double v6, v6, v16

    add-double/2addr v4, v6

    .line 1467
    invoke-virtual {v15}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    sub-double v6, v6, v16

    mul-double v6, v6, v16

    add-double v6, v20, v6

    mul-double v24, v10, v2

    add-double v24, v22, v24

    .line 1468
    invoke-virtual {v15}, Ljava/util/Random;->nextDouble()D

    move-result-wide v26

    sub-double v26, v26, v16

    mul-double v26, v26, v12

    mul-double v26, v26, v16

    add-double v24, v24, v26

    mul-double v26, v12, v0

    .line 1469
    invoke-virtual {v15}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v28

    mul-double v28, v28, v2

    add-double v26, v26, v28

    .line 1470
    invoke-virtual {v15}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v28

    mul-double v28, v28, v2

    const-wide v30, -0x406147ae147ae148L    # -0.03

    add-double v28, v28, v30

    mul-double/2addr v0, v10

    .line 1471
    invoke-virtual {v15}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v30

    mul-double v30, v30, v2

    add-double v30, v0, v30

    const-string v1, "smoke"

    move-object/from16 v0, p0

    move-wide v2, v4

    move-wide v4, v6

    move-wide/from16 v6, v24

    move/from16 v24, v8

    move-wide/from16 v8, v26

    move-wide/from16 v25, v10

    move-wide/from16 v10, v28

    move-wide/from16 v27, v12

    move-wide/from16 v12, v30

    .line 1472
    invoke-virtual/range {v0 .. v13}, Ln;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v8, v24, 0x1

    move-wide/from16 v10, v25

    move-wide/from16 v12, v27

    goto :goto_16f

    :cond_1e9
    :goto_1e9
    return-void

    :pswitch_data_1ea
    .packed-switch 0x3e8
        :pswitch_f0
        :pswitch_d7
        :pswitch_be
        :pswitch_6d
        :pswitch_43
        :pswitch_24
    .end packed-switch
.end method

.method public a(Lgs;Lvf;ILiz;F)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1183
    sget-object v10, Lnw;->a:Lnw;

    const/16 v11, 0xbe2

    .line 1184
    invoke-static {v11}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v12, 0xbc0

    .line 1185
    invoke-static {v12}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v3, 0x302

    const/4 v13, 0x1

    .line 1186
    invoke-static {v3, v13}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 1187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Lin;->a(F)F

    move-result v4

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v6

    const v7, 0x3ecccccd    # 0.4f

    add-float/2addr v4, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v8, v8, v4}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/16 v4, 0xde1

    const-string v9, "/terrain.png"

    if-nez p3, :cond_f4

    .line 1195
    iget v3, v0, Ln;->i:F

    const/4 v14, 0x0

    cmpl-float v3, v3, v14

    if-lez v3, :cond_f2

    const/16 v3, 0x306

    const/16 v5, 0x300

    .line 1196
    invoke-static {v3, v5}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 1198
    iget-object v3, v0, Ln;->l:Lji;

    invoke-virtual {v3, v9}, Lji;->b(Ljava/lang/String;)I

    move-result v3

    .line 1199
    invoke-static {v4, v3}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 1200
    invoke-static {v8, v8, v8, v7}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 1201
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    .line 1203
    iget-object v3, v0, Ln;->k:Lfd;

    iget v4, v2, Lvf;->b:I

    iget v5, v2, Lvf;->c:I

    iget v6, v2, Lvf;->d:I

    invoke-virtual {v3, v4, v5, v6}, Lfd;->a(III)I

    move-result v3

    if-lez v3, :cond_6a

    .line 1204
    sget-object v4, Luu;->m:[Luu;

    aget-object v3, v4, v3

    goto :goto_6b

    :cond_6a
    const/4 v3, 0x0

    .line 1205
    :goto_6b
    invoke-static {v12}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/high16 v4, -0x3fc00000    # -3.0f

    .line 1207
    invoke-static {v4, v4}, Lorg/lwjgl/opengl/GL11;->glPolygonOffset(FF)V

    const v15, 0x8037

    .line 1208
    invoke-static {v15}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 1209
    iget-wide v4, v1, Lgs;->bl:D

    iget-wide v6, v1, Lgs;->aM:D

    iget-wide v8, v1, Lgs;->bl:D

    sub-double/2addr v6, v8

    move/from16 v8, p5

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 1210
    iget-wide v6, v1, Lgs;->bm:D

    iget-wide v13, v1, Lgs;->aN:D

    iget-wide v11, v1, Lgs;->bm:D

    sub-double/2addr v13, v11

    mul-double/2addr v13, v8

    add-double/2addr v6, v13

    .line 1211
    iget-wide v11, v1, Lgs;->bn:D

    iget-wide v13, v1, Lgs;->aO:D

    iget-wide v1, v1, Lgs;->bn:D

    sub-double/2addr v13, v1

    mul-double/2addr v13, v8

    add-double/2addr v11, v13

    if-nez v3, :cond_9b

    .line 1214
    sget-object v3, Luu;->u:Luu;

    :cond_9b
    move-object/from16 v17, v3

    const/16 v1, 0xbc0

    .line 1215
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 1216
    invoke-virtual {v10}, Lnw;->b()V

    neg-double v4, v4

    neg-double v6, v6

    neg-double v8, v11

    move-object v3, v10

    .line 1217
    invoke-virtual/range {v3 .. v9}, Lnw;->b(DDD)V

    .line 1218
    invoke-virtual {v10}, Lnw;->c()V

    .line 1219
    iget-object v1, v0, Ln;->u:Lcv;

    move-object/from16 v2, p2

    iget v3, v2, Lvf;->b:I

    iget v4, v2, Lvf;->c:I

    iget v2, v2, Lvf;->d:I

    iget v5, v0, Ln;->i:F

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/lit16 v5, v5, 0xf0

    move-object/from16 v16, v1

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v2

    move/from16 v21, v5

    invoke-virtual/range {v16 .. v21}, Lcv;->a(Luu;IIII)V

    .line 1220
    invoke-virtual {v10}, Lnw;->a()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v10

    .line 1221
    invoke-virtual/range {v1 .. v7}, Lnw;->b(DDD)V

    const/16 v1, 0xbc0

    .line 1222
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/4 v2, 0x0

    .line 1227
    invoke-static {v2, v2}, Lorg/lwjgl/opengl/GL11;->glPolygonOffset(FF)V

    .line 1228
    invoke-static {v15}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 1229
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/4 v1, 0x1

    .line 1231
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    .line 1232
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    goto :goto_136

    :cond_f2
    move v1, v11

    goto :goto_138

    :cond_f4
    if-eqz p4, :cond_136

    const/16 v1, 0x303

    .line 1235
    invoke-static {v3, v1}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 1236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-float v1, v10

    div-float/2addr v1, v5

    invoke-static {v1}, Lin;->a(F)F

    move-result v1

    mul-float/2addr v1, v6

    const v3, 0x3f4ccccd    # 0.8f

    add-float/2addr v1, v3

    .line 1237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-float v3, v10

    const/high16 v5, 0x43480000    # 200.0f

    div-float/2addr v3, v5

    invoke-static {v3}, Lin;->a(F)F

    move-result v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v7

    invoke-static {v1, v1, v1, v3}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 1239
    iget-object v1, v0, Ln;->l:Lji;

    invoke-virtual {v1, v9}, Lji;->b(Ljava/lang/String;)I

    move-result v1

    .line 1240
    invoke-static {v4, v1}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 1241
    iget v1, v2, Lvf;->b:I

    .line 1242
    iget v1, v2, Lvf;->c:I

    .line 1243
    iget v1, v2, Lvf;->d:I

    .line 1244
    iget v1, v2, Lvf;->e:I

    .line 1245
    iget v1, v2, Lvf;->e:I

    .line 1246
    iget v1, v2, Lvf;->e:I

    .line 1247
    iget v1, v2, Lvf;->e:I

    .line 1248
    iget v1, v2, Lvf;->e:I

    .line 1249
    iget v1, v2, Lvf;->e:I

    :cond_136
    :goto_136
    const/16 v1, 0xbe2

    .line 1255
    :goto_138
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v1, 0xbc0

    .line 1256
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    return-void
.end method

.method public a(Ljava/lang/String;DDDDDD)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1389
    iget-object v2, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    if-eqz v2, :cond_258

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->i:Lls;

    if-eqz v2, :cond_258

    iget-object v2, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->j:Ldn;

    if-nez v2, :cond_14

    goto/16 :goto_258

    .line 1390
    :cond_14
    iget-object v2, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v2, v2, Lls;->aM:D

    sub-double v2, v2, p2

    .line 1391
    iget-object v4, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v4, v4, Lls;->aN:D

    sub-double v4, v4, p4

    .line 1392
    iget-object v6, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v6, v6, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v6, v6, Lls;->aO:D

    sub-double v6, v6, p6

    mul-double/2addr v2, v2

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    mul-double/2addr v6, v6

    add-double/2addr v2, v6

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_38

    return-void

    :cond_38
    const-string v2, "bubble"

    .line 1397
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lcr;

    iget-object v5, v0, Ln;->k:Lfd;

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v4 .. v17}, Lcr;-><init>(Lfd;DDDDDD)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto/16 :goto_258

    :cond_5d
    const-string v2, "smoke"

    .line 1398
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lxn;

    iget-object v5, v0, Ln;->k:Lfd;

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v4 .. v17}, Lxn;-><init>(Lfd;DDDDDD)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto/16 :goto_258

    :cond_82
    const-string v2, "note"

    .line 1399
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lae;

    iget-object v5, v0, Ln;->k:Lfd;

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v4 .. v17}, Lae;-><init>(Lfd;DDDDDD)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto/16 :goto_258

    :cond_a7
    const-string v2, "portal"

    .line 1400
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lop;

    iget-object v5, v0, Ln;->k:Lfd;

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v4 .. v17}, Lop;-><init>(Lfd;DDDDDD)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto/16 :goto_258

    :cond_cc
    const-string v2, "explode"

    .line 1401
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lgy;

    iget-object v5, v0, Ln;->k:Lfd;

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v4 .. v17}, Lgy;-><init>(Lfd;DDDDDD)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto/16 :goto_258

    :cond_f1
    const-string v2, "flame"

    .line 1402
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lqu;

    iget-object v5, v0, Ln;->k:Lfd;

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v4 .. v17}, Lqu;-><init>(Lfd;DDDDDD)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto/16 :goto_258

    :cond_116
    const-string v2, "lava"

    .line 1403
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_135

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lfg;

    iget-object v5, v0, Ln;->k:Lfd;

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v4 .. v11}, Lfg;-><init>(Lfd;DDD)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto/16 :goto_258

    :cond_135
    const-string v2, "footstep"

    .line 1404
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_156

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lgl;

    iget-object v5, v0, Ln;->l:Lji;

    iget-object v6, v0, Ln;->k:Lfd;

    move-object v4, v2

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    invoke-direct/range {v4 .. v12}, Lgl;-><init>(Lji;Lfd;DDD)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto/16 :goto_258

    :cond_156
    const-string v2, "splash"

    .line 1405
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17b

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lsy;

    iget-object v5, v0, Ln;->k:Lfd;

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v4 .. v17}, Lsy;-><init>(Lfd;DDDDDD)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto/16 :goto_258

    :cond_17b
    const-string v2, "largesmoke"

    .line 1406
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lxn;

    iget-object v5, v0, Ln;->k:Lfd;

    const/high16 v18, 0x40200000    # 2.5f

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v4 .. v18}, Lxn;-><init>(Lfd;DDDDDDF)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto/16 :goto_258

    :cond_1a2
    const-string v2, "reddust"

    .line 1407
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ca

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lim;

    iget-object v5, v0, Ln;->k:Lfd;

    move-wide/from16 v12, p8

    double-to-float v12, v12

    move-wide/from16 v14, p10

    double-to-float v13, v14

    move-wide/from16 v10, p12

    double-to-float v14, v10

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v4 .. v14}, Lim;-><init>(Lfd;DDDFFF)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto/16 :goto_258

    :cond_1ca
    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v10, p12

    const-string v2, "snowballpoof"

    .line 1408
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f1

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lpb;

    iget-object v5, v0, Ln;->k:Lfd;

    sget-object v12, Lgm;->aB:Lgm;

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v4 .. v12}, Lpb;-><init>(Lfd;DDDLgm;)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto/16 :goto_258

    :cond_1f1
    const-string v2, "snowshovel"

    .line 1409
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_215

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lmu;

    iget-object v5, v0, Ln;->k:Lfd;

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v4 .. v17}, Lmu;-><init>(Lfd;DDDDDD)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto :goto_258

    :cond_215
    const-string v2, "slime"

    .line 1410
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_235

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lpb;

    iget-object v5, v0, Ln;->k:Lfd;

    sget-object v12, Lgm;->aK:Lgm;

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v4 .. v12}, Lpb;-><init>(Lfd;DDDLgm;)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    goto :goto_258

    :cond_235
    const-string v2, "heart"

    .line 1411
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_258

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v2, Lkc;

    iget-object v5, v0, Ln;->k:Lfd;

    move-object v4, v2

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-direct/range {v4 .. v17}, Lkc;-><init>(Lfd;DDDDDD)V

    invoke-virtual {v1, v2}, Ldn;->a(Lxw;)V

    :cond_258
    :goto_258
    return-void
.end method

.method public a(Ljava/lang/String;DDDFF)V
    .registers 20

    move-object v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p8, v1

    const/high16 v2, 0x41800000    # 16.0f

    if-lez v1, :cond_b

    mul-float v2, v2, p8

    .line 1381
    :cond_b
    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v3, v1, Lnet/minecraft/client/Minecraft;->i:Lls;

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v3 .. v9}, Lls;->g(DDD)D

    move-result-wide v3

    mul-float/2addr v2, v2

    float-to-double v1, v2

    cmpg-double v1, v3, v1

    if-gez v1, :cond_30

    .line 1382
    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->B:Lyo;

    move-wide v2, p2

    double-to-float v3, v2

    move-wide v4, p4

    double-to-float v4, v4

    move-wide/from16 v5, p6

    double-to-float v5, v5

    move-object v2, p1

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Lyo;->b(Ljava/lang/String;FFFFF)V

    :cond_30
    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .registers 13

    if-eqz p1, :cond_17

    .line 1373
    iget-object v0, p0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->v:Luq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "C418 - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Luq;->b(Ljava/lang/String;)V

    .line 1375
    :cond_17
    iget-object v0, p0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lyo;->a(Ljava/lang/String;FFFFF)V

    return-void
.end method

.method public a(Lsn;)V
    .registers 5

    .line 1418
    invoke-virtual {p1}, Lsn;->u_()V

    .line 1419
    iget-object v0, p1, Lsn;->bA:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ln;->l:Lji;

    iget-object v1, p1, Lsn;->bA:Ljava/lang/String;

    new-instance v2, Lrr;

    invoke-direct {v2}, Lrr;-><init>()V

    invoke-virtual {v0, v1, v2}, Lji;->a(Ljava/lang/String;Lnf;)Lek;

    .line 1420
    :cond_13
    iget-object v0, p1, Lsn;->bB:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Ln;->l:Lji;

    iget-object p1, p1, Lsn;->bB:Ljava/lang/String;

    new-instance v1, Lrr;

    invoke-direct {v1}, Lrr;-><init>()V

    invoke-virtual {v0, p1, v1}, Lji;->a(Ljava/lang/String;Lnf;)Lek;

    :cond_23
    return-void
.end method

.method public a(Lyn;F)V
    .registers 5

    const/4 p2, 0x0

    .line 1360
    :goto_1
    iget-object v0, p0, Ln;->o:[Ldk;

    array-length v1, v0

    if-ge p2, v1, :cond_27

    .line 1361
    aget-object v0, v0, p2

    invoke-virtual {v0}, Ldk;->e()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1362
    iget-object v0, p0, Ln;->o:[Ldk;

    aget-object v0, v0, p2

    iget-boolean v0, v0, Ldk;->o:Z

    if-eqz v0, :cond_1d

    iget v0, p0, Ln;->j:I

    add-int/2addr v0, p2

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_24

    .line 1363
    :cond_1d
    iget-object v0, p0, Ln;->o:[Ldk;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ldk;->a(Lyn;)V

    :cond_24
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1367
    :cond_27
    iget p1, p0, Ln;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ln;->j:I

    return-void
.end method

.method public a(DDDF)Z
    .registers 8

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lls;Z)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1057
    new-instance v2, Lmd;

    invoke-direct {v2, v1}, Lmd;-><init>(Lls;)V

    const/4 v3, 0x2

    new-array v4, v3, [Ldk;

    .line 1061
    iget-object v5, v0, Ln;->m:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v6

    move v8, v7

    move v10, v8

    :goto_17
    if-ge v8, v5, :cond_6a

    .line 1065
    iget-object v11, v0, Ln;->m:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldk;

    if-nez p2, :cond_51

    .line 1068
    invoke-virtual {v11, v1}, Ldk;->a(Lsn;)F

    move-result v12

    const/high16 v13, 0x43800000    # 256.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_56

    move v12, v7

    :goto_2e
    if-ge v12, v3, :cond_3e

    .line 1073
    aget-object v13, v4, v12

    if-eqz v13, :cond_3b

    invoke-virtual {v2, v13, v11}, Lmd;->a(Ldk;Ldk;)I

    move-result v13

    if-lez v13, :cond_3b

    goto :goto_3e

    :cond_3b
    add-int/lit8 v12, v12, 0x1

    goto :goto_2e

    :cond_3e
    :goto_3e
    add-int/lit8 v12, v12, -0x1

    if-lez v12, :cond_67

    move v13, v12

    :goto_43
    add-int/lit8 v13, v13, -0x1

    if-eqz v13, :cond_4e

    add-int/lit8 v14, v13, -0x1

    .line 1083
    aget-object v15, v4, v13

    aput-object v15, v4, v14

    goto :goto_43

    .line 1085
    :cond_4e
    aput-object v11, v4, v12

    goto :goto_67

    .line 1090
    :cond_51
    iget-boolean v12, v11, Ldk;->o:Z

    if-nez v12, :cond_56

    goto :goto_67

    :cond_56
    if-nez v9, :cond_5d

    .line 1097
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_5d
    add-int/lit8 v10, v10, 0x1

    .line 1101
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    iget-object v11, v0, Ln;->m:Ljava/util/List;

    invoke-interface {v11, v8, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_67
    :goto_67
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_6a
    const/4 v1, 0x1

    if-eqz v9, :cond_8b

    .line 1109
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v1, :cond_76

    invoke-static {v9, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1111
    :cond_76
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_7b
    if-ltz v2, :cond_8b

    .line 1112
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldk;

    .line 1113
    invoke-virtual {v8}, Ldk;->a()V

    .line 1114
    iput-boolean v7, v8, Ldk;->u:Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_7b

    :cond_8b
    move v2, v1

    move v8, v7

    :goto_8d
    if-ltz v2, :cond_ac

    .line 1122
    aget-object v9, v4, v2

    if-eqz v9, :cond_a9

    .line 1124
    iget-boolean v9, v9, Ldk;->o:Z

    if-nez v9, :cond_9e

    if-eq v2, v1, :cond_9e

    .line 1128
    aput-object v6, v4, v2

    aput-object v6, v4, v7

    goto :goto_ac

    .line 1132
    :cond_9e
    aget-object v9, v4, v2

    invoke-virtual {v9}, Ldk;->a()V

    .line 1133
    aget-object v9, v4, v2

    iput-boolean v7, v9, Ldk;->u:Z

    add-int/lit8 v8, v8, 0x1

    :cond_a9
    add-int/lit8 v2, v2, -0x1

    goto :goto_8d

    .line 1141
    :cond_ac
    :goto_ac
    iget-object v2, v0, Ln;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v6, v7

    move v9, v6

    :goto_b4
    if-eq v6, v2, :cond_dc

    .line 1143
    iget-object v11, v0, Ln;->m:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldk;

    if-eqz v11, :cond_d9

    move v12, v7

    move v13, v12

    :goto_c2
    if-ge v12, v3, :cond_ce

    if-nez v13, :cond_ce

    .line 1147
    aget-object v14, v4, v12

    if-ne v11, v14, :cond_cb

    move v13, v1

    :cond_cb
    add-int/lit8 v12, v12, 0x1

    goto :goto_c2

    :cond_ce
    if-nez v13, :cond_d9

    if-eq v9, v6, :cond_d7

    .line 1153
    iget-object v12, v0, Ln;->m:Ljava/util/List;

    invoke-interface {v12, v9, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d7
    add-int/lit8 v9, v9, 0x1

    :cond_d9
    add-int/lit8 v6, v6, 0x1

    goto :goto_b4

    :cond_dc
    :goto_dc
    add-int/lit8 v6, v6, -0x1

    if-lt v6, v9, :cond_e6

    .line 1163
    iget-object v2, v0, Ln;->m:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_dc

    :cond_e6
    add-int/2addr v10, v8

    if-ne v5, v10, :cond_ea

    move v7, v1

    :cond_ea
    return v7
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "C: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ln;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". F: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", O: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln;->O:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", E: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln;->Q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(F)V
    .registers 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 788
    iget-object v2, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v2, v2, Lfd;->t:Lxa;

    iget-boolean v2, v2, Lxa;->c:Z

    if-eqz v2, :cond_f

    return-void

    .line 790
    :cond_f
    iget-object v2, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v2, v2, Lkv;->j:Z

    if-eqz v2, :cond_1b

    .line 791
    invoke-virtual/range {p0 .. p1}, Ln;->c(F)V

    return-void

    :cond_1b
    const/16 v2, 0xb44

    .line 794
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 795
    iget-object v3, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v3, v3, Lls;->bm:D

    iget-object v5, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v5, v5, Lls;->aN:D

    iget-object v7, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v7, v7, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v7, v7, Lls;->bm:D

    sub-double/2addr v5, v7

    float-to-double v7, v1

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    .line 798
    sget-object v4, Lnw;->a:Lnw;

    .line 800
    iget-object v5, v0, Ln;->l:Lji;

    const-string v6, "/environment/clouds.png"

    invoke-virtual {v5, v6}, Lji;->b(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xde1

    invoke-static {v6, v5}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    const/16 v5, 0xbe2

    .line 801
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v6, 0x302

    const/16 v9, 0x303

    .line 802
    invoke-static {v6, v9}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 804
    iget-object v6, v0, Ln;->k:Lfd;

    invoke-virtual {v6, v1}, Lfd;->c(F)Lbt;

    move-result-object v6

    .line 805
    iget-wide v9, v6, Lbt;->a:D

    double-to-float v9, v9

    .line 806
    iget-wide v10, v6, Lbt;->b:D

    double-to-float v10, v10

    .line 807
    iget-wide v11, v6, Lbt;->c:D

    double-to-float v6, v11

    .line 809
    iget-object v11, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v11, v11, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v11, v11, Lkv;->g:Z

    if-eqz v11, :cond_81

    const/high16 v11, 0x41f00000    # 30.0f

    mul-float/2addr v9, v11

    const/high16 v11, 0x426c0000    # 59.0f

    mul-float/2addr v11, v10

    add-float/2addr v11, v9

    const/high16 v12, 0x41300000    # 11.0f

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    const/high16 v13, 0x428c0000    # 70.0f

    mul-float/2addr v10, v13

    add-float/2addr v10, v9

    div-float/2addr v10, v12

    mul-float/2addr v6, v13

    add-float/2addr v9, v6

    div-float v6, v9, v12

    move v9, v11

    .line 823
    :cond_81
    iget-object v11, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v11, v11, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v11, v11, Lls;->aJ:D

    iget-object v13, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v13, v13, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v13, v13, Lls;->aM:D

    iget-object v15, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v15, v15, Lnet/minecraft/client/Minecraft;->i:Lls;

    move/from16 v16, v6

    iget-wide v5, v15, Lls;->aJ:D

    sub-double/2addr v13, v5

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    iget v5, v0, Ln;->x:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr v5, v1

    float-to-double v5, v5

    add-double/2addr v11, v5

    .line 824
    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v5, v1, Lls;->aL:D

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v13, v1, Lls;->aO:D

    iget-object v1, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->i:Lls;

    move v15, v3

    iget-wide v2, v1, Lls;->aL:D

    sub-double/2addr v13, v2

    mul-double/2addr v13, v7

    add-double/2addr v5, v13

    const-wide/high16 v1, 0x40a0000000000000L    # 2048.0

    div-double v7, v11, v1

    .line 825
    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v3

    div-double v1, v5, v1

    .line 826
    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    mul-int/lit16 v3, v3, 0x800

    int-to-double v2, v3

    sub-double/2addr v11, v2

    mul-int/lit16 v1, v1, 0x800

    int-to-double v1, v1

    sub-double/2addr v5, v1

    .line 832
    iget-object v1, v0, Ln;->k:Lfd;

    iget-object v1, v1, Lfd;->t:Lxa;

    invoke-virtual {v1}, Lxa;->d()F

    move-result v1

    sub-float/2addr v1, v15

    const v2, 0x3ea8f5c3    # 0.33f

    add-float/2addr v1, v2

    const/high16 v2, 0x3a000000

    float-to-double v7, v2

    mul-double/2addr v11, v7

    double-to-float v3, v11

    mul-double/2addr v5, v7

    double-to-float v5, v5

    .line 835
    invoke-virtual {v4}, Lnw;->b()V

    const v6, 0x3f4ccccd    # 0.8f

    move/from16 v7, v16

    .line 837
    invoke-virtual {v4, v9, v10, v7, v6}, Lnw;->a(FFFF)V

    const/16 v7, -0x100

    :goto_ef
    const/16 v8, 0x100

    if-ge v7, v8, :cond_166

    const/16 v14, -0x100

    :goto_f5
    if-ge v14, v8, :cond_15b

    add-int/lit8 v9, v7, 0x0

    int-to-double v12, v9

    float-to-double v10, v1

    add-int/lit8 v15, v14, 0x20

    move/from16 v20, v7

    int-to-double v6, v15

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v9, v3

    float-to-double v8, v9

    int-to-float v0, v15

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    move/from16 v21, v3

    float-to-double v2, v0

    move-wide/from16 v22, v8

    move-object v9, v4

    move-wide/from16 v24, v10

    move-wide v10, v12

    move-wide/from16 v26, v12

    move-wide/from16 v12, v24

    move v8, v14

    move v0, v15

    move-wide v14, v6

    move-wide/from16 v16, v22

    move-wide/from16 v18, v2

    .line 840
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    add-int/lit8 v9, v20, 0x20

    int-to-double v14, v9

    int-to-float v9, v9

    const/high16 v10, 0x3a000000

    mul-float/2addr v9, v10

    add-float v9, v9, v21

    float-to-double v12, v9

    move-object v9, v4

    move-wide v10, v14

    move-wide/from16 v28, v12

    move-wide/from16 v12, v24

    move-wide/from16 v30, v14

    move-wide v14, v6

    move-wide/from16 v16, v28

    .line 841
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    add-int/lit8 v14, v8, 0x0

    int-to-double v2, v14

    int-to-float v6, v14

    const/high16 v7, 0x3a000000

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    float-to-double v14, v6

    move-wide/from16 v10, v30

    move-wide/from16 v30, v14

    move-wide v14, v2

    move-wide/from16 v18, v30

    .line 842
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move-wide/from16 v10, v26

    move-wide/from16 v16, v22

    .line 843
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move v14, v0

    move v2, v7

    move/from16 v7, v20

    move/from16 v3, v21

    const/16 v8, 0x100

    move-object/from16 v0, p0

    goto :goto_f5

    :cond_15b
    move/from16 v21, v3

    move/from16 v20, v7

    move v7, v2

    add-int/lit8 v0, v20, 0x20

    move v7, v0

    move-object/from16 v0, p0

    goto :goto_ef

    .line 846
    :cond_166
    invoke-virtual {v4}, Lnw;->a()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 848
    invoke-static {v0, v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/16 v0, 0xbe2

    .line 849
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v0, 0xb44

    .line 850
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    return-void
.end method

.method public b(IIIIII)V
    .registers 14

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v3, p3, -0x1

    add-int/lit8 v4, p4, 0x1

    add-int/lit8 v5, p5, 0x1

    add-int/lit8 v6, p6, 0x1

    move-object v0, p0

    .line 1354
    invoke-virtual/range {v0 .. v6}, Ln;->a(IIIIII)V

    return-void
.end method

.method public b(Lgs;Lvf;ILiz;F)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez p3, :cond_a5

    .line 1260
    iget-object v3, v2, Lvf;->a:Ljg;

    sget-object v4, Ljg;->a:Ljg;

    if-ne v3, v4, :cond_a5

    const/16 v3, 0xbe2

    .line 1261
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v4, 0x302

    const/16 v5, 0x303

    .line 1262
    invoke-static {v4, v5}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x0

    .line 1263
    invoke-static {v5, v5, v5, v4}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/high16 v4, 0x40000000    # 2.0f

    .line 1264
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glLineWidth(F)V

    const/16 v4, 0xde1

    .line 1265
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/4 v5, 0x0

    .line 1266
    invoke-static {v5}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    .line 1268
    iget-object v5, v0, Ln;->k:Lfd;

    iget v6, v2, Lvf;->b:I

    iget v7, v2, Lvf;->c:I

    iget v8, v2, Lvf;->d:I

    invoke-virtual {v5, v6, v7, v8}, Lfd;->a(III)I

    move-result v5

    if-lez v5, :cond_97

    .line 1271
    sget-object v6, Luu;->m:[Luu;

    aget-object v6, v6, v5

    iget-object v7, v0, Ln;->k:Lfd;

    iget v8, v2, Lvf;->b:I

    iget v9, v2, Lvf;->c:I

    iget v10, v2, Lvf;->d:I

    invoke-virtual {v6, v7, v8, v9, v10}, Luu;->a(Lxp;III)V

    .line 1272
    iget-wide v6, v1, Lgs;->bl:D

    iget-wide v8, v1, Lgs;->aM:D

    iget-wide v10, v1, Lgs;->bl:D

    sub-double/2addr v8, v10

    move/from16 v10, p5

    float-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 1273
    iget-wide v8, v1, Lgs;->bm:D

    iget-wide v12, v1, Lgs;->aN:D

    iget-wide v14, v1, Lgs;->bm:D

    sub-double/2addr v12, v14

    mul-double/2addr v12, v10

    add-double/2addr v8, v12

    .line 1274
    iget-wide v12, v1, Lgs;->bn:D

    iget-wide v14, v1, Lgs;->aO:D

    iget-wide v3, v1, Lgs;->bn:D

    sub-double/2addr v14, v3

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    .line 1275
    sget-object v1, Luu;->m:[Luu;

    aget-object v1, v1, v5

    iget-object v3, v0, Ln;->k:Lfd;

    iget v4, v2, Lvf;->b:I

    iget v5, v2, Lvf;->c:I

    iget v2, v2, Lvf;->d:I

    invoke-virtual {v1, v3, v4, v5, v2}, Luu;->f(Lfd;III)Leq;

    move-result-object v14

    const v1, 0x3b03126f    # 0.002f

    float-to-double v1, v1

    move-wide v15, v1

    move-wide/from16 v17, v1

    move-wide/from16 v19, v1

    invoke-virtual/range {v14 .. v20}, Leq;->b(DDD)Leq;

    move-result-object v15

    neg-double v1, v6

    neg-double v3, v8

    neg-double v5, v12

    move-wide/from16 v16, v1

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    invoke-virtual/range {v15 .. v21}, Leq;->c(DDD)Leq;

    move-result-object v1

    invoke-direct {v0, v1}, Ln;->a(Leq;)V

    :cond_97
    const/4 v1, 0x1

    .line 1277
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    const/16 v1, 0xde1

    .line 1278
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v1, 0xbe2

    .line 1279
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    :cond_a5
    return-void
.end method

.method public b(Lsn;)V
    .registers 4

    .line 1424
    iget-object v0, p1, Lsn;->bA:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ln;->l:Lji;

    iget-object v1, p1, Lsn;->bA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lji;->c(Ljava/lang/String;)V

    .line 1425
    :cond_b
    iget-object v0, p1, Lsn;->bB:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Ln;->l:Lji;

    iget-object p1, p1, Lsn;->bB:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lji;->c(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 4

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "E: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ln;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". B: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", I: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln;->J:I

    iget v2, p0, Ln;->L:I

    sub-int/2addr v1, v2

    iget v2, p0, Ln;->K:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(F)V
    .registers 56

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0xb44

    .line 876
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 877
    iget-object v3, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v3, v3, Lls;->bm:D

    iget-object v5, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v5, v5, Lls;->aN:D

    iget-object v7, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v7, v7, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v7, v7, Lls;->bm:D

    sub-double/2addr v5, v7

    float-to-double v7, v1

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    .line 878
    sget-object v4, Lnw;->a:Lnw;

    .line 884
    iget-object v5, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v5, v5, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v5, v5, Lls;->aJ:D

    iget-object v9, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v9, v9, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v9, v9, Lls;->aM:D

    iget-object v11, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v11, v11, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v11, v11, Lls;->aJ:D

    sub-double/2addr v9, v11

    mul-double/2addr v9, v7

    add-double/2addr v5, v9

    iget v9, v0, Ln;->x:I

    int-to-float v9, v9

    add-float/2addr v9, v1

    const v10, 0x3cf5c28f    # 0.03f

    mul-float/2addr v9, v10

    float-to-double v9, v9

    add-double/2addr v5, v9

    const/high16 v9, 0x41400000    # 12.0f

    float-to-double v10, v9

    div-double/2addr v5, v10

    .line 885
    iget-object v12, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v12, v12, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v12, v12, Lls;->aL:D

    iget-object v14, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v14, v14, Lnet/minecraft/client/Minecraft;->i:Lls;

    iget-wide v14, v14, Lls;->aO:D

    iget-object v2, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->i:Lls;

    move-wide/from16 v17, v10

    iget-wide v9, v2, Lls;->aL:D

    sub-double/2addr v14, v9

    mul-double/2addr v14, v7

    add-double/2addr v12, v14

    div-double v12, v12, v17

    const-wide v7, 0x3fd51eb860000000L    # 0.33000001311302185

    add-double/2addr v12, v7

    .line 886
    iget-object v2, v0, Ln;->k:Lfd;

    iget-object v2, v2, Lfd;->t:Lxa;

    invoke-virtual {v2}, Lxa;->d()F

    move-result v2

    sub-float/2addr v2, v3

    const v3, 0x3ea8f5c3    # 0.33f

    add-float/2addr v2, v3

    const-wide/high16 v7, 0x40a0000000000000L    # 2048.0

    div-double v9, v5, v7

    .line 887
    invoke-static {v9, v10}, Lin;->b(D)I

    move-result v3

    div-double v7, v12, v7

    .line 888
    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v7

    mul-int/lit16 v3, v3, 0x800

    int-to-double v8, v3

    sub-double/2addr v5, v8

    mul-int/lit16 v7, v7, 0x800

    int-to-double v7, v7

    sub-double/2addr v12, v7

    .line 892
    iget-object v3, v0, Ln;->l:Lji;

    const-string v7, "/environment/clouds.png"

    invoke-virtual {v3, v7}, Lji;->b(Ljava/lang/String;)I

    move-result v3

    const/16 v7, 0xde1

    invoke-static {v7, v3}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    const/16 v3, 0xbe2

    .line 893
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v7, 0x302

    const/16 v8, 0x303

    .line 894
    invoke-static {v7, v8}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 896
    iget-object v7, v0, Ln;->k:Lfd;

    invoke-virtual {v7, v1}, Lfd;->c(F)Lbt;

    move-result-object v1

    .line 897
    iget-wide v7, v1, Lbt;->a:D

    double-to-float v7, v7

    .line 898
    iget-wide v8, v1, Lbt;->b:D

    double-to-float v8, v8

    .line 899
    iget-wide v9, v1, Lbt;->c:D

    double-to-float v1, v9

    .line 901
    iget-object v9, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v9, v9, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v9, v9, Lkv;->g:Z

    if-eqz v9, :cond_cf

    const/high16 v9, 0x41f00000    # 30.0f

    mul-float/2addr v7, v9

    const/high16 v9, 0x426c0000    # 59.0f

    mul-float/2addr v9, v8

    add-float/2addr v9, v7

    const/high16 v10, 0x41300000    # 11.0f

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    const/high16 v11, 0x428c0000    # 70.0f

    mul-float/2addr v8, v11

    add-float/2addr v8, v7

    div-float/2addr v8, v10

    mul-float/2addr v1, v11

    add-float/2addr v7, v1

    div-float v1, v7, v10

    move v7, v9

    .line 918
    :cond_cf
    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v9

    int-to-float v9, v9

    const/high16 v20, 0x3b800000    # 0.00390625f

    mul-float v21, v9, v20

    .line 919
    invoke-static {v12, v13}, Lin;->b(D)I

    move-result v9

    int-to-float v9, v9

    mul-float v22, v9, v20

    .line 920
    invoke-static {v5, v6}, Lin;->b(D)I

    move-result v9

    int-to-double v9, v9

    sub-double/2addr v5, v9

    double-to-float v5, v5

    .line 921
    invoke-static {v12, v13}, Lin;->b(D)I

    move-result v6

    int-to-double v9, v6

    sub-double/2addr v12, v9

    double-to-float v6, v12

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v9, 0x41400000    # 12.0f

    .line 930
    invoke-static {v9, v14, v9}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const/4 v15, 0x0

    move v12, v15

    :goto_f6
    const/4 v9, 0x2

    if-ge v12, v9, :cond_4ca

    const/4 v13, 0x1

    if-nez v12, :cond_100

    .line 933
    invoke-static {v15, v15, v15, v15}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    goto :goto_117

    .line 935
    :cond_100
    iget-object v9, v0, Ln;->t:Lnet/minecraft/client/Minecraft;

    iget-object v9, v9, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-boolean v9, v9, Lkv;->g:Z

    if-eqz v9, :cond_114

    .line 936
    sget v9, Lpx;->b:I

    if-nez v9, :cond_110

    invoke-static {v15, v13, v13, v13}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    goto :goto_117

    .line 937
    :cond_110
    invoke-static {v13, v15, v15, v13}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    goto :goto_117

    .line 939
    :cond_114
    invoke-static {v13, v13, v13, v13}, Lorg/lwjgl/opengl/GL11;->glColorMask(ZZZZ)V

    :goto_117
    const/16 v23, -0x2

    move/from16 v10, v23

    :goto_11b
    const/4 v11, 0x3

    if-gt v10, v11, :cond_4ae

    move/from16 v9, v23

    :goto_120
    if-gt v9, v11, :cond_48f

    .line 944
    invoke-virtual {v4}, Lnw;->b()V

    mul-int/lit8 v11, v10, 0x8

    int-to-float v11, v11

    mul-int/lit8 v13, v9, 0x8

    int-to-float v13, v13

    sub-float v24, v11, v5

    sub-float v25, v13, v6

    const/high16 v17, -0x3f600000    # -5.0f

    cmpl-float v17, v2, v17

    if-lez v17, :cond_1c9

    const v17, 0x3f333333    # 0.7f

    mul-float v14, v7, v17

    mul-float v15, v8, v17

    mul-float v3, v1, v17

    const v0, 0x3f4ccccd    # 0.8f

    .line 953
    invoke-virtual {v4, v14, v15, v3, v0}, Lnw;->a(FFFF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 954
    invoke-virtual {v4, v3, v0, v3}, Lnw;->b(FFF)V

    add-float v0, v24, v3

    float-to-double v14, v0

    add-float v0, v2, v3

    move-object/from16 v30, v4

    float-to-double v3, v0

    move/from16 v31, v5

    const/16 v0, 0x8

    int-to-float v5, v0

    add-float v0, v25, v5

    move/from16 v32, v1

    float-to-double v0, v0

    const/16 v17, 0x0

    add-float v33, v11, v17

    mul-float v33, v33, v20

    move/from16 v34, v6

    add-float v6, v33, v21

    move/from16 v33, v7

    float-to-double v6, v6

    add-float v17, v13, v5

    mul-float v17, v17, v20

    move/from16 v35, v9

    add-float v9, v17, v22

    move/from16 v36, v5

    move-wide/from16 v37, v6

    float-to-double v5, v9

    move/from16 v7, v35

    move-object/from16 v9, v30

    move v7, v10

    move/from16 v39, v11

    const/16 v40, 0x3

    move-wide v10, v14

    move/from16 v41, v12

    move/from16 v42, v13

    move-wide v12, v3

    move/from16 p1, v7

    move-wide/from16 v44, v14

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v43, 0x0

    move-wide v14, v0

    move-wide/from16 v16, v37

    move-wide/from16 v18, v5

    .line 955
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    add-float v9, v24, v36

    float-to-double v14, v9

    add-float v11, v39, v36

    mul-float v11, v11, v20

    add-float v11, v11, v21

    float-to-double v12, v11

    move-object/from16 v9, v30

    move-wide v10, v14

    move-wide/from16 v46, v12

    move-wide v12, v3

    move-wide/from16 v48, v14

    move-wide v14, v0

    move-wide/from16 v16, v46

    .line 956
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    const/4 v0, 0x0

    add-float v1, v25, v0

    float-to-double v5, v1

    add-float v13, v42, v0

    mul-float v13, v13, v20

    add-float v13, v13, v22

    float-to-double v0, v13

    move-wide/from16 v10, v48

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v18, v0

    .line 957
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move-wide/from16 v10, v44

    move-wide/from16 v16, v37

    .line 958
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    goto :goto_1e2

    :cond_1c9
    move/from16 v32, v1

    move-object/from16 v30, v4

    move/from16 v31, v5

    move/from16 v34, v6

    move/from16 v33, v7

    move/from16 v35, v9

    move/from16 p1, v10

    move/from16 v39, v11

    move/from16 v41, v12

    move/from16 v42, v13

    move v7, v14

    move/from16 v43, v15

    const/16 v40, 0x3

    :goto_1e2
    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, v2, v0

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v3, 0x3a800000    # 9.765625E-4f

    if-gtz v0, :cond_262

    move-object/from16 v0, v30

    move/from16 v5, v32

    move/from16 v4, v33

    const v6, 0x3f4ccccd    # 0.8f

    .line 962
    invoke-virtual {v0, v4, v8, v5, v6}, Lnw;->a(FFFF)V

    const/4 v6, 0x0

    .line 963
    invoke-virtual {v0, v6, v7, v6}, Lnw;->b(FFF)V

    add-float v9, v24, v6

    float-to-double v14, v9

    add-float v9, v2, v1

    sub-float/2addr v9, v3

    float-to-double v12, v9

    const/16 v9, 0x8

    int-to-float v10, v9

    add-float v9, v25, v10

    move/from16 v30, v2

    float-to-double v1, v9

    add-float v11, v39, v6

    mul-float v11, v11, v20

    add-float v11, v11, v21

    move v6, v8

    float-to-double v7, v11

    add-float v9, v42, v10

    mul-float v9, v9, v20

    add-float v9, v9, v22

    move/from16 v37, v4

    float-to-double v3, v9

    move-object v9, v0

    move/from16 v38, v10

    move-wide v10, v14

    move-wide/from16 v44, v12

    move-wide/from16 v46, v14

    move-wide v14, v1

    move-wide/from16 v16, v7

    move-wide/from16 v18, v3

    .line 964
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    add-float v10, v24, v38

    float-to-double v14, v10

    add-float v11, v39, v38

    mul-float v11, v11, v20

    add-float v11, v11, v21

    float-to-double v12, v11

    move-wide v10, v14

    move-wide/from16 v48, v12

    move-wide/from16 v12, v44

    move-wide/from16 v50, v14

    move-wide v14, v1

    move-wide/from16 v16, v48

    .line 965
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    const/4 v1, 0x0

    add-float v3, v25, v1

    float-to-double v2, v3

    add-float v13, v42, v1

    mul-float v13, v13, v20

    add-float v13, v13, v22

    float-to-double v14, v13

    move-wide/from16 v10, v50

    move-wide/from16 v12, v44

    move-wide/from16 v50, v14

    move-wide v14, v2

    move-wide/from16 v18, v50

    .line 966
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move-wide/from16 v10, v46

    move-wide/from16 v16, v7

    .line 967
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    goto :goto_26b

    :cond_262
    move v6, v8

    move-object/from16 v0, v30

    move/from16 v5, v32

    move/from16 v37, v33

    move/from16 v30, v2

    :goto_26b
    const v1, 0x3f666666    # 0.9f

    mul-float v7, v37, v1

    mul-float v8, v6, v1

    mul-float/2addr v1, v5

    const v2, 0x3f4ccccd    # 0.8f

    .line 970
    invoke-virtual {v0, v7, v8, v1, v2}, Lnw;->a(FFFF)V

    const/4 v1, -0x1

    const/high16 v2, 0x3f000000    # 0.5f

    move/from16 v3, p1

    if-le v3, v1, :cond_2e9

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v7, 0x0

    .line 972
    invoke-virtual {v0, v4, v7, v7}, Lnw;->b(FFF)V

    move/from16 v4, v43

    :goto_288
    const/16 v8, 0x8

    if-ge v4, v8, :cond_2e9

    int-to-float v9, v4

    add-float v10, v24, v9

    add-float/2addr v10, v7

    float-to-double v14, v10

    add-float v10, v30, v7

    float-to-double v12, v10

    int-to-float v7, v8

    add-float v8, v25, v7

    float-to-double v10, v8

    add-float v8, v39, v9

    add-float/2addr v8, v2

    mul-float v8, v8, v20

    add-float v8, v8, v21

    float-to-double v8, v8

    add-float v7, v42, v7

    mul-float v7, v7, v20

    add-float v7, v7, v22

    float-to-double v1, v7

    move-wide v7, v8

    move-object v9, v0

    move-wide/from16 v44, v10

    move-wide v10, v14

    move-wide/from16 v46, v12

    move-wide/from16 v48, v14

    move-wide/from16 v14, v44

    move-wide/from16 v16, v7

    move-wide/from16 v18, v1

    .line 974
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    const/high16 v9, 0x40800000    # 4.0f

    add-float v10, v30, v9

    float-to-double v14, v10

    move-object v9, v0

    move-wide/from16 v10, v48

    move-wide v12, v14

    move-wide/from16 v50, v14

    move-wide/from16 v14, v44

    .line 975
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    const/4 v1, 0x0

    add-float v2, v25, v1

    float-to-double v14, v2

    add-float v13, v42, v1

    mul-float v13, v13, v20

    add-float v13, v13, v22

    float-to-double v1, v13

    move-wide/from16 v12, v50

    move-wide/from16 v44, v14

    move-wide/from16 v18, v1

    .line 976
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move-wide/from16 v12, v46

    .line 977
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    add-int/lit8 v4, v4, 0x1

    const/4 v1, -0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    goto :goto_288

    :cond_2e9
    const/4 v1, 0x1

    if-gt v3, v1, :cond_35a

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 982
    invoke-virtual {v0, v2, v4, v4}, Lnw;->b(FFF)V

    move/from16 v7, v43

    :goto_2f4
    const/16 v8, 0x8

    if-ge v7, v8, :cond_35a

    int-to-float v9, v7

    add-float v10, v24, v9

    add-float/2addr v10, v2

    const/high16 v2, 0x3a800000    # 9.765625E-4f

    sub-float/2addr v10, v2

    float-to-double v14, v10

    add-float v2, v30, v4

    float-to-double v12, v2

    int-to-float v2, v8

    add-float v4, v25, v2

    float-to-double v10, v4

    add-float v4, v39, v9

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v4, v8

    mul-float v4, v4, v20

    add-float v4, v4, v21

    float-to-double v8, v4

    add-float v2, v42, v2

    mul-float v2, v2, v20

    add-float v2, v2, v22

    float-to-double v1, v2

    move-wide/from16 v44, v8

    move-object v9, v0

    move-wide/from16 v46, v10

    move-wide v10, v14

    move-wide/from16 v48, v12

    move-wide/from16 v50, v14

    move-wide/from16 v14, v46

    move-wide/from16 v16, v44

    move-wide/from16 v18, v1

    .line 984
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    const/high16 v4, 0x40800000    # 4.0f

    add-float v8, v30, v4

    float-to-double v14, v8

    move-wide/from16 v10, v50

    move-wide v12, v14

    move-wide/from16 v52, v14

    move-wide/from16 v14, v46

    .line 985
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    const/4 v1, 0x0

    add-float v2, v25, v1

    float-to-double v14, v2

    add-float v13, v42, v1

    mul-float v13, v13, v20

    add-float v13, v13, v22

    float-to-double v1, v13

    move-wide/from16 v12, v52

    move-wide/from16 v46, v14

    move-wide/from16 v18, v1

    .line 986
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move-wide/from16 v12, v48

    .line 987
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    goto :goto_2f4

    :cond_35a
    const v1, 0x3f4ccccd    # 0.8f

    mul-float v7, v37, v1

    mul-float v8, v6, v1

    mul-float v2, v5, v1

    .line 991
    invoke-virtual {v0, v7, v8, v2, v1}, Lnw;->a(FFFF)V

    move/from16 v1, v35

    const/4 v2, -0x1

    if-le v1, v2, :cond_3e2

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v4, 0x0

    .line 993
    invoke-virtual {v0, v4, v4, v2}, Lnw;->b(FFF)V

    move/from16 v2, v43

    :goto_373
    const/16 v7, 0x8

    if-ge v2, v7, :cond_3e2

    add-float v7, v24, v4

    float-to-double v7, v7

    const/high16 v9, 0x40800000    # 4.0f

    add-float v10, v30, v9

    float-to-double v14, v10

    int-to-float v9, v2

    add-float v10, v25, v9

    add-float/2addr v10, v4

    float-to-double v12, v10

    add-float v11, v39, v4

    mul-float v11, v11, v20

    add-float v11, v11, v21

    float-to-double v10, v11

    add-float v4, v42, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v4, v9

    mul-float v4, v4, v20

    add-float v4, v4, v22

    move/from16 v26, v5

    float-to-double v4, v4

    move-object v9, v0

    move-wide/from16 v44, v10

    move-wide v10, v7

    move-wide/from16 v46, v12

    move-wide v12, v14

    move-wide/from16 v48, v14

    move-wide/from16 v14, v46

    move-wide/from16 v16, v44

    move-wide/from16 v18, v4

    .line 995
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    const/16 v9, 0x8

    int-to-float v10, v9

    add-float v9, v24, v10

    float-to-double v14, v9

    add-float v11, v39, v10

    mul-float v11, v11, v20

    add-float v11, v11, v21

    float-to-double v12, v11

    move-object v9, v0

    move-wide v10, v14

    move-wide/from16 v50, v12

    move-wide/from16 v12, v48

    move-wide/from16 v48, v14

    move-wide/from16 v14, v46

    move-wide/from16 v16, v50

    .line 996
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    const/4 v9, 0x0

    add-float v10, v30, v9

    float-to-double v14, v10

    move-object v9, v0

    move-wide/from16 v10, v48

    move-wide v12, v14

    move-wide/from16 v48, v14

    move-wide/from16 v14, v46

    .line 997
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move-wide v10, v7

    move-wide/from16 v12, v48

    move-wide/from16 v16, v44

    .line 998
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v26

    const/4 v4, 0x0

    goto :goto_373

    :cond_3e2
    move/from16 v26, v5

    const/4 v2, 0x1

    if-gt v1, v2, :cond_46b

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 1003
    invoke-virtual {v0, v5, v5, v4}, Lnw;->b(FFF)V

    move/from16 v7, v43

    const/16 v8, 0x8

    :goto_3f1
    if-ge v7, v8, :cond_46b

    add-float v8, v24, v5

    float-to-double v14, v8

    const/high16 v8, 0x40800000    # 4.0f

    add-float v9, v30, v8

    float-to-double v12, v9

    int-to-float v9, v7

    add-float v10, v25, v9

    add-float/2addr v10, v4

    const/high16 v4, 0x3a800000    # 9.765625E-4f

    sub-float/2addr v10, v4

    float-to-double v10, v10

    add-float v16, v39, v5

    mul-float v16, v16, v20

    add-float v5, v16, v21

    float-to-double v4, v5

    add-float v9, v42, v9

    const/high16 v27, 0x3f000000    # 0.5f

    add-float v9, v9, v27

    mul-float v9, v9, v20

    add-float v9, v9, v22

    move/from16 p1, v3

    float-to-double v2, v9

    move-object v9, v0

    move-wide/from16 v44, v10

    move-wide v10, v14

    move-wide/from16 v46, v12

    move-wide/from16 v48, v14

    move-wide/from16 v14, v44

    move-wide/from16 v16, v4

    move-wide/from16 v18, v2

    .line 1005
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    const/16 v14, 0x8

    int-to-float v9, v14

    add-float v10, v24, v9

    float-to-double v12, v10

    add-float v11, v39, v9

    mul-float v11, v11, v20

    add-float v11, v11, v21

    float-to-double v10, v11

    move-object v9, v0

    move-wide/from16 v50, v10

    move-wide v10, v12

    move-wide/from16 v52, v12

    move-wide/from16 v12, v46

    move/from16 v29, v14

    move-wide/from16 v14, v44

    move-wide/from16 v16, v50

    .line 1006
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    const/16 v28, 0x0

    add-float v9, v30, v28

    float-to-double v14, v9

    move-object v9, v0

    move-wide/from16 v10, v52

    move-wide v12, v14

    move-wide/from16 v46, v14

    move-wide/from16 v14, v44

    .line 1007
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    move-wide/from16 v10, v48

    move-wide/from16 v12, v46

    move-wide/from16 v16, v4

    .line 1008
    invoke-virtual/range {v9 .. v19}, Lnw;->a(DDDDD)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v3, p1

    move/from16 v5, v28

    move/from16 v8, v29

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3f1

    :cond_46b
    move/from16 p1, v3

    .line 1011
    invoke-virtual {v0}, Lnw;->a()V

    add-int/lit8 v9, v1, 0x1

    move/from16 v10, p1

    move-object v4, v0

    move v8, v6

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v5, v31

    move/from16 v6, v34

    move/from16 v7, v37

    move/from16 v11, v40

    move/from16 v12, v41

    move/from16 v15, v43

    const/16 v3, 0xbe2

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    goto/16 :goto_120

    :cond_48f
    move/from16 v26, v1

    move/from16 v30, v2

    move-object v0, v4

    move/from16 v31, v5

    move/from16 v34, v6

    move/from16 v37, v7

    move v6, v8

    move/from16 p1, v10

    move/from16 v41, v12

    move/from16 v43, v15

    add-int/lit8 v10, p1, 0x1

    move/from16 v6, v34

    const/16 v3, 0xbe2

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    goto/16 :goto_11b

    :cond_4ae
    move/from16 v26, v1

    move/from16 v30, v2

    move-object v0, v4

    move/from16 v31, v5

    move/from16 v34, v6

    move/from16 v37, v7

    move v6, v8

    move/from16 v41, v12

    move/from16 v43, v15

    add-int/lit8 v12, v41, 0x1

    move/from16 v6, v34

    const/16 v3, 0xbe2

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    goto/16 :goto_f6

    :cond_4ca
    move v1, v14

    .line 1016
    invoke-static {v1, v1, v1, v1}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/16 v0, 0xbe2

    .line 1017
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v0, 0xb44

    .line 1018
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    return-void
.end method

.method public d()V
    .registers 2

    .line 647
    iget v0, p0, Ln;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln;->x:I

    return-void
.end method

.method public e()V
    .registers 4

    const/4 v0, 0x0

    .line 1429
    :goto_1
    iget-object v1, p0, Ln;->o:[Ldk;

    array-length v2, v1

    if-ge v0, v2, :cond_27

    .line 1430
    aget-object v1, v1, v0

    iget-boolean v1, v1, Ldk;->A:Z

    if-eqz v1, :cond_24

    .line 1431
    iget-object v1, p0, Ln;->o:[Ldk;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Ldk;->u:Z

    if-nez v1, :cond_24

    .line 1432
    iget-object v1, p0, Ln;->m:Ljava/util/List;

    iget-object v2, p0, Ln;->o:[Ldk;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    iget-object v1, p0, Ln;->o:[Ldk;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ldk;->f()V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public f()V
    .registers 2

    .line 1443
    iget v0, p0, Ln;->s:I

    invoke-static {v0}, Lge;->b(I)V

    return-void
.end method
