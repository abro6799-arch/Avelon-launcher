###### Class defpackage.uj (uj)
.class public Luj;
.super Lrw;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Z


# direct methods
.method protected constructor <init>(ILjava/lang/Class;Z)V
    .registers 11

    .line 16
    sget-object v0, Lln;->d:Lln;

    invoke-direct {p0, p1, v0}, Lrw;-><init>(ILln;)V

    .line 17
    iput-boolean p3, p0, Luj;->b:Z

    const/4 p1, 0x4

    .line 18
    iput p1, p0, Luj;->bm:I

    .line 19
    iput-object p2, p0, Luj;->a:Ljava/lang/Class;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    move-object v0, p0

    move v1, v3

    move v4, v6

    .line 22
    invoke-virtual/range {v0 .. v6}, Luj;->a(FFFFFF)V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 3

    .line 76
    sget-object p1, Lgm;->as:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1
.end method

.method public a(Lxp;III)V
    .registers 18

    move-object v7, p0

    .line 37
    iget-boolean v0, v7, Luj;->b:Z

    if-eqz v0, :cond_6

    return-void

    .line 39
    :cond_6
    invoke-interface/range {p1 .. p4}, Lxp;->e(III)I

    move-result v8

    const/high16 v9, 0x3e900000    # 0.28125f

    const/high16 v10, 0x3f480000    # 0.78125f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 48
    invoke-virtual/range {v0 .. v6}, Luj;->a(FFFFFF)V

    const/4 v0, 0x2

    if-ne v8, v0, :cond_30

    const/high16 v3, 0x3f600000    # 0.875f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/high16 v2, 0x3e900000    # 0.28125f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f480000    # 0.78125f

    move-object v0, p0

    .line 49
    invoke-virtual/range {v0 .. v6}, Luj;->a(FFFFFF)V

    :cond_30
    const/4 v0, 0x3

    if-ne v8, v0, :cond_41

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3e900000    # 0.28125f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f480000    # 0.78125f

    const/high16 v6, 0x3e000000    # 0.125f

    move-object v0, p0

    .line 50
    invoke-virtual/range {v0 .. v6}, Luj;->a(FFFFFF)V

    :cond_41
    const/4 v0, 0x4

    if-ne v8, v0, :cond_53

    const/high16 v1, 0x3f600000    # 0.875f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e900000    # 0.28125f

    const/4 v3, 0x0

    const/high16 v5, 0x3f480000    # 0.78125f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 51
    invoke-virtual/range {v0 .. v6}, Luj;->a(FFFFFF)V

    :cond_53
    const/4 v0, 0x5

    if-ne v8, v0, :cond_61

    const/4 v1, 0x0

    const/high16 v4, 0x3e000000    # 0.125f

    move-object v0, p0

    move v2, v9

    move v3, v11

    move v5, v10

    move v6, v12

    .line 52
    invoke-virtual/range {v0 .. v6}, Luj;->a(FFFFFF)V

    :cond_61
    return-void
.end method

.method protected a_()Low;
    .registers 3

    .line 69
    :try_start_0
    iget-object v0, p0, Luj;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Low;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public b(Lfd;IIII)V
    .registers 15

    .line 82
    iget-boolean v0, p0, Luj;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    add-int/lit8 v0, p3, -0x1

    .line 83
    invoke-virtual {p1, p2, v0, p4}, Lfd;->f(III)Lln;

    move-result-object v0

    invoke-virtual {v0}, Lln;->a()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_59

    :cond_13
    :goto_13
    move v1, v2

    goto :goto_59

    .line 85
    :cond_15
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_29

    add-int/lit8 v3, p4, 0x1

    .line 87
    invoke-virtual {p1, p2, p3, v3}, Lfd;->f(III)Lln;

    move-result-object v3

    invoke-virtual {v3}, Lln;->a()Z

    move-result v3

    if-eqz v3, :cond_29

    move v1, v2

    :cond_29
    const/4 v3, 0x3

    if-ne v0, v3, :cond_39

    add-int/lit8 v3, p4, -0x1

    .line 88
    invoke-virtual {p1, p2, p3, v3}, Lfd;->f(III)Lln;

    move-result-object v3

    invoke-virtual {v3}, Lln;->a()Z

    move-result v3

    if-eqz v3, :cond_39

    move v1, v2

    :cond_39
    const/4 v3, 0x4

    if-ne v0, v3, :cond_49

    add-int/lit8 v3, p2, 0x1

    .line 89
    invoke-virtual {p1, v3, p3, p4}, Lfd;->f(III)Lln;

    move-result-object v3

    invoke-virtual {v3}, Lln;->a()Z

    move-result v3

    if-eqz v3, :cond_49

    move v1, v2

    :cond_49
    const/4 v3, 0x5

    if-ne v0, v3, :cond_59

    add-int/lit8 v0, p2, -0x1

    .line 90
    invoke-virtual {p1, v0, p3, p4}, Lfd;->f(III)Lln;

    move-result-object v0

    invoke-virtual {v0}, Lln;->a()Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_13

    :cond_59
    :goto_59
    if-eqz v1, :cond_6a

    .line 93
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Luj;->g(Lfd;IIII)V

    .line 94
    invoke-virtual {p1, p2, p3, p4, v2}, Lfd;->f(IIII)Z

    .line 97
    :cond_6a
    invoke-super/range {p0 .. p5}, Lrw;->b(Lfd;IIII)V

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
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Lfd;III)Leq;
    .registers 5

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Luj;->a(Lxp;III)V

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lrw;->f(Lfd;III)Leq;

    move-result-object p1

    return-object p1
.end method
