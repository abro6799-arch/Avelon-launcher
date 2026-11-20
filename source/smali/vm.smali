###### Class defpackage.vm (vm)
.class public Lvm;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    .line 11
    sget-object v0, Lln;->o:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lvm;->b(Z)Luu;

    return-void
.end method

.method private h(Lfd;III)Z
    .registers 6

    .line 32
    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p1

    sget-object p2, Luu;->ba:Luu;

    iget p2, p2, Luu;->bn:I

    if-ne p1, p2, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private i(Lfd;III)Z
    .registers 12

    .line 102
    invoke-virtual {p0, p1, p2, p3, p4}, Lvm;->a(Lfd;III)Z

    move-result v0

    if-nez v0, :cond_17

    .line 103
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lvm;->g(Lfd;IIII)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    return v0

    :cond_17
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lfd;IIILbt;Lbt;)Lvf;
    .registers 23

    .line 111
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3eb33333    # 0.35f

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3f4ccccd    # 0.8f

    const v8, 0x3f266666    # 0.65f

    move-object/from16 v2, p0

    .line 115
    invoke-virtual/range {v2 .. v8}, Lvm;->a(FFFFFF)V

    goto :goto_7d

    :cond_1f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_39

    const v3, 0x3f333333    # 0.7f

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3eb33333    # 0.35f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f4ccccd    # 0.8f

    const v8, 0x3f266666    # 0.65f

    move-object/from16 v2, p0

    .line 117
    invoke-virtual/range {v2 .. v8}, Lvm;->a(FFFFFF)V

    goto :goto_7d

    :cond_39
    const/4 v1, 0x3

    if-ne v0, v1, :cond_52

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x0

    const v6, 0x3f266666    # 0.65f

    const v7, 0x3f4ccccd    # 0.8f

    const v8, 0x3e99999a    # 0.3f

    move-object/from16 v2, p0

    .line 119
    invoke-virtual/range {v2 .. v8}, Lvm;->a(FFFFFF)V

    goto :goto_7d

    :cond_52
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6c

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3f333333    # 0.7f

    const v6, 0x3f266666    # 0.65f

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    .line 121
    invoke-virtual/range {v2 .. v8}, Lvm;->a(FFFFFF)V

    goto :goto_7d

    :cond_6c
    const v12, 0x3ecccccd    # 0.4f

    const/4 v11, 0x0

    const v15, 0x3f19999a    # 0.6f

    const v14, 0x3f19999a    # 0.6f

    move-object/from16 v9, p0

    move v10, v12

    move v13, v15

    .line 124
    invoke-virtual/range {v9 .. v15}, Lvm;->a(FFFFFF)V

    .line 127
    :goto_7d
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILbt;Lbt;)Lvf;

    move-result-object v0

    return-object v0
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 6

    .line 64
    invoke-super/range {p0 .. p5}, Luu;->a(Lfd;IIILjava/util/Random;)V

    .line 65
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p5

    if-nez p5, :cond_c

    invoke-virtual {p0, p1, p2, p3, p4}, Lvm;->c(Lfd;III)V

    :cond_c
    return-void
.end method

.method public a(Lfd;III)Z
    .registers 7

    add-int/lit8 v0, p2, -0x1

    .line 36
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, p2, 0x1

    .line 38
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    add-int/lit8 v0, p4, -0x1

    .line 40
    invoke-virtual {p1, p2, p3, v0}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v0, p4, 0x1

    .line 42
    invoke-virtual {p1, p2, p3, v0}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_25

    return v1

    :cond_25
    sub-int/2addr p3, v1

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lvm;->h(Lfd;III)Z

    move-result p1

    if-eqz p1, :cond_2d

    return v1

    :cond_2d
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public b(Lfd;IIII)V
    .registers 15

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lvm;->i(Lfd;III)Z

    move-result p5

    if-eqz p5, :cond_5b

    .line 85
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p5

    add-int/lit8 v0, p2, -0x1

    .line 88
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    if-ne p5, v2, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    add-int/lit8 v3, p2, 0x1

    .line 89
    invoke-virtual {p1, v3, p3, p4}, Lfd;->h(III)Z

    move-result v3

    if-nez v3, :cond_25

    const/4 v3, 0x2

    if-ne p5, v3, :cond_25

    move v0, v2

    :cond_25
    add-int/lit8 v3, p4, -0x1

    .line 90
    invoke-virtual {p1, p2, p3, v3}, Lfd;->h(III)Z

    move-result v3

    if-nez v3, :cond_31

    const/4 v3, 0x3

    if-ne p5, v3, :cond_31

    move v0, v2

    :cond_31
    add-int/lit8 v3, p4, 0x1

    .line 91
    invoke-virtual {p1, p2, p3, v3}, Lfd;->h(III)Z

    move-result v3

    if-nez v3, :cond_3d

    const/4 v3, 0x4

    if-ne p5, v3, :cond_3d

    move v0, v2

    :cond_3d
    add-int/lit8 v3, p3, -0x1

    .line 92
    invoke-direct {p0, p1, p2, v3, p4}, Lvm;->h(Lfd;III)Z

    move-result v3

    if-nez v3, :cond_49

    const/4 v3, 0x5

    if-ne p5, v3, :cond_49

    goto :goto_4a

    :cond_49
    move v2, v0

    :goto_4a
    if-eqz v2, :cond_5b

    .line 95
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lvm;->g(Lfd;IIII)V

    .line 96
    invoke-virtual {p1, p2, p3, p4, v1}, Lfd;->f(IIII)Z

    :cond_5b
    return-void
.end method

.method public b(Lfd;IIILjava/util/Random;)V
    .registers 35

    .line 131
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v0

    move/from16 v1, p2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-double v13, v1

    move/from16 v1, p3

    int-to-float v1, v1

    const v3, 0x3f333333    # 0.7f

    add-float/2addr v1, v3

    float-to-double v11, v1

    move/from16 v1, p4

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-double v1, v1

    const/4 v3, 0x1

    const-wide v4, 0x3fcc28f5c0000000L    # 0.2199999988079071

    const-wide v6, 0x3fd147ae20000000L    # 0.27000001072883606

    if-ne v0, v3, :cond_43

    const-string v16, "smoke"

    sub-double v6, v13, v6

    add-double v3, v11, v4

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v17, v6

    move-wide/from16 v19, v3

    move-wide/from16 v21, v1

    .line 138
    invoke-virtual/range {v15 .. v28}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    const-string v16, "flame"

    .line 139
    invoke-virtual/range {v15 .. v28}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    goto/16 :goto_d1

    :cond_43
    const/4 v3, 0x2

    if-ne v0, v3, :cond_63

    const-string v16, "smoke"

    add-double/2addr v6, v13

    add-double v3, v11, v4

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v17, v6

    move-wide/from16 v19, v3

    move-wide/from16 v21, v1

    .line 141
    invoke-virtual/range {v15 .. v28}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    const-string v16, "flame"

    .line 142
    invoke-virtual/range {v15 .. v28}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    goto/16 :goto_d1

    :cond_63
    const/4 v3, 0x3

    if-ne v0, v3, :cond_8c

    const-string v0, "smoke"

    add-double v17, v11, v4

    sub-double/2addr v1, v6

    const-wide/16 v11, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v3, p1

    move-object v4, v0

    move-wide v5, v13

    move-wide/from16 v7, v17

    move-wide v9, v1

    move-wide/from16 v21, v13

    move-wide v13, v15

    move-wide/from16 v15, v19

    .line 144
    invoke-virtual/range {v3 .. v16}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    const-string v4, "flame"

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-wide/from16 v5, v21

    .line 145
    invoke-virtual/range {v3 .. v16}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    goto :goto_d1

    :cond_8c
    move-wide/from16 v21, v13

    const/4 v3, 0x4

    if-ne v0, v3, :cond_ad

    const-string v0, "smoke"

    add-double v17, v11, v4

    add-double/2addr v1, v6

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v3, p1

    move-object v4, v0

    move-wide/from16 v5, v21

    move-wide/from16 v7, v17

    move-wide v9, v1

    .line 147
    invoke-virtual/range {v3 .. v16}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    const-string v4, "flame"

    .line 148
    invoke-virtual/range {v3 .. v16}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    goto :goto_d1

    :cond_ad
    const-string v4, "smoke"

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v5, v21

    move-wide v7, v11

    move-wide v9, v1

    move-wide/from16 v19, v11

    move-wide v11, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    .line 150
    invoke-virtual/range {v3 .. v16}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    const-string v4, "flame"

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-wide/from16 v7, v19

    .line 151
    invoke-virtual/range {v3 .. v16}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    :goto_d1
    return-void
.end method

.method public c(Lfd;III)V
    .registers 6

    add-int/lit8 v0, p2, -0x1

    .line 69
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    goto :goto_40

    :cond_d
    add-int/lit8 v0, p2, 0x1

    .line 71
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x2

    .line 72
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    goto :goto_40

    :cond_1a
    add-int/lit8 v0, p4, -0x1

    .line 73
    invoke-virtual {p1, p2, p3, v0}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x3

    .line 74
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    goto :goto_40

    :cond_27
    add-int/lit8 v0, p4, 0x1

    .line 75
    invoke-virtual {p1, p2, p3, v0}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x4

    .line 76
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    goto :goto_40

    :cond_34
    add-int/lit8 v0, p3, -0x1

    .line 77
    invoke-direct {p0, p1, p2, v0, p4}, Lvm;->h(Lfd;III)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x5

    .line 78
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    .line 80
    :cond_40
    :goto_40
    invoke-direct {p0, p1, p2, p3, p4}, Lvm;->i(Lfd;III)Z

    return-void
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

.method public e(Lfd;IIII)V
    .registers 13

    .line 52
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne p5, v2, :cond_11

    add-int/lit8 v3, p3, -0x1

    .line 54
    invoke-direct {p0, p1, p2, v3, p4}, Lvm;->h(Lfd;III)Z

    move-result v3

    if-eqz v3, :cond_11

    move v0, v1

    :cond_11
    const/4 v3, 0x4

    const/4 v4, 0x2

    if-ne p5, v4, :cond_1e

    add-int/lit8 v5, p4, 0x1

    .line 55
    invoke-virtual {p1, p2, p3, v5}, Lfd;->h(III)Z

    move-result v5

    if-eqz v5, :cond_1e

    move v0, v3

    :cond_1e
    const/4 v5, 0x3

    if-ne p5, v5, :cond_2a

    add-int/lit8 v6, p4, -0x1

    .line 56
    invoke-virtual {p1, p2, p3, v6}, Lfd;->h(III)Z

    move-result v6

    if-eqz v6, :cond_2a

    move v0, v5

    :cond_2a
    if-ne p5, v3, :cond_35

    add-int/lit8 v3, p2, 0x1

    .line 57
    invoke-virtual {p1, v3, p3, p4}, Lfd;->h(III)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_36

    :cond_35
    move v4, v0

    :goto_36
    if-ne p5, v1, :cond_41

    add-int/lit8 p5, p2, -0x1

    .line 58
    invoke-virtual {p1, p5, p3, p4}, Lfd;->h(III)Z

    move-result p5

    if-eqz p5, :cond_41

    goto :goto_42

    :cond_41
    move v2, v4

    .line 60
    :goto_42
    invoke-virtual {p1, p2, p3, p4, v2}, Lfd;->d(IIII)V

    return-void
.end method
