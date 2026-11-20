###### Class defpackage.gb (gb)
.class public Lgb;
.super Lgz;
.source "SourceFile"


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lgz;-><init>(Lfd;)V

    const-string p1, "/mob/creeper.png"

    .line 21
    iput-object p1, p0, Lgb;->O:Ljava/lang/String;

    return-void
.end method

.method private e(I)V
    .registers 4

    .line 138
    iget-object v0, p0, Lgb;->bD:Lud;

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lud;->b(ILjava/lang/Object;)V

    return-void
.end method

.method private v()I
    .registers 3

    .line 134
    iget-object v0, p0, Lgb;->bD:Lud;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lc;)V
    .registers 4

    .line 142
    invoke-super {p0, p1}, Lgz;->a(Lc;)V

    .line 143
    iget-object p1, p0, Lgb;->bD:Lud;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lud;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lnu;)V
    .registers 4

    .line 38
    invoke-super {p0, p1}, Lgz;->a(Lnu;)V

    .line 39
    iget-object v0, p0, Lgb;->bD:Lud;

    const-string v1, "powered"

    invoke-virtual {p1, v1}, Lnu;->m(Ljava/lang/String;)Z

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Lud;->b(ILjava/lang/Object;)V

    return-void
.end method

.method protected a(Lsn;F)V
    .registers 13

    .line 94
    iget-object v0, p0, Lgb;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-eqz v0, :cond_7

    return-void

    .line 95
    :cond_7
    invoke-direct {p0}, Lgb;->v()I

    move-result v0

    const/4 v9, 0x1

    if-gtz v0, :cond_14

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1c

    :cond_14
    if-lez v0, :cond_60

    const/high16 v0, 0x40e00000    # 7.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_60

    .line 97
    :cond_1c
    iget v0, p0, Lgb;->a:I

    if-nez v0, :cond_2b

    .line 98
    iget-object v0, p0, Lgb;->aI:Lfd;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const-string v3, "random.fuse"

    invoke-virtual {v0, p0, v3, v1, v2}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 100
    :cond_2b
    invoke-direct {p0, v9}, Lgb;->e(I)V

    .line 101
    iget v0, p0, Lgb;->a:I

    add-int/2addr v0, v9

    iput v0, p0, Lgb;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_5d

    .line 104
    invoke-virtual {p0}, Lgb;->s()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 105
    iget-object v0, p0, Lgb;->aI:Lfd;

    iget-wide v2, p0, Lgb;->aM:D

    iget-wide v4, p0, Lgb;->aN:D

    iget-wide v6, p0, Lgb;->aO:D

    const/high16 v8, 0x40c00000    # 6.0f

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lfd;->a(Lsn;DDDF)Lqx;

    goto :goto_5a

    .line 107
    :cond_4c
    iget-object v0, p0, Lgb;->aI:Lfd;

    iget-wide v2, p0, Lgb;->aM:D

    iget-wide v4, p0, Lgb;->aN:D

    iget-wide v6, p0, Lgb;->aO:D

    const/high16 v8, 0x40400000    # 3.0f

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lfd;->a(Lsn;DDDF)Lqx;

    .line 109
    :goto_5a
    invoke-virtual {p0}, Lgb;->K()V

    .line 111
    :cond_5d
    iput-boolean v9, p0, Lgb;->e:Z

    goto :goto_6e

    :cond_60
    const/4 v0, -0x1

    .line 113
    invoke-direct {p0, v0}, Lgb;->e(I)V

    .line 114
    iget v0, p0, Lgb;->a:I

    sub-int/2addr v0, v9

    iput v0, p0, Lgb;->a:I

    if-gez v0, :cond_6e

    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lgb;->a:I

    :cond_6e
    :goto_6e
    return-void
.end method

.method public a_(F)F
    .registers 5

    .line 126
    iget v0, p0, Lgb;->b:I

    int-to-float v1, v0

    iget v2, p0, Lgb;->a:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    const/high16 p1, 0x41e00000    # 28.0f

    div-float/2addr v1, p1

    return v1
.end method

.method protected b()V
    .registers 4

    .line 26
    invoke-super {p0}, Lgz;->b()V

    .line 28
    iget-object v0, p0, Lgb;->bD:Lud;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lud;->a(ILjava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lgb;->bD:Lud;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Lud;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 33
    invoke-super {p0, p1}, Lgz;->b(Lnu;)V

    .line 34
    iget-object v0, p0, Lgb;->bD:Lud;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const-string v0, "powered"

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;Z)V

    :cond_13
    return-void
.end method

.method public b(Lsn;)V
    .registers 4

    .line 86
    invoke-super {p0, p1}, Lgz;->b(Lsn;)V

    .line 88
    instance-of p1, p1, Lfr;

    if-eqz p1, :cond_17

    .line 89
    sget-object p1, Lgm;->bd:Lgm;

    iget p1, p1, Lgm;->bf:I

    iget-object v0, p0, Lgb;->bs:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgb;->b(II)Lhl;

    :cond_17
    return-void
.end method

.method protected b(Lsn;F)V
    .registers 3

    .line 43
    iget-object p1, p0, Lgb;->aI:Lfd;

    iget-boolean p1, p1, Lfd;->B:Z

    if-eqz p1, :cond_7

    return-void

    .line 44
    :cond_7
    iget p1, p0, Lgb;->a:I

    if-lez p1, :cond_1a

    const/4 p1, -0x1

    .line 45
    invoke-direct {p0, p1}, Lgb;->e(I)V

    .line 46
    iget p1, p0, Lgb;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lgb;->a:I

    if-gez p1, :cond_1a

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lgb;->a:I

    :cond_1a
    return-void
.end method

.method protected i()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.creeperdeath"

    return-object v0
.end method

.method protected j()I
    .registers 2

    .line 130
    sget-object v0, Lgm;->K:Lgm;

    iget v0, v0, Lgm;->bf:I

    return v0
.end method

.method protected j_()Ljava/lang/String;
    .registers 2

    const-string v0, "mob.creeper"

    return-object v0
.end method

.method public s()Z
    .registers 3

    .line 122
    iget-object v0, p0, Lgb;->bD:Lud;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lud;->a(I)B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public w_()V
    .registers 7

    .line 54
    iget v0, p0, Lgb;->a:I

    iput v0, p0, Lgb;->b:I

    .line 55
    iget-object v0, p0, Lgb;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 56
    invoke-direct {p0}, Lgb;->v()I

    move-result v0

    if-lez v0, :cond_20

    .line 57
    iget v2, p0, Lgb;->a:I

    if-nez v2, :cond_20

    .line 58
    iget-object v2, p0, Lgb;->aI:Lfd;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const-string v5, "random.fuse"

    invoke-virtual {v2, p0, v5, v3, v4}, Lfd;->a(Lsn;Ljava/lang/String;FF)V

    .line 60
    :cond_20
    iget v2, p0, Lgb;->a:I

    add-int/2addr v2, v0

    iput v2, p0, Lgb;->a:I

    if-gez v2, :cond_29

    .line 61
    iput v1, p0, Lgb;->a:I

    .line 62
    :cond_29
    iget v0, p0, Lgb;->a:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_31

    iput v2, p0, Lgb;->a:I

    .line 64
    :cond_31
    invoke-super {p0}, Lgz;->w_()V

    .line 66
    iget-object v0, p0, Lgb;->d:Lsn;

    if-nez v0, :cond_4a

    .line 67
    iget v0, p0, Lgb;->a:I

    if-lez v0, :cond_4a

    const/4 v0, -0x1

    .line 68
    invoke-direct {p0, v0}, Lgb;->e(I)V

    .line 69
    iget v0, p0, Lgb;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgb;->a:I

    if-gez v0, :cond_4a

    .line 71
    iput v1, p0, Lgb;->a:I

    :cond_4a
    return-void
.end method
