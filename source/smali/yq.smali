###### Class defpackage.yq (yq)
.class public Lyq;
.super Luu;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:[I


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    .line 25
    sget-object v0, Lln;->m:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    const/16 p1, 0x100

    new-array p2, p1, [I

    .line 21
    iput-object p2, p0, Lyq;->a:[I

    new-array p1, p1, [I

    .line 22
    iput-object p1, p0, Lyq;->b:[I

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lyq;->b(Z)Luu;

    return-void
.end method

.method private a(III)V
    .registers 5

    .line 43
    iget-object v0, p0, Lyq;->a:[I

    aput p2, v0, p1

    .line 44
    iget-object p2, p0, Lyq;->b:[I

    aput p3, p2, p1

    return-void
.end method

.method private a(Lfd;IIIILjava/util/Random;I)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 155
    iget-object v2, v0, Lyq;->b:[I

    invoke-virtual/range {p1 .. p4}, Lfd;->a(III)I

    move-result v3

    aget v2, v2, v3

    move/from16 v3, p5

    .line 156
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-ge v3, v2, :cond_71

    .line 157
    invoke-virtual/range {p1 .. p4}, Lfd;->a(III)I

    move-result v2

    sget-object v3, Luu;->an:Luu;

    iget v3, v3, Luu;->bn:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    move v2, v4

    :goto_22
    add-int/lit8 v3, p7, 0xa

    .line 158
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/4 v5, 0x5

    if-ge v3, v5, :cond_56

    invoke-virtual/range {p1 .. p4}, Lfd;->t(III)Z

    move-result v3

    if-nez v3, :cond_56

    .line 159
    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int v1, p7, v1

    const/16 v3, 0xf

    if-le v1, v3, :cond_3f

    move v9, v3

    goto :goto_40

    :cond_3f
    move v9, v1

    .line 161
    :goto_40
    iget v8, v0, Lyq;->bn:I

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v4 .. v9}, Lfd;->b(IIIII)Z

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    goto :goto_61

    :cond_56
    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 163
    invoke-virtual {v1, v3, v5, v6, v4}, Lfd;->f(IIII)Z

    :goto_61
    if-eqz v2, :cond_71

    .line 166
    sget-object v10, Luu;->an:Luu;

    const/4 v15, 0x1

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual/range {v10 .. v15}, Luu;->c(Lfd;IIII)V

    :cond_71
    return-void
.end method

.method private h(Lfd;III)Z
    .registers 7

    add-int/lit8 v0, p2, 0x1

    .line 172
    invoke-virtual {p0, p1, v0, p3, p4}, Lyq;->c(Lxp;III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, p2, -0x1

    .line 173
    invoke-virtual {p0, p1, v0, p3, p4}, Lyq;->c(Lxp;III)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    add-int/lit8 v0, p3, -0x1

    .line 174
    invoke-virtual {p0, p1, p2, v0, p4}, Lyq;->c(Lxp;III)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v0, p3, 0x1

    .line 175
    invoke-virtual {p0, p1, p2, v0, p4}, Lyq;->c(Lxp;III)Z

    move-result v0

    if-eqz v0, :cond_25

    return v1

    :cond_25
    add-int/lit8 v0, p4, -0x1

    .line 176
    invoke-virtual {p0, p1, p2, p3, v0}, Lyq;->c(Lxp;III)Z

    move-result v0

    if-eqz v0, :cond_2e

    return v1

    :cond_2e
    add-int/2addr p4, v1

    .line 177
    invoke-virtual {p0, p1, p2, p3, p4}, Lyq;->c(Lxp;III)Z

    move-result p1

    if-eqz p1, :cond_36

    return v1

    :cond_36
    const/4 p1, 0x0

    return p1
.end method

.method private i(Lfd;III)I
    .registers 11

    const/4 v5, 0x0

    .line 184
    invoke-virtual {p1, p2, p3, p4}, Lfd;->d(III)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    add-int/lit8 v2, p2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    .line 186
    invoke-virtual/range {v0 .. v5}, Lyq;->f(Lfd;IIII)I

    move-result v5

    add-int/lit8 v2, p2, -0x1

    .line 187
    invoke-virtual/range {v0 .. v5}, Lyq;->f(Lfd;IIII)I

    move-result v5

    add-int/lit8 v3, p3, -0x1

    move v2, p2

    .line 188
    invoke-virtual/range {v0 .. v5}, Lyq;->f(Lfd;IIII)I

    move-result v5

    add-int/lit8 v3, p3, 0x1

    .line 189
    invoke-virtual/range {v0 .. v5}, Lyq;->f(Lfd;IIII)I

    move-result v5

    add-int/lit8 v4, p4, -0x1

    move v3, p3

    .line 190
    invoke-virtual/range {v0 .. v5}, Lyq;->f(Lfd;IIII)I

    move-result v5

    add-int/lit8 v4, p4, 0x1

    .line 191
    invoke-virtual/range {v0 .. v5}, Lyq;->f(Lfd;IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 30

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    add-int/lit8 v14, v11, -0x1

    .line 77
    invoke-virtual {v9, v10, v14, v12}, Lfd;->a(III)I

    move-result v0

    sget-object v1, Luu;->bc:Luu;

    iget v1, v1, Luu;->bn:I

    const/4 v6, 0x0

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    move v7, v0

    goto :goto_1d

    :cond_1c
    move v7, v6

    .line 79
    :goto_1d
    invoke-virtual/range {p0 .. p4}, Lyq;->a(Lfd;III)Z

    move-result v0

    if-nez v0, :cond_26

    .line 80
    invoke-virtual {v9, v10, v11, v12, v6}, Lfd;->f(IIII)Z

    :cond_26
    if-nez v7, :cond_58

    .line 83
    invoke-virtual/range {p1 .. p1}, Lfd;->C()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 84
    invoke-virtual/range {p1 .. p4}, Lfd;->t(III)Z

    move-result v0

    if-nez v0, :cond_54

    add-int/lit8 v0, v10, -0x1

    invoke-virtual {v9, v0, v11, v12}, Lfd;->t(III)Z

    move-result v0

    if-nez v0, :cond_54

    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v9, v0, v11, v12}, Lfd;->t(III)Z

    move-result v0

    if-nez v0, :cond_54

    add-int/lit8 v0, v12, -0x1

    invoke-virtual {v9, v10, v11, v0}, Lfd;->t(III)Z

    move-result v0

    if-nez v0, :cond_54

    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v9, v10, v11, v0}, Lfd;->t(III)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 85
    :cond_54
    invoke-virtual {v9, v10, v11, v12, v6}, Lfd;->f(IIII)Z

    return-void

    .line 90
    :cond_58
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v15

    const/4 v5, 0x3

    const/16 v4, 0xf

    if-ge v15, v4, :cond_6b

    .line 92
    invoke-virtual {v13, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v15

    invoke-virtual {v9, v10, v11, v12, v0}, Lfd;->e(IIII)Z

    .line 94
    :cond_6b
    iget v3, v8, Lyq;->bn:I

    invoke-virtual/range {p0 .. p0}, Lyq;->e()I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v17, v3

    move/from16 v3, p4

    move/from16 v4, v17

    move v6, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lfd;->c(IIIII)V

    if-nez v7, :cond_98

    .line 96
    invoke-direct/range {p0 .. p4}, Lyq;->h(Lfd;III)Z

    move-result v0

    if-nez v0, :cond_98

    .line 97
    invoke-virtual {v9, v10, v14, v12}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_93

    if-le v15, v6, :cond_97

    :cond_93
    const/4 v0, 0x0

    invoke-virtual {v9, v10, v11, v12, v0}, Lfd;->f(IIII)Z

    :cond_97
    return-void

    :cond_98
    const/4 v6, 0x4

    if-nez v7, :cond_b0

    .line 101
    invoke-virtual {v8, v9, v10, v14, v12}, Lyq;->c(Lxp;III)Z

    move-result v0

    if-nez v0, :cond_b0

    const/16 v7, 0xf

    if-ne v15, v7, :cond_b2

    .line 102
    invoke-virtual {v13, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_b2

    const/4 v0, 0x0

    .line 103
    invoke-virtual {v9, v10, v11, v12, v0}, Lfd;->f(IIII)Z

    return-void

    :cond_b0
    const/16 v7, 0xf

    :cond_b2
    add-int/lit8 v5, v10, 0x1

    const/16 v16, 0x12c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p3

    move/from16 v4, p4

    move v13, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move-object/from16 v6, p5

    move v7, v15

    .line 109
    invoke-direct/range {v0 .. v7}, Lyq;->a(Lfd;IIIILjava/util/Random;I)V

    add-int/lit8 v17, v10, -0x1

    const/16 v5, 0x12c

    move/from16 v2, v17

    .line 110
    invoke-direct/range {v0 .. v7}, Lyq;->a(Lfd;IIIILjava/util/Random;I)V

    const/16 v5, 0xfa

    move/from16 v2, p2

    move v3, v14

    .line 111
    invoke-direct/range {v0 .. v7}, Lyq;->a(Lfd;IIIILjava/util/Random;I)V

    add-int/lit8 v7, v11, 0x1

    move v3, v7

    move/from16 v18, v14

    move v14, v7

    move v7, v15

    .line 112
    invoke-direct/range {v0 .. v7}, Lyq;->a(Lfd;IIIILjava/util/Random;I)V

    add-int/lit8 v20, v12, -0x1

    const/16 v5, 0x12c

    move/from16 v3, p3

    move/from16 v4, v20

    .line 113
    invoke-direct/range {v0 .. v7}, Lyq;->a(Lfd;IIIILjava/util/Random;I)V

    add-int/lit8 v7, v12, 0x1

    move v4, v7

    move v8, v7

    move v7, v15

    .line 114
    invoke-direct/range {v0 .. v7}, Lyq;->a(Lfd;IIIILjava/util/Random;I)V

    move/from16 v6, v17

    :goto_fa
    if-gt v6, v13, :cond_1c7

    move/from16 v7, v20

    :goto_fe
    if-gt v7, v8, :cond_1b5

    move/from16 v5, v18

    :goto_102
    add-int/lit8 v0, v11, 0x4

    if-gt v5, v0, :cond_1a3

    if-ne v6, v10, :cond_118

    if-ne v5, v11, :cond_118

    if-ne v7, v12, :cond_118

    const/16 v23, 0xf

    move/from16 v22, v5

    move/from16 v17, v8

    move/from16 v21, v13

    move-object/from16 v8, p0

    goto/16 :goto_199

    :cond_118
    const/16 v0, 0x64

    if-le v5, v14, :cond_120

    sub-int v1, v5, v14

    mul-int/2addr v1, v0

    add-int/2addr v0, v1

    :cond_120
    move/from16 v17, v8

    move-object/from16 v8, p0

    .line 126
    invoke-direct {v8, v9, v6, v5, v7}, Lyq;->i(Lfd;III)I

    move-result v1

    if-lez v1, :cond_193

    add-int/lit8 v1, v1, 0x28

    add-int/lit8 v2, v15, 0x1e

    .line 128
    div-int/2addr v1, v2

    if-lez v1, :cond_193

    move/from16 v21, v13

    move-object/from16 v13, p5

    .line 129
    invoke-virtual {v13, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-gt v0, v1, :cond_18e

    .line 130
    invoke-virtual/range {p1 .. p1}, Lfd;->C()Z

    move-result v0

    if-eqz v0, :cond_147

    invoke-virtual {v9, v6, v5, v7}, Lfd;->t(III)Z

    move-result v0

    if-nez v0, :cond_18e

    :cond_147
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {v9, v0, v5, v12}, Lfd;->t(III)Z

    move-result v0

    if-nez v0, :cond_18e

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v9, v0, v5, v7}, Lfd;->t(III)Z

    move-result v0

    if-nez v0, :cond_18e

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v9, v6, v5, v0}, Lfd;->t(III)Z

    move-result v0

    if-nez v0, :cond_18e

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v6, v5, v0}, Lfd;->t(III)Z

    move-result v0

    if-eqz v0, :cond_168

    goto :goto_18e

    :cond_168
    const/4 v0, 0x5

    .line 135
    invoke-virtual {v13, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v15

    const/16 v4, 0xf

    if-le v0, v4, :cond_177

    move/from16 v19, v4

    goto :goto_179

    :cond_177
    move/from16 v19, v0

    .line 137
    :goto_179
    iget v3, v8, Lyq;->bn:I

    move-object/from16 v0, p1

    move v1, v6

    move v2, v5

    move/from16 v22, v3

    move v3, v7

    move/from16 v23, v4

    move/from16 v4, v22

    move/from16 v22, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lfd;->b(IIIII)Z

    goto :goto_19b

    :cond_18e
    :goto_18e
    move/from16 v22, v5

    const/16 v23, 0xf

    goto :goto_19b

    :cond_193
    move/from16 v22, v5

    move/from16 v21, v13

    const/16 v23, 0xf

    :goto_199
    move-object/from16 v13, p5

    :goto_19b
    add-int/lit8 v5, v22, 0x1

    move/from16 v8, v17

    move/from16 v13, v21

    goto/16 :goto_102

    :cond_1a3
    const/16 v23, 0xf

    move/from16 v17, v8

    move/from16 v21, v13

    move-object/from16 v8, p0

    move-object/from16 v13, p5

    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v17

    move/from16 v13, v21

    goto/16 :goto_fe

    :cond_1b5
    const/16 v23, 0xf

    move/from16 v17, v8

    move/from16 v21, v13

    move-object/from16 v8, p0

    move-object/from16 v13, p5

    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v17

    move/from16 v13, v21

    goto/16 :goto_fa

    :cond_1c7
    move-object/from16 v8, p0

    return-void
.end method

.method public a(Lfd;III)Z
    .registers 6

    add-int/lit8 v0, p3, -0x1

    .line 213
    invoke-virtual {p1, p2, v0, p4}, Lfd;->h(III)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0, p1, p2, p3, p4}, Lyq;->h(Lfd;III)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public b(Lfd;IIII)V
    .registers 6

    add-int/lit8 p5, p3, -0x1

    .line 217
    invoke-virtual {p1, p2, p5, p4}, Lfd;->h(III)Z

    move-result p5

    if-nez p5, :cond_12

    invoke-direct {p0, p1, p2, p3, p4}, Lyq;->h(Lfd;III)Z

    move-result p5

    if-nez p5, :cond_12

    const/4 p5, 0x0

    .line 218
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    :cond_12
    return-void
.end method

.method public b(Lfd;IIILjava/util/Random;)V
    .registers 32

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v12, p3

    move/from16 v13, p4

    const/16 v0, 0x18

    move-object/from16 v10, p5

    .line 254
    invoke-virtual {v10, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/high16 v16, 0x3f000000    # 0.5f

    if-nez v0, :cond_3a

    int-to-float v0, v15

    add-float v0, v0, v16

    float-to-double v1, v0

    int-to-float v0, v12

    add-float v0, v0, v16

    float-to-double v3, v0

    int-to-float v0, v13

    add-float v0, v0, v16

    float-to-double v5, v0

    const-string v7, "fire.fire"

    const/high16 v0, 0x3f800000    # 1.0f

    .line 255
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v8

    add-float/2addr v8, v0

    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v9, 0x3f333333    # 0.7f

    mul-float/2addr v0, v9

    const v9, 0x3e99999a    # 0.3f

    add-float/2addr v9, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v9}, Lfd;->a(DDDLjava/lang/String;FF)V

    :cond_3a
    add-int/lit8 v0, v12, -0x1

    .line 258
    invoke-virtual {v14, v15, v0, v13}, Lfd;->h(III)Z

    move-result v1

    const/16 v17, 0x0

    if-nez v1, :cond_1e4

    sget-object v1, Luu;->as:Lyq;

    invoke-virtual {v1, v14, v15, v0, v13}, Lyq;->c(Lxp;III)Z

    move-result v0

    if-eqz v0, :cond_4e

    goto/16 :goto_1e4

    .line 266
    :cond_4e
    sget-object v0, Luu;->as:Lyq;

    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v0, v14, v1, v12, v13}, Lyq;->c(Lxp;III)Z

    move-result v0

    const v16, 0x3dcccccd    # 0.1f

    const/4 v11, 0x2

    if-eqz v0, :cond_9d

    move/from16 v8, v17

    :goto_5e
    if-ge v8, v11, :cond_9d

    int-to-float v0, v15

    .line 268
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float v1, v1, v16

    add-float/2addr v0, v1

    int-to-float v1, v12

    .line 269
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-float/2addr v1, v2

    int-to-float v2, v13

    .line 270
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v3

    add-float/2addr v2, v3

    const-string v3, "largesmoke"

    float-to-double v4, v0

    float-to-double v6, v1

    float-to-double v1, v2

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v24, v1

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-wide/from16 v6, v24

    move/from16 v24, v8

    move-wide/from16 v8, v18

    move-wide/from16 v10, v20

    move-wide/from16 v12, v22

    .line 271
    invoke-virtual/range {v0 .. v13}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v8, v24, 0x1

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v10, p5

    const/4 v11, 0x2

    goto :goto_5e

    .line 274
    :cond_9d
    sget-object v0, Luu;->as:Lyq;

    add-int/lit8 v12, v15, 0x1

    move/from16 v13, p3

    move/from16 v10, p4

    invoke-virtual {v0, v14, v12, v13, v10}, Lyq;->c(Lxp;III)Z

    move-result v0

    if-eqz v0, :cond_ee

    move/from16 v11, v17

    :goto_ad
    const/4 v8, 0x2

    if-ge v11, v8, :cond_ee

    int-to-float v0, v12

    .line 276
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float v1, v1, v16

    sub-float/2addr v0, v1

    int-to-float v1, v13

    .line 277
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-float/2addr v1, v2

    int-to-float v2, v10

    .line 278
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v3

    add-float/2addr v2, v3

    const-string v3, "largesmoke"

    float-to-double v4, v0

    float-to-double v6, v1

    float-to-double v1, v2

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v24, v1

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-wide/from16 v6, v24

    move-wide/from16 v8, v18

    move/from16 v18, v11

    move-wide/from16 v10, v20

    move/from16 v19, v12

    move-wide/from16 v12, v22

    .line 279
    invoke-virtual/range {v0 .. v13}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v11, v18, 0x1

    move/from16 v13, p3

    move/from16 v10, p4

    move/from16 v12, v19

    goto :goto_ad

    .line 282
    :cond_ee
    sget-object v0, Luu;->as:Lyq;

    move/from16 v12, p4

    add-int/lit8 v1, v12, -0x1

    move/from16 v13, p3

    invoke-virtual {v0, v14, v15, v13, v1}, Lyq;->c(Lxp;III)Z

    move-result v0

    if-eqz v0, :cond_13b

    move/from16 v10, v17

    const/4 v11, 0x2

    :goto_ff
    if-ge v10, v11, :cond_13b

    int-to-float v0, v15

    .line 284
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v1

    add-float/2addr v0, v1

    int-to-float v1, v13

    .line 285
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-float/2addr v1, v2

    int-to-float v2, v12

    .line 286
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float v3, v3, v16

    add-float/2addr v2, v3

    const-string v3, "largesmoke"

    float-to-double v4, v0

    float-to-double v6, v1

    float-to-double v8, v2

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide/from16 v8, v18

    move/from16 v18, v10

    move-wide/from16 v10, v20

    move v14, v12

    move-wide/from16 v12, v22

    .line 287
    invoke-virtual/range {v0 .. v13}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v10, v18, 0x1

    move/from16 v13, p3

    move v12, v14

    const/4 v11, 0x2

    move-object/from16 v14, p1

    goto :goto_ff

    :cond_13b
    move v14, v12

    .line 290
    sget-object v0, Luu;->as:Lyq;

    add-int/lit8 v12, v14, 0x1

    move/from16 v13, p3

    move v10, v14

    move-object/from16 v14, p1

    invoke-virtual {v0, v14, v15, v13, v12}, Lyq;->c(Lxp;III)Z

    move-result v0

    if-eqz v0, :cond_191

    move/from16 v11, v17

    const/4 v8, 0x2

    :goto_14e
    if-ge v11, v8, :cond_191

    int-to-float v0, v15

    .line 292
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v1

    add-float/2addr v0, v1

    int-to-float v1, v13

    .line 293
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-float/2addr v1, v2

    int-to-float v2, v12

    .line 294
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float v3, v3, v16

    sub-float/2addr v2, v3

    const-string v3, "largesmoke"

    float-to-double v4, v0

    float-to-double v6, v1

    float-to-double v1, v2

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v24, v1

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-wide/from16 v6, v24

    move-wide/from16 v8, v18

    move/from16 v18, v11

    move-wide/from16 v10, v20

    move/from16 v19, v12

    move v14, v13

    move-wide/from16 v12, v22

    .line 295
    invoke-virtual/range {v0 .. v13}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v11, v18, 0x1

    move/from16 v10, p4

    move v13, v14

    move/from16 v12, v19

    const/4 v8, 0x2

    move-object/from16 v14, p1

    goto :goto_14e

    :cond_191
    move v14, v13

    .line 298
    sget-object v0, Luu;->as:Lyq;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, p1

    move/from16 v13, p4

    invoke-virtual {v0, v12, v15, v14, v13}, Lyq;->c(Lxp;III)Z

    move-result v0

    if-eqz v0, :cond_220

    move/from16 v10, v17

    const/4 v11, 0x2

    :goto_1a3
    if-ge v10, v11, :cond_220

    int-to-float v0, v15

    .line 300
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v1

    add-float/2addr v0, v1

    int-to-float v1, v14

    .line 301
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float v2, v2, v16

    sub-float/2addr v1, v2

    int-to-float v2, v13

    .line 302
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v3

    add-float/2addr v2, v3

    const-string v3, "largesmoke"

    float-to-double v4, v0

    float-to-double v6, v1

    float-to-double v8, v2

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide/from16 v8, v17

    move/from16 v17, v10

    move/from16 v18, v11

    move-wide/from16 v10, v19

    move/from16 p3, v14

    move v14, v13

    move-wide/from16 v12, v21

    .line 303
    invoke-virtual/range {v0 .. v13}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v10, v17, 0x1

    move-object/from16 v12, p1

    move v13, v14

    move/from16 v11, v18

    move/from16 v14, p3

    goto :goto_1a3

    :cond_1e4
    :goto_1e4
    move v14, v13

    move/from16 v13, v17

    :goto_1e7
    const/4 v0, 0x3

    if-ge v13, v0, :cond_220

    int-to-float v0, v15

    .line 260
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v1

    add-float/2addr v0, v1

    int-to-float v1, v12

    .line 261
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float v2, v2, v16

    add-float/2addr v1, v2

    add-float v1, v1, v16

    int-to-float v2, v14

    .line 262
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v3

    add-float/2addr v2, v3

    const-string v3, "largesmoke"

    float-to-double v4, v0

    float-to-double v6, v1

    float-to-double v8, v2

    const-wide/16 v10, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p1

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide/from16 v10, v17

    move/from16 v17, v13

    move-wide/from16 v12, v19

    .line 263
    invoke-virtual/range {v0 .. v13}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v13, v17, 0x1

    move/from16 v12, p3

    goto :goto_1e7

    :cond_220
    return-void
.end method

.method public c(Lfd;III)V
    .registers 12

    add-int/lit8 v0, p3, -0x1

    .line 224
    invoke-virtual {p1, p2, v0, p4}, Lfd;->a(III)I

    move-result v1

    sget-object v2, Luu;->aq:Luu;

    iget v2, v2, Luu;->bn:I

    if-ne v1, v2, :cond_15

    .line 225
    sget-object v1, Luu;->bf:Lak;

    invoke-virtual {v1, p1, p2, p3, p4}, Lak;->a_(Lfd;III)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    .line 229
    :cond_15
    invoke-virtual {p1, p2, v0, p4}, Lfd;->h(III)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-direct {p0, p1, p2, p3, p4}, Lyq;->h(Lfd;III)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    return-void

    .line 233
    :cond_26
    iget v5, p0, Lyq;->bn:I

    invoke-virtual {p0}, Lyq;->e()I

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Lfd;->c(IIIII)V

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lxp;III)Z
    .registers 6

    .line 201
    iget-object v0, p0, Lyq;->a:[I

    invoke-interface {p1, p2, p3, p4}, Lxp;->a(III)I

    move-result p1

    aget p1, v0, p1

    if-lez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method public e(Lfd;III)Leq;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Lfd;IIII)I
    .registers 7

    .line 206
    iget-object v0, p0, Lyq;->a:[I

    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p1

    aget p1, v0, p1

    if-le p1, p5, :cond_b

    return p1

    :cond_b
    return p5
.end method

.method public k()V
    .registers 6

    .line 31
    sget-object v0, Luu;->y:Luu;

    iget v0, v0, Luu;->bn:I

    const/4 v1, 0x5

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lyq;->a(III)V

    .line 32
    sget-object v0, Luu;->ba:Luu;

    iget v0, v0, Luu;->bn:I

    invoke-direct {p0, v0, v1, v2}, Lyq;->a(III)V

    .line 33
    sget-object v0, Luu;->au:Luu;

    iget v0, v0, Luu;->bn:I

    invoke-direct {p0, v0, v1, v2}, Lyq;->a(III)V

    .line 34
    sget-object v0, Luu;->K:Luu;

    iget v0, v0, Luu;->bn:I

    invoke-direct {p0, v0, v1, v1}, Lyq;->a(III)V

    .line 35
    sget-object v0, Luu;->L:Lbk;

    iget v0, v0, Lbk;->bn:I

    const/16 v1, 0x1e

    const/16 v3, 0x3c

    invoke-direct {p0, v0, v1, v3}, Lyq;->a(III)V

    .line 36
    sget-object v0, Luu;->ao:Luu;

    iget v0, v0, Luu;->bn:I

    invoke-direct {p0, v0, v1, v2}, Lyq;->a(III)V

    .line 37
    sget-object v0, Luu;->an:Luu;

    iget v0, v0, Luu;->bn:I

    const/16 v2, 0xf

    const/16 v4, 0x64

    invoke-direct {p0, v0, v2, v4}, Lyq;->a(III)V

    .line 38
    sget-object v0, Luu;->Y:Lru;

    iget v0, v0, Lru;->bn:I

    invoke-direct {p0, v0, v3, v4}, Lyq;->a(III)V

    .line 39
    sget-object v0, Luu;->ac:Luu;

    iget v0, v0, Luu;->bn:I

    invoke-direct {p0, v0, v1, v3}, Lyq;->a(III)V

    return-void
.end method

.method public v_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
