###### Class defpackage.he (he)
.class public Lhe;
.super Lwb;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 10

    .line 22
    invoke-direct {p0, p1, p2}, Lwb;-><init>(II)V

    const v3, 0x3dcccccc    # 0.099999994f

    const/4 v2, 0x0

    const v6, 0x3f666666    # 0.9f

    const v5, 0x3f4ccccd    # 0.8f

    move-object v0, p0

    move v1, v3

    move v4, v6

    .line 25
    invoke-virtual/range {v0 .. v6}, Lhe;->a(FFFFFF)V

    return-void
.end method


# virtual methods
.method public a(II)I
    .registers 4

    and-int/lit8 p2, p2, 0x3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    const/16 p1, 0x3f

    return p1

    :cond_8
    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    const/16 p1, 0x4f

    return p1

    .line 53
    :cond_e
    invoke-super {p0, p1, p2}, Lwb;->a(II)I

    move-result p1

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 8

    .line 29
    iget-boolean v0, p1, Lfd;->B:Z

    if-eqz v0, :cond_5

    return-void

    .line 31
    :cond_5
    invoke-super/range {p0 .. p5}, Lwb;->a(Lfd;IIILjava/util/Random;)V

    add-int/lit8 v0, p3, 0x1

    .line 33
    invoke-virtual {p1, p2, v0, p4}, Lfd;->n(III)I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2b

    const/16 v0, 0x1e

    .line 34
    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_2b

    .line 35
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_28

    or-int/lit8 p5, v0, 0x8

    .line 37
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    goto :goto_2b

    .line 39
    :cond_28
    invoke-virtual/range {p0 .. p5}, Lhe;->c(Lfd;IIILjava/util/Random;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method protected b_(I)I
    .registers 2

    and-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public c(Lfd;IIILjava/util/Random;)V
    .registers 19

    .line 58
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v0

    and-int/lit8 v6, v0, 0x3

    const/4 v0, 0x0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 60
    invoke-virtual {p1, p2, v3, v4, v0}, Lfd;->c(IIII)Z

    const/4 v0, 0x1

    if-ne v6, v0, :cond_1c

    .line 64
    new-instance v0, Lws;

    invoke-direct {v0}, Lws;-><init>()V

    :goto_18
    move-object/from16 v9, p5

    :cond_1a
    :goto_1a
    move-object v7, v0

    goto :goto_3a

    :cond_1c
    const/4 v0, 0x2

    if-ne v6, v0, :cond_25

    .line 66
    new-instance v0, Lk;

    invoke-direct {v0}, Lk;-><init>()V

    goto :goto_18

    .line 68
    :cond_25
    new-instance v0, Lyh;

    invoke-direct {v0}, Lyh;-><init>()V

    const/16 v5, 0xa

    move-object/from16 v9, p5

    .line 69
    invoke-virtual {v9, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :cond_1a

    .line 70
    new-instance v0, Lih;

    invoke-direct {v0}, Lih;-><init>()V

    goto :goto_1a

    :goto_3a
    move-object v8, p1

    move-object/from16 v9, p5

    move v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    .line 73
    invoke-virtual/range {v7 .. v12}, Lpg;->a(Lfd;Ljava/util/Random;III)Z

    move-result v0

    if-nez v0, :cond_55

    move-object v0, p0

    .line 74
    iget v5, v0, Lhe;->bn:I

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Lfd;->a(IIIII)Z

    goto :goto_56

    :cond_55
    move-object v0, p0

    :goto_56
    return-void
.end method
