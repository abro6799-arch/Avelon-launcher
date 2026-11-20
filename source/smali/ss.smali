###### Class defpackage.ss (ss)
.class public Lss;
.super Luu;
.source "SourceFile"


# instance fields
.field private a:Luu;


# direct methods
.method protected constructor <init>(ILuu;)V
    .registers 5

    .line 15
    iget v0, p2, Luu;->bm:I

    iget-object v1, p2, Luu;->bA:Lln;

    invoke-direct {p0, p1, v0, v1}, Luu;-><init>(IILln;)V

    .line 16
    iput-object p2, p0, Lss;->a:Luu;

    .line 17
    iget p1, p2, Luu;->bo:F

    invoke-virtual {p0, p1}, Lss;->c(F)Luu;

    .line 18
    iget p1, p2, Luu;->bp:F

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lss;->b(F)Luu;

    .line 19
    iget-object p1, p2, Luu;->by:Lct;

    invoke-virtual {p0, p1}, Lss;->a(Lct;)Luu;

    const/16 p1, 0xff

    .line 20
    invoke-virtual {p0, p1}, Lss;->g(I)Luu;

    return-void
.end method


# virtual methods
.method public a(Lsn;)F
    .registers 3

    .line 127
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0, p1}, Luu;->a(Lsn;)F

    move-result p1

    return p1
.end method

.method public a(I)I
    .registers 3

    .line 147
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0, p1}, Luu;->a(I)I

    move-result p1

    return p1
.end method

.method public a(II)I
    .registers 4

    .line 143
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0, p1, p2}, Luu;->a(II)I

    move-result p1

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 4

    .line 135
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0, p1, p2}, Luu;->a(ILjava/util/Random;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 3

    .line 139
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0, p1}, Luu;->a(Ljava/util/Random;)I

    move-result p1

    return p1
.end method

.method public a(Lxp;IIII)I
    .registers 12

    .line 151
    iget-object v0, p0, Lss;->a:Luu;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lxp;IIII)I

    move-result p1

    return p1
.end method

.method public a(Lfd;IIIIF)V
    .registers 14

    .line 192
    iget-object v0, p0, Lss;->a:Luu;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Luu;->a(Lfd;IIIIF)V

    return-void
.end method

.method public a(Lfd;IIILeq;Ljava/util/ArrayList;)V
    .registers 23

    .line 49
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v0

    if-nez v0, :cond_2b

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    .line 51
    invoke-virtual/range {v1 .. v7}, Lss;->a(FFFFFF)V

    .line 52
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v8, p0

    .line 53
    invoke-virtual/range {v8 .. v14}, Lss;->a(FFFFFF)V

    .line 54
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    goto/16 :goto_9f

    :cond_2b
    const/4 v1, 0x1

    if-ne v0, v1, :cond_52

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    .line 56
    invoke-virtual/range {v2 .. v8}, Lss;->a(FFFFFF)V

    .line 57
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v9, p0

    .line 58
    invoke-virtual/range {v9 .. v15}, Lss;->a(FFFFFF)V

    .line 59
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    goto :goto_9f

    :cond_52
    const/4 v1, 0x2

    if-ne v0, v1, :cond_79

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    move-object/from16 v2, p0

    .line 61
    invoke-virtual/range {v2 .. v8}, Lss;->a(FFFFFF)V

    .line 62
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v9, p0

    .line 63
    invoke-virtual/range {v9 .. v15}, Lss;->a(FFFFFF)V

    .line 64
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    goto :goto_9f

    :cond_79
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    move-object/from16 v2, p0

    .line 66
    invoke-virtual/range {v2 .. v8}, Lss;->a(FFFFFF)V

    .line 67
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v9, p0

    .line 68
    invoke-virtual/range {v9 .. v15}, Lss;->a(FFFFFF)V

    .line 69
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILeq;Ljava/util/ArrayList;)V

    :cond_9f
    :goto_9f
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    .line 71
    invoke-virtual/range {v0 .. v6}, Lss;->a(FFFFFF)V

    return-void
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 12

    .line 200
    iget-object v0, p0, Lss;->a:Luu;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lfd;IIILjava/util/Random;)V

    return-void
.end method

.method public a(Lfd;IIILls;)V
    .registers 10

    .line 212
    iget p5, p5, Lls;->aS:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p5, v0

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p5, v0

    float-to-double v0, p5

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result p5

    const/4 v0, 0x3

    and-int/2addr p5, v0

    const/4 v1, 0x2

    if-nez p5, :cond_18

    .line 214
    invoke-virtual {p1, p2, p3, p4, v1}, Lfd;->d(IIII)V

    :cond_18
    const/4 v2, 0x1

    if-ne p5, v2, :cond_1e

    .line 215
    invoke-virtual {p1, p2, p3, p4, v2}, Lfd;->d(IIII)V

    :cond_1e
    if-ne p5, v1, :cond_23

    .line 216
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    :cond_23
    if-ne p5, v0, :cond_29

    const/4 p5, 0x0

    .line 217
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    :cond_29
    return-void
.end method

.method public a(Lfd;IIILsn;Lbt;)V
    .registers 14

    .line 163
    iget-object v0, p0, Lss;->a:Luu;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Luu;->a(Lfd;IIILsn;Lbt;)V

    return-void
.end method

.method public a(Lxp;III)V
    .registers 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 24
    invoke-virtual/range {v0 .. v6}, Lss;->a(FFFFFF)V

    return-void
.end method

.method public a(IZ)Z
    .registers 4

    .line 171
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0, p1, p2}, Luu;->a(IZ)Z

    move-result p1

    return p1
.end method

.method public a(Lfd;III)Z
    .registers 6

    .line 175
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0, p1, p2, p3, p4}, Luu;->a(Lfd;III)Z

    move-result p1

    return p1
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 12

    .line 204
    iget-object v0, p0, Lss;->a:Luu;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Luu;->a(Lfd;IIILgs;)Z

    move-result p1

    return p1
.end method

.method public b()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public b(Lfd;III)V
    .registers 6

    .line 184
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0, p1, p2, p3, p4}, Luu;->b(Lfd;III)V

    return-void
.end method

.method public b(Lfd;IIILgs;)V
    .registers 12

    .line 115
    iget-object v0, p0, Lss;->a:Luu;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lfd;IIILgs;)V

    return-void
.end method

.method public b(Lfd;IIILjava/util/Random;)V
    .registers 12

    .line 111
    iget-object v0, p0, Lss;->a:Luu;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lfd;IIILjava/util/Random;)V

    return-void
.end method

.method public b(Lfd;IIILsn;)V
    .registers 12

    .line 196
    iget-object v0, p0, Lss;->a:Luu;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Luu;->b(Lfd;IIILsn;)V

    return-void
.end method

.method public b(Lxp;IIII)Z
    .registers 6

    .line 45
    invoke-super/range {p0 .. p5}, Luu;->b(Lxp;IIII)Z

    move-result p1

    return p1
.end method

.method public b_()I
    .registers 2

    .line 131
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0}, Luu;->b_()I

    move-result v0

    return v0
.end method

.method public c(Lfd;III)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 179
    invoke-virtual/range {v0 .. v5}, Lss;->b(Lfd;IIII)V

    .line 180
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0, p1, p2, p3, p4}, Luu;->c(Lfd;III)V

    return-void
.end method

.method public c(Lfd;IIII)V
    .registers 12

    .line 119
    iget-object v0, p0, Lss;->a:Luu;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Luu;->c(Lfd;IIII)V

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lxp;III)F
    .registers 6

    .line 123
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0, p1, p2, p3, p4}, Luu;->d(Lxp;III)F

    move-result p1

    return p1
.end method

.method public d(Lfd;III)V
    .registers 6

    .line 208
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0, p1, p2, p3, p4}, Luu;->d(Lfd;III)V

    return-void
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 2

    .line 155
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0}, Luu;->e()I

    move-result v0

    return v0
.end method

.method public e(Lfd;III)Leq;
    .registers 5

    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Luu;->e(Lfd;III)Leq;

    move-result-object p1

    return-object p1
.end method

.method public f(Lfd;III)Leq;
    .registers 6

    .line 159
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0, p1, p2, p3, p4}, Luu;->f(Lfd;III)Leq;

    move-result-object p1

    return-object p1
.end method

.method public v_()Z
    .registers 2

    .line 167
    iget-object v0, p0, Lss;->a:Luu;

    invoke-virtual {v0}, Luu;->v_()Z

    move-result v0

    return v0
.end method
