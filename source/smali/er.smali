###### Class defpackage.er (er)
.class public Ler;
.super Lpg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lpg;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Random;)Liz;
    .registers 8

    const/16 v0, 0xb

    .line 100
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_10

    .line 101
    new-instance p1, Liz;

    sget-object v0, Lgm;->ay:Lgm;

    invoke-direct {p1, v0}, Liz;-><init>(Lgm;)V

    return-object p1

    :cond_10
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 102
    new-instance v0, Liz;

    sget-object v3, Lgm;->m:Lgm;

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {v0, v3, p1}, Liz;-><init>(Lgm;I)V

    return-object v0

    :cond_21
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2c

    .line 103
    new-instance p1, Liz;

    sget-object v0, Lgm;->S:Lgm;

    invoke-direct {p1, v0}, Liz;-><init>(Lgm;)V

    return-object p1

    :cond_2c
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3c

    .line 104
    new-instance v0, Liz;

    sget-object v3, Lgm;->R:Lgm;

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {v0, v3, p1}, Liz;-><init>(Lgm;I)V

    return-object v0

    :cond_3c
    if-ne v0, v1, :cond_4b

    .line 105
    new-instance v0, Liz;

    sget-object v3, Lgm;->K:Lgm;

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {v0, v3, p1}, Liz;-><init>(Lgm;I)V

    return-object v0

    :cond_4b
    const/4 v5, 0x5

    if-ne v0, v5, :cond_5b

    .line 106
    new-instance v0, Liz;

    sget-object v3, Lgm;->I:Lgm;

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {v0, v3, p1}, Liz;-><init>(Lgm;I)V

    return-object v0

    :cond_5b
    const/4 v5, 0x6

    if-ne v0, v5, :cond_66

    .line 107
    new-instance p1, Liz;

    sget-object v0, Lgm;->au:Lgm;

    invoke-direct {p1, v0}, Liz;-><init>(Lgm;)V

    return-object p1

    :cond_66
    const/4 v5, 0x7

    if-ne v0, v5, :cond_79

    const/16 v5, 0x64

    .line 108
    invoke-virtual {p1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_79

    new-instance p1, Liz;

    sget-object v0, Lgm;->ar:Lgm;

    invoke-direct {p1, v0}, Liz;-><init>(Lgm;)V

    return-object p1

    :cond_79
    const/16 v5, 0x8

    if-ne v0, v5, :cond_90

    .line 109
    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_90

    new-instance v0, Liz;

    sget-object v3, Lgm;->aA:Lgm;

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {v0, v3, p1}, Liz;-><init>(Lgm;I)V

    return-object v0

    :cond_90
    const/16 v1, 0x9

    const/16 v5, 0xa

    if-ne v0, v1, :cond_af

    .line 110
    invoke-virtual {p1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_af

    new-instance v0, Liz;

    sget-object v1, Lgm;->c:[Lgm;

    sget-object v2, Lgm;->bd:Lgm;

    iget v2, v2, Lgm;->bf:I

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr v2, p1

    aget-object p1, v1, v2

    invoke-direct {v0, p1}, Liz;-><init>(Lgm;)V

    return-object v0

    :cond_af
    if-ne v0, v5, :cond_b9

    .line 111
    new-instance p1, Liz;

    sget-object v0, Lgm;->aU:Lgm;

    invoke-direct {p1, v0, v2, v4}, Liz;-><init>(Lgm;II)V

    return-object p1

    :cond_b9
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/util/Random;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    .line 117
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "Skeleton"

    return-object p1

    :cond_a
    const/4 v0, 0x1

    const-string v1, "Zombie"

    if-ne p1, v0, :cond_10

    return-object v1

    :cond_10
    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    return-object v1

    :cond_14
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1a

    const-string p1, "Spider"

    return-object p1

    :cond_1a
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const/4 v6, 0x2

    .line 20
    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v7, v6

    .line 21
    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr v8, v6

    sub-int v9, v3, v7

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    move v12, v9

    const/4 v13, 0x0

    :goto_1d
    add-int v14, v3, v7

    add-int/2addr v14, v10

    if-gt v12, v14, :cond_84

    add-int/lit8 v15, v4, -0x1

    move v6, v15

    :goto_25
    add-int/lit8 v16, v4, 0x3

    add-int/lit8 v11, v16, 0x1

    if-gt v6, v11, :cond_7a

    sub-int v16, v5, v8

    move/from16 v18, v13

    add-int/lit8 v13, v16, -0x1

    move v0, v13

    :goto_32
    add-int v16, v5, v8

    add-int/lit8 v3, v16, 0x1

    if-gt v0, v3, :cond_71

    .line 27
    invoke-virtual {v1, v12, v6, v0}, Lfd;->f(III)Lln;

    move-result-object v16

    if-ne v6, v15, :cond_47

    .line 28
    invoke-virtual/range {v16 .. v16}, Lln;->a()Z

    move-result v19

    if-nez v19, :cond_47

    const/16 v17, 0x0

    return v17

    :cond_47
    const/16 v17, 0x0

    if-ne v6, v11, :cond_52

    .line 29
    invoke-virtual/range {v16 .. v16}, Lln;->a()Z

    move-result v16

    if-nez v16, :cond_52

    return v17

    :cond_52
    if-eq v12, v9, :cond_5a

    if-eq v12, v14, :cond_5a

    if-eq v0, v13, :cond_5a

    if-ne v0, v3, :cond_6c

    :cond_5a
    if-ne v6, v4, :cond_6c

    .line 32
    invoke-virtual {v1, v12, v6, v0}, Lfd;->d(III)Z

    move-result v3

    if-eqz v3, :cond_6c

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v1, v12, v3, v0}, Lfd;->d(III)Z

    move-result v3

    if-eqz v3, :cond_6c

    add-int/lit8 v18, v18, 0x1

    :cond_6c
    add-int/lit8 v0, v0, 0x1

    move/from16 v3, p3

    goto :goto_32

    :cond_71
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v13, v18

    goto :goto_25

    :cond_7a
    move/from16 v18, v13

    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v3, p3

    goto :goto_1d

    :cond_84
    if-lt v13, v10, :cond_19e

    const/4 v0, 0x5

    if-le v13, v0, :cond_8b

    goto/16 :goto_19e

    :cond_8b
    move v0, v9

    :goto_8c
    if-gt v0, v14, :cond_f3

    add-int/lit8 v3, v4, 0x3

    move v6, v3

    :goto_91
    add-int/lit8 v11, v4, -0x1

    if-lt v6, v11, :cond_ef

    sub-int v12, v5, v8

    sub-int/2addr v12, v10

    move v13, v12

    :goto_99
    add-int v15, v5, v8

    add-int/2addr v15, v10

    if-gt v13, v15, :cond_eb

    if-eq v0, v9, :cond_b2

    if-eq v6, v11, :cond_b2

    if-eq v13, v12, :cond_b2

    if-eq v0, v14, :cond_b2

    add-int/lit8 v10, v3, 0x1

    if-eq v6, v10, :cond_b2

    if-ne v13, v15, :cond_ad

    goto :goto_b2

    :cond_ad
    const/4 v10, 0x0

    .line 58
    invoke-virtual {v1, v0, v6, v13, v10}, Lfd;->f(IIII)Z

    goto :goto_e7

    :cond_b2
    :goto_b2
    if-ltz v6, :cond_c5

    add-int/lit8 v10, v6, -0x1

    .line 48
    invoke-virtual {v1, v0, v10, v13}, Lfd;->f(III)Lln;

    move-result-object v10

    invoke-virtual {v10}, Lln;->a()Z

    move-result v10

    if-nez v10, :cond_c5

    const/4 v10, 0x0

    .line 49
    invoke-virtual {v1, v0, v6, v13, v10}, Lfd;->f(IIII)Z

    goto :goto_e7

    .line 50
    :cond_c5
    invoke-virtual {v1, v0, v6, v13}, Lfd;->f(III)Lln;

    move-result-object v10

    invoke-virtual {v10}, Lln;->a()Z

    move-result v10

    if-eqz v10, :cond_e7

    if-ne v6, v11, :cond_e0

    const/4 v10, 0x4

    .line 51
    invoke-virtual {v2, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    if-eqz v10, :cond_e0

    .line 52
    sget-object v10, Luu;->ap:Luu;

    iget v10, v10, Luu;->bn:I

    invoke-virtual {v1, v0, v6, v13, v10}, Lfd;->f(IIII)Z

    goto :goto_e7

    .line 54
    :cond_e0
    sget-object v10, Luu;->x:Luu;

    iget v10, v10, Luu;->bn:I

    invoke-virtual {v1, v0, v6, v13, v10}, Lfd;->f(IIII)Z

    :cond_e7
    :goto_e7
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    goto :goto_99

    :cond_eb
    add-int/lit8 v6, v6, -0x1

    const/4 v10, 0x1

    goto :goto_91

    :cond_ef
    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x1

    goto :goto_8c

    :cond_f3
    const/4 v0, 0x0

    const/4 v3, 0x2

    :goto_f5
    if-ge v0, v3, :cond_184

    const/4 v6, 0x0

    :goto_f8
    const/4 v9, 0x3

    if-ge v6, v9, :cond_17c

    mul-int/lit8 v9, v7, 0x2

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 66
    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    move/from16 v11, p3

    add-int/2addr v9, v11

    sub-int/2addr v9, v7

    mul-int/lit8 v12, v8, 0x2

    add-int/2addr v12, v10

    .line 68
    invoke-virtual {v2, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/2addr v10, v5

    sub-int/2addr v10, v8

    .line 69
    invoke-virtual {v1, v9, v4, v10}, Lfd;->d(III)Z

    move-result v12

    if-nez v12, :cond_117

    goto :goto_14e

    :cond_117
    add-int/lit8 v12, v9, -0x1

    .line 72
    invoke-virtual {v1, v12, v4, v10}, Lfd;->f(III)Lln;

    move-result-object v12

    invoke-virtual {v12}, Lln;->a()Z

    move-result v12

    add-int/lit8 v13, v9, 0x1

    .line 73
    invoke-virtual {v1, v13, v4, v10}, Lfd;->f(III)Lln;

    move-result-object v13

    invoke-virtual {v13}, Lln;->a()Z

    move-result v13

    if-eqz v13, :cond_12f

    add-int/lit8 v12, v12, 0x1

    :cond_12f
    add-int/lit8 v13, v10, -0x1

    .line 74
    invoke-virtual {v1, v9, v4, v13}, Lfd;->f(III)Lln;

    move-result-object v13

    invoke-virtual {v13}, Lln;->a()Z

    move-result v13

    if-eqz v13, :cond_13d

    add-int/lit8 v12, v12, 0x1

    :cond_13d
    add-int/lit8 v13, v10, 0x1

    .line 75
    invoke-virtual {v1, v9, v4, v13}, Lfd;->f(III)Lln;

    move-result-object v13

    invoke-virtual {v13}, Lln;->a()Z

    move-result v13

    if-eqz v13, :cond_14b

    add-int/lit8 v12, v12, 0x1

    :cond_14b
    const/4 v13, 0x1

    if-eq v12, v13, :cond_151

    :goto_14e
    add-int/lit8 v6, v6, 0x1

    goto :goto_f8

    .line 79
    :cond_151
    sget-object v6, Luu;->av:Luu;

    iget v6, v6, Luu;->bn:I

    invoke-virtual {v1, v9, v4, v10, v6}, Lfd;->f(IIII)Z

    .line 80
    invoke-virtual {v1, v9, v4, v10}, Lfd;->b(III)Low;

    move-result-object v6

    check-cast v6, Ljs;

    const/4 v9, 0x0

    :goto_15f
    const/16 v10, 0x8

    if-ge v9, v10, :cond_179

    move-object/from16 v10, p0

    .line 82
    invoke-direct {v10, v2}, Ler;->a(Ljava/util/Random;)Liz;

    move-result-object v12

    if-eqz v12, :cond_176

    .line 83
    invoke-virtual {v6}, Ljs;->a()I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    invoke-virtual {v6, v13, v12}, Ljs;->a(ILiz;)V

    :cond_176
    add-int/lit8 v9, v9, 0x1

    goto :goto_15f

    :cond_179
    move-object/from16 v10, p0

    goto :goto_180

    :cond_17c
    move-object/from16 v10, p0

    move/from16 v11, p3

    :goto_180
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f5

    :cond_184
    move-object/from16 v10, p0

    move/from16 v11, p3

    .line 91
    sget-object v0, Luu;->at:Luu;

    iget v0, v0, Luu;->bn:I

    invoke-virtual {v1, v11, v4, v5, v0}, Lfd;->f(IIII)Z

    .line 92
    invoke-virtual {v1, v11, v4, v5}, Lfd;->b(III)Low;

    move-result-object v0

    check-cast v0, Lcy;

    .line 93
    invoke-direct {v10, v2}, Ler;->b(Ljava/util/Random;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcy;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_19e
    :goto_19e
    move-object/from16 v10, p0

    const/4 v0, 0x0

    return v0
.end method
