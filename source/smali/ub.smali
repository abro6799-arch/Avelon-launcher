###### Class defpackage.ub (ub)
.class public Lub;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected k:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lub;->k:F

    return-void
.end method


# virtual methods
.method protected a(IIII)V
    .registers 11

    if-ge p2, p1, :cond_4

    move v1, p2

    goto :goto_6

    :cond_4
    move v1, p1

    move p1, p2

    :goto_6
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p3, 0x1

    move-object v0, p0

    move v2, p3

    move v5, p4

    .line 16
    invoke-virtual/range {v0 .. v5}, Lub;->a(IIIII)V

    return-void
.end method

.method protected a(IIIII)V
    .registers 25

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p2

    move/from16 v4, p4

    if-ge v0, v1, :cond_11

    move/from16 v18, v1

    move v1, v0

    move/from16 v0, v18

    :cond_11
    if-ge v3, v4, :cond_14

    goto :goto_19

    :cond_14
    move/from16 v18, v4

    move v4, v3

    move/from16 v3, v18

    :goto_19
    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    shr-int/lit8 v7, v2, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v6

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float/2addr v8, v6

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v6

    .line 43
    sget-object v6, Lnw;->a:Lnw;

    const/16 v16, 0xbe2

    .line 44
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v17, 0xde1

    .line 45
    invoke-static/range {v17 .. v17}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v9, 0x302

    const/16 v10, 0x303

    .line 46
    invoke-static {v9, v10}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    .line 47
    invoke-static {v7, v8, v2, v5}, Lorg/lwjgl/opengl/GL11;->glColor4f(FFFF)V

    .line 48
    invoke-virtual {v6}, Lnw;->b()V

    int-to-double v7, v0

    int-to-double v2, v3

    const-wide/16 v14, 0x0

    move-object v9, v6

    move-wide v10, v7

    move-wide v12, v2

    .line 49
    invoke-virtual/range {v9 .. v15}, Lnw;->a(DDD)V

    int-to-double v0, v1

    move-wide v10, v0

    .line 50
    invoke-virtual/range {v9 .. v15}, Lnw;->a(DDD)V

    int-to-double v2, v4

    move-wide v12, v2

    .line 51
    invoke-virtual/range {v9 .. v15}, Lnw;->a(DDD)V

    move-wide v10, v7

    .line 52
    invoke-virtual/range {v9 .. v15}, Lnw;->a(DDD)V

    .line 53
    invoke-virtual {v6}, Lnw;->a()V

    .line 54
    invoke-static/range {v17 .. v17}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 55
    invoke-static/range {v16 .. v16}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    return-void
.end method

.method protected a(IIIIII)V
    .registers 30

    move/from16 v0, p5

    move/from16 v1, p6

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v3

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v3

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    shr-int/lit8 v6, v1, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v3

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v3

    shr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float/2addr v8, v3

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/16 v3, 0xde1

    .line 68
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v9, 0xbe2

    .line 69
    invoke-static {v9}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    const/16 v10, 0xbc0

    .line 70
    invoke-static {v10}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    const/16 v11, 0x302

    const/16 v12, 0x303

    .line 71
    invoke-static {v11, v12}, Lorg/lwjgl/opengl/GL11;->glBlendFunc(II)V

    const/16 v11, 0x1d01

    .line 72
    invoke-static {v11}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    .line 74
    sget-object v11, Lnw;->a:Lnw;

    .line 75
    invoke-virtual {v11}, Lnw;->b()V

    .line 76
    invoke-virtual {v11, v4, v5, v0, v2}, Lnw;->a(FFFF)V

    move/from16 v0, p3

    int-to-double v4, v0

    move/from16 v0, p2

    int-to-double v13, v0

    const-wide/16 v17, 0x0

    move-object v12, v11

    move-wide/from16 v19, v13

    move-wide v13, v4

    move-wide/from16 v15, v19

    .line 77
    invoke-virtual/range {v12 .. v18}, Lnw;->a(DDD)V

    move/from16 v0, p1

    int-to-double v13, v0

    move-wide/from16 v21, v13

    .line 78
    invoke-virtual/range {v12 .. v18}, Lnw;->a(DDD)V

    .line 79
    invoke-virtual {v11, v7, v8, v1, v6}, Lnw;->a(FFFF)V

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v15, v0

    .line 80
    invoke-virtual/range {v12 .. v18}, Lnw;->a(DDD)V

    move-wide v13, v4

    .line 81
    invoke-virtual/range {v12 .. v18}, Lnw;->a(DDD)V

    .line 82
    invoke-virtual {v11}, Lnw;->a()V

    const/16 v0, 0x1d00

    .line 84
    invoke-static {v0}, Lorg/lwjgl/opengl/GL11;->glShadeModel(I)V

    .line 85
    invoke-static {v9}, Lorg/lwjgl/opengl/GL11;->glDisable(I)V

    .line 86
    invoke-static {v10}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    .line 87
    invoke-static {v3}, Lorg/lwjgl/opengl/GL11;->glEnable(I)V

    return-void
.end method

.method public a(Lsj;Ljava/lang/String;III)V
    .registers 7

    .line 91
    invoke-virtual {p1, p2}, Lsj;->a(Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Lsj;->a(Ljava/lang/String;III)V

    return-void
.end method

.method protected b(IIII)V
    .registers 11

    if-ge p3, p2, :cond_5

    move v4, p2

    move p2, p3

    goto :goto_6

    :cond_5
    move v4, p3

    :goto_6
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p1, 0x1

    move-object v0, p0

    move v1, p1

    move v5, p4

    .line 25
    invoke-virtual/range {v0 .. v5}, Lub;->a(IIIII)V

    return-void
.end method

.method public b(IIIIII)V
    .registers 31

    move-object/from16 v0, p0

    .line 101
    sget-object v12, Lnw;->a:Lnw;

    .line 102
    invoke-virtual {v12}, Lnw;->b()V

    add-int/lit8 v1, p1, 0x0

    int-to-double v13, v1

    add-int v1, p2, p6

    int-to-double v10, v1

    .line 103
    iget v1, v0, Lub;->k:F

    float-to-double v6, v1

    add-int/lit8 v1, p3, 0x0

    int-to-float v1, v1

    const/high16 v15, 0x3b800000    # 0.00390625f

    mul-float/2addr v1, v15

    float-to-double v8, v1

    add-int v1, p4, p6

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-double v4, v1

    move-object v1, v12

    move-wide v2, v13

    move-wide/from16 v16, v4

    move-wide v4, v10

    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    move-wide/from16 v10, v16

    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    add-int v1, p1, p5

    int-to-double v10, v1

    .line 104
    iget v1, v0, Lub;->k:F

    float-to-double v6, v1

    add-int v1, p3, p5

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-double v8, v1

    move-object v1, v12

    move-wide v2, v10

    move-wide/from16 v4, v20

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v10, v16

    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    add-int/lit8 v1, p2, 0x0

    int-to-double v10, v1

    .line 105
    iget v1, v0, Lub;->k:F

    float-to-double v6, v1

    add-int/lit8 v1, p4, 0x0

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-double v8, v1

    move-object v1, v12

    move-wide/from16 v2, v22

    move-wide v4, v10

    move-wide v15, v8

    move-wide/from16 v8, v20

    move-wide/from16 v20, v10

    move-wide v10, v15

    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 106
    iget v1, v0, Lub;->k:F

    float-to-double v6, v1

    move-object v1, v12

    move-wide v2, v13

    move-wide/from16 v4, v20

    move-wide/from16 v8, v18

    invoke-virtual/range {v1 .. v11}, Lnw;->a(DDDDD)V

    .line 107
    invoke-virtual {v12}, Lnw;->a()V

    return-void
.end method

.method public b(Lsj;Ljava/lang/String;III)V
    .registers 6

    .line 95
    invoke-virtual {p1, p2, p3, p4, p5}, Lsj;->a(Ljava/lang/String;III)V

    return-void
.end method
