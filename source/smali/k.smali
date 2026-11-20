###### Class defpackage.k (k)
.class public Lk;
.super Lpg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lpg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 29

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    const/4 v0, 0x3

    .line 17
    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v11, v0, 0x5

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-lt v9, v13, :cond_120

    add-int v14, v9, v11

    add-int/lit8 v0, v14, 0x1

    const/16 v1, 0x80

    if-le v0, v1, :cond_1f

    goto/16 :goto_120

    :cond_1f
    move v0, v9

    move v2, v13

    :goto_21
    add-int/lit8 v3, v9, 0x1

    add-int/2addr v3, v11

    const/4 v15, 0x2

    if-gt v0, v3, :cond_62

    if-ne v0, v9, :cond_2b

    move v4, v12

    goto :goto_2c

    :cond_2b
    move v4, v13

    :goto_2c
    add-int/lit8 v3, v3, -0x2

    if-lt v0, v3, :cond_31

    goto :goto_32

    :cond_31
    move v15, v4

    :goto_32
    sub-int v3, v8, v15

    :goto_34
    add-int v4, v8, v15

    if-gt v3, v4, :cond_5d

    if-eqz v2, :cond_5d

    sub-int v4, v10, v15

    :goto_3c
    add-int v5, v10, v15

    if-gt v4, v5, :cond_58

    if-eqz v2, :cond_58

    if-ltz v0, :cond_52

    if-ge v0, v1, :cond_52

    .line 29
    invoke-virtual {v6, v3, v0, v4}, Lfd;->a(III)I

    move-result v5

    if-eqz v5, :cond_53

    .line 30
    sget-object v1, Luu;->L:Lbk;

    iget v1, v1, Lbk;->bn:I

    if-eq v5, v1, :cond_53

    :cond_52
    move v2, v12

    :cond_53
    add-int/lit8 v4, v4, 0x1

    const/16 v1, 0x80

    goto :goto_3c

    :cond_58
    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x80

    goto :goto_34

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x80

    goto :goto_21

    :cond_62
    if-nez v2, :cond_65

    return v12

    :cond_65
    add-int/lit8 v0, v9, -0x1

    .line 40
    invoke-virtual {v6, v8, v0, v10}, Lfd;->a(III)I

    move-result v1

    .line 41
    sget-object v2, Luu;->v:Lwp;

    iget v2, v2, Lwp;->bn:I

    if-eq v1, v2, :cond_77

    sget-object v2, Luu;->w:Luu;

    iget v2, v2, Luu;->bn:I

    if-ne v1, v2, :cond_7c

    :cond_77
    rsub-int v1, v11, 0x80

    sub-int/2addr v1, v13

    if-lt v9, v1, :cond_7d

    :cond_7c
    return v12

    .line 43
    :cond_7d
    sget-object v1, Luu;->w:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-virtual {v6, v8, v0, v10, v1}, Lfd;->c(IIII)Z

    add-int/lit8 v0, v9, -0x3

    add-int/2addr v0, v11

    move v5, v0

    :goto_88
    if-gt v5, v14, :cond_fe

    sub-int v16, v5, v14

    .line 47
    div-int/lit8 v0, v16, 0x2

    rsub-int/lit8 v4, v0, 0x1

    sub-int v0, v8, v4

    move v3, v0

    :goto_93
    add-int v0, v8, v4

    if-gt v3, v0, :cond_f9

    sub-int v17, v3, v8

    sub-int v0, v10, v4

    move v2, v0

    :goto_9c
    add-int v0, v10, v4

    if-gt v2, v0, :cond_f0

    sub-int v0, v2, v10

    .line 52
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v4, :cond_b7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v4, :cond_b7

    invoke-virtual {v7, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_df

    if-nez v16, :cond_b7

    goto :goto_df

    .line 53
    :cond_b7
    sget-object v0, Luu;->o:[Z

    invoke-virtual {v6, v3, v5, v2}, Lfd;->a(III)I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_df

    sget-object v0, Luu;->L:Lbk;

    iget v1, v0, Lbk;->bn:I

    const/16 v18, 0x2

    move-object/from16 v0, p1

    move/from16 v19, v1

    move v1, v3

    move/from16 v20, v2

    move v2, v5

    move/from16 v21, v3

    move/from16 v3, v20

    move/from16 v22, v4

    move/from16 v4, v19

    move/from16 v19, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lfd;->a(IIIII)Z

    goto :goto_e7

    :cond_df
    :goto_df
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v19, v5

    :goto_e7
    add-int/lit8 v2, v20, 0x1

    move/from16 v5, v19

    move/from16 v3, v21

    move/from16 v4, v22

    goto :goto_9c

    :cond_f0
    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v19, v5

    add-int/lit8 v3, v21, 0x1

    goto :goto_93

    :cond_f9
    move/from16 v19, v5

    add-int/lit8 v5, v19, 0x1

    goto :goto_88

    :cond_fe
    :goto_fe
    if-ge v12, v11, :cond_11f

    add-int v2, v9, v12

    .line 58
    invoke-virtual {v6, v8, v2, v10}, Lfd;->a(III)I

    move-result v0

    if-eqz v0, :cond_10e

    .line 59
    sget-object v1, Luu;->L:Lbk;

    iget v1, v1, Lbk;->bn:I

    if-ne v0, v1, :cond_11c

    :cond_10e
    sget-object v0, Luu;->K:Luu;

    iget v4, v0, Luu;->bn:I

    const/4 v5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lfd;->a(IIIII)Z

    :cond_11c
    add-int/lit8 v12, v12, 0x1

    goto :goto_fe

    :cond_11f
    return v13

    :cond_120
    :goto_120
    return v12
.end method
