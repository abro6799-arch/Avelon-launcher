###### Class defpackage.dc (dc)
.class public Ldc;
.super Lgs;
.source "SourceFile"


# instance fields
.field public a:Luo;

.field protected b:Lnet/minecraft/client/Minecraft;

.field private bN:Lcu;

.field private bO:Lcu;

.field private bP:Lcu;


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;Lfd;Lgr;I)V
    .registers 5

    .line 26
    invoke-direct {p0, p2}, Lgs;-><init>(Lfd;)V

    .line 62
    new-instance p2, Lcu;

    invoke-direct {p2}, Lcu;-><init>()V

    iput-object p2, p0, Ldc;->bN:Lcu;

    .line 63
    new-instance p2, Lcu;

    invoke-direct {p2}, Lcu;-><init>()V

    iput-object p2, p0, Ldc;->bO:Lcu;

    .line 64
    new-instance p2, Lcu;

    invoke-direct {p2}, Lcu;-><init>()V

    iput-object p2, p0, Ldc;->bP:Lcu;

    .line 27
    iput-object p1, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    .line 28
    iput p4, p0, Ldc;->m:I

    if-eqz p3, :cond_41

    .line 30
    iget-object p1, p3, Lgr;->b:Ljava/lang/String;

    if-eqz p1, :cond_41

    iget-object p1, p3, Lgr;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_41

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "http://s3.amazonaws.com/MinecraftSkins/"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p3, Lgr;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldc;->bA:Ljava/lang/String;

    .line 33
    :cond_41
    iget-object p1, p3, Lgr;->b:Ljava/lang/String;

    iput-object p1, p0, Ldc;->l:Ljava/lang/String;

    return-void
.end method

.method private d(III)Z
    .registers 5

    .line 239
    iget-object v0, p0, Ldc;->aI:Lfd;

    invoke-virtual {v0, p1, p2, p3}, Lfd;->h(III)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(III)V
    .registers 12

    .line 164
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    new-instance v7, Loo;

    iget-object v2, p0, Ldc;->c:Lix;

    iget-object v3, p0, Ldc;->aI:Lfd;

    move-object v1, v7

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Loo;-><init>(Lix;Lfd;III)V

    invoke-virtual {v0, v7}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    return-void
.end method

.method public a(IZ)V
    .registers 4

    .line 137
    iget-object v0, p0, Ldc;->a:Luo;

    invoke-virtual {v0, p1, p2}, Luo;->a(IZ)V

    return-void
.end method

.method public a(Laz;)V
    .registers 5

    .line 173
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lgq;

    iget-object v2, p0, Ldc;->c:Lix;

    invoke-direct {v1, v2, p1}, Lgq;-><init>(Lix;Laz;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public a(Llw;)V
    .registers 5

    .line 160
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lhp;

    iget-object v2, p0, Ldc;->c:Lix;

    invoke-direct {v1, v2, p1}, Lhp;-><init>(Llw;Llw;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    return-void
.end method

.method public a(Lnu;)V
    .registers 3

    .line 146
    invoke-super {p0, p1}, Lgs;->a(Lnu;)V

    const-string v0, "Score"

    .line 147
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ldc;->g:I

    return-void
.end method

.method public a(Lsk;)V
    .registers 5

    .line 168
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lov;

    iget-object v2, p0, Ldc;->c:Lix;

    invoke-direct {v1, v2, p1}, Lov;-><init>(Lix;Lsk;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    return-void
.end method

.method public a(Lvr;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 225
    :cond_3
    invoke-virtual {p1}, Lvr;->d()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 226
    move-object v0, p1

    check-cast v0, Lny;

    .line 227
    iget-object v1, v0, Lny;->c:Lny;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->I:Lxi;

    iget-object v2, v0, Lny;->c:Lny;

    invoke-virtual {v1, v2}, Lxi;->a(Lny;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 228
    :cond_1c
    iget-object v1, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-virtual {v1, v0}, Lxi;->a(Lny;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 229
    iget-object v1, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->u:Lvu;

    invoke-virtual {v1, v0}, Lvu;->a(Lny;)V

    .line 231
    :cond_2d
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-virtual {v0, p1, p2}, Lxi;->a(Lvr;I)V

    goto :goto_3c

    .line 234
    :cond_35
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    invoke-virtual {v0, p1, p2}, Lxi;->a(Lvr;I)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public a(Lyk;)V
    .registers 4

    .line 156
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lyc;

    invoke-direct {v1, p1}, Lyc;-><init>(Lyk;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    return-void
.end method

.method public b(DDD)V
    .registers 7

    .line 53
    invoke-super/range {p0 .. p6}, Lgs;->b(DDD)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 218
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->v:Luq;

    invoke-virtual {v0, p1}, Luq;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 141
    invoke-super {p0, p1}, Lgs;->b(Lnu;)V

    const-string v0, "Score"

    .line 142
    iget v1, p0, Ldc;->g:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Lsn;I)V
    .registers 6

    .line 177
    iget-object p2, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    iget-object p2, p2, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v0, Lem;

    iget-object v1, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    const/high16 v2, -0x41000000    # -0.5f

    invoke-direct {v0, v1, p1, p0, v2}, Lem;-><init>(Lfd;Lsn;Lsn;F)V

    invoke-virtual {p2, v0}, Ldn;->a(Lxw;)V

    return-void
.end method

.method protected c(DDD)Z
    .registers 15

    .line 243
    invoke-static {p1, p2}, Lin;->b(D)I

    move-result v0

    .line 244
    invoke-static {p3, p4}, Lin;->b(D)I

    move-result p3

    .line 245
    invoke-static {p5, p6}, Lin;->b(D)I

    move-result p4

    int-to-double v1, v0

    sub-double/2addr p1, v1

    int-to-double v1, p4

    sub-double/2addr p5, v1

    .line 250
    invoke-direct {p0, v0, p3, p4}, Ldc;->d(III)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1f

    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, v0, v1, p4}, Ldc;->d(III)Z

    move-result v1

    if-eqz v1, :cond_b1

    :cond_1f
    add-int/lit8 v1, v0, -0x1

    .line 251
    invoke-direct {p0, v1, p3, p4}, Ldc;->d(III)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_32

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, v1, v3, p4}, Ldc;->d(III)Z

    move-result v1

    if-nez v1, :cond_32

    move v1, v4

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    add-int/lit8 v3, v0, 0x1

    .line 252
    invoke-direct {p0, v3, p3, p4}, Ldc;->d(III)Z

    move-result v5

    if-nez v5, :cond_45

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, v3, v5, p4}, Ldc;->d(III)Z

    move-result v3

    if-nez v3, :cond_45

    move v3, v4

    goto :goto_46

    :cond_45
    move v3, v2

    :goto_46
    add-int/lit8 v5, p4, -0x1

    .line 253
    invoke-direct {p0, v0, p3, v5}, Ldc;->d(III)Z

    move-result v6

    if-nez v6, :cond_58

    add-int/lit8 v6, p3, 0x1

    invoke-direct {p0, v0, v6, v5}, Ldc;->d(III)Z

    move-result v5

    if-nez v5, :cond_58

    move v5, v4

    goto :goto_59

    :cond_58
    move v5, v2

    :goto_59
    add-int/2addr p4, v4

    .line 254
    invoke-direct {p0, v0, p3, p4}, Ldc;->d(III)Z

    move-result v6

    if-nez v6, :cond_69

    add-int/2addr p3, v4

    invoke-direct {p0, v0, p3, p4}, Ldc;->d(III)Z

    move-result p3

    if-nez p3, :cond_69

    move p3, v4

    goto :goto_6a

    :cond_69
    move p3, v2

    :goto_6a
    const-wide v6, 0x40c3878000000000L    # 9999.0

    if-eqz v1, :cond_78

    cmpg-double p4, p1, v6

    if-gez p4, :cond_78

    move-wide v6, p1

    move p4, v2

    goto :goto_79

    :cond_78
    const/4 p4, -0x1

    :goto_79
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz v3, :cond_85

    sub-double p1, v0, p1

    cmpg-double v3, p1, v6

    if-gez v3, :cond_85

    move-wide v6, p1

    move p4, v4

    :cond_85
    const/4 p1, 0x4

    if-eqz v5, :cond_8e

    cmpg-double p2, p5, v6

    if-gez p2, :cond_8e

    move p4, p1

    move-wide v6, p5

    :cond_8e
    const/4 p2, 0x5

    if-eqz p3, :cond_97

    sub-double/2addr v0, p5

    cmpg-double p3, v0, v6

    if-gez p3, :cond_97

    move p4, p2

    :cond_97
    const p3, -0x42333333    # -0.1f

    if-nez p4, :cond_9f

    float-to-double p5, p3

    .line 276
    iput-wide p5, p0, Ldc;->aP:D

    :cond_9f
    const p5, 0x3dcccccd    # 0.1f

    if-ne p4, v4, :cond_a7

    float-to-double v0, p5

    .line 277
    iput-wide v0, p0, Ldc;->aP:D

    :cond_a7
    if-ne p4, p1, :cond_ac

    float-to-double v0, p3

    .line 278
    iput-wide v0, p0, Ldc;->aR:D

    :cond_ac
    if-ne p4, p2, :cond_b1

    float-to-double p1, p5

    .line 279
    iput-wide p1, p0, Ldc;->aR:D

    :cond_b1
    return v2
.end method

.method public d_(I)V
    .registers 3

    .line 192
    iget v0, p0, Ldc;->Y:I

    sub-int/2addr v0, p1

    if-gtz v0, :cond_10

    .line 194
    iput p1, p0, Ldc;->Y:I

    if-gez v0, :cond_23

    .line 196
    iget p1, p0, Ldc;->E:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Ldc;->by:I

    goto :goto_23

    .line 199
    :cond_10
    iput v0, p0, Ldc;->au:I

    .line 200
    iget p1, p0, Ldc;->Y:I

    iput p1, p0, Ldc;->Z:I

    .line 201
    iget p1, p0, Ldc;->E:I

    iput p1, p0, Ldc;->by:I

    .line 202
    invoke-virtual {p0, v0}, Ldc;->b(I)V

    const/16 p1, 0xa

    .line 203
    iput p1, p0, Ldc;->ab:I

    iput p1, p0, Ldc;->aa:I

    :cond_23
    :goto_23
    return-void
.end method

.method public f_()V
    .registers 2

    .line 82
    invoke-super {p0}, Lgs;->f_()V

    .line 83
    iget-object v0, p0, Ldc;->a:Luo;

    iget v0, v0, Luo;->a:F

    iput v0, p0, Ldc;->aw:F

    .line 84
    iget-object v0, p0, Ldc;->a:Luo;

    iget v0, v0, Luo;->b:F

    iput v0, p0, Ldc;->ax:F

    .line 85
    iget-object v0, p0, Ldc;->a:Luo;

    iget-boolean v0, v0, Luo;->d:Z

    iput-boolean v0, p0, Ldc;->az:Z

    return-void
.end method

.method public o()V
    .registers 16

    .line 89
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    sget-object v1, Lep;->f:Lny;

    invoke-virtual {v0, v1}, Lxi;->a(Lny;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 90
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->u:Lvu;

    sget-object v1, Lep;->f:Lny;

    invoke-virtual {v0, v1}, Lvu;->b(Lny;)V

    .line 92
    :cond_15
    iget v0, p0, Ldc;->B:F

    iput v0, p0, Ldc;->C:F

    .line 93
    iget-boolean v0, p0, Ldc;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8a

    .line 94
    iget-object v0, p0, Ldc;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2c

    .line 95
    iget-object v0, p0, Ldc;->aH:Lsn;

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v2}, Ldc;->i(Lsn;)V

    .line 97
    :cond_2c
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->r:Lda;

    if-eqz v0, :cond_37

    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0, v2}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 99
    :cond_37
    iget v0, p0, Ldc;->B:F

    cmpl-float v0, v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_56

    .line 100
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    iget-object v4, p0, Ldc;->bs:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    const-string v5, "portal.trigger"

    invoke-virtual {v0, v5, v3, v4}, Lyo;->a(Ljava/lang/String;FF)V

    .line 102
    :cond_56
    iget v0, p0, Ldc;->B:F

    const v4, 0x3c4ccccd    # 0.0125f

    add-float/2addr v0, v4

    iput v0, p0, Ldc;->B:F

    .line 103
    iget v0, p0, Ldc;->B:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_86

    .line 104
    iput v3, p0, Ldc;->B:F

    .line 105
    iget-object v0, p0, Ldc;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_86

    const/16 v0, 0xa

    .line 106
    iput v0, p0, Ldc;->z:I

    .line 107
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->B:Lyo;

    iget-object v4, p0, Ldc;->bs:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    const-string v1, "portal.travel"

    invoke-virtual {v0, v1, v3, v4}, Lyo;->a(Ljava/lang/String;FF)V

    .line 108
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v0}, Lnet/minecraft/client/Minecraft;->m()V

    :cond_86
    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Ldc;->A:Z

    goto :goto_a0

    .line 113
    :cond_8a
    iget v0, p0, Ldc;->B:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_98

    iget v0, p0, Ldc;->B:F

    const v2, 0x3d4ccccd    # 0.05f

    sub-float/2addr v0, v2

    iput v0, p0, Ldc;->B:F

    .line 114
    :cond_98
    iget v0, p0, Ldc;->B:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a0

    iput v1, p0, Ldc;->B:F

    .line 117
    :cond_a0
    :goto_a0
    iget v0, p0, Ldc;->z:I

    if-lez v0, :cond_aa

    iget v0, p0, Ldc;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldc;->z:I

    .line 118
    :cond_aa
    iget-object v0, p0, Ldc;->a:Luo;

    invoke-virtual {v0, p0}, Luo;->a(Lgs;)V

    .line 120
    iget-object v0, p0, Ldc;->a:Luo;

    iget-boolean v0, v0, Luo;->e:Z

    if-eqz v0, :cond_c0

    .line 121
    iget v0, p0, Ldc;->bo:F

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c0

    iput v1, p0, Ldc;->bo:F

    .line 124
    :cond_c0
    iget-wide v0, p0, Ldc;->aM:D

    iget v2, p0, Ldc;->bg:F

    float-to-double v2, v2

    const-wide v4, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v2, v4

    sub-double v7, v0, v2

    iget-object v0, p0, Ldc;->aW:Leq;

    iget-wide v0, v0, Leq;->b:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v9, v0, v2

    iget-wide v0, p0, Ldc;->aO:D

    iget v6, p0, Ldc;->bg:F

    float-to-double v11, v6

    mul-double/2addr v11, v4

    add-double/2addr v11, v0

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Ldc;->c(DDD)Z

    .line 125
    iget-wide v0, p0, Ldc;->aM:D

    iget v6, p0, Ldc;->bg:F

    float-to-double v6, v6

    mul-double/2addr v6, v4

    sub-double v9, v0, v6

    iget-object v0, p0, Ldc;->aW:Leq;

    iget-wide v0, v0, Leq;->b:D

    add-double v11, v0, v2

    iget-wide v0, p0, Ldc;->aO:D

    iget v6, p0, Ldc;->bg:F

    float-to-double v6, v6

    mul-double/2addr v6, v4

    sub-double v13, v0, v6

    move-object v8, p0

    invoke-virtual/range {v8 .. v14}, Ldc;->c(DDD)Z

    .line 126
    iget-wide v0, p0, Ldc;->aM:D

    iget v6, p0, Ldc;->bg:F

    float-to-double v6, v6

    mul-double/2addr v6, v4

    add-double v9, v0, v6

    iget-object v0, p0, Ldc;->aW:Leq;

    iget-wide v0, v0, Leq;->b:D

    add-double v11, v0, v2

    iget-wide v0, p0, Ldc;->aO:D

    iget v6, p0, Ldc;->bg:F

    float-to-double v6, v6

    mul-double/2addr v6, v4

    sub-double v13, v0, v6

    invoke-virtual/range {v8 .. v14}, Ldc;->c(DDD)Z

    .line 127
    iget-wide v0, p0, Ldc;->aM:D

    iget v6, p0, Ldc;->bg:F

    float-to-double v6, v6

    mul-double/2addr v6, v4

    add-double v9, v0, v6

    iget-object v0, p0, Ldc;->aW:Leq;

    iget-wide v0, v0, Leq;->b:D

    add-double v11, v0, v2

    iget-wide v0, p0, Ldc;->aO:D

    iget v2, p0, Ldc;->bg:F

    float-to-double v2, v2

    mul-double/2addr v2, v4

    add-double v13, v0, v2

    invoke-virtual/range {v8 .. v14}, Ldc;->c(DDD)Z

    .line 129
    invoke-super {p0}, Lgs;->o()V

    return-void
.end method

.method public o_()V
    .registers 2

    .line 133
    iget-object v0, p0, Ldc;->a:Luo;

    invoke-virtual {v0}, Luo;->a()V

    return-void
.end method

.method public p_()V
    .registers 3

    .line 208
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lnet/minecraft/client/Minecraft;->a(ZI)V

    return-void
.end method

.method public r()V
    .registers 3

    .line 151
    invoke-super {p0}, Lgs;->r()V

    .line 152
    iget-object v0, p0, Ldc;->b:Lnet/minecraft/client/Minecraft;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    return-void
.end method

.method public s()I
    .registers 2

    .line 181
    iget-object v0, p0, Ldc;->c:Lix;

    invoke-virtual {v0}, Lix;->f()I

    move-result v0

    return v0
.end method

.method public t()Z
    .registers 2

    .line 188
    iget-object v0, p0, Ldc;->a:Luo;

    iget-boolean v0, v0, Luo;->e:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Ldc;->u:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public v()V
    .registers 1

    return-void
.end method
