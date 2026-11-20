###### Class defpackage.ph (ph)
.class public Lph;
.super Lpc;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lpc;-><init>(IIZ)V

    .line 18
    invoke-virtual {p0, v0}, Lph;->b(Z)Luu;

    return-void
.end method

.method private f(Lfd;IIII)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_10

    const/4 v12, 0x1

    goto :goto_11

    :cond_10
    const/4 v12, 0x0

    .line 73
    :goto_11
    const-class v1, Lyl;

    int-to-float v4, v9

    const/high16 v5, 0x3e000000    # 0.125f

    add-float/2addr v4, v5

    float-to-double v13, v4

    int-to-double v6, v10

    int-to-float v4, v11

    add-float/2addr v4, v5

    float-to-double v2, v4

    add-int/lit8 v4, v9, 0x1

    int-to-float v4, v4

    sub-float/2addr v4, v5

    float-to-double v9, v4

    const-wide/high16 v15, 0x3fd0000000000000L    # 0.25

    add-double v21, v6, v15

    add-int/lit8 v4, v11, 0x1

    int-to-float v4, v4

    sub-float/2addr v4, v5

    float-to-double v4, v4

    move-wide v15, v6

    move-wide/from16 v17, v2

    move-wide/from16 v19, v9

    move-wide/from16 v23, v4

    invoke-static/range {v13 .. v24}, Leq;->b(DDDDDD)Leq;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lfd;->a(Ljava/lang/Class;Leq;)Ljava/util/List;

    move-result-object v1

    .line 74
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_42

    const/16 v25, 0x1

    goto :goto_44

    :cond_42
    const/16 v25, 0x0

    :goto_44
    if-eqz v25, :cond_6f

    if-nez v12, :cond_6f

    or-int/lit8 v1, p5, 0x8

    move/from16 v9, p2

    move/from16 v10, p3

    .line 79
    invoke-virtual {v8, v9, v10, v11, v1}, Lfd;->d(IIII)V

    .line 80
    iget v1, v0, Lph;->bn:I

    invoke-virtual {v8, v9, v10, v11, v1}, Lfd;->i(IIII)V

    add-int/lit8 v1, v10, -0x1

    .line 81
    iget v2, v0, Lph;->bn:I

    invoke-virtual {v8, v9, v1, v11, v2}, Lfd;->i(IIII)V

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 82
    invoke-virtual/range {v1 .. v7}, Lfd;->b(IIIIII)V

    goto :goto_73

    :cond_6f
    move/from16 v9, p2

    move/from16 v10, p3

    :goto_73
    if-nez v25, :cond_99

    if-eqz v12, :cond_99

    and-int/lit8 v1, p5, 0x7

    .line 87
    invoke-virtual {v8, v9, v10, v11, v1}, Lfd;->d(IIII)V

    .line 88
    iget v1, v0, Lph;->bn:I

    invoke-virtual {v8, v9, v10, v11, v1}, Lfd;->i(IIII)V

    add-int/lit8 v1, v10, -0x1

    .line 89
    iget v2, v0, Lph;->bn:I

    invoke-virtual {v8, v9, v1, v11, v2}, Lfd;->i(IIII)V

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 90
    invoke-virtual/range {v1 .. v7}, Lfd;->b(IIIIII)V

    :cond_99
    if-eqz v25, :cond_ac

    .line 96
    iget v5, v0, Lph;->bn:I

    invoke-virtual/range {p0 .. p0}, Lph;->e()I

    move-result v6

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Lfd;->c(IIIII)V

    :cond_ac
    return-void
.end method


# virtual methods
.method public a(Lfd;IIILjava/util/Random;)V
    .registers 12

    .line 47
    iget-boolean p5, p1, Lfd;->B:Z

    if-eqz p5, :cond_5

    return-void

    .line 49
    :cond_5
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v5

    and-int/lit8 p5, v5, 0x8

    if-nez p5, :cond_e

    return-void

    :cond_e
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 54
    invoke-direct/range {v0 .. v5}, Lph;->f(Lfd;IIII)V

    return-void
.end method

.method public a(Lfd;IIILsn;)V
    .registers 12

    .line 33
    iget-boolean p5, p1, Lfd;->B:Z

    if-eqz p5, :cond_5

    return-void

    .line 37
    :cond_5
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v5

    and-int/lit8 p5, v5, 0x8

    if-eqz p5, :cond_e

    return-void

    :cond_e
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 42
    invoke-direct/range {v0 .. v5}, Lph;->f(Lfd;IIII)V

    return-void
.end method

.method public c(Lxp;IIII)Z
    .registers 6

    .line 59
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public d(Lfd;IIII)Z
    .registers 6

    .line 64
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    const/4 p2, 0x0

    if-nez p1, :cond_a

    return p2

    :cond_a
    const/4 p1, 0x1

    if-ne p5, p1, :cond_e

    move p2, p1

    :cond_e
    return p2
.end method

.method public e()I
    .registers 2

    const/16 v0, 0x14

    return v0
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
