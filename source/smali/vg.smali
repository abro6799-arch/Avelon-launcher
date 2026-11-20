###### Class defpackage.vg (vg)
.class public Lvg;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    .line 15
    sget-object v0, Lln;->d:Lln;

    invoke-direct {p0, p1, v0}, Luu;-><init>(ILln;)V

    const/16 p1, 0x14

    .line 16
    iput p1, p0, Lvg;->bm:I

    return-void
.end method


# virtual methods
.method public a(II)I
    .registers 5

    const/16 v0, 0x15

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    return v0

    :cond_6
    if-nez p1, :cond_9

    return v0

    :cond_9
    if-ne p2, v1, :cond_e

    const/16 p1, 0x74

    return p1

    :cond_e
    const/4 p1, 0x2

    if-ne p2, p1, :cond_14

    const/16 p1, 0x75

    return p1

    :cond_14
    const/16 p1, 0x14

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    .line 24
    sget-object p1, Luu;->K:Luu;

    iget p1, p1, Luu;->bn:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lfd;Lgs;IIII)V
    .registers 7

    .line 28
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;Lgs;IIII)V

    return-void
.end method

.method public b(Lfd;III)V
    .registers 15

    add-int/lit8 v1, p2, -0x5

    add-int/lit8 v2, p3, -0x5

    add-int/lit8 v3, p4, -0x5

    add-int/lit8 v4, p2, 0x5

    add-int/lit8 v5, p3, 0x5

    add-int/lit8 v6, p4, 0x5

    move-object v0, p1

    .line 35
    invoke-virtual/range {v0 .. v6}, Lfd;->a(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, -0x4

    move v1, v0

    :goto_15
    const/4 v2, 0x4

    if-gt v1, v2, :cond_44

    move v3, v0

    :goto_19
    if-gt v3, v2, :cond_41

    move v4, v0

    :goto_1c
    if-gt v4, v2, :cond_3e

    add-int v5, p2, v1

    add-int v6, p3, v3

    add-int v7, p4, v4

    .line 39
    invoke-virtual {p1, v5, v6, v7}, Lfd;->a(III)I

    move-result v8

    .line 40
    sget-object v9, Luu;->L:Lbk;

    iget v9, v9, Lbk;->bn:I

    if-ne v8, v9, :cond_3b

    .line 41
    invoke-virtual {p1, v5, v6, v7}, Lfd;->e(III)I

    move-result v8

    and-int/lit8 v9, v8, 0x8

    if-nez v9, :cond_3b

    or-int/lit8 v8, v8, 0x8

    .line 43
    invoke-virtual {p1, v5, v6, v7, v8}, Lfd;->e(IIII)Z

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_44
    return-void
.end method

.method protected b_(I)I
    .registers 2

    return p1
.end method
