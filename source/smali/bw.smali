###### Class defpackage.bw (bw)
.class public abstract Lbw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lko;

.field protected b:Lth;

.field protected c:F

.field protected d:F

.field private e:Lcv;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lfh;

    invoke-direct {v0}, Lfh;-><init>()V

    iput-object v0, p0, Lbw;->a:Lko;

    .line 21
    new-instance v0, Lcv;

    invoke-direct {v0}, Lcv;-><init>()V

    iput-object v0, p0, Lbw;->e:Lcv;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lbw;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    iput v0, p0, Lbw;->d:F

    return-void
.end method

.method public static a(Leq;)V
    .registers 9

    .line 240
    sget-object v7, Lnw;->a:Lnw;

    .line 241
    invoke-virtual {v7}, Lnw;->b()V

    .line 242
    iget-wide v1, p0, Leq;->a:D

    iget-wide v3, p0, Leq;->e:D

    iget-wide v5, p0, Leq;->c:D

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 243
    iget-wide v1, p0, Leq;->d:D

    iget-wide v3, p0, Leq;->e:D

    iget-wide v5, p0, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 244
    iget-wide v1, p0, Leq;->d:D

    iget-wide v3, p0, Leq;->b:D

    iget-wide v5, p0, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 245
    iget-wide v1, p0, Leq;->a:D

    iget-wide v3, p0, Leq;->b:D

    iget-wide v5, p0, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 246
    iget-wide v1, p0, Leq;->a:D

    iget-wide v3, p0, Leq;->b:D

    iget-wide v5, p0, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 247
    iget-wide v1, p0, Leq;->d:D

    iget-wide v3, p0, Leq;->b:D

    iget-wide v5, p0, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 248
    iget-wide v1, p0, Leq;->d:D

    iget-wide v3, p0, Leq;->e:D

    iget-wide v5, p0, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 249
    iget-wide v1, p0, Leq;->a:D

    iget-wide v3, p0, Leq;->e:D

    iget-wide v5, p0, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 250
    iget-wide v1, p0, Leq;->a:D

    iget-wide v3, p0, Leq;->b:D

    iget-wide v5, p0, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 251
    iget-wide v1, p0, Leq;->d:D

    iget-wide v3, p0, Leq;->b:D

    iget-wide v5, p0, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 252
    iget-wide v1, p0, Leq;->d:D

    iget-wide v3, p0, Leq;->b:D

    iget-wide v5, p0, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 253
    iget-wide v1, p0, Leq;->a:D

    iget-wide v3, p0, Leq;->b:D

    iget-wide v5, p0, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 254
    iget-wide v1, p0, Leq;->a:D

    iget-wide v3, p0, Leq;->e:D

    iget-wide v5, p0, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 255
    iget-wide v1, p0, Leq;->d:D

    iget-wide v3, p0, Leq;->e:D

    iget-wide v5, p0, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 256
    iget-wide v1, p0, Leq;->d:D

    iget-wide v3, p0, Leq;->e:D

    iget-wide v5, p0, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 257
    iget-wide v1, p0, Leq;->a:D

    iget-wide v3, p0, Leq;->e:D

    iget-wide v5, p0, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 258
    iget-wide v1, p0, Leq;->a:D

    iget-wide v3, p0, Leq;->b:D

    iget-wide v5, p0, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 259
    iget-wide v1, p0, Leq;->a:D

    iget-wide v3, p0, Leq;->e:D

    iget-wide v5, p0, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 260
    iget-wide v1, p0, Leq;->a:D

    iget-wide v3, p0, Leq;->e:D

    iget-wide v5, p0, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 261
    iget-wide v1, p0, Leq;->a:D

    iget-wide v3, p0, Leq;->b:D

    iget-wide v5, p0, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 262
    iget-wide v1, p0, Leq;->d:D

    iget-wide v3, p0, Leq;->b:D

    iget-wide v5, p0, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 263
    iget-wide v1, p0, Leq;->d:D

    iget-wide v3, p0, Leq;->e:D

    iget-wide v5, p0, Leq;->c:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 264
    iget-wide v1, p0, Leq;->d:D

    iget-wide v3, p0, Leq;->e:D

    iget-wide v5, p0, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 265
    iget-wide v1, p0, Leq;->d:D

    iget-wide v3, p0, Leq;->b:D

    iget-wide v5, p0, Leq;->f:D

    invoke-virtual/range {v0 .. v6}, Lnw;->a(DDD)V

    .line 266
    invoke-virtual {v7}, Lnw;->a()V

    return-void
.end method

.method public static a(Leq;DDD)V
    .registers 20

    move-object v0, p0

    const/16 v1, 0xde1

    .line 193
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 194
    sget-object v9, Lnw;->a:Lnw;

    const/high16 v10, 0x3f800000    # 1.0f

    .line 195
    invoke-static {v10, v10, v10, v10}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 196
    invoke-virtual {v9}, Lnw;->b()V

    move-object v2, v9

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    .line 197
    invoke-virtual/range {v2 .. v8}, Lnw;->b(DDD)V

    const/4 v11, 0x0

    const/high16 v12, -0x40800000    # -1.0f

    .line 198
    invoke-virtual {v9, v11, v11, v12}, Lnw;->b(FFF)V

    .line 199
    iget-wide v3, v0, Leq;->a:D

    iget-wide v5, v0, Leq;->e:D

    iget-wide v7, v0, Leq;->c:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 200
    iget-wide v3, v0, Leq;->d:D

    iget-wide v5, v0, Leq;->e:D

    iget-wide v7, v0, Leq;->c:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 201
    iget-wide v3, v0, Leq;->d:D

    iget-wide v5, v0, Leq;->b:D

    iget-wide v7, v0, Leq;->c:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 202
    iget-wide v3, v0, Leq;->a:D

    iget-wide v5, v0, Leq;->b:D

    iget-wide v7, v0, Leq;->c:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 204
    invoke-virtual {v9, v11, v11, v10}, Lnw;->b(FFF)V

    .line 205
    iget-wide v3, v0, Leq;->a:D

    iget-wide v5, v0, Leq;->b:D

    iget-wide v7, v0, Leq;->f:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 206
    iget-wide v3, v0, Leq;->d:D

    iget-wide v5, v0, Leq;->b:D

    iget-wide v7, v0, Leq;->f:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 207
    iget-wide v3, v0, Leq;->d:D

    iget-wide v5, v0, Leq;->e:D

    iget-wide v7, v0, Leq;->f:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 208
    iget-wide v3, v0, Leq;->a:D

    iget-wide v5, v0, Leq;->e:D

    iget-wide v7, v0, Leq;->f:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 210
    invoke-virtual {v9, v11, v12, v11}, Lnw;->b(FFF)V

    .line 211
    iget-wide v3, v0, Leq;->a:D

    iget-wide v5, v0, Leq;->b:D

    iget-wide v7, v0, Leq;->c:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 212
    iget-wide v3, v0, Leq;->d:D

    iget-wide v5, v0, Leq;->b:D

    iget-wide v7, v0, Leq;->c:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 213
    iget-wide v3, v0, Leq;->d:D

    iget-wide v5, v0, Leq;->b:D

    iget-wide v7, v0, Leq;->f:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 214
    iget-wide v3, v0, Leq;->a:D

    iget-wide v5, v0, Leq;->b:D

    iget-wide v7, v0, Leq;->f:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 216
    invoke-virtual {v9, v11, v10, v11}, Lnw;->b(FFF)V

    .line 217
    iget-wide v3, v0, Leq;->a:D

    iget-wide v5, v0, Leq;->e:D

    iget-wide v7, v0, Leq;->f:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 218
    iget-wide v3, v0, Leq;->d:D

    iget-wide v5, v0, Leq;->e:D

    iget-wide v7, v0, Leq;->f:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 219
    iget-wide v3, v0, Leq;->d:D

    iget-wide v5, v0, Leq;->e:D

    iget-wide v7, v0, Leq;->c:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 220
    iget-wide v3, v0, Leq;->a:D

    iget-wide v5, v0, Leq;->e:D

    iget-wide v7, v0, Leq;->c:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 222
    invoke-virtual {v9, v12, v11, v11}, Lnw;->b(FFF)V

    .line 223
    iget-wide v3, v0, Leq;->a:D

    iget-wide v5, v0, Leq;->b:D

    iget-wide v7, v0, Leq;->f:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 224
    iget-wide v3, v0, Leq;->a:D

    iget-wide v5, v0, Leq;->e:D

    iget-wide v7, v0, Leq;->f:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 225
    iget-wide v3, v0, Leq;->a:D

    iget-wide v5, v0, Leq;->e:D

    iget-wide v7, v0, Leq;->c:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 226
    iget-wide v3, v0, Leq;->a:D

    iget-wide v5, v0, Leq;->b:D

    iget-wide v7, v0, Leq;->c:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 228
    invoke-virtual {v9, v10, v11, v11}, Lnw;->b(FFF)V

    .line 229
    iget-wide v3, v0, Leq;->d:D

    iget-wide v5, v0, Leq;->b:D

    iget-wide v7, v0, Leq;->c:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 230
    iget-wide v3, v0, Leq;->d:D

    iget-wide v5, v0, Leq;->e:D

    iget-wide v7, v0, Leq;->c:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 231
    iget-wide v3, v0, Leq;->d:D

    iget-wide v5, v0, Leq;->e:D

    iget-wide v7, v0, Leq;->f:D

    invoke-virtual/range {v2 .. v8}, Lnw;->a(DDD)V

    .line 232
    iget-wide v2, v0, Leq;->d:D

    iget-wide v4, v0, Leq;->b:D

    iget-wide v6, v0, Leq;->f:D

    move-object p0, v9

    move-wide p1, v2

    move-wide/from16 p3, v4

    move-wide/from16 p5, v6

    invoke-virtual/range {p0 .. p6}, Lnw;->a(DDD)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-wide p1, v2

    move-wide/from16 p3, v4

    move-wide/from16 p5, v6

    .line 233
    invoke-virtual/range {p0 .. p6}, Lnw;->b(DDD)V

    .line 234
    invoke-virtual {v9}, Lnw;->a()V

    .line 235
    invoke-static {v1}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    return-void
.end method

.method private a(Lsn;DDDF)V
    .registers 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xb50

    .line 46
    invoke-static {v2}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 47
    sget-object v3, Luu;->as:Lyq;

    iget v3, v3, Lyq;->bm:I

    and-int/lit8 v4, v3, 0xf

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v3, v3, 0xf0

    int-to-float v4, v4

    const/high16 v5, 0x43800000    # 256.0f

    div-float v6, v4, v5

    const v7, 0x417fd70a    # 15.99f

    add-float/2addr v4, v7

    div-float/2addr v4, v5

    int-to-float v8, v3

    div-float v9, v8, v5

    add-float/2addr v8, v7

    div-float/2addr v8, v5

    .line 57
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPushMatrix()V

    move-wide/from16 v10, p2

    double-to-float v10, v10

    move-wide/from16 v11, p4

    double-to-float v11, v11

    move-wide/from16 v12, p6

    double-to-float v12, v12

    .line 58
    invoke-static {v10, v11, v12}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 60
    iget v10, v1, Lsn;->bg:F

    const v11, 0x3fb33333    # 1.4f

    mul-float/2addr v10, v11

    .line 61
    invoke-static {v10, v10, v10}, Lorg/lwjgl/opengl/GL11;->glScalef(FFF)V

    const-string v12, "/terrain.png"

    .line 62
    invoke-virtual {v0, v12}, Lbw;->a(Ljava/lang/String;)V

    .line 63
    sget-object v12, Lnw;->a:Lnw;

    .line 69
    iget v13, v1, Lsn;->bh:F

    div-float/2addr v13, v10

    .line 70
    iget-wide v14, v1, Lsn;->aN:D

    iget-object v1, v1, Lsn;->aW:Leq;

    move v10, v8

    iget-wide v7, v1, Leq;->b:D

    sub-double/2addr v14, v7

    double-to-float v1, v14

    .line 72
    iget-object v7, v0, Lbw;->b:Lth;

    iget v7, v7, Lth;->i:F

    neg-float v7, v7

    const/4 v8, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v14, v8}, Lorg/lwjgl/opengl/GL11;->glRotatef(FFFF)V

    float-to-int v7, v13

    int-to-float v7, v7

    const v15, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v15

    const v15, -0x41666666    # -0.3f

    add-float/2addr v7, v15

    .line 73
    invoke-static {v8, v8, v7}, Lorg/lwjgl/opengl/GL11;->glTranslatef(FFF)V

    .line 74
    invoke-static {v14, v14, v14, v14}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 78
    invoke-virtual {v12}, Lnw;->b()V

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v14, 0x0

    move/from16 v24, v13

    move/from16 v25, v14

    move v14, v8

    :goto_73
    cmpl-float v13, v24, v8

    if-lez v13, :cond_10b

    .line 80
    rem-int/lit8 v13, v25, 0x2

    if-nez v13, :cond_81

    move v15, v9

    move v13, v10

    const v26, 0x417fd70a    # 15.99f

    goto :goto_8c

    :cond_81
    add-int/lit8 v13, v3, 0x10

    int-to-float v13, v13

    div-float v15, v13, v5

    const v26, 0x417fd70a    # 15.99f

    add-float v13, v13, v26

    div-float/2addr v13, v5

    .line 91
    :goto_8c
    div-int/lit8 v16, v25, 0x2

    rem-int/lit8 v16, v16, 0x2

    if-nez v16, :cond_95

    move v2, v4

    move v5, v6

    goto :goto_97

    :cond_95
    move v5, v4

    move v2, v6

    :goto_97
    sub-float v11, v7, v8

    move/from16 v27, v3

    move/from16 v28, v4

    float-to-double v3, v11

    sub-float v11, v8, v1

    move/from16 v29, v9

    float-to-double v8, v11

    move/from16 p3, v10

    float-to-double v10, v14

    move/from16 v30, v6

    float-to-double v5, v5

    move/from16 p4, v1

    float-to-double v0, v13

    move-object v13, v12

    move/from16 v32, v14

    move/from16 v31, v15

    move-wide v14, v3

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move-wide/from16 v20, v5

    move-wide/from16 v22, v0

    .line 96
    invoke-virtual/range {v13 .. v23}, Lnw;->a(DDDDD)V

    neg-float v13, v7

    const/16 v33, 0x0

    sub-float v13, v13, v33

    float-to-double v14, v13

    move-wide/from16 p5, v5

    float-to-double v5, v2

    move-object v13, v12

    move-wide/from16 v34, v14

    move-wide/from16 v20, v5

    .line 97
    invoke-virtual/range {v13 .. v23}, Lnw;->a(DDDDD)V

    const v0, 0x3fb33333    # 1.4f

    sub-float v1, v0, p4

    float-to-double v1, v1

    move/from16 v9, v31

    float-to-double v8, v9

    move-wide/from16 v16, v1

    move-wide/from16 v22, v8

    .line 98
    invoke-virtual/range {v13 .. v23}, Lnw;->a(DDDDD)V

    move-wide v14, v3

    move-wide/from16 v20, p5

    .line 99
    invoke-virtual/range {v13 .. v23}, Lnw;->a(DDDDD)V

    const v1, 0x3ee66666    # 0.45f

    sub-float v24, v24, v1

    sub-float v1, p4, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v7, v2

    const v2, 0x3cf5c28f    # 0.03f

    add-float v14, v32, v2

    add-int/lit8 v25, v25, 0x1

    move/from16 v10, p3

    move v11, v0

    move/from16 v3, v27

    move/from16 v4, v28

    move/from16 v9, v29

    move/from16 v6, v30

    move/from16 v8, v33

    const/16 v2, 0xb50

    const/high16 v5, 0x43800000    # 256.0f

    move-object/from16 v0, p0

    goto/16 :goto_73

    .line 107
    :cond_10b
    invoke-virtual {v12}, Lnw;->a()V

    .line 108
    invoke-static {}, Lorg/lwjgl/opengl/GL11;->glPopMatrix()V

    const/16 v0, 0xb50

    .line 109
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    return-void
.end method

.method private a(Luu;DDDIIIFFDDD)V
    .registers 40

    move-object/from16 v0, p1

    move/from16 v1, p8

    move/from16 v2, p9

    move/from16 v3, p10

    .line 161
    sget-object v4, Lnw;->a:Lnw;

    .line 162
    invoke-virtual/range {p1 .. p1}, Luu;->d()Z

    move-result v5

    if-nez v5, :cond_11

    return-void

    :cond_11
    move/from16 v5, p11

    float-to-double v5, v5

    int-to-double v7, v2

    add-double v9, v7, p15

    sub-double v9, p4, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    sub-double/2addr v5, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v9

    .line 164
    invoke-direct/range {p0 .. p0}, Lbw;->b()Lfd;

    move-result-object v13

    invoke-virtual {v13, v1, v2, v3}, Lfd;->c(III)F

    move-result v2

    float-to-double v13, v2

    mul-double/2addr v5, v13

    const-wide/16 v13, 0x0

    cmpg-double v2, v5, v13

    if-gez v2, :cond_31

    return-void

    :cond_31
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v5, v13

    if-lez v2, :cond_38

    move-wide v5, v13

    :cond_38
    double-to-float v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 167
    invoke-virtual {v4, v5, v5, v5, v2}, Lnw;->a(FFFF)V

    int-to-double v1, v1

    .line 170
    iget-wide v5, v0, Luu;->bs:D

    add-double/2addr v5, v1

    add-double v5, v5, p13

    .line 171
    iget-wide v13, v0, Luu;->bv:D

    add-double/2addr v1, v13

    add-double v1, v1, p13

    .line 172
    iget-wide v13, v0, Luu;->bt:D

    add-double/2addr v7, v13

    add-double v7, v7, p15

    const-wide/high16 v13, 0x3f90000000000000L    # 0.015625

    add-double/2addr v7, v13

    int-to-double v13, v3

    .line 173
    iget-wide v9, v0, Luu;->bu:D

    add-double/2addr v9, v13

    add-double v9, v9, p17

    .line 174
    iget-wide v11, v0, Luu;->bx:D

    add-double/2addr v13, v11

    add-double v11, v13, p17

    sub-double v13, p2, v5

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    move/from16 v0, p12

    move-wide/from16 p13, v7

    float-to-double v7, v0

    div-double/2addr v13, v7

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    add-double v13, v13, v17

    double-to-float v0, v13

    sub-double v13, p2, v1

    div-double/2addr v13, v15

    div-double/2addr v13, v7

    add-double v13, v13, v17

    double-to-float v3, v13

    sub-double v13, p6, v9

    div-double/2addr v13, v15

    div-double/2addr v13, v7

    add-double v13, v13, v17

    double-to-float v13, v13

    sub-double v19, p6, v11

    div-double v19, v19, v15

    div-double v19, v19, v7

    add-double v7, v19, v17

    double-to-float v7, v7

    float-to-double v14, v0

    move-wide/from16 v16, v1

    float-to-double v0, v13

    move-object/from16 p1, v4

    move-wide/from16 p2, v5

    move-wide/from16 p4, p13

    move-wide/from16 p6, v9

    move-wide/from16 p8, v14

    move-wide/from16 p10, v0

    .line 186
    invoke-virtual/range {p1 .. p11}, Lnw;->a(DDDDD)V

    float-to-double v7, v7

    move-wide/from16 p6, v11

    move-wide/from16 p10, v7

    .line 187
    invoke-virtual/range {p1 .. p11}, Lnw;->a(DDDDD)V

    float-to-double v2, v3

    move-wide/from16 p2, v16

    move-wide/from16 p8, v2

    .line 188
    invoke-virtual/range {p1 .. p11}, Lnw;->a(DDDDD)V

    move-wide/from16 p6, v9

    move-wide/from16 p10, v0

    .line 189
    invoke-virtual/range {p1 .. p11}, Lnw;->a(DDDDD)V

    return-void
.end method

.method private b()Lfd;
    .registers 2

    .line 157
    iget-object v0, p0, Lbw;->b:Lth;

    iget-object v0, v0, Lth;->g:Lfd;

    return-object v0
.end method

.method private c(Lsn;DDDFF)V
    .registers 47

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    const/16 v19, 0xbe2

    .line 113
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 114
    invoke-static {v0, v1}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 116
    iget-object v0, v13, Lbw;->b:Lth;

    iget-object v0, v0, Lth;->e:Lji;

    const-string v1, "%clamp%/misc/shadow.png"

    .line 117
    invoke-virtual {v0, v1}, Lji;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lji;->b(I)V

    .line 119
    invoke-direct/range {p0 .. p0}, Lbw;->b()Lfd;

    move-result-object v12

    const/4 v0, 0x0

    .line 121
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    .line 122
    iget v11, v13, Lbw;->c:F

    .line 124
    iget-wide v0, v14, Lsn;->bl:D

    iget-wide v2, v14, Lsn;->aM:D

    iget-wide v4, v14, Lsn;->bl:D

    sub-double/2addr v2, v4

    move/from16 v4, p9

    float-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 125
    iget-wide v2, v14, Lsn;->bm:D

    iget-wide v6, v14, Lsn;->aN:D

    iget-wide v8, v14, Lsn;->bm:D

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    invoke-virtual/range {p1 .. p1}, Lsn;->x_()F

    move-result v6

    float-to-double v6, v6

    add-double/2addr v2, v6

    .line 126
    iget-wide v6, v14, Lsn;->bn:D

    iget-wide v8, v14, Lsn;->aO:D

    move-object/from16 v17, v12

    iget-wide v12, v14, Lsn;->bn:D

    sub-double/2addr v8, v12

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    float-to-double v4, v11

    sub-double v8, v0, v4

    .line 128
    invoke-static {v8, v9}, Lin;->b(D)I

    move-result v8

    add-double v9, v0, v4

    .line 129
    invoke-static {v9, v10}, Lin;->b(D)I

    move-result v13

    sub-double v9, v2, v4

    .line 130
    invoke-static {v9, v10}, Lin;->b(D)I

    move-result v20

    .line 131
    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v12

    sub-double v9, v6, v4

    .line 132
    invoke-static {v9, v10}, Lin;->b(D)I

    move-result v21

    add-double/2addr v4, v6

    .line 133
    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v10

    sub-double v22, p2, v0

    sub-double v24, p4, v2

    sub-double v26, p6, v6

    .line 139
    sget-object v28, Lnw;->a:Lnw;

    .line 140
    invoke-virtual/range {v28 .. v28}, Lnw;->b()V

    move v9, v8

    :goto_7b
    if-gt v9, v13, :cond_11a

    move/from16 v8, v20

    :goto_7f
    if-gt v8, v12, :cond_108

    move/from16 v6, v21

    :goto_83
    if-gt v6, v10, :cond_f4

    add-int/lit8 v0, v8, -0x1

    move-object/from16 v7, v17

    .line 144
    invoke-virtual {v7, v9, v0, v6}, Lfd;->a(III)I

    move-result v0

    if-lez v0, :cond_d1

    .line 145
    invoke-virtual {v7, v9, v8, v6}, Lfd;->n(III)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_d1

    .line 146
    sget-object v1, Luu;->m:[Luu;

    aget-object v1, v1, v0

    invoke-virtual/range {p1 .. p1}, Lsn;->x_()F

    move-result v0

    float-to-double v2, v0

    add-double v4, p4, v2

    invoke-virtual/range {p1 .. p1}, Lsn;->x_()F

    move-result v0

    float-to-double v2, v0

    add-double v15, v24, v2

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    move/from16 v29, v6

    move-object/from16 v17, v7

    move-wide/from16 v6, p6

    move/from16 v30, v8

    move v8, v9

    move/from16 v31, v9

    move/from16 v9, v30

    move/from16 v32, v10

    move/from16 v10, v29

    move/from16 v33, v11

    move/from16 v11, p8

    move/from16 v35, v12

    move-object/from16 v34, v17

    move/from16 v12, v33

    move/from16 v36, v13

    move-wide/from16 v13, v22

    move-wide/from16 v17, v26

    invoke-direct/range {v0 .. v18}, Lbw;->a(Luu;DDDIIIFFDDD)V

    goto :goto_e1

    :cond_d1
    move/from16 v29, v6

    move-object/from16 v34, v7

    move/from16 v30, v8

    move/from16 v31, v9

    move/from16 v32, v10

    move/from16 v33, v11

    move/from16 v35, v12

    move/from16 v36, v13

    :goto_e1
    add-int/lit8 v6, v29, 0x1

    move-object/from16 v14, p1

    move/from16 v8, v30

    move/from16 v9, v31

    move/from16 v10, v32

    move/from16 v11, v33

    move-object/from16 v17, v34

    move/from16 v12, v35

    move/from16 v13, v36

    goto :goto_83

    :cond_f4
    move/from16 v30, v8

    move/from16 v31, v9

    move/from16 v32, v10

    move/from16 v33, v11

    move/from16 v35, v12

    move/from16 v36, v13

    move-object/from16 v34, v17

    add-int/lit8 v8, v30, 0x1

    move-object/from16 v14, p1

    goto/16 :goto_7f

    :cond_108
    move/from16 v31, v9

    move/from16 v32, v10

    move/from16 v33, v11

    move/from16 v35, v12

    move/from16 v36, v13

    move-object/from16 v34, v17

    add-int/lit8 v9, v31, 0x1

    move-object/from16 v14, p1

    goto/16 :goto_7b

    .line 149
    :cond_11a
    invoke-virtual/range {v28 .. v28}, Lnw;->a()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 151
    invoke-static {v0, v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 152
    invoke-static/range {v19 .. v19}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/4 v0, 0x1

    .line 153
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glDepthMask(Z)V

    return-void
.end method


# virtual methods
.method public a()Lsj;
    .registers 2

    .line 286
    iget-object v0, p0, Lbw;->b:Lth;

    invoke-virtual {v0}, Lth;->a()Lsj;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    .line 29
    iget-object v0, p0, Lbw;->b:Lth;

    iget-object v0, v0, Lth;->e:Lji;

    .line 30
    invoke-virtual {v0, p1}, Lji;->b(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lji;->b(I)V

    return-void
.end method

.method public abstract a(Lsn;DDDFF)V
.end method

.method public a(Lth;)V
    .registers 2

    .line 270
    iput-object p1, p0, Lbw;->b:Lth;

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 34
    iget-object v0, p0, Lbw;->b:Lth;

    iget-object v0, v0, Lth;->e:Lji;

    .line 36
    invoke-virtual {v0, p1, p2}, Lji;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_f

    .line 38
    invoke-virtual {v0, p1}, Lji;->b(I)V

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lsn;DDDFF)V
    .registers 22

    move-object v10, p0

    move-object v11, p1

    .line 274
    iget-object v0, v10, Lbw;->b:Lth;

    iget-object v0, v0, Lth;->k:Lkv;

    iget-boolean v0, v0, Lkv;->j:Z

    if-eqz v0, :cond_38

    iget v0, v10, Lbw;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_38

    .line 275
    iget-object v2, v10, Lbw;->b:Lth;

    iget-wide v3, v11, Lsn;->aM:D

    iget-wide v5, v11, Lsn;->aN:D

    iget-wide v7, v11, Lsn;->aO:D

    invoke-virtual/range {v2 .. v8}, Lth;->a(DDD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    .line 276
    iget v0, v10, Lbw;->d:F

    float-to-double v2, v0

    mul-double/2addr v4, v2

    double-to-float v8, v4

    cmpl-float v0, v8, v1

    if-lez v0, :cond_38

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v9, p9

    .line 278
    invoke-direct/range {v0 .. v9}, Lbw;->c(Lsn;DDDFF)V

    .line 281
    :cond_38
    invoke-virtual {p1}, Lsn;->ak()Z

    move-result v0

    if-eqz v0, :cond_4a

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lbw;->a(Lsn;DDDF)V

    :cond_4a
    return-void
.end method
