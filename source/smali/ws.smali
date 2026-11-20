###### Class defpackage.ws (ws)
.class public Lws;
.super Lpg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lpg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 30

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    const/4 v0, 0x4

    .line 15
    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v11, v0, 0x6

    const/4 v0, 0x2

    .line 16
    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v12, 0x1

    add-int/2addr v1, v12

    sub-int v13, v11, v1

    .line 18
    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v14, v2, 0x2

    if-lt v9, v12, :cond_14f

    add-int v16, v9, v11

    add-int/lit8 v2, v16, 0x1

    const/16 v3, 0x80

    if-le v2, v3, :cond_2c

    goto/16 :goto_14f

    :cond_2c
    move v2, v9

    move v4, v12

    :goto_2e
    add-int/lit8 v5, v9, 0x1

    add-int/2addr v5, v11

    if-gt v2, v5, :cond_70

    if-eqz v4, :cond_70

    sub-int v5, v2, v9

    if-ge v5, v1, :cond_3b

    const/4 v5, 0x0

    goto :goto_3c

    :cond_3b
    move v5, v14

    :goto_3c
    sub-int v17, v8, v5

    move/from16 v0, v17

    :goto_40
    add-int v12, v8, v5

    if-gt v0, v12, :cond_69

    if-eqz v4, :cond_69

    sub-int v12, v10, v5

    :goto_48
    add-int v15, v10, v5

    if-gt v12, v15, :cond_64

    if-eqz v4, :cond_64

    if-ltz v2, :cond_5e

    if-ge v2, v3, :cond_5e

    .line 38
    invoke-virtual {v6, v0, v2, v12}, Lfd;->a(III)I

    move-result v15

    if-eqz v15, :cond_5f

    .line 39
    sget-object v3, Luu;->L:Lbk;

    iget v3, v3, Lbk;->bn:I

    if-eq v15, v3, :cond_5f

    :cond_5e
    const/4 v4, 0x0

    :cond_5f
    add-int/lit8 v12, v12, 0x1

    const/16 v3, 0x80

    goto :goto_48

    :cond_64
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x80

    goto :goto_40

    :cond_69
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x2

    const/16 v3, 0x80

    const/4 v12, 0x1

    goto :goto_2e

    :cond_70
    if-nez v4, :cond_74

    const/4 v0, 0x0

    return v0

    :cond_74
    add-int/lit8 v0, v9, -0x1

    .line 50
    invoke-virtual {v6, v8, v0, v10}, Lfd;->a(III)I

    move-result v1

    .line 51
    sget-object v2, Luu;->v:Lwp;

    iget v2, v2, Lwp;->bn:I

    if-eq v1, v2, :cond_86

    sget-object v2, Luu;->w:Luu;

    iget v2, v2, Luu;->bn:I

    if-ne v1, v2, :cond_8c

    :cond_86
    rsub-int v1, v11, 0x80

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v9, v1, :cond_8e

    :cond_8c
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_8e
    sget-object v1, Luu;->w:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-virtual {v6, v8, v0, v10, v1}, Lfd;->c(IIII)Z

    const/4 v0, 0x2

    .line 56
    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move v15, v0

    const/4 v5, 0x1

    const/4 v12, 0x0

    const/16 v17, 0x0

    :goto_9f
    if-gt v12, v13, :cond_124

    sub-int v4, v16, v12

    sub-int v0, v8, v15

    move v3, v0

    :goto_a6
    add-int v0, v8, v15

    if-gt v3, v0, :cond_10c

    sub-int v18, v3, v8

    sub-int v0, v10, v15

    move v2, v0

    :goto_af
    add-int v0, v10, v15

    if-gt v2, v0, :cond_100

    sub-int v0, v2, v10

    .line 67
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v15, :cond_c4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v15, :cond_c4

    if-lez v15, :cond_c4

    goto :goto_ed

    .line 68
    :cond_c4
    sget-object v0, Luu;->o:[Z

    invoke-virtual {v6, v3, v4, v2}, Lfd;->a(III)I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_ed

    sget-object v0, Luu;->L:Lbk;

    iget v1, v0, Lbk;->bn:I

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v20, v1

    move v1, v3

    move/from16 v21, v2

    move v2, v4

    move/from16 v22, v3

    move/from16 v3, v21

    move/from16 v23, v4

    move/from16 v4, v20

    move/from16 v20, v13

    move v13, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lfd;->a(IIIII)Z

    goto :goto_f6

    :cond_ed
    :goto_ed
    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v20, v13

    move v13, v5

    :goto_f6
    add-int/lit8 v2, v21, 0x1

    move v5, v13

    move/from16 v13, v20

    move/from16 v3, v22

    move/from16 v4, v23

    goto :goto_af

    :cond_100
    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v20, v13

    move v13, v5

    add-int/lit8 v3, v22, 0x1

    move/from16 v13, v20

    goto :goto_a6

    :cond_10c
    move/from16 v20, v13

    move v13, v5

    if-lt v15, v13, :cond_11b

    add-int/lit8 v5, v13, 0x1

    if-le v5, v14, :cond_116

    move v5, v14

    :cond_116
    move/from16 v15, v17

    const/16 v17, 0x1

    goto :goto_11e

    :cond_11b
    add-int/lit8 v15, v15, 0x1

    move v5, v13

    :goto_11e
    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v20

    goto/16 :goto_9f

    :cond_124
    const/4 v0, 0x3

    .line 83
    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    const/4 v15, 0x0

    :goto_12a
    sub-int v0, v11, v7

    if-ge v15, v0, :cond_14d

    add-int v2, v9, v15

    .line 85
    invoke-virtual {v6, v8, v2, v10}, Lfd;->a(III)I

    move-result v0

    if-eqz v0, :cond_13c

    .line 86
    sget-object v1, Luu;->L:Lbk;

    iget v1, v1, Lbk;->bn:I

    if-ne v0, v1, :cond_14a

    :cond_13c
    sget-object v0, Luu;->K:Luu;

    iget v4, v0, Luu;->bn:I

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lfd;->a(IIIII)Z

    :cond_14a
    add-int/lit8 v15, v15, 0x1

    goto :goto_12a

    :cond_14d
    const/4 v0, 0x1

    return v0

    :cond_14f
    :goto_14f
    const/4 v0, 0x0

    return v0
.end method
