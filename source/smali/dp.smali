###### Class defpackage.dp (dp)
.class public Ldp;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    .line 11
    sget-object v0, Lln;->o:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lfd;III)Z
    .registers 7

    add-int/lit8 v0, p2, -0x1

    .line 55
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, p2, 0x1

    .line 57
    invoke-virtual {p1, v0, p3, p4}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    add-int/lit8 v0, p4, -0x1

    .line 59
    invoke-virtual {p1, p2, p3, v0}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    :cond_1c
    add-int/2addr p4, v1

    .line 61
    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p1

    if-eqz p1, :cond_24

    return v1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public b(Lfd;IIII)V
    .registers 13

    .line 79
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-ne v5, v0, :cond_13

    add-int/lit8 v0, p4, 0x1

    .line 82
    invoke-virtual {p1, p2, p3, v0}, Lfd;->h(III)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v6

    :goto_14
    const/4 v2, 0x3

    if-ne v5, v2, :cond_20

    add-int/lit8 v2, p4, -0x1

    .line 83
    invoke-virtual {p1, p2, p3, v2}, Lfd;->h(III)Z

    move-result v2

    if-eqz v2, :cond_20

    move v0, v1

    :cond_20
    const/4 v2, 0x4

    if-ne v5, v2, :cond_2c

    add-int/lit8 v2, p2, 0x1

    .line 84
    invoke-virtual {p1, v2, p3, p4}, Lfd;->h(III)Z

    move-result v2

    if-eqz v2, :cond_2c

    move v0, v1

    :cond_2c
    const/4 v2, 0x5

    if-ne v5, v2, :cond_38

    add-int/lit8 v2, p2, -0x1

    .line 85
    invoke-virtual {p1, v2, p3, p4}, Lfd;->h(III)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_39

    :cond_38
    move v1, v0

    :goto_39
    if-nez v1, :cond_46

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 87
    invoke-virtual/range {v0 .. v5}, Ldp;->g(Lfd;IIII)V

    .line 88
    invoke-virtual {p1, p2, p3, p4, v6}, Lfd;->f(IIII)Z

    .line 91
    :cond_46
    invoke-super/range {p0 .. p5}, Luu;->b(Lfd;IIII)V

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
    .registers 14

    .line 15
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f600000    # 0.875f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p0

    .line 18
    invoke-virtual/range {v2 .. v8}, Ldp;->a(FFFFFF)V

    :cond_15
    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3e000000    # 0.125f

    move-object v2, p0

    .line 19
    invoke-virtual/range {v2 .. v8}, Ldp;->a(FFFFFF)V

    :cond_25
    const/4 v1, 0x4

    if-ne v0, v1, :cond_36

    const/high16 v3, 0x3f600000    # 0.875f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p0

    .line 20
    invoke-virtual/range {v2 .. v8}, Ldp;->a(FFFFFF)V

    :cond_36
    const/4 v1, 0x5

    if-ne v0, v1, :cond_46

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v6, 0x3e000000    # 0.125f

    move-object v2, p0

    .line 21
    invoke-virtual/range {v2 .. v8}, Ldp;->a(FFFFFF)V

    .line 23
    :cond_46
    invoke-super {p0, p1, p2, p3, p4}, Luu;->e(Lfd;III)Leq;

    move-result-object p1

    return-object p1
.end method

.method public e(Lfd;IIII)V
    .registers 9

    .line 68
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_9

    if-ne p5, v1, :cond_12

    :cond_9
    add-int/lit8 v2, p4, 0x1

    .line 70
    invoke-virtual {p1, p2, p3, v2}, Lfd;->h(III)Z

    move-result v2

    if-eqz v2, :cond_12

    move v0, v1

    :cond_12
    const/4 v1, 0x3

    if-eqz v0, :cond_17

    if-ne p5, v1, :cond_20

    :cond_17
    add-int/lit8 v2, p4, -0x1

    .line 71
    invoke-virtual {p1, p2, p3, v2}, Lfd;->h(III)Z

    move-result v2

    if-eqz v2, :cond_20

    move v0, v1

    :cond_20
    const/4 v1, 0x4

    if-eqz v0, :cond_25

    if-ne p5, v1, :cond_2e

    :cond_25
    add-int/lit8 v2, p2, 0x1

    .line 72
    invoke-virtual {p1, v2, p3, p4}, Lfd;->h(III)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v0, v1

    :cond_2e
    const/4 v1, 0x5

    if-eqz v0, :cond_33

    if-ne p5, v1, :cond_3c

    :cond_33
    add-int/lit8 p5, p2, -0x1

    .line 73
    invoke-virtual {p1, p5, p3, p4}, Lfd;->h(III)Z

    move-result p5

    if-eqz p5, :cond_3c

    move v0, v1

    .line 75
    :cond_3c
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    return-void
.end method

.method public f(Lfd;III)Leq;
    .registers 14

    .line 27
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f600000    # 0.875f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p0

    .line 30
    invoke-virtual/range {v2 .. v8}, Ldp;->a(FFFFFF)V

    :cond_15
    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3e000000    # 0.125f

    move-object v2, p0

    .line 31
    invoke-virtual/range {v2 .. v8}, Ldp;->a(FFFFFF)V

    :cond_25
    const/4 v1, 0x4

    if-ne v0, v1, :cond_36

    const/high16 v3, 0x3f600000    # 0.875f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p0

    .line 32
    invoke-virtual/range {v2 .. v8}, Ldp;->a(FFFFFF)V

    :cond_36
    const/4 v1, 0x5

    if-ne v0, v1, :cond_46

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v6, 0x3e000000    # 0.125f

    move-object v2, p0

    .line 33
    invoke-virtual/range {v2 .. v8}, Ldp;->a(FFFFFF)V

    .line 35
    :cond_46
    invoke-super {p0, p1, p2, p3, p4}, Luu;->f(Lfd;III)Leq;

    move-result-object p1

    return-object p1
.end method
