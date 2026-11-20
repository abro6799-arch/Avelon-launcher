###### Class defpackage.xm (xm)
.class public Lxm;
.super Lda;
.source "SourceFile"


# static fields
.field private static final s:I

.field private static final t:I

.field private static final u:I

.field private static final v:I


# instance fields
.field protected a:I

.field protected i:I

.field protected j:I

.field protected l:I

.field protected m:D

.field protected n:D

.field protected o:D

.field protected p:D

.field protected q:D

.field protected r:D

.field private w:I

.field private x:Lxi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    sget v0, Lep;->a:I

    mul-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, -0x70

    sput v0, Lxm;->s:I

    .line 36
    sget v0, Lep;->b:I

    mul-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, -0x70

    sput v0, Lxm;->t:I

    .line 37
    sget v0, Lep;->c:I

    mul-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, -0x4d

    sput v0, Lxm;->u:I

    .line 38
    sget v0, Lep;->d:I

    mul-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, -0x4d

    sput v0, Lxm;->v:I

    return-void
.end method

.method public constructor <init>(Lxi;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Lda;-><init>()V

    const/16 v0, 0x100

    .line 42
    iput v0, p0, Lxm;->a:I

    const/16 v0, 0xca

    .line 43
    iput v0, p0, Lxm;->i:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lxm;->j:I

    .line 45
    iput v0, p0, Lxm;->l:I

    .line 51
    iput v0, p0, Lxm;->w:I

    .line 56
    iput-object p1, p0, Lxm;->x:Lxi;

    .line 60
    sget-object p1, Lep;->f:Lny;

    iget p1, p1, Lny;->a:I

    mul-int/lit8 p1, p1, 0x18

    add-int/lit8 p1, p1, -0x46

    add-int/lit8 p1, p1, -0xc

    int-to-double v0, p1

    iput-wide v0, p0, Lxm;->q:D

    iput-wide v0, p0, Lxm;->o:D

    iput-wide v0, p0, Lxm;->m:D

    .line 61
    sget-object p1, Lep;->f:Lny;

    iget p1, p1, Lny;->b:I

    mul-int/lit8 p1, p1, 0x18

    add-int/lit8 p1, p1, -0x46

    int-to-double v0, p1

    iput-wide v0, p0, Lxm;->r:D

    iput-wide v0, p0, Lxm;->p:D

    iput-wide v0, p0, Lxm;->n:D

    return-void
.end method


# virtual methods
.method public a()V
    .registers 13

    .line 137
    iget-wide v0, p0, Lxm;->o:D

    iput-wide v0, p0, Lxm;->m:D

    .line 138
    iget-wide v2, p0, Lxm;->p:D

    iput-wide v2, p0, Lxm;->n:D

    .line 140
    iget-wide v4, p0, Lxm;->q:D

    sub-double/2addr v4, v0

    .line 141
    iget-wide v6, p0, Lxm;->r:D

    sub-double/2addr v6, v2

    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_20

    add-double/2addr v0, v4

    .line 143
    iput-wide v0, p0, Lxm;->o:D

    add-double/2addr v2, v6

    .line 144
    iput-wide v2, p0, Lxm;->p:D

    goto :goto_2d

    :cond_20
    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v4, v8

    add-double/2addr v0, v4

    .line 146
    iput-wide v0, p0, Lxm;->o:D

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 147
    iput-wide v2, p0, Lxm;->p:D

    :goto_2d
    return-void
.end method

.method protected a(CI)V
    .registers 4

    .line 83
    iget-object v0, p0, Lxm;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v0, v0, Lkv;->r:Lqb;

    iget v0, v0, Lqb;->b:I

    if-ne p2, v0, :cond_16

    .line 84
    iget-object p1, p0, Lxm;->b:Lnet/minecraft/client/Minecraft;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 85
    iget-object p1, p0, Lxm;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {p1}, Lnet/minecraft/client/Minecraft;->g()V

    goto :goto_19

    .line 87
    :cond_16
    invoke-super {p0, p1, p2}, Lda;->a(CI)V

    :goto_19
    return-void
.end method

.method public a(IIF)V
    .registers 12

    const/4 v0, 0x0

    .line 92
    invoke-static {v0}, Lorg/lwjgl/input/Mouse;->isButtonDown(I)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 93
    iget v0, p0, Lxm;->c:I

    iget v1, p0, Lxm;->a:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 94
    iget v1, p0, Lxm;->d:I

    iget v2, p0, Lxm;->i:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, 0x11

    .line 99
    iget v2, p0, Lxm;->w:I

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    if-ne v2, v3, :cond_51

    :cond_20
    if-lt p1, v0, :cond_51

    add-int/lit16 v0, v0, 0xe0

    if-ge p1, v0, :cond_51

    if-lt p2, v1, :cond_51

    add-int/lit16 v1, v1, 0x9b

    if-ge p2, v1, :cond_51

    if-nez v2, :cond_31

    .line 102
    iput v3, p0, Lxm;->w:I

    goto :goto_4d

    .line 104
    :cond_31
    iget-wide v0, p0, Lxm;->o:D

    iget v2, p0, Lxm;->j:I

    sub-int v2, p1, v2

    int-to-double v4, v2

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lxm;->o:D

    .line 105
    iget-wide v4, p0, Lxm;->p:D

    iget v2, p0, Lxm;->l:I

    sub-int v2, p2, v2

    int-to-double v6, v2

    sub-double/2addr v4, v6

    iput-wide v4, p0, Lxm;->p:D

    .line 106
    iput-wide v0, p0, Lxm;->m:D

    iput-wide v0, p0, Lxm;->q:D

    .line 107
    iput-wide v4, p0, Lxm;->n:D

    iput-wide v4, p0, Lxm;->r:D

    .line 109
    :goto_4d
    iput p1, p0, Lxm;->j:I

    .line 110
    iput p2, p0, Lxm;->l:I

    .line 114
    :cond_51
    iget-wide v0, p0, Lxm;->q:D

    sget v2, Lxm;->s:I

    int-to-double v4, v2

    cmpg-double v0, v0, v4

    if-gez v0, :cond_5d

    int-to-double v0, v2

    iput-wide v0, p0, Lxm;->q:D

    .line 115
    :cond_5d
    iget-wide v0, p0, Lxm;->r:D

    sget v2, Lxm;->t:I

    int-to-double v4, v2

    cmpg-double v0, v0, v4

    if-gez v0, :cond_69

    int-to-double v0, v2

    iput-wide v0, p0, Lxm;->r:D

    .line 116
    :cond_69
    iget-wide v0, p0, Lxm;->q:D

    sget v2, Lxm;->u:I

    int-to-double v4, v2

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_76

    sub-int/2addr v2, v3

    int-to-double v0, v2

    iput-wide v0, p0, Lxm;->q:D

    .line 117
    :cond_76
    iget-wide v0, p0, Lxm;->r:D

    sget v2, Lxm;->v:I

    int-to-double v4, v2

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_86

    sub-int/2addr v2, v3

    int-to-double v0, v2

    iput-wide v0, p0, Lxm;->r:D

    goto :goto_86

    .line 119
    :cond_84
    iput v0, p0, Lxm;->w:I

    .line 122
    :cond_86
    :goto_86
    invoke-virtual {p0}, Lxm;->i()V

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lxm;->b(IIF)V

    const/16 p1, 0xb50

    .line 126
    invoke-static {p1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 p2, 0xb71

    .line 127
    invoke-static {p2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 129
    invoke-virtual {p0}, Lxm;->k()V

    .line 131
    invoke-static {p1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 132
    invoke-static {p2}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    return-void
.end method

.method protected a(Lke;)V
    .registers 4

    .line 73
    iget v0, p1, Lke;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 74
    iget-object v0, p0, Lxm;->b:Lnet/minecraft/client/Minecraft;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 75
    iget-object v0, p0, Lxm;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->g()V

    .line 77
    :cond_10
    invoke-super {p0, p1}, Lda;->a(Lke;)V

    return-void
.end method

.method public b()V
    .registers 10

    .line 66
    iget-object v0, p0, Lxm;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    iget-object v0, p0, Lxm;->e:Ljava/util/List;

    new-instance v8, Lab;

    const/4 v2, 0x1

    iget v1, p0, Lxm;->c:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v1, 0x18

    iget v1, p0, Lxm;->d:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v1, 0x4a

    const/16 v5, 0x50

    const/16 v6, 0x14

    const-string v1, "gui.done"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lab;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(IIF)V
    .registers 45

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 161
    iget-wide v0, v7, Lxm;->m:D

    iget-wide v2, v7, Lxm;->o:D

    sub-double/2addr v2, v0

    move/from16 v10, p3

    float-to-double v4, v10

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 162
    iget-wide v1, v7, Lxm;->n:D

    iget-wide v11, v7, Lxm;->p:D

    sub-double/2addr v11, v1

    mul-double/2addr v11, v4

    add-double/2addr v1, v11

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    .line 164
    sget v2, Lxm;->s:I

    if-ge v0, v2, :cond_24

    move v0, v2

    .line 165
    :cond_24
    sget v2, Lxm;->t:I

    if-ge v1, v2, :cond_29

    move v1, v2

    .line 166
    :cond_29
    sget v2, Lxm;->u:I

    const/4 v11, 0x1

    if-lt v0, v2, :cond_30

    add-int/lit8 v0, v2, -0x1

    :cond_30
    move v12, v0

    .line 167
    sget v0, Lxm;->v:I

    if-lt v1, v0, :cond_37

    add-int/lit8 v1, v0, -0x1

    :cond_37
    move v13, v1

    .line 170
    iget-object v0, v7, Lxm;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v1, "/terrain.png"

    invoke-virtual {v0, v1}, Lji;->b(Ljava/lang/String;)I

    move-result v0

    .line 171
    iget-object v1, v7, Lxm;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v2, "/achievement/bg.png"

    invoke-virtual {v1, v2}, Lji;->b(Ljava/lang/String;)I

    move-result v14

    .line 173
    iget v1, v7, Lxm;->c:I

    iget v2, v7, Lxm;->a:I

    sub-int/2addr v1, v2

    const/4 v15, 0x2

    div-int/lit8 v16, v1, 0x2

    .line 174
    iget v1, v7, Lxm;->d:I

    iget v2, v7, Lxm;->i:I

    sub-int/2addr v1, v2

    div-int/lit8 v17, v1, 0x2

    add-int/lit8 v6, v16, 0x10

    add-int/lit8 v5, v17, 0x11

    const/4 v4, 0x0

    .line 179
    iput v4, v7, Lxm;->k:F

    const/16 v1, 0x206

    .line 181
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDepthFunc(I)V

    .line 182
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const/high16 v1, -0x3cb80000    # -200.0f

    .line 183
    invoke-static {v4, v4, v1}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    const/16 v18, 0xde1

    .line 186
    invoke-static/range {v18 .. v18}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v19, 0xb50

    .line 187
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const v20, 0x803a    # 4.5999E-41f

    .line 188
    invoke-static/range {v20 .. v20}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v21, 0xb57

    .line 189
    invoke-static/range {v21 .. v21}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 191
    iget-object v1, v7, Lxm;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v1, v0}, Lji;->b(I)V

    add-int/lit16 v0, v12, 0x120

    shr-int/lit8 v3, v0, 0x4

    add-int/lit16 v1, v13, 0x120

    shr-int/lit8 v22, v1, 0x4

    .line 195
    rem-int/lit8 v23, v0, 0x10

    .line 196
    rem-int/lit8 v24, v1, 0x10

    .line 204
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v25, 0x0

    :goto_9e
    mul-int/lit8 v26, v25, 0x10

    sub-int v0, v26, v24

    const v27, 0x3f19999a    # 0.6f

    const/16 v11, 0xe0

    const/16 v4, 0x9b

    const/high16 v15, 0x3f800000    # 1.0f

    if-ge v0, v4, :cond_16f

    add-int v4, v22, v25

    int-to-float v0, v4

    const/high16 v30, 0x41c80000    # 25.0f

    div-float v0, v0, v30

    const v30, 0x3e99999a    # 0.3f

    mul-float v0, v0, v30

    sub-float v0, v27, v0

    .line 209
    invoke-static {v0, v0, v0, v15}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/4 v15, 0x0

    :goto_bf
    mul-int/lit8 v0, v15, 0x10

    sub-int v1, v0, v23

    if-ge v1, v11, :cond_15d

    add-int/lit16 v1, v3, 0x4d2

    add-int/2addr v1, v15

    move/from16 v31, v12

    int-to-long v11, v1

    .line 213
    invoke-virtual {v2, v11, v12}, Ljava/util/Random;->setSeed(J)V

    .line 214
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    add-int/lit8 v1, v22, 0x1

    add-int v1, v1, v25

    .line 215
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    div-int/lit8 v11, v4, 0x2

    add-int/2addr v1, v11

    .line 216
    sget-object v11, Luu;->F:Luu;

    iget v11, v11, Luu;->bm:I

    const/16 v12, 0x25

    if-gt v1, v12, :cond_11f

    const/16 v12, 0x23

    if-ne v4, v12, :cond_e9

    goto :goto_11f

    :cond_e9
    const/16 v12, 0x16

    if-ne v1, v12, :cond_fe

    const/4 v12, 0x2

    .line 221
    invoke-virtual {v2, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_f9

    .line 222
    sget-object v1, Luu;->ax:Luu;

    iget v11, v1, Luu;->bm:I

    goto :goto_123

    .line 224
    :cond_f9
    sget-object v1, Luu;->aO:Luu;

    iget v11, v1, Luu;->bm:I

    goto :goto_123

    :cond_fe
    const/16 v12, 0xa

    if-ne v1, v12, :cond_107

    .line 227
    sget-object v1, Luu;->I:Luu;

    iget v11, v1, Luu;->bm:I

    goto :goto_123

    :cond_107
    const/16 v12, 0x8

    if-ne v1, v12, :cond_110

    .line 229
    sget-object v1, Luu;->J:Luu;

    iget v11, v1, Luu;->bm:I

    goto :goto_123

    :cond_110
    const/4 v12, 0x4

    if-le v1, v12, :cond_118

    .line 231
    sget-object v1, Luu;->u:Luu;

    iget v11, v1, Luu;->bm:I

    goto :goto_123

    :cond_118
    if-lez v1, :cond_123

    .line 233
    sget-object v1, Luu;->w:Luu;

    iget v11, v1, Luu;->bm:I

    goto :goto_123

    .line 219
    :cond_11f
    :goto_11f
    sget-object v1, Luu;->A:Luu;

    iget v11, v1, Luu;->bm:I

    :cond_123
    :goto_123
    add-int/2addr v0, v6

    sub-int v1, v0, v23

    add-int v0, v5, v26

    sub-int v12, v0, v24

    .line 236
    rem-int/lit8 v0, v11, 0x10

    const/16 v27, 0x4

    shl-int/lit8 v32, v0, 0x4

    shr-int/lit8 v0, v11, 0x4

    shl-int/lit8 v11, v0, 0x4

    const/16 v27, 0x10

    const/16 v33, 0x10

    move-object/from16 v0, p0

    move-object/from16 v30, v2

    move v2, v12

    move v12, v3

    move/from16 v3, v32

    move/from16 v28, v4

    move v4, v11

    move v11, v5

    move/from16 v5, v27

    move v10, v6

    move/from16 v6, v33

    invoke-virtual/range {v0 .. v6}, Lxm;->b(IIIIII)V

    add-int/lit8 v15, v15, 0x1

    move v6, v10

    move v5, v11

    move v3, v12

    move/from16 v4, v28

    move-object/from16 v2, v30

    move/from16 v12, v31

    const/16 v11, 0xe0

    move/from16 v10, p3

    goto/16 :goto_bf

    :cond_15d
    move-object/from16 v30, v2

    move v11, v5

    move v10, v6

    move/from16 v31, v12

    move v12, v3

    add-int/lit8 v25, v25, 0x1

    move/from16 v12, v31

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v15, 0x2

    move/from16 v10, p3

    goto/16 :goto_9e

    :cond_16f
    move v11, v5

    move v10, v6

    move/from16 v31, v12

    const/16 v12, 0xb71

    .line 241
    invoke-static {v12}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v22, 0x203

    .line 244
    invoke-static/range {v22 .. v22}, Lorg/lwjgl/opengl/GL11;->glDepthFunc(I)V

    .line 246
    invoke-static/range {v18 .. v18}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/4 v1, 0x0

    .line 248
    :goto_181
    sget-object v0, Lep;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_219

    .line 249
    sget-object v0, Lep;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lny;

    .line 250
    iget-object v2, v0, Lny;->c:Lny;

    if-nez v2, :cond_197

    goto/16 :goto_20d

    .line 252
    :cond_197
    iget v2, v0, Lny;->a:I

    mul-int/lit8 v2, v2, 0x18

    sub-int v2, v2, v31

    add-int/lit8 v2, v2, 0xb

    add-int/2addr v2, v10

    .line 253
    iget v3, v0, Lny;->b:I

    mul-int/lit8 v3, v3, 0x18

    sub-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xb

    add-int/2addr v3, v11

    .line 255
    iget-object v5, v0, Lny;->c:Lny;

    iget v5, v5, Lny;->a:I

    mul-int/lit8 v5, v5, 0x18

    sub-int v5, v5, v31

    add-int/lit8 v5, v5, 0xb

    add-int/2addr v5, v10

    .line 256
    iget-object v6, v0, Lny;->c:Lny;

    iget v6, v6, Lny;->b:I

    mul-int/lit8 v6, v6, 0x18

    sub-int/2addr v6, v13

    add-int/lit8 v6, v6, 0xb

    add-int/2addr v6, v11

    .line 260
    iget-object v12, v7, Lxm;->x:Lxi;

    invoke-virtual {v12, v0}, Lxi;->a(Lny;)Z

    move-result v12

    .line 261
    iget-object v4, v7, Lxm;->x:Lxi;

    invoke-virtual {v4, v0}, Lxi;->b(Lny;)Z

    move-result v0

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    const-wide/16 v28, 0x258

    rem-long v8, v25, v28

    long-to-double v8, v8

    const-wide v25, 0x4082c00000000000L    # 600.0

    div-double v8, v8, v25

    const-wide v25, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v25

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v25

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v25, 0x3fe3333333333333L    # 0.6

    cmpl-double v4, v8, v25

    if-lez v4, :cond_1f4

    const/16 v4, 0xff

    goto :goto_1f6

    :cond_1f4
    const/16 v4, 0x82

    :goto_1f6
    if-eqz v12, :cond_1fc

    const v0, -0x8f8f90

    goto :goto_207

    :cond_1fc
    if-eqz v0, :cond_205

    const v0, 0xff00

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v0, v4

    goto :goto_207

    :cond_205
    const/high16 v0, -0x1000000

    .line 268
    :goto_207
    invoke-virtual {v7, v2, v5, v3, v0}, Lxm;->a(IIII)V

    .line 269
    invoke-virtual {v7, v5, v3, v6, v0}, Lxm;->b(IIII)V

    :goto_20d
    add-int/lit8 v1, v1, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    const/16 v4, 0x9b

    const/16 v12, 0xb71

    goto/16 :goto_181

    .line 273
    :cond_219
    new-instance v8, Lbb;

    invoke-direct {v8}, Lbb;-><init>()V

    .line 275
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    const/high16 v0, 0x43340000    # 180.0f

    const/4 v9, 0x0

    .line 276
    invoke-static {v0, v15, v9, v9}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    .line 277
    invoke-static {}, Lu;->b()V

    .line 278
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    .line 279
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 280
    invoke-static/range {v20 .. v20}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 281
    invoke-static/range {v21 .. v21}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/4 v0, 0x0

    move-object v12, v0

    const/4 v6, 0x0

    .line 283
    :goto_239
    sget-object v0, Lep;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_395

    .line 284
    sget-object v0, Lep;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lny;

    .line 286
    iget v0, v5, Lny;->a:I

    mul-int/lit8 v0, v0, 0x18

    sub-int v0, v0, v31

    .line 287
    iget v1, v5, Lny;->b:I

    mul-int/lit8 v1, v1, 0x18

    sub-int/2addr v1, v13

    const/16 v2, -0x18

    if-lt v0, v2, :cond_381

    const/16 v2, -0x18

    if-lt v1, v2, :cond_381

    const/16 v4, 0xe0

    if-gt v0, v4, :cond_378

    const/16 v3, 0x9b

    if-gt v1, v3, :cond_36d

    .line 291
    iget-object v2, v7, Lxm;->x:Lxi;

    invoke-virtual {v2, v5}, Lxi;->a(Lny;)Z

    move-result v2

    if-eqz v2, :cond_271

    .line 293
    invoke-static {v15, v15, v15, v15}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    goto :goto_2b1

    .line 294
    :cond_271
    iget-object v2, v7, Lxm;->x:Lxi;

    invoke-virtual {v2, v5}, Lxi;->b(Lny;)Z

    move-result v2

    if-eqz v2, :cond_2ab

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v24, 0x258

    rem-long v3, v20, v24

    long-to-double v2, v3

    const-wide v20, 0x4082c00000000000L    # 600.0

    div-double v2, v2, v20

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v20

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v20, 0x3fe3333333333333L    # 0.6

    cmpg-double v2, v2, v20

    if-gez v2, :cond_2a4

    move/from16 v2, v27

    goto :goto_2a7

    :cond_2a4
    const v2, 0x3f4ccccd    # 0.8f

    .line 296
    :goto_2a7
    invoke-static {v2, v2, v2, v15}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    goto :goto_2b1

    :cond_2ab
    const v2, 0x3e99999a    # 0.3f

    .line 299
    invoke-static {v2, v2, v2, v15}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 302
    :goto_2b1
    iget-object v2, v7, Lxm;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v2, v14}, Lji;->b(I)V

    add-int v4, v10, v0

    add-int v3, v11, v1

    .line 305
    invoke-virtual {v5}, Lny;->f()Z

    move-result v0

    if-eqz v0, :cond_2e8

    add-int/lit8 v1, v4, -0x2

    add-int/lit8 v2, v3, -0x2

    const/16 v20, 0x1a

    const/16 v21, 0xca

    const/16 v24, 0x1a

    const/16 v25, 0x1a

    move-object/from16 v0, p0

    move v9, v3

    const/16 v26, 0x9b

    move/from16 v3, v20

    move v15, v4

    move/from16 v28, v26

    const/16 v26, 0xe0

    move/from16 v4, v21

    move-object/from16 v40, v5

    move/from16 v5, v24

    move/from16 v21, v6

    move/from16 v6, v25

    .line 306
    invoke-virtual/range {v0 .. v6}, Lxm;->b(IIIIII)V

    goto :goto_302

    :cond_2e8
    move v9, v3

    move v15, v4

    move-object/from16 v40, v5

    move/from16 v21, v6

    const/16 v26, 0xe0

    const/16 v28, 0x9b

    add-int/lit8 v1, v15, -0x2

    add-int/lit8 v2, v9, -0x2

    const/4 v3, 0x0

    const/16 v4, 0xca

    const/16 v5, 0x1a

    const/16 v6, 0x1a

    move-object/from16 v0, p0

    .line 308
    invoke-virtual/range {v0 .. v6}, Lxm;->b(IIIIII)V

    .line 311
    :goto_302
    iget-object v0, v7, Lxm;->x:Lxi;

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lxi;->b(Lny;)Z

    move-result v0

    if-nez v0, :cond_318

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 313
    invoke-static {v0, v0, v0, v2}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/4 v0, 0x0

    .line 314
    iput-boolean v0, v8, Lbb;->a:Z

    goto :goto_319

    :cond_318
    const/4 v0, 0x0

    .line 316
    :goto_319
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v2, 0xb44

    .line 317
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 318
    iget-object v2, v7, Lxm;->b:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->q:Lsj;

    iget-object v3, v7, Lxm;->b:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->p:Lji;

    iget-object v4, v1, Lny;->d:Liz;

    add-int/lit8 v38, v15, 0x3

    add-int/lit8 v39, v9, 0x3

    move-object/from16 v34, v8

    move-object/from16 v35, v2

    move-object/from16 v36, v3

    move-object/from16 v37, v4

    invoke-virtual/range {v34 .. v39}, Lbb;->a(Lsj;Lji;Liz;II)V

    .line 319
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 320
    iget-object v2, v7, Lxm;->x:Lxi;

    invoke-virtual {v2, v1}, Lxi;->b(Lny;)Z

    move-result v2

    if-nez v2, :cond_349

    const/4 v2, 0x1

    .line 321
    iput-boolean v2, v8, Lbb;->a:Z

    goto :goto_34a

    :cond_349
    const/4 v2, 0x1

    :goto_34a
    const/high16 v3, 0x3f800000    # 1.0f

    .line 323
    invoke-static {v3, v3, v3, v3}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    move/from16 v6, p1

    move/from16 v5, p2

    if-lt v6, v10, :cond_38d

    if-lt v5, v11, :cond_38d

    add-int/lit16 v3, v10, 0xe0

    if-ge v6, v3, :cond_38d

    add-int/lit16 v3, v11, 0x9b

    if-ge v5, v3, :cond_38d

    if-lt v6, v15, :cond_38d

    add-int/lit8 v4, v15, 0x16

    if-gt v6, v4, :cond_38d

    if-lt v5, v9, :cond_38d

    add-int/lit8 v3, v9, 0x16

    if-gt v5, v3, :cond_38d

    move-object v12, v1

    goto :goto_38d

    :cond_36d
    move/from16 v5, p2

    move/from16 v28, v3

    move/from16 v26, v4

    move/from16 v21, v6

    const/4 v0, 0x0

    const/4 v2, 0x1

    goto :goto_38b

    :cond_378
    move/from16 v5, p2

    move/from16 v26, v4

    move/from16 v21, v6

    const/4 v0, 0x0

    const/4 v2, 0x1

    goto :goto_389

    :cond_381
    move/from16 v5, p2

    move/from16 v21, v6

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v26, 0xe0

    :goto_389
    const/16 v28, 0x9b

    :goto_38b
    move/from16 v6, p1

    :cond_38d
    :goto_38d
    add-int/lit8 v1, v21, 0x1

    move v6, v1

    const/4 v9, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_239

    :cond_395
    move/from16 v6, p1

    move/from16 v5, p2

    const/16 v1, 0xb71

    .line 332
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v0, 0xbe2

    .line 333
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 334
    invoke-static {v0, v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 335
    iget-object v0, v7, Lxm;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    invoke-virtual {v0, v14}, Lji;->b(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 336
    iget v8, v7, Lxm;->a:I

    iget v9, v7, Lxm;->i:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v5, v8

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lxm;->b(IIIIII)V

    .line 339
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    const/4 v0, 0x0

    .line 341
    iput v0, v7, Lxm;->k:F

    .line 342
    invoke-static/range {v22 .. v22}, Lorg/lwjgl/opengl/GL11;->glDepthFunc(I)V

    const/16 v0, 0xb71

    .line 344
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 345
    invoke-static/range {v18 .. v18}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 346
    invoke-super/range {p0 .. p3}, Lda;->a(IIF)V

    if-eqz v12, :cond_4aa

    .line 350
    iget-object v8, v12, Lny;->f:Ljava/lang/String;

    .line 351
    invoke-virtual {v12}, Lny;->e()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, p1, 0xc

    const/4 v0, 0x4

    add-int/lit8 v11, p2, -0x4

    .line 356
    iget-object v0, v7, Lxm;->x:Lxi;

    invoke-virtual {v0, v12}, Lxi;->b(Lny;)Z

    move-result v0

    if-eqz v0, :cond_442

    .line 357
    iget-object v0, v7, Lxm;->g:Lsj;

    invoke-virtual {v0, v8}, Lsj;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 358
    iget-object v0, v7, Lxm;->g:Lsj;

    invoke-virtual {v0, v9, v13}, Lsj;->a(Ljava/lang/String;I)I

    move-result v0

    .line 359
    iget-object v1, v7, Lxm;->x:Lxi;

    invoke-virtual {v1, v12}, Lxi;->a(Lny;)Z

    move-result v1

    if-eqz v1, :cond_405

    add-int/lit8 v0, v0, 0xc

    :cond_405
    add-int/lit8 v1, v10, -0x3

    add-int/lit8 v2, v11, -0x3

    add-int v3, v10, v13

    add-int/lit8 v3, v3, 0x3

    add-int v14, v11, v0

    add-int/lit8 v0, v14, 0x3

    add-int/lit8 v4, v0, 0xc

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    .line 362
    invoke-virtual/range {v0 .. v6}, Lxm;->a(IIIIII)V

    .line 364
    iget-object v0, v7, Lxm;->g:Lsj;

    add-int/lit8 v3, v11, 0xc

    const v5, -0x5f5f60

    move-object v1, v9

    move v2, v10

    move v4, v13

    invoke-virtual/range {v0 .. v5}, Lsj;->a(Ljava/lang/String;IIII)V

    .line 365
    iget-object v0, v7, Lxm;->x:Lxi;

    invoke-virtual {v0, v12}, Lxi;->a(Lny;)Z

    move-result v0

    if-eqz v0, :cond_485

    .line 366
    iget-object v0, v7, Lxm;->g:Lsj;

    const-string v1, "achievement.taken"

    invoke-static {v1}, Ldo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    add-int/2addr v14, v2

    const v2, -0x6f6f01

    invoke-virtual {v0, v1, v10, v14, v2}, Lsj;->a(Ljava/lang/String;III)V

    goto :goto_485

    .line 369
    :cond_442
    iget-object v0, v7, Lxm;->g:Lsj;

    invoke-virtual {v0, v8}, Lsj;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 370
    iget-object v0, v12, Lny;->c:Lny;

    iget-object v0, v0, Lny;->f:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "achievement.requires"

    invoke-static {v1, v0}, Ldo;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 371
    iget-object v0, v7, Lxm;->g:Lsj;

    invoke-virtual {v0, v13, v9}, Lsj;->a(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v1, v10, -0x3

    add-int/lit8 v2, v11, -0x3

    add-int v3, v10, v9

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v4, v0, 0x3

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, -0x40000000    # -2.0f

    move-object/from16 v0, p0

    .line 372
    invoke-virtual/range {v0 .. v6}, Lxm;->a(IIIIII)V

    .line 373
    iget-object v0, v7, Lxm;->g:Lsj;

    add-int/lit8 v3, v11, 0xc

    const v5, -0x8fafb0

    move-object v1, v13

    move v2, v10

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lsj;->a(Ljava/lang/String;IIII)V

    .line 375
    :cond_485
    :goto_485
    iget-object v0, v7, Lxm;->g:Lsj;

    iget-object v1, v7, Lxm;->x:Lxi;

    invoke-virtual {v1, v12}, Lxi;->b(Lny;)Z

    move-result v1

    if-eqz v1, :cond_49a

    invoke-virtual {v12}, Lny;->f()Z

    move-result v1

    if-eqz v1, :cond_498

    const/16 v1, -0x80

    goto :goto_4a7

    :cond_498
    const/4 v1, -0x1

    goto :goto_4a7

    :cond_49a
    invoke-virtual {v12}, Lny;->f()Z

    move-result v1

    if-eqz v1, :cond_4a4

    const v1, -0x7f7fc0

    goto :goto_4a7

    :cond_4a4
    const v1, -0x7f7f80

    :goto_4a7
    invoke-virtual {v0, v8, v10, v11, v1}, Lsj;->a(Ljava/lang/String;III)V

    :cond_4aa
    const/16 v0, 0xb71

    .line 379
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 380
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 381
    invoke-static {}, Lu;->a()V

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected k()V
    .registers 6

    .line 152
    iget v0, p0, Lxm;->c:I

    iget v1, p0, Lxm;->a:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 153
    iget v1, p0, Lxm;->d:I

    iget v2, p0, Lxm;->i:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 154
    iget-object v2, p0, Lxm;->g:Lsj;

    add-int/lit8 v0, v0, 0xf

    add-int/lit8 v1, v1, 0x5

    const v3, 0x404040

    const-string v4, "Achievements"

    invoke-virtual {v2, v4, v0, v1, v3}, Lsj;->b(Ljava/lang/String;III)V

    return-void
.end method
