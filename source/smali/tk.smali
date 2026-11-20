###### Class defpackage.tk (tk)
.class public Ltk;
.super Ldc;
.source "SourceFile"


# instance fields
.field public bN:Lnb;

.field private bO:I

.field private bP:Z

.field private bQ:D

.field private bR:D

.field private bS:D

.field private bT:D

.field private bU:F

.field private bV:F

.field private bW:Z

.field private bX:Z

.field private bY:I


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;Lfd;Lgr;Lnb;)V
    .registers 6

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3, v0}, Ldc;-><init>(Lnet/minecraft/client/Minecraft;Lfd;Lgr;I)V

    .line 21
    iput v0, p0, Ltk;->bO:I

    .line 23
    iput-boolean v0, p0, Ltk;->bP:Z

    .line 51
    iput-boolean v0, p0, Ltk;->bW:Z

    .line 52
    iput-boolean v0, p0, Ltk;->bX:Z

    .line 53
    iput v0, p0, Ltk;->bY:I

    .line 27
    iput-object p4, p0, Ltk;->bN:Lnb;

    return-void
.end method

.method private an()V
    .registers 1

    return-void
.end method


# virtual methods
.method public D()V
    .registers 9

    .line 136
    iget-object v0, p0, Ltk;->bN:Lnb;

    new-instance v7, Ljv;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljv;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Lnb;->b(Lki;)V

    return-void
.end method

.method public J()V
    .registers 4

    .line 156
    invoke-super {p0}, Ldc;->J()V

    .line 157
    iget-object v0, p0, Ltk;->bN:Lnb;

    new-instance v1, Lnm;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lnm;-><init>(Lsn;I)V

    invoke-virtual {v0, v1}, Lnb;->b(Lki;)V

    return-void
.end method

.method protected a(Lhl;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 152
    iget-object v0, p0, Ltk;->bN:Lnb;

    new-instance v1, Lpe;

    invoke-direct {v1, p1}, Lpe;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnb;->b(Lki;)V

    return-void
.end method

.method public a(Lvr;I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 192
    :cond_3
    iget-boolean v0, p1, Lvr;->g:Z

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2}, Ldc;->a(Lvr;I)V

    :cond_a
    return-void
.end method

.method public a(Lsn;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public am()V
    .registers 19

    move-object/from16 v0, p0

    .line 61
    iget v1, v0, Ltk;->bO:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Ltk;->bO:I

    const/16 v2, 0x14

    const/4 v3, 0x0

    if-ne v1, v2, :cond_12

    .line 62
    invoke-direct/range {p0 .. p0}, Ltk;->an()V

    .line 63
    iput v3, v0, Ltk;->bO:I

    .line 66
    :cond_12
    invoke-virtual/range {p0 .. p0}, Ltk;->t()Z

    move-result v1

    .line 67
    iget-boolean v2, v0, Ltk;->bX:Z

    const/4 v4, 0x1

    if-eq v1, v2, :cond_35

    if-eqz v1, :cond_28

    .line 68
    iget-object v2, v0, Ltk;->bN:Lnb;

    new-instance v5, Lts;

    invoke-direct {v5, v0, v4}, Lts;-><init>(Lsn;I)V

    invoke-virtual {v2, v5}, Lnb;->b(Lki;)V

    goto :goto_33

    .line 69
    :cond_28
    iget-object v2, v0, Ltk;->bN:Lnb;

    new-instance v5, Lts;

    const/4 v6, 0x2

    invoke-direct {v5, v0, v6}, Lts;-><init>(Lsn;I)V

    invoke-virtual {v2, v5}, Lnb;->b(Lki;)V

    .line 71
    :goto_33
    iput-boolean v1, v0, Ltk;->bX:Z

    .line 74
    :cond_35
    iget-wide v1, v0, Ltk;->aM:D

    iget-wide v5, v0, Ltk;->bQ:D

    sub-double/2addr v1, v5

    .line 75
    iget-object v5, v0, Ltk;->aW:Leq;

    iget-wide v5, v5, Leq;->b:D

    iget-wide v7, v0, Ltk;->bR:D

    sub-double/2addr v5, v7

    .line 76
    iget-wide v7, v0, Ltk;->aN:D

    iget-wide v9, v0, Ltk;->bS:D

    sub-double/2addr v7, v9

    .line 77
    iget-wide v9, v0, Ltk;->aO:D

    iget-wide v11, v0, Ltk;->bT:D

    sub-double/2addr v9, v11

    .line 79
    iget v11, v0, Ltk;->aS:F

    iget v12, v0, Ltk;->bU:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    .line 80
    iget v13, v0, Ltk;->aT:F

    iget v14, v0, Ltk;->bV:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    const-wide/16 v15, 0x0

    cmpl-double v5, v5, v15

    if-nez v5, :cond_6c

    cmpl-double v5, v7, v15

    if-nez v5, :cond_6c

    cmpl-double v1, v1, v15

    if-nez v1, :cond_6c

    cmpl-double v1, v9, v15

    if-eqz v1, :cond_6a

    goto :goto_6c

    :cond_6a
    move v1, v3

    goto :goto_6d

    :cond_6c
    :goto_6c
    move v1, v4

    :goto_6d
    cmpl-double v2, v11, v15

    if-nez v2, :cond_78

    cmpl-double v2, v13, v15

    if-eqz v2, :cond_76

    goto :goto_78

    :cond_76
    move v2, v3

    goto :goto_79

    :cond_78
    :goto_78
    move v2, v4

    .line 84
    :goto_79
    iget-object v5, v0, Ltk;->aH:Lsn;

    if-eqz v5, :cond_c4

    if-eqz v2, :cond_9b

    .line 86
    iget-object v1, v0, Ltk;->bN:Lnb;

    new-instance v14, Laf;

    iget-wide v5, v0, Ltk;->aP:D

    const-wide v7, -0x3f70c80000000000L    # -999.0

    const-wide v9, -0x3f70c80000000000L    # -999.0

    iget-wide v11, v0, Ltk;->aR:D

    iget-boolean v13, v0, Ltk;->aX:Z

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Laf;-><init>(DDDDZ)V

    invoke-virtual {v1, v14}, Lnb;->b(Lki;)V

    goto :goto_bf

    .line 88
    :cond_9b
    iget-object v1, v0, Ltk;->bN:Lnb;

    new-instance v15, Lev;

    iget-wide v5, v0, Ltk;->aP:D

    const-wide v7, -0x3f70c80000000000L    # -999.0

    const-wide v9, -0x3f70c80000000000L    # -999.0

    iget-wide v11, v0, Ltk;->aR:D

    iget v13, v0, Ltk;->aS:F

    iget v14, v0, Ltk;->aT:F

    iget-boolean v4, v0, Ltk;->aX:Z

    move/from16 v16, v4

    move-object v4, v15

    move-object v3, v15

    move/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Lev;-><init>(DDDDFFZ)V

    invoke-virtual {v1, v3}, Lnb;->b(Lki;)V

    :goto_bf
    move/from16 v17, v2

    const/4 v3, 0x0

    goto/16 :goto_144

    :cond_c4
    if-eqz v1, :cond_ee

    if-eqz v2, :cond_ee

    .line 94
    iget-object v3, v0, Ltk;->bN:Lnb;

    new-instance v15, Lev;

    iget-wide v5, v0, Ltk;->aM:D

    iget-object v4, v0, Ltk;->aW:Leq;

    iget-wide v7, v4, Leq;->b:D

    iget-wide v9, v0, Ltk;->aN:D

    iget-wide v11, v0, Ltk;->aO:D

    iget v13, v0, Ltk;->aS:F

    iget v14, v0, Ltk;->aT:F

    iget-boolean v4, v0, Ltk;->aX:Z

    move/from16 v16, v4

    move-object v4, v15

    move/from16 v17, v2

    move-object v2, v15

    move/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Lev;-><init>(DDDDFFZ)V

    invoke-virtual {v3, v2}, Lnb;->b(Lki;)V

    const/4 v2, 0x0

    .line 95
    iput v2, v0, Ltk;->bY:I

    goto :goto_143

    :cond_ee
    move/from16 v17, v2

    if-eqz v1, :cond_10d

    .line 97
    iget-object v2, v0, Ltk;->bN:Lnb;

    new-instance v13, Laf;

    iget-wide v4, v0, Ltk;->aM:D

    iget-object v3, v0, Ltk;->aW:Leq;

    iget-wide v6, v3, Leq;->b:D

    iget-wide v8, v0, Ltk;->aN:D

    iget-wide v10, v0, Ltk;->aO:D

    iget-boolean v12, v0, Ltk;->aX:Z

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Laf;-><init>(DDDDZ)V

    invoke-virtual {v2, v13}, Lnb;->b(Lki;)V

    const/4 v2, 0x0

    .line 98
    iput v2, v0, Ltk;->bY:I

    goto :goto_143

    :cond_10d
    const/4 v2, 0x0

    if-eqz v17, :cond_123

    .line 100
    iget-object v3, v0, Ltk;->bN:Lnb;

    new-instance v4, Lvh;

    iget v5, v0, Ltk;->aS:F

    iget v6, v0, Ltk;->aT:F

    iget-boolean v7, v0, Ltk;->aX:Z

    invoke-direct {v4, v5, v6, v7}, Lvh;-><init>(FFZ)V

    invoke-virtual {v3, v4}, Lnb;->b(Lki;)V

    .line 101
    iput v2, v0, Ltk;->bY:I

    goto :goto_143

    .line 104
    :cond_123
    iget-object v2, v0, Ltk;->bN:Lnb;

    new-instance v3, Lig;

    iget-boolean v5, v0, Ltk;->aX:Z

    invoke-direct {v3, v5}, Lig;-><init>(Z)V

    invoke-virtual {v2, v3}, Lnb;->b(Lki;)V

    .line 105
    iget-boolean v2, v0, Ltk;->bW:Z

    iget-boolean v3, v0, Ltk;->aX:Z

    if-ne v2, v3, :cond_140

    iget v2, v0, Ltk;->bY:I

    const/16 v3, 0xc8

    if-le v2, v3, :cond_13c

    goto :goto_140

    :cond_13c
    add-int/2addr v2, v4

    .line 108
    iput v2, v0, Ltk;->bY:I

    goto :goto_143

    :cond_140
    :goto_140
    const/4 v2, 0x0

    .line 106
    iput v2, v0, Ltk;->bY:I

    :goto_143
    move v3, v1

    .line 121
    :goto_144
    iget-boolean v1, v0, Ltk;->aX:Z

    iput-boolean v1, v0, Ltk;->bW:Z

    if-eqz v3, :cond_15c

    .line 124
    iget-wide v1, v0, Ltk;->aM:D

    iput-wide v1, v0, Ltk;->bQ:D

    .line 125
    iget-object v1, v0, Ltk;->aW:Leq;

    iget-wide v1, v1, Leq;->b:D

    iput-wide v1, v0, Ltk;->bR:D

    .line 126
    iget-wide v1, v0, Ltk;->aN:D

    iput-wide v1, v0, Ltk;->bS:D

    .line 127
    iget-wide v1, v0, Ltk;->aO:D

    iput-wide v1, v0, Ltk;->bT:D

    :cond_15c
    if-eqz v17, :cond_166

    .line 130
    iget v1, v0, Ltk;->aS:F

    iput v1, v0, Ltk;->bU:F

    .line 131
    iget v1, v0, Ltk;->aT:F

    iput v1, v0, Ltk;->bV:F

    :cond_166
    return-void
.end method

.method protected b(I)V
    .registers 3

    .line 166
    iget v0, p0, Ltk;->Y:I

    sub-int/2addr v0, p1

    iput v0, p0, Ltk;->Y:I

    return-void
.end method

.method public b(Lvr;I)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 200
    :cond_3
    iget-boolean v0, p1, Lvr;->g:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1, p2}, Ldc;->a(Lvr;I)V

    :cond_a
    return-void
.end method

.method public c(I)V
    .registers 2

    return-void
.end method

.method public d_(I)V
    .registers 3

    .line 177
    iget-boolean v0, p0, Ltk;->bP:Z

    if-eqz v0, :cond_8

    .line 178
    invoke-super {p0, p1}, Ldc;->d_(I)V

    goto :goto_d

    .line 182
    :cond_8
    iput p1, p0, Ltk;->Y:I

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Ltk;->bP:Z

    :goto_d
    return-void
.end method

.method public p_()V
    .registers 4

    .line 161
    invoke-direct {p0}, Ltk;->an()V

    .line 162
    iget-object v0, p0, Ltk;->bN:Lnb;

    new-instance v1, Lox;

    iget v2, p0, Ltk;->m:I

    int-to-byte v2, v2

    invoke-direct {v1, v2}, Lox;-><init>(B)V

    invoke-virtual {v0, v1}, Lnb;->b(Lki;)V

    return-void
.end method

.method public r()V
    .registers 4

    .line 170
    iget-object v0, p0, Ltk;->bN:Lnb;

    new-instance v1, Lmn;

    iget-object v2, p0, Ltk;->e:Ldw;

    iget v2, v2, Ldw;->f:I

    invoke-direct {v1, v2}, Lmn;-><init>(I)V

    invoke-virtual {v0, v1}, Lnb;->b(Lki;)V

    .line 171
    iget-object v0, p0, Ltk;->c:Lix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lix;->b(Liz;)V

    .line 172
    invoke-super {p0}, Ldc;->r()V

    return-void
.end method

.method public w_()V
    .registers 5

    .line 46
    iget-object v0, p0, Ltk;->aI:Lfd;

    iget-wide v1, p0, Ltk;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    iget-wide v2, p0, Ltk;->aO:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v3, v2}, Lfd;->i(III)Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    .line 47
    :cond_17
    invoke-super {p0}, Ldc;->w_()V

    .line 48
    invoke-virtual {p0}, Ltk;->am()V

    return-void
.end method
