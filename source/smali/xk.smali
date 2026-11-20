###### Class defpackage.xk (xk)
.class public Lxk;
.super Lob;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:Z

.field private k:Lnb;

.field private l:I


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;Lnb;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Lob;-><init>(Lnet/minecraft/client/Minecraft;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lxk;->c:I

    .line 18
    iput p1, p0, Lxk;->d:I

    .line 19
    iput p1, p0, Lxk;->e:I

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lxk;->f:F

    .line 21
    iput p1, p0, Lxk;->g:F

    .line 22
    iput p1, p0, Lxk;->h:F

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lxk;->i:I

    .line 24
    iput-boolean p1, p0, Lxk;->j:Z

    .line 170
    iput p1, p0, Lxk;->l:I

    .line 30
    iput-object p2, p0, Lxk;->k:Lnb;

    return-void
.end method

.method private e()V
    .registers 4

    .line 173
    iget-object v0, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->c:Lix;

    iget v0, v0, Lix;->c:I

    .line 174
    iget v1, p0, Lxk;->l:I

    if-eq v0, v1, :cond_1a

    .line 175
    iput v0, p0, Lxk;->l:I

    .line 176
    iget-object v0, p0, Lxk;->k:Lnb;

    new-instance v1, Lho;

    iget v2, p0, Lxk;->l:I

    invoke-direct {v1, v2}, Lho;-><init>(I)V

    invoke-virtual {v0, v1}, Lnb;->b(Lki;)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public a(IIIZLgs;)Liz;
    .registers 15

    .line 211
    iget-object v0, p5, Lgs;->e:Ldw;

    iget-object v1, p5, Lgs;->c:Lix;

    invoke-virtual {v0, v1}, Ldw;->a(Lix;)S

    move-result v8

    .line 213
    invoke-super/range {p0 .. p5}, Lob;->a(IIIZLgs;)Liz;

    move-result-object p5

    .line 214
    iget-object v0, p0, Lxk;->k:Lnb;

    new-instance v1, Lqs;

    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lqs;-><init>(IIIZLiz;S)V

    invoke-virtual {v0, v1}, Lnb;->b(Lki;)V

    return-object p5
.end method

.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lxk;->f:F

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lxk;->j:Z

    return-void
.end method

.method public a(F)V
    .registers 5

    .line 146
    iget v0, p0, Lxk;->f:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_14

    .line 147
    iget-object p1, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->v:Luq;

    iput v1, p1, Luq;->b:F

    .line 148
    iget-object p1, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->g:Ln;

    iput v1, p1, Ln;->i:F

    goto :goto_25

    .line 150
    :cond_14
    iget v1, p0, Lxk;->g:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    .line 151
    iget-object p1, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->v:Luq;

    iput v1, p1, Luq;->b:F

    .line 152
    iget-object p1, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->g:Ln;

    iput v1, p1, Ln;->i:F

    :goto_25
    return-void
.end method

.method public a(IIII)V
    .registers 14

    .line 60
    iget-boolean v0, p0, Lxk;->j:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lxk;->c:I

    if-ne p1, v0, :cond_10

    iget v0, p0, Lxk;->d:I

    if-ne p2, v0, :cond_10

    iget v0, p0, Lxk;->e:I

    if-eq p3, v0, :cond_6a

    .line 61
    :cond_10
    iget-object v0, p0, Lxk;->k:Lnb;

    new-instance v7, Ljv;

    const/4 v2, 0x0

    move-object v1, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Ljv;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Lnb;->b(Lki;)V

    .line 62
    iget-object v0, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0, p1, p2, p3}, Lfd;->a(III)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_43

    .line 63
    iget v2, p0, Lxk;->f:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_43

    sget-object v2, Luu;->m:[Luu;

    aget-object v3, v2, v0

    iget-object v2, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v4, v2, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v2, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v8, v2, Lnet/minecraft/client/Minecraft;->h:Ldc;

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v3 .. v8}, Luu;->b(Lfd;IIILgs;)V

    :cond_43
    if-lez v0, :cond_5b

    .line 64
    sget-object v2, Luu;->m:[Luu;

    aget-object v0, v2, v0

    iget-object v2, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0, v2}, Luu;->a(Lgs;)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5b

    .line 65
    invoke-virtual {p0, p1, p2, p3, p4}, Lxk;->b(IIII)Z

    goto :goto_6a

    :cond_5b
    const/4 p4, 0x1

    .line 67
    iput-boolean p4, p0, Lxk;->j:Z

    .line 68
    iput p1, p0, Lxk;->c:I

    .line 69
    iput p2, p0, Lxk;->d:I

    .line 70
    iput p3, p0, Lxk;->e:I

    .line 71
    iput v1, p0, Lxk;->f:F

    .line 72
    iput v1, p0, Lxk;->g:F

    .line 73
    iput v1, p0, Lxk;->h:F

    :cond_6a
    :goto_6a
    return-void
.end method

.method public a(ILgs;)V
    .registers 3

    return-void
.end method

.method public a(Lfd;)V
    .registers 2

    .line 161
    invoke-super {p0, p1}, Lob;->a(Lfd;)V

    return-void
.end method

.method public a(Lgs;)V
    .registers 3

    const/high16 v0, -0x3ccc0000    # -180.0f

    .line 34
    iput v0, p1, Lgs;->aS:F

    return-void
.end method

.method public a(Lgs;Lsn;)V
    .registers 8

    .line 205
    invoke-direct {p0}, Lxk;->e()V

    .line 206
    iget-object v0, p0, Lxk;->k:Lnb;

    new-instance v1, La;

    iget v2, p1, Lgs;->aD:I

    iget v3, p2, Lsn;->aD:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, La;-><init>(III)V

    invoke-virtual {v0, v1}, Lnb;->b(Lki;)V

    .line 207
    invoke-virtual {p1, p2}, Lgs;->c(Lsn;)V

    return-void
.end method

.method public a(Lgs;Lfd;Liz;)Z
    .registers 12

    .line 188
    invoke-direct {p0}, Lxk;->e()V

    .line 189
    iget-object v0, p0, Lxk;->k:Lnb;

    new-instance v7, Lgx;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0xff

    iget-object v1, p1, Lgs;->c:Lix;

    invoke-virtual {v1}, Lix;->b()Liz;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lgx;-><init>(IIIILiz;)V

    invoke-virtual {v0, v7}, Lnb;->b(Lki;)V

    .line 190
    invoke-super {p0, p1, p2, p3}, Lob;->a(Lgs;Lfd;Liz;)Z

    move-result p1

    return p1
.end method

.method public a(Lgs;Lfd;Liz;IIII)Z
    .registers 16

    .line 181
    invoke-direct {p0}, Lxk;->e()V

    .line 182
    iget-object v0, p0, Lxk;->k:Lnb;

    new-instance v7, Lgx;

    iget-object v1, p1, Lgs;->c:Lix;

    invoke-virtual {v1}, Lix;->b()Liz;

    move-result-object v6

    move-object v1, v7

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v1 .. v6}, Lgx;-><init>(IIIILiz;)V

    invoke-virtual {v0, v7}, Lnb;->b(Lki;)V

    .line 183
    invoke-super/range {p0 .. p7}, Lob;->a(Lgs;Lfd;Liz;IIII)Z

    move-result p1

    return p1
.end method

.method public b()F
    .registers 2

    const/high16 v0, 0x40800000    # 4.0f

    return v0
.end method

.method public b(Lfd;)Lgs;
    .registers 6

    .line 195
    new-instance v0, Ltk;

    iget-object v1, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->k:Lgr;

    iget-object v3, p0, Lxk;->k:Lnb;

    invoke-direct {v0, v1, p1, v2, v3}, Ltk;-><init>(Lnet/minecraft/client/Minecraft;Lfd;Lgr;Lnb;)V

    return-object v0
.end method

.method public b(Lgs;Lsn;)V
    .registers 8

    .line 199
    invoke-direct {p0}, Lxk;->e()V

    .line 200
    iget-object v0, p0, Lxk;->k:Lnb;

    new-instance v1, La;

    iget v2, p1, Lgs;->aD:I

    iget v3, p2, Lsn;->aD:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, La;-><init>(III)V

    invoke-virtual {v0, v1}, Lnb;->b(Lki;)V

    .line 201
    invoke-virtual {p1, p2}, Lgs;->d(Lsn;)V

    return-void
.end method

.method public b(IIII)Z
    .registers 12

    .line 43
    iget-object v0, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0, p1, p2, p3}, Lfd;->a(III)I

    move-result v2

    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Lob;->b(IIII)Z

    move-result p4

    .line 47
    iget-object v0, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0}, Ldc;->G()Liz;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 49
    iget-object v1, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v6, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Liz;->a(IIIILgs;)V

    .line 50
    iget p1, v0, Liz;->a:I

    if-nez p1, :cond_33

    .line 51
    iget-object p1, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v0, p1}, Liz;->a(Lgs;)V

    .line 52
    iget-object p1, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {p1}, Ldc;->H()V

    :cond_33
    return p4
.end method

.method public c()V
    .registers 2

    .line 165
    invoke-direct {p0}, Lxk;->e()V

    .line 166
    iget v0, p0, Lxk;->f:F

    iput v0, p0, Lxk;->g:F

    .line 167
    iget-object v0, p0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    invoke-virtual {v0}, Lyo;->c()V

    return-void
.end method

.method public c(IIII)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 95
    iget-boolean v1, v0, Lxk;->j:Z

    if-nez v1, :cond_d

    return-void

    .line 99
    :cond_d
    invoke-direct/range {p0 .. p0}, Lxk;->e()V

    .line 102
    iget v1, v0, Lxk;->i:I

    if-lez v1, :cond_19

    add-int/lit8 v1, v1, -0x1

    .line 103
    iput v1, v0, Lxk;->i:I

    return-void

    .line 107
    :cond_19
    iget v1, v0, Lxk;->c:I

    if-ne v7, v1, :cond_ab

    iget v1, v0, Lxk;->d:I

    if-ne v8, v1, :cond_ab

    iget v1, v0, Lxk;->e:I

    if-ne v9, v1, :cond_ab

    .line 108
    iget-object v1, v0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v1, v7, v8, v9}, Lfd;->a(III)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_33

    .line 110
    iput-boolean v2, v0, Lxk;->j:Z

    return-void

    .line 113
    :cond_33
    sget-object v3, Luu;->m:[Luu;

    aget-object v1, v3, v1

    .line 115
    iget v3, v0, Lxk;->f:F

    iget-object v4, v0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1, v4}, Luu;->a(Lgs;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v0, Lxk;->f:F

    .line 117
    iget v3, v0, Lxk;->h:F

    const/high16 v4, 0x40800000    # 4.0f

    rem-float/2addr v3, v4

    const/4 v10, 0x0

    cmpl-float v3, v3, v10

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_7d

    if-eqz v1, :cond_7d

    .line 119
    iget-object v3, v0, Lxk;->a:Lnet/minecraft/client/Minecraft;

    iget-object v11, v3, Lnet/minecraft/client/Minecraft;->B:Lyo;

    iget-object v3, v1, Luu;->by:Lct;

    invoke-virtual {v3}, Lct;->d()Ljava/lang/String;

    move-result-object v12

    int-to-float v3, v7

    const/high16 v5, 0x3f000000    # 0.5f

    add-float v13, v3, v5

    int-to-float v3, v8

    add-float v14, v3, v5

    int-to-float v3, v9

    add-float v15, v3, v5

    iget-object v3, v1, Luu;->by:Lct;

    invoke-virtual {v3}, Lct;->b()F

    move-result v3

    add-float/2addr v3, v4

    const/high16 v6, 0x41000000    # 8.0f

    div-float v16, v3, v6

    iget-object v1, v1, Luu;->by:Lct;

    invoke-virtual {v1}, Lct;->c()F

    move-result v1

    mul-float v17, v1, v5

    invoke-virtual/range {v11 .. v17}, Lyo;->b(Ljava/lang/String;FFFFF)V

    .line 123
    :cond_7d
    iget v1, v0, Lxk;->h:F

    add-float/2addr v1, v4

    iput v1, v0, Lxk;->h:F

    .line 125
    iget v1, v0, Lxk;->f:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_ae

    .line 126
    iput-boolean v2, v0, Lxk;->j:Z

    .line 127
    iget-object v11, v0, Lxk;->k:Lnb;

    new-instance v12, Ljv;

    const/4 v2, 0x2

    move-object v1, v12

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Ljv;-><init>(IIIII)V

    invoke-virtual {v11, v12}, Lnb;->b(Lki;)V

    .line 128
    invoke-virtual/range {p0 .. p4}, Lxk;->b(IIII)Z

    .line 129
    iput v10, v0, Lxk;->f:F

    .line 130
    iput v10, v0, Lxk;->g:F

    .line 131
    iput v10, v0, Lxk;->h:F

    const/4 v1, 0x5

    .line 132
    iput v1, v0, Lxk;->i:I

    goto :goto_ae

    .line 135
    :cond_ab
    invoke-virtual/range {p0 .. p4}, Lxk;->a(IIII)V

    :cond_ae
    :goto_ae
    return-void
.end method
