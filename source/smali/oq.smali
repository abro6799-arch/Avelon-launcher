###### Class defpackage.oq (oq)
.class public Loq;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(ILln;)V
    .registers 10

    .line 14
    invoke-direct {p0, p1, p2}, Luu;-><init>(ILln;)V

    const/16 p1, 0x54

    .line 15
    iput p1, p0, Loq;->bm:I

    .line 16
    sget-object p1, Lln;->f:Lln;

    if-ne p2, p1, :cond_11

    iget p1, p0, Loq;->bm:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Loq;->bm:I

    :cond_11
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, v3

    move v4, v6

    .line 20
    invoke-virtual/range {v0 .. v6}, Loq;->a(FFFFFF)V

    return-void
.end method

.method public static e(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method


# virtual methods
.method public a(Lfd;IIILbt;Lbt;)Lvf;
    .registers 7

    .line 132
    invoke-virtual {p0, p1, p2, p3, p4}, Loq;->a(Lxp;III)V

    .line 133
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIILbt;Lbt;)Lvf;

    move-result-object p1

    return-object p1
.end method

.method public a(Lfd;IIIZ)V
    .registers 13

    .line 94
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-lez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-ne v1, p5, :cond_e

    return-void

    :cond_e
    xor-int/lit8 p5, v0, 0x4

    .line 99
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    const/4 v1, 0x0

    const/16 v2, 0x3eb

    const/4 v6, 0x0

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 101
    invoke-virtual/range {v0 .. v6}, Lfd;->a(Lgs;IIIII)V

    return-void
.end method

.method public a(Lxp;III)V
    .registers 5

    .line 59
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p1

    invoke-virtual {p0, p1}, Loq;->d(I)V

    return-void
.end method

.method public a(Lfd;IIII)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p5, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p5, v1, :cond_8

    return v0

    :cond_8
    const/4 v0, 0x2

    if-ne p5, v0, :cond_d

    add-int/lit8 p4, p4, 0x1

    :cond_d
    const/4 v0, 0x3

    if-ne p5, v0, :cond_12

    add-int/lit8 p4, p4, -0x1

    :cond_12
    const/4 v0, 0x4

    if-ne p5, v0, :cond_17

    add-int/lit8 p2, p2, 0x1

    :cond_17
    const/4 v0, 0x5

    if-ne p5, v0, :cond_1c

    add-int/lit8 p2, p2, -0x1

    .line 161
    :cond_1c
    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p1

    return p1
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 16

    .line 83
    iget-object v0, p0, Loq;->bA:Lln;

    sget-object v1, Lln;->f:Lln;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    return v2

    .line 86
    :cond_8
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    xor-int/lit8 v0, v0, 0x4

    .line 87
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    const/16 v5, 0x3eb

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p5

    move v6, p2

    move v7, p3

    move v8, p4

    .line 89
    invoke-virtual/range {v3 .. v9}, Lfd;->a(Lgs;IIIII)V

    return v2
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lfd;IIII)V
    .registers 13

    .line 107
    iget-boolean v0, p1, Lfd;->B:Z

    if-eqz v0, :cond_5

    return-void

    .line 109
    :cond_5
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v6

    and-int/lit8 v0, v6, 0x3

    if-nez v0, :cond_10

    add-int/lit8 v1, p4, 0x1

    goto :goto_11

    :cond_10
    move v1, p4

    :goto_11
    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    add-int/lit8 v1, v1, -0x1

    :cond_16
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1c

    add-int/lit8 v2, p2, 0x1

    goto :goto_1d

    :cond_1c
    move v2, p2

    :goto_1d
    const/4 v3, 0x3

    if-ne v0, v3, :cond_22

    add-int/lit8 v2, v2, -0x1

    .line 118
    :cond_22
    invoke-virtual {p1, v2, p3, v1}, Lfd;->h(III)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 120
    invoke-virtual/range {v1 .. v6}, Loq;->g(Lfd;IIII)V

    :cond_34
    if-lez p5, :cond_4c

    .line 123
    sget-object v0, Luu;->m:[Luu;

    aget-object p5, v0, p5

    invoke-virtual {p5}, Luu;->f()Z

    move-result p5

    if-eqz p5, :cond_4c

    .line 124
    invoke-virtual {p1, p2, p3, p4}, Lfd;->s(III)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 125
    invoke-virtual/range {v0 .. v5}, Loq;->a(Lfd;IIIZ)V

    :cond_4c
    return-void
.end method

.method public b(Lfd;IIILgs;)V
    .registers 6

    .line 79
    invoke-virtual/range {p0 .. p5}, Loq;->a(Lfd;IIILgs;)Z

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(I)V
    .registers 19

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3e400000    # 0.1875f

    move-object/from16 v0, p0

    .line 69
    invoke-virtual/range {v0 .. v6}, Loq;->a(FFFFFF)V

    .line 70
    invoke-static/range {p1 .. p1}, Loq;->e(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v0, 0x3

    and-int/lit8 v1, p1, 0x3

    if-nez v1, :cond_28

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f500000    # 0.8125f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v2, p0

    .line 71
    invoke-virtual/range {v2 .. v8}, Loq;->a(FFFFFF)V

    :cond_28
    const/4 v2, 0x1

    if-ne v1, v2, :cond_39

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3e400000    # 0.1875f

    move-object/from16 v3, p0

    .line 72
    invoke-virtual/range {v3 .. v9}, Loq;->a(FFFFFF)V

    :cond_39
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4b

    const/high16 v4, 0x3f500000    # 0.8125f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v3, p0

    .line 73
    invoke-virtual/range {v3 .. v9}, Loq;->a(FFFFFF)V

    :cond_4b
    if-ne v1, v0, :cond_5b

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v14, 0x3e400000    # 0.1875f

    move-object/from16 v10, p0

    .line 74
    invoke-virtual/range {v10 .. v16}, Loq;->a(FFFFFF)V

    :cond_5b
    return-void
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lfd;III)Leq;
    .registers 5

    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Loq;->a(Lxp;III)V

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Luu;->e(Lfd;III)Leq;

    move-result-object p1

    return-object p1
.end method

.method public e(Lfd;IIII)V
    .registers 9

    const/4 v0, 0x3

    if-ne p5, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x4

    if-ne p5, v2, :cond_a

    const/4 v1, 0x2

    :cond_a
    const/4 v2, 0x5

    if-ne p5, v2, :cond_e

    goto :goto_f

    :cond_e
    move v0, v1

    .line 150
    :goto_f
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    return-void
.end method

.method public f(Lfd;III)Leq;
    .registers 5

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Loq;->a(Lxp;III)V

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Luu;->f(Lfd;III)Leq;

    move-result-object p1

    return-object p1
.end method

.method public g()V
    .registers 8

    const/4 v1, 0x0

    const/high16 v2, 0x3ed00000    # 0.40625f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f180000    # 0.59375f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 64
    invoke-virtual/range {v0 .. v6}, Loq;->a(FFFFFF)V

    return-void
.end method
