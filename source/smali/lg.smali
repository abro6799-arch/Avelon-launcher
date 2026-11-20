###### Class defpackage.lg (lg)
.class public abstract Llg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lnet/minecraft/client/Minecraft;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:I

.field private g:I

.field protected final h:I

.field protected final i:I

.field protected final j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:I

.field private o:J

.field private p:Z

.field private q:Z

.field private r:I


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;IIIII)V
    .registers 9

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40000000    # -2.0f

    .line 43
    iput v0, p0, Llg;->k:F

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Llg;->n:I

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Llg;->o:J

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Llg;->p:Z

    .line 55
    iput-object p1, p0, Llg;->a:Lnet/minecraft/client/Minecraft;

    .line 56
    iput p2, p0, Llg;->b:I

    .line 57
    iput p3, p0, Llg;->c:I

    .line 58
    iput p4, p0, Llg;->h:I

    .line 59
    iput p5, p0, Llg;->i:I

    .line 60
    iput p6, p0, Llg;->j:I

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Llg;->e:I

    .line 62
    iput p2, p0, Llg;->d:I

    return-void
.end method

.method private a(IIII)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 344
    sget-object v13, Lnw;->a:Lnw;

    .line 345
    iget-object v3, v0, Llg;->a:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v4, "/gui/background.png"

    invoke-virtual {v3, v4}, Lji;->b(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 346
    invoke-static {v3, v3, v3, v3}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 348
    invoke-virtual {v13}, Lnw;->b()V

    const v14, 0x404040

    move/from16 v3, p4

    .line 349
    invoke-virtual {v13, v14, v3}, Lnw;->a(II)V

    const-wide/16 v3, 0x0

    int-to-double v11, v2

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    int-to-float v2, v2

    const/high16 v15, 0x42000000    # 32.0f

    div-float/2addr v2, v15

    float-to-double v5, v2

    move-object v2, v13

    move-wide/from16 v16, v5

    move-wide v5, v11

    move-wide/from16 v18, v11

    move-wide/from16 v11, v16

    .line 350
    invoke-virtual/range {v2 .. v12}, Lnw;->a(DDDDD)V

    .line 351
    iget v2, v0, Llg;->b:I

    int-to-double v3, v2

    int-to-float v2, v2

    div-float/2addr v2, v15

    float-to-double v9, v2

    move-object v2, v13

    move-wide/from16 v5, v18

    invoke-virtual/range {v2 .. v12}, Lnw;->a(DDDDD)V

    move/from16 v2, p3

    .line 352
    invoke-virtual {v13, v14, v2}, Lnw;->a(II)V

    .line 353
    iget v2, v0, Llg;->b:I

    int-to-double v3, v2

    int-to-double v10, v1

    const-wide/16 v6, 0x0

    int-to-float v2, v2

    div-float/2addr v2, v15

    float-to-double v8, v2

    int-to-float v1, v1

    div-float/2addr v1, v15

    float-to-double v14, v1

    move-object v1, v13

    move-wide v2, v3

    move-wide v4, v10

    move-wide/from16 v16, v10

    move-wide v10, v14

    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    const-wide/16 v2, 0x0

    const-wide/16 v8, 0x0

    move-wide/from16 v4, v16

    .line 354
    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 355
    invoke-virtual {v13}, Lnw;->a()V

    return-void
.end method

.method private d()V
    .registers 4

    .line 122
    invoke-virtual {p0}, Llg;->b()I

    move-result v0

    iget v1, p0, Llg;->i:I

    iget v2, p0, Llg;->h:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x4

    sub-int/2addr v0, v1

    if-gez v0, :cond_10

    .line 123
    div-int/lit8 v0, v0, 0x2

    .line 124
    :cond_10
    iget v1, p0, Llg;->m:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_19

    iput v2, p0, Llg;->m:F

    .line 125
    :cond_19
    iget v1, p0, Llg;->m:F

    int-to-float v0, v0

    cmpl-float v1, v1, v0

    if-lez v1, :cond_22

    iput v0, p0, Llg;->m:F

    :cond_22
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(II)V
    .registers 3

    return-void
.end method

.method public a(IIF)V
    .registers 36

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    .line 144
    invoke-virtual/range {p0 .. p0}, Llg;->c()V

    .line 146
    invoke-virtual/range {p0 .. p0}, Llg;->a()I

    move-result v9

    .line 148
    iget v0, v6, Llg;->b:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v10, v0, 0x7c

    add-int/lit8 v11, v10, 0x6

    const/4 v12, 0x0

    .line 151
    invoke-static {v12}, Lorg/lwjgl/input/Mouse;->isButtonDown(I)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v15, 0x1

    if-eqz v0, :cond_ec

    .line 152
    iget v0, v6, Llg;->k:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_d9

    .line 154
    iget v0, v6, Llg;->h:I

    if-lt v8, v0, :cond_d4

    iget v3, v6, Llg;->i:I

    if-gt v8, v3, :cond_d4

    .line 155
    iget v3, v6, Llg;->b:I

    div-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, -0x6e

    .line 156
    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x6e

    sub-int v5, v8, v0

    .line 158
    iget v12, v6, Llg;->r:I

    sub-int/2addr v5, v12

    iget v12, v6, Llg;->m:F

    float-to-int v2, v12

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x4

    .line 159
    iget v2, v6, Llg;->j:I

    div-int v2, v5, v2

    if-lt v7, v4, :cond_70

    if-gt v7, v3, :cond_70

    if-ltz v2, :cond_70

    if-ltz v5, :cond_70

    if-ge v2, v9, :cond_70

    .line 162
    iget v0, v6, Llg;->n:I

    if-ne v2, v0, :cond_63

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v13, v6, Llg;->o:J

    sub-long/2addr v3, v13

    const-wide/16 v12, 0xfa

    cmp-long v0, v3, v12

    if-gez v0, :cond_63

    move v0, v15

    goto :goto_64

    :cond_63
    const/4 v0, 0x0

    .line 164
    :goto_64
    invoke-virtual {v6, v2, v0}, Llg;->a(IZ)V

    .line 165
    iput v2, v6, Llg;->n:I

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Llg;->o:J

    goto :goto_83

    :cond_70
    if-lt v7, v4, :cond_83

    if-gt v7, v3, :cond_83

    if-gez v5, :cond_83

    sub-int v2, v7, v4

    sub-int v0, v8, v0

    float-to-int v3, v12

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x4

    .line 168
    invoke-virtual {v6, v2, v0}, Llg;->a(II)V

    const/4 v0, 0x0

    goto :goto_84

    :cond_83
    :goto_83
    move v0, v15

    :goto_84
    if-lt v7, v10, :cond_c5

    if-gt v7, v11, :cond_c5

    .line 172
    iput v1, v6, Llg;->l:F

    .line 174
    invoke-virtual/range {p0 .. p0}, Llg;->b()I

    move-result v1

    iget v2, v6, Llg;->i:I

    iget v3, v6, Llg;->h:I

    sub-int v4, v2, v3

    add-int/lit8 v4, v4, -0x4

    sub-int/2addr v1, v4

    if-ge v1, v15, :cond_9a

    move v1, v15

    :cond_9a
    sub-int v4, v2, v3

    sub-int/2addr v2, v3

    mul-int/2addr v4, v2

    int-to-float v2, v4

    .line 176
    invoke-virtual/range {p0 .. p0}, Llg;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_ac

    const/16 v2, 0x20

    .line 178
    :cond_ac
    iget v3, v6, Llg;->i:I

    iget v4, v6, Llg;->h:I

    sub-int v5, v3, v4

    add-int/lit8 v5, v5, -0x8

    if-le v2, v5, :cond_ba

    sub-int v2, v3, v4

    add-int/lit8 v2, v2, -0x8

    .line 183
    :cond_ba
    iget v5, v6, Llg;->l:F

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    div-float/2addr v5, v2

    iput v5, v6, Llg;->l:F

    goto :goto_c9

    :cond_c5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 186
    iput v1, v6, Llg;->l:F

    :goto_c9
    if-eqz v0, :cond_cf

    int-to-float v0, v8

    .line 189
    iput v0, v6, Llg;->k:F

    goto :goto_ee

    :cond_cf
    const/high16 v0, -0x40000000    # -2.0f

    .line 191
    iput v0, v6, Llg;->k:F

    goto :goto_ee

    :cond_d4
    const/high16 v0, -0x40000000    # -2.0f

    .line 194
    iput v0, v6, Llg;->k:F

    goto :goto_ee

    :cond_d9
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_ee

    .line 197
    iget v1, v6, Llg;->m:F

    int-to-float v2, v8

    sub-float v0, v2, v0

    iget v3, v6, Llg;->l:F

    mul-float/2addr v0, v3

    sub-float/2addr v1, v0

    iput v1, v6, Llg;->m:F

    .line 198
    iput v2, v6, Llg;->k:F

    goto :goto_ee

    .line 202
    :cond_ec
    iput v1, v6, Llg;->k:F

    .line 205
    :cond_ee
    :goto_ee
    invoke-direct/range {p0 .. p0}, Llg;->d()V

    const/16 v0, 0xb50

    .line 207
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v0, 0xb60

    .line 208
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 209
    sget-object v12, Lnw;->a:Lnw;

    .line 211
    iget-object v0, v6, Llg;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->p:Lji;

    const-string v1, "/gui/background.png"

    invoke-virtual {v0, v1}, Lji;->b(Ljava/lang/String;)I

    move-result v0

    const/16 v13, 0xde1

    invoke-static {v13, v0}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 212
    invoke-static {v0, v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 214
    invoke-virtual {v12}, Lnw;->b()V

    const v0, 0x202020

    .line 215
    invoke-virtual {v12, v0}, Lnw;->b(I)V

    .line 216
    iget v0, v6, Llg;->e:I

    int-to-double v1, v0

    iget v3, v6, Llg;->i:I

    int-to-double v4, v3

    const-wide/16 v22, 0x0

    int-to-float v0, v0

    const/high16 v14, 0x42000000    # 32.0f

    div-float/2addr v0, v14

    float-to-double v13, v0

    iget v0, v6, Llg;->m:F

    float-to-int v0, v0

    add-int/2addr v3, v0

    int-to-float v0, v3

    const/high16 v3, 0x42000000    # 32.0f

    div-float/2addr v0, v3

    float-to-double v7, v0

    move-object/from16 v17, v12

    move-wide/from16 v18, v1

    move-wide/from16 v20, v4

    move-wide/from16 v24, v13

    move-wide/from16 v26, v7

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 217
    iget v0, v6, Llg;->d:I

    int-to-double v1, v0

    iget v3, v6, Llg;->i:I

    int-to-double v4, v3

    int-to-float v0, v0

    const/high16 v7, 0x42000000    # 32.0f

    div-float/2addr v0, v7

    float-to-double v13, v0

    iget v0, v6, Llg;->m:F

    float-to-int v0, v0

    add-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v0, v7

    float-to-double v7, v0

    move-wide/from16 v18, v1

    move-wide/from16 v20, v4

    move-wide/from16 v24, v13

    move-wide/from16 v26, v7

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 218
    iget v0, v6, Llg;->d:I

    int-to-double v1, v0

    iget v3, v6, Llg;->h:I

    int-to-double v4, v3

    int-to-float v0, v0

    const/high16 v7, 0x42000000    # 32.0f

    div-float/2addr v0, v7

    float-to-double v13, v0

    iget v0, v6, Llg;->m:F

    float-to-int v0, v0

    add-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v0, v7

    float-to-double v7, v0

    move-wide/from16 v18, v1

    move-wide/from16 v20, v4

    move-wide/from16 v24, v13

    move-wide/from16 v26, v7

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 219
    iget v0, v6, Llg;->e:I

    int-to-double v1, v0

    iget v3, v6, Llg;->h:I

    int-to-double v4, v3

    int-to-float v0, v0

    const/high16 v7, 0x42000000    # 32.0f

    div-float/2addr v0, v7

    float-to-double v13, v0

    iget v0, v6, Llg;->m:F

    float-to-int v0, v0

    add-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v0, v7

    float-to-double v7, v0

    move-wide/from16 v18, v1

    move-wide/from16 v20, v4

    move-wide/from16 v24, v13

    move-wide/from16 v26, v7

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 220
    invoke-virtual {v12}, Lnw;->a()V

    .line 222
    iget v0, v6, Llg;->b:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x5c

    add-int/lit8 v7, v0, -0x10

    .line 223
    iget v0, v6, Llg;->h:I

    add-int/lit8 v0, v0, 0x4

    iget v1, v6, Llg;->m:F

    float-to-int v1, v1

    sub-int v8, v0, v1

    .line 225
    iget-boolean v0, v6, Llg;->q:Z

    if-eqz v0, :cond_1af

    .line 226
    invoke-virtual {v6, v7, v8, v12}, Llg;->a(IILnw;)V

    :cond_1af
    const/4 v13, 0x0

    :goto_1b0
    const v0, 0x808080

    if-ge v13, v9, :cond_280

    .line 231
    iget v1, v6, Llg;->j:I

    mul-int v2, v13, v1

    add-int/2addr v2, v8

    iget v3, v6, Llg;->r:I

    add-int/2addr v3, v2

    add-int/lit8 v4, v1, -0x4

    .line 234
    iget v1, v6, Llg;->i:I

    if-gt v3, v1, :cond_26b

    add-int v1, v3, v4

    iget v2, v6, Llg;->h:I

    if-ge v1, v2, :cond_1cb

    goto/16 :goto_26b

    .line 238
    :cond_1cb
    iget-boolean v2, v6, Llg;->p:Z

    if-eqz v2, :cond_25a

    invoke-virtual {v6, v13}, Llg;->c_(I)Z

    move-result v2

    if-eqz v2, :cond_25a

    .line 239
    iget v2, v6, Llg;->b:I

    div-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, -0x6e

    .line 240
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x6e

    const/high16 v14, 0x3f800000    # 1.0f

    .line 241
    invoke-static {v14, v14, v14, v14}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    const/16 v16, 0xde1

    .line 242
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 243
    invoke-virtual {v12}, Lnw;->b()V

    .line 244
    invoke-virtual {v12, v0}, Lnw;->b(I)V

    int-to-double v14, v5

    add-int/lit8 v0, v1, 0x2

    move/from16 v29, v8

    move/from16 v28, v9

    int-to-double v8, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-object/from16 v17, v12

    move-wide/from16 v18, v14

    move-wide/from16 v20, v8

    .line 245
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    move/from16 v30, v10

    move/from16 v31, v11

    int-to-double v10, v2

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v10

    .line 246
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    add-int/lit8 v0, v3, -0x2

    int-to-double v8, v0

    const-wide/16 v26, 0x0

    move-wide/from16 v20, v8

    .line 247
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const-wide/16 v24, 0x0

    move-wide/from16 v18, v14

    .line 248
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const/4 v0, 0x0

    .line 250
    invoke-virtual {v12, v0}, Lnw;->b(I)V

    const/4 v0, 0x1

    add-int/2addr v5, v0

    int-to-double v8, v5

    add-int/lit8 v1, v1, 0x1

    int-to-double v0, v1

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v8

    move-wide/from16 v20, v0

    .line 251
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    int-to-double v10, v2

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v10

    .line 252
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    add-int/lit8 v0, v3, -0x1

    int-to-double v0, v0

    const-wide/16 v26, 0x0

    move-wide/from16 v20, v0

    .line 253
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const-wide/16 v24, 0x0

    move-wide/from16 v18, v8

    .line 254
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 256
    invoke-virtual {v12}, Lnw;->a()V

    const/16 v0, 0xde1

    .line 257
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    goto :goto_262

    :cond_25a
    move/from16 v29, v8

    move/from16 v28, v9

    move/from16 v30, v10

    move/from16 v31, v11

    :goto_262
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move-object v5, v12

    .line 260
    invoke-virtual/range {v0 .. v5}, Llg;->a(IIIILnw;)V

    goto :goto_273

    :cond_26b
    :goto_26b
    move/from16 v29, v8

    move/from16 v28, v9

    move/from16 v30, v10

    move/from16 v31, v11

    :goto_273
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v28

    move/from16 v8, v29

    move/from16 v10, v30

    move/from16 v11, v31

    const/4 v15, 0x1

    goto/16 :goto_1b0

    :cond_280
    move/from16 v30, v10

    move/from16 v31, v11

    const/16 v1, 0xb71

    .line 264
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 269
    iget v1, v6, Llg;->h:I

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-direct {v6, v3, v1, v2, v2}, Llg;->a(IIII)V

    .line 270
    iget v1, v6, Llg;->i:I

    iget v3, v6, Llg;->c:I

    invoke-direct {v6, v1, v3, v2, v2}, Llg;->a(IIII)V

    const/16 v1, 0xbe2

    .line 272
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v3, 0x302

    const/16 v4, 0x303

    .line 273
    invoke-static {v3, v4}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    const/16 v3, 0xbc0

    .line 274
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v4, 0x1d01

    .line 275
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    const/16 v4, 0xde1

    .line 277
    invoke-static {v4}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 279
    invoke-virtual {v12}, Lnw;->b()V

    const/4 v4, 0x0

    .line 280
    invoke-virtual {v12, v4, v4}, Lnw;->a(II)V

    .line 281
    iget v4, v6, Llg;->e:I

    int-to-double v4, v4

    iget v7, v6, Llg;->h:I

    add-int/lit8 v7, v7, 0x4

    int-to-double v7, v7

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-object/from16 v17, v12

    move-wide/from16 v18, v4

    move-wide/from16 v20, v7

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 282
    iget v4, v6, Llg;->d:I

    int-to-double v4, v4

    iget v7, v6, Llg;->h:I

    add-int/lit8 v7, v7, 0x4

    int-to-double v7, v7

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v7

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const/4 v4, 0x0

    .line 283
    invoke-virtual {v12, v4, v2}, Lnw;->a(II)V

    .line 284
    iget v4, v6, Llg;->d:I

    int-to-double v4, v4

    iget v7, v6, Llg;->h:I

    int-to-double v7, v7

    const-wide/16 v26, 0x0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v7

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 285
    iget v4, v6, Llg;->e:I

    int-to-double v4, v4

    iget v7, v6, Llg;->h:I

    int-to-double v7, v7

    const-wide/16 v24, 0x0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v7

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 286
    invoke-virtual {v12}, Lnw;->a()V

    .line 288
    invoke-virtual {v12}, Lnw;->b()V

    const/4 v4, 0x0

    .line 289
    invoke-virtual {v12, v4, v2}, Lnw;->a(II)V

    .line 290
    iget v4, v6, Llg;->e:I

    int-to-double v4, v4

    iget v7, v6, Llg;->i:I

    int-to-double v7, v7

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v7

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 291
    iget v4, v6, Llg;->d:I

    int-to-double v4, v4

    iget v7, v6, Llg;->i:I

    int-to-double v7, v7

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v7

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const/4 v4, 0x0

    .line 292
    invoke-virtual {v12, v4, v4}, Lnw;->a(II)V

    .line 293
    iget v4, v6, Llg;->d:I

    int-to-double v4, v4

    iget v7, v6, Llg;->i:I

    add-int/lit8 v7, v7, -0x4

    int-to-double v7, v7

    const-wide/16 v26, 0x0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v7

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 294
    iget v4, v6, Llg;->e:I

    int-to-double v4, v4

    iget v7, v6, Llg;->i:I

    add-int/lit8 v7, v7, -0x4

    int-to-double v7, v7

    const-wide/16 v24, 0x0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v7

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 295
    invoke-virtual {v12}, Lnw;->a()V

    .line 298
    invoke-virtual/range {p0 .. p0}, Llg;->b()I

    move-result v4

    iget v5, v6, Llg;->i:I

    iget v7, v6, Llg;->h:I

    sub-int v8, v5, v7

    add-int/lit8 v8, v8, -0x4

    sub-int/2addr v4, v8

    if-lez v4, :cond_429

    sub-int v8, v5, v7

    sub-int/2addr v5, v7

    mul-int/2addr v8, v5

    .line 300
    invoke-virtual/range {p0 .. p0}, Llg;->b()I

    move-result v5

    div-int/2addr v8, v5

    const/16 v5, 0x20

    if-ge v8, v5, :cond_373

    move v13, v5

    goto :goto_374

    :cond_373
    move v13, v8

    .line 302
    :goto_374
    iget v5, v6, Llg;->i:I

    iget v7, v6, Llg;->h:I

    sub-int v8, v5, v7

    add-int/lit8 v8, v8, -0x8

    if-le v13, v8, :cond_382

    sub-int v8, v5, v7

    add-int/lit8 v13, v8, -0x8

    .line 304
    :cond_382
    iget v8, v6, Llg;->m:F

    float-to-int v8, v8

    sub-int/2addr v5, v7

    sub-int/2addr v5, v13

    mul-int/2addr v8, v5

    div-int/2addr v8, v4

    add-int/2addr v8, v7

    if-ge v8, v7, :cond_38d

    goto :goto_38e

    :cond_38d
    move v7, v8

    .line 307
    :goto_38e
    invoke-virtual {v12}, Lnw;->b()V

    const/4 v4, 0x0

    .line 308
    invoke-virtual {v12, v4, v2}, Lnw;->a(II)V

    move/from16 v4, v30

    int-to-double v4, v4

    .line 309
    iget v8, v6, Llg;->i:I

    int-to-double v8, v8

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-object/from16 v17, v12

    move-wide/from16 v18, v4

    move-wide/from16 v20, v8

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    move/from16 v10, v31

    int-to-double v8, v10

    .line 310
    iget v11, v6, Llg;->i:I

    int-to-double v14, v11

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v8

    move-wide/from16 v20, v14

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 311
    iget v11, v6, Llg;->h:I

    int-to-double v14, v11

    const-wide/16 v26, 0x0

    move-wide/from16 v20, v14

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 312
    iget v11, v6, Llg;->h:I

    int-to-double v14, v11

    const-wide/16 v24, 0x0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v14

    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 313
    invoke-virtual {v12}, Lnw;->a()V

    .line 315
    invoke-virtual {v12}, Lnw;->b()V

    .line 316
    invoke-virtual {v12, v0, v2}, Lnw;->a(II)V

    add-int/2addr v13, v7

    int-to-double v14, v13

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v14

    .line 317
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v8

    .line 318
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    int-to-double v14, v7

    const-wide/16 v26, 0x0

    move-wide/from16 v20, v14

    .line 319
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const-wide/16 v24, 0x0

    move-wide/from16 v18, v4

    .line 320
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 321
    invoke-virtual {v12}, Lnw;->a()V

    .line 323
    invoke-virtual {v12}, Lnw;->b()V

    const v0, 0xc0c0c0

    .line 324
    invoke-virtual {v12, v0, v2}, Lnw;->a(II)V

    const/4 v0, 0x1

    sub-int/2addr v13, v0

    int-to-double v7, v13

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v20, v7

    .line 325
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const/4 v0, 0x1

    add-int/lit8 v11, v10, -0x1

    int-to-double v9, v11

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v9

    .line 326
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const-wide/16 v26, 0x0

    move-wide/from16 v20, v14

    .line 327
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    const-wide/16 v24, 0x0

    move-wide/from16 v18, v4

    .line 328
    invoke-virtual/range {v17 .. v27}, Lnw;->a(DDDDD)V

    .line 329
    invoke-virtual {v12}, Lnw;->a()V

    .line 333
    :cond_429
    invoke-virtual/range {p0 .. p2}, Llg;->b(II)V

    const/16 v0, 0xde1

    .line 336
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0x1d00

    .line 338
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    .line 339
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 340
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    return-void
.end method

.method protected abstract a(IIIILnw;)V
.end method

.method protected a(IILnw;)V
    .registers 4

    return-void
.end method

.method protected abstract a(IZ)V
.end method

.method public a(Ljava/util/List;II)V
    .registers 4

    .line 117
    iput p2, p0, Llg;->f:I

    .line 118
    iput p3, p0, Llg;->g:I

    return-void
.end method

.method public a(Lke;)V
    .registers 5

    .line 129
    iget-boolean v0, p1, Lke;->g:Z

    if-nez v0, :cond_5

    return-void

    .line 131
    :cond_5
    iget v0, p1, Lke;->f:I

    iget v1, p0, Llg;->f:I

    const/high16 v2, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_1f

    .line 132
    iget p1, p0, Llg;->m:F

    iget v0, p0, Llg;->j:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Llg;->m:F

    .line 133
    iput v2, p0, Llg;->k:F

    .line 134
    invoke-direct {p0}, Llg;->d()V

    goto :goto_36

    .line 135
    :cond_1f
    iget p1, p1, Lke;->f:I

    iget v0, p0, Llg;->g:I

    if-ne p1, v0, :cond_36

    .line 136
    iget p1, p0, Llg;->m:F

    iget v0, p0, Llg;->j:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Llg;->m:F

    .line 137
    iput v2, p0, Llg;->k:F

    .line 138
    invoke-direct {p0}, Llg;->d()V

    :cond_36
    :goto_36
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 66
    iput-boolean p1, p0, Llg;->p:Z

    return-void
.end method

.method protected a(ZI)V
    .registers 3

    .line 70
    iput-boolean p1, p0, Llg;->q:Z

    .line 71
    iput p2, p0, Llg;->r:I

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Llg;->r:I

    :cond_9
    return-void
.end method

.method protected b()I
    .registers 3

    .line 85
    invoke-virtual {p0}, Llg;->a()I

    move-result v0

    iget v1, p0, Llg;->j:I

    mul-int/2addr v0, v1

    iget v1, p0, Llg;->r:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected b(II)V
    .registers 3

    return-void
.end method

.method public c(II)I
    .registers 6

    .line 105
    iget v0, p0, Llg;->b:I

    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, -0x6e

    .line 106
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x6e

    .line 108
    iget v2, p0, Llg;->h:I

    sub-int/2addr p2, v2

    iget v2, p0, Llg;->r:I

    sub-int/2addr p2, v2

    iget v2, p0, Llg;->m:F

    float-to-int v2, v2

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x4

    .line 109
    iget v2, p0, Llg;->j:I

    div-int v2, p2, v2

    if-lt p1, v1, :cond_29

    if-gt p1, v0, :cond_29

    if-ltz v2, :cond_29

    if-ltz p2, :cond_29

    .line 110
    invoke-virtual {p0}, Llg;->a()I

    move-result p1

    if-ge v2, p1, :cond_29

    return v2

    :cond_29
    const/4 p1, -0x1

    return p1
.end method

.method protected abstract c()V
.end method

.method protected abstract c_(I)Z
.end method
