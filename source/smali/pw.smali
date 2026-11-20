###### Class defpackage.pw (pw)
.class public Lpw;
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
    .registers 27

    move-object/from16 v6, p1

    move-object/from16 v0, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    const/4 v1, 0x5

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v10, v1, 0x7

    const/4 v1, 0x2

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sub-int v1, v10, v1

    add-int/lit8 v11, v1, -0x3

    sub-int v1, v10, v11

    const/4 v12, 0x1

    add-int/2addr v1, v12

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v13, v0, 0x1

    const/4 v14, 0x0

    if-lt v8, v12, :cond_12e

    add-int v0, v8, v10

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x80

    if-le v1, v2, :cond_31

    goto/16 :goto_12e

    :cond_31
    move v1, v8

    move v3, v12

    :goto_33
    add-int/lit8 v4, v8, 0x1

    add-int/2addr v4, v10

    if-gt v1, v4, :cond_73

    if-eqz v3, :cond_73

    sub-int v4, v1, v8

    if-ge v4, v11, :cond_40

    move v4, v14

    goto :goto_41

    :cond_40
    move v4, v13

    :goto_41
    sub-int v5, v7, v4

    :goto_43
    add-int v15, v7, v4

    if-gt v5, v15, :cond_6d

    if-eqz v3, :cond_6d

    sub-int v15, v9, v4

    :goto_4b
    add-int v12, v9, v4

    if-gt v15, v12, :cond_67

    if-eqz v3, :cond_67

    if-ltz v1, :cond_61

    if-ge v1, v2, :cond_61

    .line 38
    invoke-virtual {v6, v5, v1, v15}, Lfd;->a(III)I

    move-result v12

    if-eqz v12, :cond_62

    .line 39
    sget-object v2, Luu;->L:Lbk;

    iget v2, v2, Lbk;->bn:I

    if-eq v12, v2, :cond_62

    :cond_61
    move v3, v14

    :cond_62
    add-int/lit8 v15, v15, 0x1

    const/16 v2, 0x80

    goto :goto_4b

    :cond_67
    add-int/lit8 v5, v5, 0x1

    const/16 v2, 0x80

    const/4 v12, 0x1

    goto :goto_43

    :cond_6d
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x80

    const/4 v12, 0x1

    goto :goto_33

    :cond_73
    if-nez v3, :cond_76

    return v14

    :cond_76
    add-int/lit8 v1, v8, -0x1

    .line 50
    invoke-virtual {v6, v7, v1, v9}, Lfd;->a(III)I

    move-result v2

    .line 51
    sget-object v3, Luu;->v:Lwp;

    iget v3, v3, Lwp;->bn:I

    if-eq v2, v3, :cond_88

    sget-object v3, Luu;->w:Luu;

    iget v3, v3, Luu;->bn:I

    if-ne v2, v3, :cond_8e

    :cond_88
    rsub-int v2, v10, 0x80

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v8, v2, :cond_8f

    :cond_8e
    return v14

    .line 53
    :cond_8f
    sget-object v2, Luu;->w:Luu;

    iget v2, v2, Luu;->bn:I

    invoke-virtual {v6, v7, v1, v9, v2}, Lfd;->c(IIII)Z

    move v12, v0

    move v15, v14

    :goto_98
    add-int v5, v8, v11

    if-lt v12, v5, :cond_108

    sub-int v0, v7, v15

    move v4, v0

    :goto_9f
    add-int v0, v7, v15

    if-gt v4, v0, :cond_f5

    sub-int v16, v4, v7

    sub-int v0, v9, v15

    move v3, v0

    :goto_a8
    add-int v0, v9, v15

    if-gt v3, v0, :cond_ee

    sub-int v0, v3, v9

    .line 63
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v15, :cond_bd

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v15, :cond_bd

    if-lez v15, :cond_bd

    goto :goto_e1

    .line 64
    :cond_bd
    sget-object v0, Luu;->o:[Z

    invoke-virtual {v6, v4, v12, v3}, Lfd;->a(III)I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_e1

    sget-object v0, Luu;->L:Lbk;

    iget v2, v0, Lbk;->bn:I

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move v1, v4

    move/from16 v18, v2

    move v2, v12

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v4, v18

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lfd;->a(IIIII)Z

    goto :goto_e7

    :cond_e1
    :goto_e1
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v18, v5

    :goto_e7
    add-int/lit8 v3, v19, 0x1

    move/from16 v5, v18

    move/from16 v4, v20

    goto :goto_a8

    :cond_ee
    move/from16 v20, v4

    move/from16 v18, v5

    add-int/lit8 v4, v20, 0x1

    goto :goto_9f

    :cond_f5
    move/from16 v18, v5

    const/4 v0, 0x1

    if-lt v15, v0, :cond_101

    add-int/lit8 v5, v18, 0x1

    if-ne v12, v5, :cond_101

    add-int/lit8 v15, v15, -0x1

    goto :goto_105

    :cond_101
    if-ge v15, v13, :cond_105

    add-int/lit8 v15, v15, 0x1

    :cond_105
    :goto_105
    add-int/lit8 v12, v12, -0x1

    goto :goto_98

    :cond_108
    :goto_108
    const/4 v0, 0x1

    add-int/lit8 v1, v10, -0x1

    if-ge v14, v1, :cond_12c

    add-int v2, v8, v14

    .line 75
    invoke-virtual {v6, v7, v2, v9}, Lfd;->a(III)I

    move-result v0

    if-eqz v0, :cond_11b

    .line 76
    sget-object v1, Luu;->L:Lbk;

    iget v1, v1, Lbk;->bn:I

    if-ne v0, v1, :cond_129

    :cond_11b
    sget-object v0, Luu;->K:Luu;

    iget v4, v0, Luu;->bn:I

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lfd;->a(IIIII)Z

    :cond_129
    add-int/lit8 v14, v14, 0x1

    goto :goto_108

    :cond_12c
    const/4 v0, 0x1

    return v0

    :cond_12e
    :goto_12e
    return v14
.end method
