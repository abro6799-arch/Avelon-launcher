###### Class defpackage.yh (yh)
.class public Lyh;
.super Lpg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lpg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfd;Ljava/util/Random;III)Z
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    const/4 v5, 0x3

    .line 11
    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v3, v7, :cond_f0

    add-int v8, v3, v5

    add-int/lit8 v9, v8, 0x1

    const/16 v10, 0x80

    if-le v9, v10, :cond_1f

    goto/16 :goto_f0

    :cond_1f
    move v9, v3

    move v11, v7

    :goto_21
    add-int/lit8 v12, v3, 0x1

    add-int/2addr v12, v5

    const/4 v13, 0x2

    if-gt v9, v12, :cond_62

    if-ne v9, v3, :cond_2b

    move v14, v6

    goto :goto_2c

    :cond_2b
    move v14, v7

    :goto_2c
    add-int/lit8 v12, v12, -0x2

    if-lt v9, v12, :cond_31

    goto :goto_32

    :cond_31
    move v13, v14

    :goto_32
    sub-int v12, v2, v13

    :goto_34
    add-int v14, v2, v13

    if-gt v12, v14, :cond_5d

    if-eqz v11, :cond_5d

    sub-int v14, v4, v13

    :goto_3c
    add-int v15, v4, v13

    if-gt v14, v15, :cond_58

    if-eqz v11, :cond_58

    if-ltz v9, :cond_52

    if-ge v9, v10, :cond_52

    .line 23
    invoke-virtual {v0, v12, v9, v14}, Lfd;->a(III)I

    move-result v15

    if-eqz v15, :cond_53

    .line 24
    sget-object v10, Luu;->L:Lbk;

    iget v10, v10, Lbk;->bn:I

    if-eq v15, v10, :cond_53

    :cond_52
    move v11, v6

    :cond_53
    add-int/lit8 v14, v14, 0x1

    const/16 v10, 0x80

    goto :goto_3c

    :cond_58
    add-int/lit8 v12, v12, 0x1

    const/16 v10, 0x80

    goto :goto_34

    :cond_5d
    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x80

    goto :goto_21

    :cond_62
    if-nez v11, :cond_65

    return v6

    :cond_65
    add-int/lit8 v9, v3, -0x1

    .line 34
    invoke-virtual {v0, v2, v9, v4}, Lfd;->a(III)I

    move-result v10

    .line 35
    sget-object v11, Luu;->v:Lwp;

    iget v11, v11, Lwp;->bn:I

    if-eq v10, v11, :cond_77

    sget-object v11, Luu;->w:Luu;

    iget v11, v11, Luu;->bn:I

    if-ne v10, v11, :cond_7c

    :cond_77
    rsub-int v10, v5, 0x80

    sub-int/2addr v10, v7

    if-lt v3, v10, :cond_7d

    :cond_7c
    return v6

    .line 37
    :cond_7d
    sget-object v10, Luu;->w:Luu;

    iget v10, v10, Luu;->bn:I

    invoke-virtual {v0, v2, v9, v4, v10}, Lfd;->c(IIII)Z

    add-int/lit8 v9, v3, -0x3

    add-int/2addr v9, v5

    :goto_87
    if-gt v9, v8, :cond_d3

    sub-int v10, v9, v8

    .line 41
    div-int/lit8 v11, v10, 0x2

    rsub-int/lit8 v11, v11, 0x1

    sub-int v12, v2, v11

    :goto_91
    add-int v14, v2, v11

    if-gt v12, v14, :cond_ce

    sub-int v14, v12, v2

    sub-int v15, v4, v11

    :goto_99
    add-int v6, v4, v11

    if-gt v15, v6, :cond_c9

    sub-int v6, v15, v4

    .line 46
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ne v7, v11, :cond_b4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ne v6, v11, :cond_b4

    invoke-virtual {v1, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-eqz v6, :cond_c5

    if-nez v10, :cond_b4

    goto :goto_c5

    .line 47
    :cond_b4
    sget-object v6, Luu;->o:[Z

    invoke-virtual {v0, v12, v9, v15}, Lfd;->a(III)I

    move-result v7

    aget-boolean v6, v6, v7

    if-nez v6, :cond_c5

    sget-object v6, Luu;->L:Lbk;

    iget v6, v6, Lbk;->bn:I

    invoke-virtual {v0, v12, v9, v15, v6}, Lfd;->c(IIII)Z

    :cond_c5
    :goto_c5
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x1

    goto :goto_99

    :cond_c9
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_91

    :cond_ce
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_87

    :cond_d3
    const/4 v6, 0x0

    :goto_d4
    if-ge v6, v5, :cond_ee

    add-int v1, v3, v6

    .line 52
    invoke-virtual {v0, v2, v1, v4}, Lfd;->a(III)I

    move-result v7

    if-eqz v7, :cond_e4

    .line 53
    sget-object v8, Luu;->L:Lbk;

    iget v8, v8, Lbk;->bn:I

    if-ne v7, v8, :cond_eb

    :cond_e4
    sget-object v7, Luu;->K:Luu;

    iget v7, v7, Luu;->bn:I

    invoke-virtual {v0, v2, v1, v4, v7}, Lfd;->c(IIII)Z

    :cond_eb
    add-int/lit8 v6, v6, 0x1

    goto :goto_d4

    :cond_ee
    const/4 v1, 0x1

    return v1

    :cond_f0
    :goto_f0
    move v0, v6

    return v0
.end method
