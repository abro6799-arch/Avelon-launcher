###### Class defpackage.ak (ak)
.class public Lak;
.super Ljp;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 13
    sget-object v0, Lln;->y:Lln;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljp;-><init>(IILln;Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIILsn;)V
    .registers 6

    .line 150
    iget-object p1, p5, Lsn;->aH:Lsn;

    if-nez p1, :cond_b

    iget-object p1, p5, Lsn;->aG:Lsn;

    if-nez p1, :cond_b

    invoke-virtual {p5}, Lsn;->S()V

    :cond_b
    return-void
.end method

.method public a(Lxp;III)V
    .registers 12

    add-int/lit8 v3, p2, -0x1

    .line 21
    invoke-interface {p1, v3, p3, p4}, Lxp;->a(III)I

    move-result v3

    iget v4, p0, Lak;->bn:I

    if-eq v3, v4, :cond_24

    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3, p3, p4}, Lxp;->a(III)I

    move-result v0

    iget v1, p0, Lak;->bn:I

    if-ne v0, v1, :cond_15

    goto :goto_24

    :cond_15
    const/high16 v1, 0x3ec00000    # 0.375f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f200000    # 0.625f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 28
    invoke-virtual/range {v0 .. v6}, Lak;->a(FFFFFF)V

    goto :goto_32

    :cond_24
    :goto_24
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3ec00000    # 0.375f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f200000    # 0.625f

    move-object v0, p0

    .line 24
    invoke-virtual/range {v0 .. v6}, Lak;->a(FFFFFF)V

    :goto_32
    return-void
.end method

.method public a_(Lfd;III)Z
    .registers 22

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    add-int/lit8 v4, v1, -0x1

    .line 43
    invoke-virtual {v0, v4, v2, v3}, Lfd;->a(III)I

    move-result v4

    sget-object v5, Luu;->aq:Luu;

    iget v5, v5, Luu;->bn:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_25

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lfd;->a(III)I

    move-result v4

    sget-object v5, Luu;->aq:Luu;

    iget v5, v5, Luu;->bn:I

    if-ne v4, v5, :cond_23

    goto :goto_25

    :cond_23
    move v4, v6

    goto :goto_26

    :cond_25
    :goto_25
    move v4, v7

    :goto_26
    add-int/lit8 v5, v3, -0x1

    .line 44
    invoke-virtual {v0, v1, v2, v5}, Lfd;->a(III)I

    move-result v5

    sget-object v8, Luu;->aq:Luu;

    iget v8, v8, Luu;->bn:I

    if-eq v5, v8, :cond_41

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v1, v2, v5}, Lfd;->a(III)I

    move-result v5

    sget-object v8, Luu;->aq:Luu;

    iget v8, v8, Luu;->bn:I

    if-ne v5, v8, :cond_3f

    goto :goto_41

    :cond_3f
    move v5, v6

    goto :goto_42

    :cond_41
    :goto_41
    move v5, v7

    :goto_42
    if-ne v4, v5, :cond_45

    return v6

    :cond_45
    sub-int v8, v1, v4

    sub-int v9, v3, v5

    .line 48
    invoke-virtual {v0, v8, v2, v9}, Lfd;->a(III)I

    move-result v10

    if-nez v10, :cond_51

    move v1, v8

    move v3, v9

    :cond_51
    const/4 v8, -0x1

    move v9, v8

    :goto_53
    const/4 v10, 0x3

    const/4 v11, 0x2

    if-gt v9, v11, :cond_96

    move v12, v8

    :goto_58
    if-gt v12, v10, :cond_92

    if-eq v9, v8, :cond_65

    if-eq v9, v11, :cond_65

    if-eq v12, v8, :cond_65

    if-ne v12, v10, :cond_63

    goto :goto_65

    :cond_63
    move v13, v6

    goto :goto_66

    :cond_65
    :goto_65
    move v13, v7

    :goto_66
    if-eq v9, v8, :cond_6a

    if-ne v9, v11, :cond_6f

    :cond_6a
    if-eq v12, v8, :cond_8e

    if-ne v12, v10, :cond_6f

    goto :goto_8e

    :cond_6f
    mul-int v14, v4, v9

    add-int/2addr v14, v1

    add-int v15, v2, v12

    mul-int v16, v5, v9

    add-int v8, v3, v16

    .line 58
    invoke-virtual {v0, v14, v15, v8}, Lfd;->a(III)I

    move-result v8

    if-eqz v13, :cond_85

    .line 61
    sget-object v13, Luu;->aq:Luu;

    iget v13, v13, Luu;->bn:I

    if-eq v8, v13, :cond_8e

    return v6

    :cond_85
    if-eqz v8, :cond_8e

    .line 63
    sget-object v13, Luu;->as:Lyq;

    iget v13, v13, Lyq;->bn:I

    if-eq v8, v13, :cond_8e

    return v6

    :cond_8e
    :goto_8e
    add-int/lit8 v12, v12, 0x1

    const/4 v8, -0x1

    goto :goto_58

    :cond_92
    add-int/lit8 v9, v9, 0x1

    const/4 v8, -0x1

    goto :goto_53

    .line 68
    :cond_96
    iput-boolean v7, v0, Lfd;->o:Z

    move v8, v6

    :goto_99
    if-ge v8, v11, :cond_b3

    move v9, v6

    :goto_9c
    if-ge v9, v10, :cond_b0

    mul-int v12, v4, v8

    add-int/2addr v12, v1

    add-int v13, v2, v9

    mul-int v14, v5, v8

    add-int/2addr v14, v3

    .line 71
    sget-object v15, Luu;->bf:Lak;

    iget v15, v15, Lak;->bn:I

    invoke-virtual {v0, v12, v13, v14, v15}, Lfd;->f(IIII)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_9c

    :cond_b0
    add-int/lit8 v8, v8, 0x1

    goto :goto_99

    .line 74
    :cond_b3
    iput-boolean v6, v0, Lfd;->o:Z

    return v7
.end method

.method public b(Lfd;IIII)V
    .registers 14

    add-int/lit8 p5, p2, -0x1

    .line 82
    invoke-virtual {p1, p5, p3, p4}, Lfd;->a(III)I

    move-result v0

    iget v1, p0, Lak;->bn:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1a

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0, p3, p4}, Lfd;->a(III)I

    move-result v0

    iget v1, p0, Lak;->bn:I

    if-ne v0, v1, :cond_17

    goto :goto_1a

    :cond_17
    move v0, v2

    move v1, v3

    goto :goto_1c

    :cond_1a
    :goto_1a
    move v1, v2

    move v0, v3

    :goto_1c
    move v4, p3

    :goto_1d
    add-int/lit8 v5, v4, -0x1

    .line 88
    invoke-virtual {p1, p2, v5, p4}, Lfd;->a(III)I

    move-result v6

    iget v7, p0, Lak;->bn:I

    if-ne v6, v7, :cond_2a

    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 91
    :cond_2a
    invoke-virtual {p1, p2, v5, p4}, Lfd;->a(III)I

    move-result v5

    sget-object v6, Luu;->aq:Luu;

    iget v6, v6, Luu;->bn:I

    if-eq v5, v6, :cond_38

    .line 92
    invoke-virtual {p1, p2, p3, p4, v2}, Lfd;->f(IIII)Z

    return-void

    :cond_38
    move v5, v3

    :goto_39
    const/4 v6, 0x4

    if-ge v5, v6, :cond_49

    add-int v6, v4, v5

    .line 97
    invoke-virtual {p1, p2, v6, p4}, Lfd;->a(III)I

    move-result v6

    iget v7, p0, Lak;->bn:I

    if-ne v6, v7, :cond_49

    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_49
    const/4 v6, 0x3

    if-ne v5, v6, :cond_c3

    add-int/2addr v4, v5

    .line 100
    invoke-virtual {p1, p2, v4, p4}, Lfd;->a(III)I

    move-result v4

    sget-object v5, Luu;->aq:Luu;

    iget v5, v5, Luu;->bn:I

    if-eq v4, v5, :cond_59

    goto/16 :goto_c3

    .line 105
    :cond_59
    invoke-virtual {p1, p5, p3, p4}, Lfd;->a(III)I

    move-result p5

    iget v4, p0, Lak;->bn:I

    if-eq p5, v4, :cond_6e

    add-int/lit8 p5, p2, 0x1

    invoke-virtual {p1, p5, p3, p4}, Lfd;->a(III)I

    move-result p5

    iget v4, p0, Lak;->bn:I

    if-ne p5, v4, :cond_6c

    goto :goto_6e

    :cond_6c
    move p5, v2

    goto :goto_6f

    :cond_6e
    :goto_6e
    move p5, v3

    :goto_6f
    add-int/lit8 v4, p4, -0x1

    .line 106
    invoke-virtual {p1, p2, p3, v4}, Lfd;->a(III)I

    move-result v4

    iget v5, p0, Lak;->bn:I

    if-eq v4, v5, :cond_85

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {p1, p2, p3, v4}, Lfd;->a(III)I

    move-result v4

    iget v5, p0, Lak;->bn:I

    if-ne v4, v5, :cond_84

    goto :goto_85

    :cond_84
    move v3, v2

    :cond_85
    :goto_85
    if-eqz p5, :cond_8d

    if-eqz v3, :cond_8d

    .line 108
    invoke-virtual {p1, p2, p3, p4, v2}, Lfd;->f(IIII)Z

    return-void

    :cond_8d
    add-int p5, p2, v0

    add-int v3, p4, v1

    .line 112
    invoke-virtual {p1, p5, p3, v3}, Lfd;->a(III)I

    move-result v4

    sget-object v5, Luu;->aq:Luu;

    iget v5, v5, Luu;->bn:I

    if-ne v4, v5, :cond_a7

    sub-int v4, p2, v0

    sub-int v5, p4, v1

    invoke-virtual {p1, v4, p3, v5}, Lfd;->a(III)I

    move-result v4

    iget v5, p0, Lak;->bn:I

    if-eq v4, v5, :cond_be

    :cond_a7
    sub-int v0, p2, v0

    sub-int v1, p4, v1

    invoke-virtual {p1, v0, p3, v1}, Lfd;->a(III)I

    move-result v0

    sget-object v1, Luu;->aq:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_bf

    invoke-virtual {p1, p5, p3, v3}, Lfd;->a(III)I

    move-result p5

    iget v0, p0, Lak;->bn:I

    if-eq p5, v0, :cond_be

    goto :goto_bf

    :cond_be
    return-void

    .line 116
    :cond_bf
    :goto_bf
    invoke-virtual {p1, p2, p3, p4, v2}, Lfd;->f(IIII)Z

    return-void

    .line 101
    :cond_c3
    :goto_c3
    invoke-virtual {p1, p2, p3, p4, v2}, Lfd;->f(IIII)Z

    return-void
.end method

.method public b(Lfd;IIILjava/util/Random;)V
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    const/16 v1, 0x64

    .line 154
    invoke-virtual {v12, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    if-nez v1, :cond_34

    int-to-double v1, v13

    add-double v2, v1, v16

    int-to-double v4, v14

    add-double v4, v4, v16

    int-to-double v6, v11

    add-double v6, v6, v16

    const-string v8, "portal.portal"

    const/high16 v9, 0x3f800000    # 1.0f

    .line 155
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v10

    const v10, 0x3f4ccccd    # 0.8f

    add-float/2addr v10, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lfd;->a(DDDLjava/lang/String;FF)V

    :cond_34
    const/4 v1, 0x0

    move v9, v1

    :goto_36
    const/4 v1, 0x4

    if-ge v9, v1, :cond_d9

    int-to-float v1, v13

    .line 158
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    int-to-float v3, v14

    .line 159
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v4

    add-float/2addr v3, v4

    float-to-double v5, v3

    int-to-float v3, v11

    .line 160
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    const/4 v7, 0x2

    .line 164
    invoke-virtual {v12, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    .line 165
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v7

    move-wide/from16 v18, v1

    float-to-double v1, v7

    sub-double v1, v1, v16

    mul-double v1, v1, v16

    .line 166
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v7

    move-wide/from16 v20, v1

    float-to-double v1, v7

    sub-double v1, v1, v16

    mul-double v22, v1, v16

    .line 167
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v1

    float-to-double v1, v1

    sub-double v1, v1, v16

    mul-double v1, v1, v16

    add-int/lit8 v7, v13, -0x1

    .line 168
    invoke-virtual {v15, v7, v14, v11}, Lfd;->a(III)I

    move-result v7

    iget v10, v0, Lak;->bn:I

    const/high16 v24, 0x40000000    # 2.0f

    const-wide/high16 v25, 0x3fd0000000000000L    # 0.25

    if-eq v7, v10, :cond_a8

    add-int/lit8 v7, v13, 0x1

    invoke-virtual {v15, v7, v14, v11}, Lfd;->a(III)I

    move-result v7

    iget v10, v0, Lak;->bn:I

    if-ne v7, v10, :cond_8e

    goto :goto_a8

    :cond_8e
    move-wide/from16 v27, v1

    int-to-double v0, v13

    add-double v0, v0, v16

    move-wide/from16 v29, v3

    int-to-double v2, v8

    mul-double v2, v2, v25

    add-double/2addr v0, v2

    .line 173
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float v2, v2, v24

    int-to-float v3, v8

    mul-float/2addr v2, v3

    float-to-double v2, v2

    move-wide/from16 v20, v2

    move-wide/from16 v7, v29

    move-wide v3, v0

    goto :goto_bd

    :cond_a8
    :goto_a8
    int-to-double v0, v11

    add-double v0, v0, v16

    int-to-double v2, v8

    mul-double v2, v2, v25

    add-double/2addr v0, v2

    .line 170
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float v2, v2, v24

    int-to-float v3, v8

    mul-float/2addr v2, v3

    float-to-double v2, v2

    move-wide v7, v0

    move-wide/from16 v27, v2

    move-wide/from16 v3, v18

    :goto_bd
    const-string v2, "portal"

    move-object/from16 v1, p1

    move v0, v9

    move-wide/from16 v9, v20

    move-wide/from16 v11, v22

    move-wide/from16 v13, v27

    .line 176
    invoke-virtual/range {v1 .. v14}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    add-int/lit8 v9, v0, 0x1

    move-object/from16 v0, p0

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    goto/16 :goto_36

    :cond_d9
    return-void
.end method

.method public b(Lxp;IIII)Z
    .registers 14

    .line 122
    invoke-interface {p1, p2, p3, p4}, Lxp;->a(III)I

    move-result v0

    iget v1, p0, Lak;->bn:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return v2

    :cond_a
    add-int/lit8 v0, p2, -0x1

    .line 124
    invoke-interface {p1, v0, p3, p4}, Lxp;->a(III)I

    move-result v0

    iget v1, p0, Lak;->bn:I

    const/4 v3, 0x1

    if-ne v0, v1, :cond_21

    add-int/lit8 v0, p2, -0x2

    invoke-interface {p1, v0, p3, p4}, Lxp;->a(III)I

    move-result v0

    iget v1, p0, Lak;->bn:I

    if-eq v0, v1, :cond_21

    move v0, v3

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    add-int/lit8 v1, p2, 0x1

    .line 125
    invoke-interface {p1, v1, p3, p4}, Lxp;->a(III)I

    move-result v1

    iget v4, p0, Lak;->bn:I

    if-ne v1, v4, :cond_38

    add-int/lit8 v1, p2, 0x2

    invoke-interface {p1, v1, p3, p4}, Lxp;->a(III)I

    move-result v1

    iget v4, p0, Lak;->bn:I

    if-eq v1, v4, :cond_38

    move v1, v3

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    add-int/lit8 v4, p4, -0x1

    .line 127
    invoke-interface {p1, p2, p3, v4}, Lxp;->a(III)I

    move-result v4

    iget v5, p0, Lak;->bn:I

    if-ne v4, v5, :cond_4f

    add-int/lit8 v4, p4, -0x2

    invoke-interface {p1, p2, p3, v4}, Lxp;->a(III)I

    move-result v4

    iget v5, p0, Lak;->bn:I

    if-eq v4, v5, :cond_4f

    move v4, v3

    goto :goto_50

    :cond_4f
    move v4, v2

    :goto_50
    add-int/lit8 v5, p4, 0x1

    .line 128
    invoke-interface {p1, p2, p3, v5}, Lxp;->a(III)I

    move-result v5

    iget v6, p0, Lak;->bn:I

    const/4 v7, 0x2

    if-ne v5, v6, :cond_66

    add-int/2addr p4, v7

    invoke-interface {p1, p2, p3, p4}, Lxp;->a(III)I

    move-result p1

    iget p2, p0, Lak;->bn:I

    if-eq p1, p2, :cond_66

    move p1, v3

    goto :goto_67

    :cond_66
    move p1, v2

    :goto_67
    if-nez v0, :cond_6e

    if-eqz v1, :cond_6c

    goto :goto_6e

    :cond_6c
    move p2, v2

    goto :goto_6f

    :cond_6e
    :goto_6e
    move p2, v3

    :goto_6f
    if-nez v4, :cond_76

    if-eqz p1, :cond_74

    goto :goto_76

    :cond_74
    move p1, v2

    goto :goto_77

    :cond_76
    :goto_76
    move p1, v3

    :goto_77
    if-eqz p2, :cond_7d

    const/4 p3, 0x4

    if-ne p5, p3, :cond_7d

    return v3

    :cond_7d
    if-eqz p2, :cond_83

    const/4 p2, 0x5

    if-ne p5, p2, :cond_83

    return v3

    :cond_83
    if-eqz p1, :cond_88

    if-ne p5, v7, :cond_88

    return v3

    :cond_88
    if-eqz p1, :cond_8e

    const/4 p1, 0x3

    if-ne p5, p1, :cond_8e

    return v3

    :cond_8e
    return v2
.end method

.method public b_()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lfd;III)Leq;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method
