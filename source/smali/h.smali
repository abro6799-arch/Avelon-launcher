###### Class defpackage.h (h)
.class public Lh;
.super Luu;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 19
    sget-object v0, Lln;->B:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lh;->a:I

    .line 20
    sget-object p1, Lh;->h:Lct;

    invoke-virtual {p0, p1}, Lh;->a(Lct;)Luu;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 21
    invoke-virtual {p0, p1}, Lh;->c(F)Luu;

    return-void
.end method

.method public static c(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x7

    return p0
.end method


# virtual methods
.method public a(II)I
    .registers 4

    .line 60
    invoke-static {p2}, Lh;->c(I)I

    move-result v0

    if-ne p1, v0, :cond_17

    .line 63
    iget p1, p0, Lh;->a:I

    if-ltz p1, :cond_b

    return p1

    :cond_b
    and-int/lit8 p1, p2, 0x8

    if-eqz p1, :cond_14

    .line 67
    iget p1, p0, Lh;->bm:I

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 69
    :cond_14
    iget p1, p0, Lh;->bm:I

    return p1

    .line 71
    :cond_17
    sget-object p2, Lwj;->a:[I

    aget p2, p2, v0

    if-ne p1, p2, :cond_20

    const/16 p1, 0x6b

    return p1

    :cond_20
    const/16 p1, 0x6c

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a()V
    .registers 2

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lh;->a:I

    return-void
.end method

.method public a(Lfd;IIILeq;Ljava/util/ArrayList;)V
    .registers 23

    .line 109
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v0

    .line 117
    invoke-static {v0}, Lh;->c(I)I

    move-result v0

    if-eqz v0, :cond_db

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_69

    const/4 v1, 0x4

    if-eq v0, v1, :cond_42

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1b

    goto/16 :goto_100

    :cond_1b
    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    .line 149
    invoke-virtual/range {v2 .. v8}, Lh;->a(FFFFFF)V

    .line 150
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    const/4 v10, 0x0

    const/high16 v11, 0x3ec00000    # 0.375f

    const/high16 v12, 0x3e800000    # 0.25f

    const/high16 v13, 0x3f400000    # 0.75f

    const/high16 v14, 0x3f200000    # 0.625f

    const/high16 v15, 0x3f400000    # 0.75f

    move-object/from16 v9, p0

    .line 151
    invoke-virtual/range {v9 .. v15}, Lh;->a(FFFFFF)V

    .line 152
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    goto/16 :goto_100

    :cond_42
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    .line 143
    invoke-virtual/range {v0 .. v6}, Lh;->a(FFFFFF)V

    .line 144
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    const/high16 v8, 0x3ec00000    # 0.375f

    const/high16 v9, 0x3e800000    # 0.25f

    const/high16 v10, 0x3e800000    # 0.25f

    const/high16 v11, 0x3f200000    # 0.625f

    const/high16 v12, 0x3f400000    # 0.75f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v7, p0

    .line 145
    invoke-virtual/range {v7 .. v13}, Lh;->a(FFFFFF)V

    .line 146
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    goto/16 :goto_100

    :cond_69
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    .line 137
    invoke-virtual/range {v0 .. v6}, Lh;->a(FFFFFF)V

    .line 138
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    const/high16 v8, 0x3e800000    # 0.25f

    const/high16 v9, 0x3ec00000    # 0.375f

    const/4 v10, 0x0

    const/high16 v11, 0x3f400000    # 0.75f

    const/high16 v12, 0x3f200000    # 0.625f

    const/high16 v13, 0x3f400000    # 0.75f

    move-object/from16 v7, p0

    .line 139
    invoke-virtual/range {v7 .. v13}, Lh;->a(FFFFFF)V

    .line 140
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    goto :goto_100

    :cond_8f
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    .line 131
    invoke-virtual/range {v0 .. v6}, Lh;->a(FFFFFF)V

    .line 132
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    const/high16 v8, 0x3e800000    # 0.25f

    const/high16 v9, 0x3ec00000    # 0.375f

    const/high16 v10, 0x3e800000    # 0.25f

    const/high16 v11, 0x3f400000    # 0.75f

    const/high16 v12, 0x3f200000    # 0.625f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v7, p0

    .line 133
    invoke-virtual/range {v7 .. v13}, Lh;->a(FFFFFF)V

    .line 134
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    goto :goto_100

    :cond_b5
    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    .line 125
    invoke-virtual/range {v0 .. v6}, Lh;->a(FFFFFF)V

    .line 126
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    const/high16 v8, 0x3ec00000    # 0.375f

    const/4 v9, 0x0

    const/high16 v10, 0x3ec00000    # 0.375f

    const/high16 v11, 0x3f200000    # 0.625f

    const/high16 v12, 0x3f400000    # 0.75f

    const/high16 v13, 0x3f200000    # 0.625f

    move-object/from16 v7, p0

    .line 127
    invoke-virtual/range {v7 .. v13}, Lh;->a(FFFFFF)V

    .line 128
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    goto :goto_100

    :cond_db
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    .line 119
    invoke-virtual/range {v0 .. v6}, Lh;->a(FFFFFF)V

    .line 120
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    const/high16 v8, 0x3ec00000    # 0.375f

    const/high16 v9, 0x3e800000    # 0.25f

    const/high16 v10, 0x3ec00000    # 0.375f

    const/high16 v11, 0x3f200000    # 0.625f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f200000    # 0.625f

    move-object/from16 v7, p0

    .line 121
    invoke-virtual/range {v7 .. v13}, Lh;->a(FFFFFF)V

    .line 122
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    :goto_100
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    .line 155
    invoke-virtual/range {v0 .. v6}, Lh;->a(FFFFFF)V

    return-void
.end method

.method public a(Lxp;III)V
    .registers 21

    .line 160
    invoke-interface/range {p1 .. p4}, Lxp;->e(III)I

    move-result v0

    .line 164
    invoke-static {v0}, Lh;->c(I)I

    move-result v0

    if-eqz v0, :cond_68

    const/4 v1, 0x1

    if-eq v0, v1, :cond_58

    const/4 v1, 0x2

    if-eq v0, v1, :cond_49

    const/4 v1, 0x3

    if-eq v0, v1, :cond_39

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1a

    goto :goto_76

    :cond_1a
    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    .line 181
    invoke-virtual/range {v2 .. v8}, Lh;->a(FFFFFF)V

    goto :goto_76

    :cond_2a
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3e800000    # 0.25f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v9, p0

    .line 178
    invoke-virtual/range {v9 .. v15}, Lh;->a(FFFFFF)V

    goto :goto_76

    :cond_39
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    .line 175
    invoke-virtual/range {v0 .. v6}, Lh;->a(FFFFFF)V

    goto :goto_76

    :cond_49
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3e800000    # 0.25f

    move-object/from16 v7, p0

    .line 172
    invoke-virtual/range {v7 .. v13}, Lh;->a(FFFFFF)V

    goto :goto_76

    :cond_58
    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    .line 169
    invoke-virtual/range {v0 .. v6}, Lh;->a(FFFFFF)V

    goto :goto_76

    :cond_68
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3e800000    # 0.25f

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v7, p0

    .line 166
    invoke-virtual/range {v7 .. v13}, Lh;->a(FFFFFF)V

    :goto_76
    return-void
.end method

.method public a(Lfd;III)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lfd;IIII)Z
    .registers 6

    const/4 p1, 0x0

    return p1
.end method

.method public a_(I)V
    .registers 2

    .line 25
    iput p1, p0, Lh;->a:I

    return-void
.end method

.method public b()I
    .registers 2

    const/16 v0, 0x11

    return v0
.end method

.method public b(Lfd;III)V
    .registers 13

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Luu;->b(Lfd;III)V

    .line 34
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    .line 35
    sget-object v1, Lwj;->a:[I

    invoke-static {v0}, Lh;->c(I)I

    move-result v0

    aget v0, v1, v0

    .line 36
    sget-object v1, Lwj;->b:[I

    aget v1, v1, v0

    add-int/2addr p2, v1

    .line 37
    sget-object v1, Lwj;->c:[I

    aget v1, v1, v0

    add-int/2addr p3, v1

    .line 38
    sget-object v1, Lwj;->d:[I

    aget v0, v1, v0

    add-int/2addr p4, v0

    .line 40
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result v0

    .line 42
    sget-object v1, Luu;->aa:Luu;

    iget v1, v1, Luu;->bn:I

    if-eq v0, v1, :cond_2e

    sget-object v1, Luu;->W:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_47

    .line 43
    :cond_2e
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v7

    .line 44
    invoke-static {v7}, Ljq;->e(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 45
    sget-object v1, Luu;->m:[Luu;

    aget-object v2, v1, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Luu;->g(Lfd;IIII)V

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    :cond_47
    return-void
.end method

.method public b(Lfd;IIII)V
    .registers 15

    .line 188
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    invoke-static {v0}, Lh;->c(I)I

    move-result v0

    .line 189
    sget-object v1, Lwj;->b:[I

    aget v1, v1, v0

    sub-int v1, p2, v1

    sget-object v2, Lwj;->c:[I

    aget v2, v2, v0

    sub-int v2, p3, v2

    sget-object v3, Lwj;->d:[I

    aget v3, v3, v0

    sub-int v3, p4, v3

    invoke-virtual {p1, v1, v2, v3}, Lfd;->a(III)I

    move-result v1

    .line 190
    sget-object v2, Luu;->aa:Luu;

    iget v2, v2, Luu;->bn:I

    if-eq v1, v2, :cond_2f

    sget-object v2, Luu;->W:Luu;

    iget v2, v2, Luu;->bn:I

    if-eq v1, v2, :cond_2f

    const/4 p5, 0x0

    .line 191
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    goto :goto_4a

    .line 194
    :cond_2f
    sget-object v2, Luu;->m:[Luu;

    aget-object v3, v2, v1

    sget-object v1, Lwj;->b:[I

    aget v1, v1, v0

    sub-int v5, p2, v1

    sget-object p2, Lwj;->c:[I

    aget p2, p2, v0

    sub-int v6, p3, p2

    sget-object p2, Lwj;->d:[I

    aget p2, p2, v0

    sub-int v7, p4, p2

    move-object v4, p1

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Luu;->b(Lfd;IIII)V

    :goto_4a
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
