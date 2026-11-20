###### Class defpackage.ym (ym)
.class public Lym;
.super Lgm;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 18

    move-object v0, p1

    move-object v7, p3

    move/from16 v1, p7

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    :cond_8
    const/4 v8, 0x1

    if-ne v1, v8, :cond_c

    return v2

    :cond_c
    const/4 v3, 0x4

    if-ne v1, v3, :cond_10

    move v2, v8

    :cond_10
    const/4 v3, 0x3

    if-ne v1, v3, :cond_14

    const/4 v2, 0x2

    :cond_14
    const/4 v4, 0x5

    if-ne v1, v4, :cond_19

    move v6, v3

    goto :goto_1a

    :cond_19
    move v6, v2

    .line 23
    :goto_1a
    new-instance v9, Lqv;

    move-object v1, v9

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lqv;-><init>(Lfd;IIII)V

    .line 24
    invoke-virtual {v9}, Lqv;->k()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 25
    iget-boolean v1, v7, Lfd;->B:Z

    if-nez v1, :cond_32

    .line 26
    invoke-virtual {p3, v9}, Lfd;->b(Lsn;)Z

    .line 28
    :cond_32
    iget v1, v0, Liz;->a:I

    sub-int/2addr v1, v8

    iput v1, v0, Liz;->a:I

    :cond_37
    return v8
.end method
