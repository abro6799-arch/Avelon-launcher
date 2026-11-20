###### Class defpackage.nb (nb)
.class public Lnb;
.super Lti;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lhc;

.field c:Ljava/util/Random;

.field private d:Z

.field private e:Lpf;

.field private f:Lnet/minecraft/client/Minecraft;

.field private g:Lmm;

.field private h:Z


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;Ljava/lang/String;I)V
    .registers 6

    .line 108
    invoke-direct {p0}, Lti;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lnb;->d:Z

    .line 104
    iput-boolean v0, p0, Lnb;->h:Z

    .line 105
    new-instance v0, Lhc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhc;-><init>(Lwt;)V

    iput-object v0, p0, Lnb;->b:Lhc;

    .line 322
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lnb;->c:Ljava/util/Random;

    .line 109
    iput-object p1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    .line 110
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-static {p1, p3}, LMCPortHooks;->openSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 111
    new-instance p2, Lpf;

    const-string p3, "Client"

    invoke-direct {p2, p1, p3, p0}, Lpf;-><init>(Ljava/net/Socket;Ljava/lang/String;Lti;)V

    iput-object p2, p0, Lnb;->e:Lpf;

    return-void
.end method

.method private a(I)Lsn;
    .registers 3

    .line 515
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v0, v0, Ldc;->aD:I

    if-ne p1, v0, :cond_d

    .line 516
    iget-object p1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    return-object p1

    .line 518
    :cond_d
    iget-object v0, p0, Lnb;->g:Lmm;

    invoke-virtual {v0, p1}, Lmm;->b(I)Lsn;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 119
    iget-boolean v0, p0, Lnb;->d:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lnb;->e:Lpf;

    invoke-virtual {v0}, Lpf;->b()V

    .line 120
    :cond_9
    iget-object v0, p0, Lnb;->e:Lpf;

    invoke-virtual {v0}, Lpf;->a()V

    return-void
.end method

.method public a(Lai;)V
    .registers 5

    .line 661
    iget-short v0, p1, Lai;->a:S

    sget-object v1, Lgm;->bb:Lwr;

    iget v1, v1, Lwr;->bf:I

    if-ne v0, v1, :cond_18

    .line 662
    iget-short v0, p1, Lai;->b:S

    iget-object v1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-static {v0, v1}, Lwr;->a(SLfd;)Liu;

    move-result-object v0

    iget-object p1, p1, Lai;->c:[B

    invoke-virtual {v0, p1}, Liu;->a([B)V

    goto :goto_2d

    .line 664
    :cond_18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown itemid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short p1, p1, Lai;->b:S

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2d
    return-void
.end method

.method public a(Lca;)V
    .registers 4

    .line 644
    iget p1, p1, Lca;->b:I

    if-ltz p1, :cond_1a

    .line 645
    sget-object v0, Lca;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_1a

    .line 646
    sget-object v0, Lca;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1a

    .line 647
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    sget-object v1, Lca;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ldc;->b(Ljava/lang/String;)V

    :cond_1a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2e

    .line 651
    iget-object p1, p0, Lnb;->g:Lmm;

    invoke-virtual {p1}, Lmm;->x()Lei;

    move-result-object p1

    invoke-virtual {p1, v0}, Lei;->b(Z)V

    .line 652
    iget-object p1, p0, Lnb;->g:Lmm;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lmm;->h(F)V

    goto :goto_41

    :cond_2e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_41

    .line 654
    iget-object p1, p0, Lnb;->g:Lmm;

    invoke-virtual {p1}, Lmm;->x()Lei;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lei;->b(Z)V

    .line 655
    iget-object p1, p0, Lnb;->g:Lmm;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmm;->h(F)V

    :cond_41
    :goto_41
    return-void
.end method

.method public a(Ldi;)V
    .registers 8

    .line 386
    iget v0, p1, Ldi;->a:I

    invoke-direct {p0, v0}, Lnb;->a(I)Lsn;

    move-result-object v0

    .line 387
    iget v1, p1, Ldi;->b:I

    invoke-direct {p0, v1}, Lnb;->a(I)Lsn;

    move-result-object v1

    check-cast v1, Lls;

    if-nez v1, :cond_14

    .line 389
    iget-object v1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    :cond_14
    if-eqz v0, :cond_50

    .line 392
    iget-object v2, p0, Lnb;->g:Lmm;

    iget-object v3, p0, Lnb;->c:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget-object v4, p0, Lnb;->c:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    sub-float/2addr v3, v4

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const-string v4, "random.pop"

    const v5, 0x3e4ccccd    # 0.2f

    invoke-virtual {v2, v0, v4, v5, v3}, Lmm;->a(Lsn;Ljava/lang/String;FF)V

    .line 394
    iget-object v2, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->j:Ldn;

    new-instance v3, Lem;

    iget-object v4, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v4, v4, Lnet/minecraft/client/Minecraft;->f:Lfd;

    const/high16 v5, -0x41000000    # -0.5f

    invoke-direct {v3, v4, v0, v1, v5}, Lem;-><init>(Lfd;Lsn;Lsn;F)V

    invoke-virtual {v2, v3}, Ldn;->a(Lxw;)V

    .line 395
    iget-object v0, p0, Lnb;->g:Lmm;

    iget p1, p1, Ldi;->a:I

    invoke-virtual {v0, p1}, Lmm;->c(I)Lsn;

    :cond_50
    return-void
.end method

.method public a(Lef;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 350
    iget-object v2, v0, Lnb;->g:Lmm;

    iget v3, v1, Lef;->a:I

    iget v4, v1, Lef;->b:I

    iget v5, v1, Lef;->c:I

    iget v6, v1, Lef;->a:I

    iget v7, v1, Lef;->d:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    iget v7, v1, Lef;->b:I

    iget v8, v1, Lef;->e:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    iget v8, v1, Lef;->c:I

    iget v9, v1, Lef;->f:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-virtual/range {v2 .. v8}, Lmm;->c(IIIIII)V

    .line 351
    iget-object v9, v0, Lnb;->g:Lmm;

    iget v10, v1, Lef;->a:I

    iget v11, v1, Lef;->b:I

    iget v12, v1, Lef;->c:I

    iget v13, v1, Lef;->d:I

    iget v14, v1, Lef;->e:I

    iget v15, v1, Lef;->f:I

    iget-object v1, v1, Lef;->g:[B

    move-object/from16 v16, v1

    invoke-virtual/range {v9 .. v16}, Lmm;->a(IIIIII[B)V

    return-void
.end method

.method public a(Leu;)V
    .registers 3

    .line 522
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget p1, p1, Leu;->a:I

    invoke-virtual {v0, p1}, Ldc;->d_(I)V

    return-void
.end method

.method public a(Lfa;)V
    .registers 14

    .line 194
    iget v0, p1, Lfa;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    div-double v6, v0, v2

    .line 195
    iget v0, p1, Lfa;->c:I

    int-to-double v0, v0

    div-double v8, v0, v2

    .line 196
    iget v0, p1, Lfa;->d:I

    int-to-double v0, v0

    div-double v10, v0, v2

    .line 198
    iget v0, p1, Lfa;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    new-instance v0, Lc;

    iget-object v5, p0, Lnb;->g:Lmm;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lc;-><init>(Lfd;DDD)V

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_3c

    .line 200
    iget v1, p1, Lfa;->b:I

    iput v1, v0, Lsn;->bJ:I

    .line 201
    iget v1, p1, Lfa;->c:I

    iput v1, v0, Lsn;->bK:I

    .line 202
    iget v1, p1, Lfa;->d:I

    iput v1, v0, Lsn;->bL:I

    const/4 v1, 0x0

    .line 203
    iput v1, v0, Lsn;->aS:F

    .line 204
    iput v1, v0, Lsn;->aT:F

    .line 205
    iget p1, p1, Lfa;->a:I

    iput p1, v0, Lsn;->aD:I

    .line 206
    iget-object p1, p0, Lnb;->g:Lmm;

    invoke-virtual {p1, v0}, Lmm;->a(Lsn;)Z

    :cond_3c
    return-void
.end method

.method public a(Lfn;)V
    .registers 9

    .line 670
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget v2, p1, Lfn;->a:I

    iget v3, p1, Lfn;->c:I

    iget v4, p1, Lfn;->d:I

    iget v5, p1, Lfn;->e:I

    iget v6, p1, Lfn;->b:I

    invoke-virtual/range {v1 .. v6}, Lfd;->e(IIIII)V

    return-void
.end method

.method public a(Lgj;)V
    .registers 12

    .line 219
    iget v0, p1, Lgj;->a:I

    invoke-direct {p0, v0}, Lnb;->a(I)Lsn;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    .line 221
    :cond_9
    iget v0, p1, Lgj;->b:I

    int-to-double v2, v0

    const-wide v4, 0x40bf400000000000L    # 8000.0

    div-double/2addr v2, v4

    iget v0, p1, Lgj;->c:I

    int-to-double v6, v0

    div-double/2addr v6, v4

    iget p1, p1, Lgj;->d:I

    int-to-double v8, p1

    div-double/2addr v8, v4

    move-wide v4, v6

    move-wide v6, v8

    invoke-virtual/range {v1 .. v7}, Lsn;->a(DDD)V

    return-void
.end method

.method public a(Lhg;)V
    .registers 5

    .line 481
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-wide v1, p1, Lhg;->a:J

    invoke-virtual {v0, v1, v2}, Lfd;->a(J)V

    return-void
.end method

.method public a(Lhq;)V
    .registers 4

    .line 565
    iget v0, p1, Lhq;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 566
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->c:Lix;

    iget-object p1, p1, Lhq;->c:Liz;

    invoke-virtual {v0, p1}, Lix;->b(Liz;)V

    goto :goto_6b

    .line 568
    :cond_11
    iget v0, p1, Lhq;->a:I

    if-nez v0, :cond_52

    iget v0, p1, Lhq;->b:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_52

    iget v0, p1, Lhq;->b:I

    const/16 v1, 0x2d

    if-ge v0, v1, :cond_52

    .line 569
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->d:Ldw;

    iget v1, p1, Lhq;->b:I

    invoke-virtual {v0, v1}, Ldw;->b(I)Lgp;

    move-result-object v0

    invoke-virtual {v0}, Lgp;->a()Liz;

    move-result-object v0

    .line 570
    iget-object v1, p1, Lhq;->c:Liz;

    if-eqz v1, :cond_44

    if-eqz v0, :cond_3f

    .line 571
    iget v0, v0, Liz;->a:I

    iget-object v1, p1, Lhq;->c:Liz;

    iget v1, v1, Liz;->a:I

    if-ge v0, v1, :cond_44

    .line 572
    :cond_3f
    iget-object v0, p1, Lhq;->c:Liz;

    const/4 v1, 0x5

    iput v1, v0, Liz;->b:I

    .line 575
    :cond_44
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->d:Ldw;

    iget v1, p1, Lhq;->b:I

    iget-object p1, p1, Lhq;->c:Liz;

    invoke-virtual {v0, v1, p1}, Ldw;->a(ILiz;)V

    goto :goto_6b

    .line 576
    :cond_52
    iget v0, p1, Lhq;->a:I

    iget-object v1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v1, v1, Ldc;->e:Ldw;

    iget v1, v1, Ldw;->f:I

    if-ne v0, v1, :cond_6b

    .line 577
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->e:Ldw;

    iget v1, p1, Lhq;->b:I

    iget-object p1, p1, Lhq;->c:Liz;

    invoke-virtual {v0, v1, p1}, Ldw;->a(ILiz;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public a(Lig;)V
    .registers 14

    .line 287
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    .line 289
    iget-wide v1, v0, Lgs;->aM:D

    .line 290
    iget-wide v3, v0, Lgs;->aN:D

    .line 291
    iget-wide v5, v0, Lgs;->aO:D

    .line 292
    iget v7, v0, Lgs;->aS:F

    .line 293
    iget v8, v0, Lgs;->aT:F

    .line 295
    iget-boolean v9, p1, Lig;->h:Z

    if-eqz v9, :cond_18

    .line 296
    iget-wide v1, p1, Lig;->a:D

    .line 297
    iget-wide v3, p1, Lig;->b:D

    .line 298
    iget-wide v5, p1, Lig;->c:D

    :cond_18
    move-wide v9, v5

    move-wide v4, v3

    move-wide v2, v1

    .line 300
    iget-boolean v1, p1, Lig;->i:Z

    if-eqz v1, :cond_26

    .line 301
    iget v1, p1, Lig;->e:F

    .line 302
    iget v6, p1, Lig;->f:F

    move v8, v1

    move v11, v6

    goto :goto_28

    :cond_26
    move v11, v8

    move v8, v7

    :goto_28
    const/4 v1, 0x0

    .line 305
    iput v1, v0, Lgs;->bo:F

    const-wide/16 v6, 0x0

    .line 306
    iput-wide v6, v0, Lgs;->aR:D

    iput-wide v6, v0, Lgs;->aQ:D

    iput-wide v6, v0, Lgs;->aP:D

    move-object v1, v0

    move-wide v6, v9

    move v9, v11

    .line 307
    invoke-virtual/range {v1 .. v9}, Lgs;->b(DDDFF)V

    .line 308
    iget-wide v1, v0, Lgs;->aM:D

    iput-wide v1, p1, Lig;->a:D

    .line 309
    iget-object v1, v0, Lgs;->aW:Leq;

    iget-wide v1, v1, Leq;->b:D

    iput-wide v1, p1, Lig;->b:D

    .line 310
    iget-wide v1, v0, Lgs;->aO:D

    iput-wide v1, p1, Lig;->c:D

    .line 311
    iget-wide v0, v0, Lgs;->aN:D

    iput-wide v0, p1, Lig;->d:D

    .line 312
    iget-object v0, p0, Lnb;->e:Lpf;

    invoke-virtual {v0, p1}, Lpf;->a(Lki;)V

    .line 313
    iget-boolean p1, p0, Lnb;->h:Z

    if-nez p1, :cond_81

    .line 314
    iget-object p1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v0, v0, Ldc;->aM:D

    iput-wide v0, p1, Ldc;->aJ:D

    .line 315
    iget-object p1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v0, v0, Ldc;->aN:D

    iput-wide v0, p1, Ldc;->aK:D

    .line 316
    iget-object p1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v0, v0, Ldc;->aO:D

    iput-wide v0, p1, Ldc;->aL:D

    const/4 p1, 0x1

    .line 317
    iput-boolean p1, p0, Lnb;->h:Z

    .line 318
    iget-object p1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    :cond_81
    return-void
.end method

.method public a(Liw;)V
    .registers 8

    .line 545
    iget v0, p1, Liw;->b:I

    if-nez v0, :cond_1f

    .line 546
    new-instance v0, Lqo;

    iget-object v1, p1, Liw;->c:Ljava/lang/String;

    iget v2, p1, Liw;->d:I

    invoke-direct {v0, v1, v2}, Lqo;-><init>(Ljava/lang/String;I)V

    .line 547
    iget-object v1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1, v0}, Ldc;->a(Llw;)V

    .line 548
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->e:Ldw;

    iget p1, p1, Liw;->a:I

    iput p1, v0, Ldw;->f:I

    goto :goto_83

    .line 549
    :cond_1f
    iget v0, p1, Liw;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3b

    .line 550
    new-instance v0, Lsk;

    invoke-direct {v0}, Lsk;-><init>()V

    .line 551
    iget-object v1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1, v0}, Ldc;->a(Lsk;)V

    .line 552
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->e:Ldw;

    iget p1, p1, Liw;->a:I

    iput p1, v0, Ldw;->f:I

    goto :goto_83

    .line 553
    :cond_3b
    iget v0, p1, Liw;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_57

    .line 554
    new-instance v0, Laz;

    invoke-direct {v0}, Laz;-><init>()V

    .line 555
    iget-object v1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {v1, v0}, Ldc;->a(Laz;)V

    .line 556
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->e:Ldw;

    iget p1, p1, Liw;->a:I

    iput p1, v0, Ldw;->f:I

    goto :goto_83

    .line 557
    :cond_57
    iget v0, p1, Liw;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_83

    .line 558
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    .line 559
    iget-object v1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-wide v2, v0, Lgs;->aM:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    iget-wide v3, v0, Lgs;->aN:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    iget-wide v4, v0, Lgs;->aO:D

    invoke-static {v4, v5}, Lin;->b(D)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Ldc;->a(III)V

    .line 560
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->e:Ldw;

    iget p1, p1, Liw;->a:I

    iput p1, v0, Ldw;->f:I

    :cond_83
    :goto_83
    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 367
    iget-boolean v0, p0, Lnb;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lnb;->d:Z

    .line 369
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lfd;)V

    .line 370
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lex;

    const-string v2, "disconnect.lost"

    invoke-direct {v1, v2, p1, p2}, Lex;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    return-void
.end method

.method public a(Ljf;)V
    .registers 3

    .line 510
    iget v0, p1, Ljf;->a:I

    invoke-direct {p0, v0}, Lnb;->a(I)Lsn;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 511
    iget-byte p1, p1, Ljf;->b:B

    invoke-virtual {v0, p1}, Lsn;->a(B)V

    :cond_d
    return-void
.end method

.method public a(Ljm;)V
    .registers 15

    .line 459
    iget v0, p1, Ljm;->c:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    div-double v5, v0, v2

    .line 460
    iget v0, p1, Ljm;->d:I

    int-to-double v0, v0

    div-double v7, v0, v2

    .line 461
    iget v0, p1, Ljm;->e:I

    int-to-double v0, v0

    div-double v9, v0, v2

    .line 462
    iget-byte v0, p1, Ljm;->f:B

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    const/high16 v1, 0x43800000    # 256.0f

    div-float v11, v0, v1

    .line 463
    iget-byte v0, p1, Ljm;->g:B

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    div-float v12, v0, v1

    .line 464
    iget-byte v0, p1, Ljm;->b:B

    iget-object v1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-static {v0, v1}, Ljc;->a(ILfd;)Lsn;

    move-result-object v0

    check-cast v0, Lls;

    .line 465
    iget v1, p1, Ljm;->c:I

    iput v1, v0, Lls;->bJ:I

    .line 466
    iget v1, p1, Ljm;->d:I

    iput v1, v0, Lls;->bK:I

    .line 467
    iget v1, p1, Ljm;->e:I

    iput v1, v0, Lls;->bL:I

    .line 468
    iget v1, p1, Ljm;->a:I

    iput v1, v0, Lls;->aD:I

    move-object v4, v0

    .line 470
    invoke-virtual/range {v4 .. v12}, Lls;->b(DDDFF)V

    const/4 v1, 0x1

    .line 471
    iput-boolean v1, v0, Lls;->V:Z

    .line 472
    iget-object v1, p0, Lnb;->g:Lmm;

    iget v2, p1, Ljm;->a:I

    invoke-virtual {v1, v2, v0}, Lmm;->a(ILsn;)V

    .line 474
    invoke-virtual {p1}, Ljm;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 476
    invoke-virtual {v0}, Lls;->ad()Lud;

    move-result-object v0

    invoke-virtual {v0, p1}, Lud;->a(Ljava/util/List;)V

    :cond_58
    return-void
.end method

.method public a(Ljz;)V
    .registers 5

    .line 422
    iget v0, p1, Ljz;->a:I

    invoke-direct {p0, v0}, Lnb;->a(I)Lsn;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 424
    :cond_9
    iget v1, p1, Ljz;->e:I

    if-nez v1, :cond_18

    .line 425
    check-cast v0, Lgs;

    .line 426
    iget v1, p1, Ljz;->b:I

    iget v2, p1, Ljz;->c:I

    iget p1, p1, Ljz;->d:I

    invoke-virtual {v0, v1, v2, p1}, Lgs;->b(III)Lcw;

    :cond_18
    return-void
.end method

.method public a(Lkb;)V
    .registers 4

    .line 600
    iget v0, p1, Lkb;->a:I

    if-nez v0, :cond_10

    .line 601
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->d:Ldw;

    iget-object p1, p1, Lkb;->b:[Liz;

    invoke-virtual {v0, p1}, Ldw;->a([Liz;)V

    goto :goto_27

    .line 602
    :cond_10
    iget v0, p1, Lkb;->a:I

    iget-object v1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v1, v1, Ldc;->e:Ldw;

    iget v1, v1, Ldw;->f:I

    if-ne v0, v1, :cond_27

    .line 603
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->e:Ldw;

    iget-object p1, p1, Lkb;->b:[Liz;

    invoke-virtual {v0, p1}, Ldw;->a([Liz;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public a(Lki;)V
    .registers 3

    .line 375
    iget-boolean v0, p0, Lnb;->d:Z

    if-eqz v0, :cond_5

    return-void

    .line 376
    :cond_5
    iget-object v0, p0, Lnb;->e:Lpf;

    invoke-virtual {v0, p1}, Lpf;->a(Lki;)V

    .line 377
    iget-object p1, p0, Lnb;->e:Lpf;

    invoke-virtual {p1}, Lpf;->c()V

    return-void
.end method

.method public a(Lmf;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 233
    iget v2, v1, Lmf;->c:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    div-double v7, v2, v4

    .line 234
    iget v2, v1, Lmf;->d:I

    int-to-double v2, v2

    div-double v9, v2, v4

    .line 235
    iget v2, v1, Lmf;->e:I

    int-to-double v2, v2

    div-double v11, v2, v4

    .line 236
    iget-byte v2, v1, Lmf;->f:B

    mul-int/lit16 v2, v2, 0x168

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float v13, v2, v3

    .line 237
    iget-byte v2, v1, Lmf;->g:B

    mul-int/lit16 v2, v2, 0x168

    int-to-float v2, v2

    div-float v14, v2, v3

    .line 238
    new-instance v2, Lxz;

    iget-object v3, v0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v3, v3, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget-object v4, v1, Lmf;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lxz;-><init>(Lfd;Ljava/lang/String;)V

    .line 239
    iget v3, v1, Lmf;->c:I

    iput v3, v2, Lxz;->bJ:I

    int-to-double v3, v3

    iput-wide v3, v2, Lxz;->bl:D

    iput-wide v3, v2, Lxz;->aJ:D

    .line 240
    iget v3, v1, Lmf;->d:I

    iput v3, v2, Lxz;->bK:I

    int-to-double v3, v3

    iput-wide v3, v2, Lxz;->bm:D

    iput-wide v3, v2, Lxz;->aK:D

    .line 241
    iget v3, v1, Lmf;->e:I

    iput v3, v2, Lxz;->bL:I

    int-to-double v3, v3

    iput-wide v3, v2, Lxz;->bn:D

    iput-wide v3, v2, Lxz;->aL:D

    .line 243
    iget v3, v1, Lmf;->h:I

    if-nez v3, :cond_5b

    .line 245
    iget-object v3, v2, Lxz;->c:Lix;

    iget-object v3, v3, Lix;->a:[Liz;

    iget-object v4, v2, Lxz;->c:Lix;

    iget v4, v4, Lix;->c:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_6c

    .line 247
    :cond_5b
    iget-object v4, v2, Lxz;->c:Lix;

    iget-object v4, v4, Lix;->a:[Liz;

    iget-object v5, v2, Lxz;->c:Lix;

    iget v5, v5, Lix;->c:I

    new-instance v6, Liz;

    const/4 v15, 0x1

    const/4 v1, 0x0

    invoke-direct {v6, v3, v15, v1}, Liz;-><init>(III)V

    aput-object v6, v4, v5

    :goto_6c
    move-object v6, v2

    .line 249
    invoke-virtual/range {v6 .. v14}, Lxz;->b(DDDFF)V

    .line 250
    iget-object v1, v0, Lnb;->g:Lmm;

    move-object/from16 v3, p1

    iget v3, v3, Lmf;->a:I

    invoke-virtual {v1, v3, v2}, Lmm;->a(ILsn;)V

    return-void
.end method

.method public a(Lmn;)V
    .registers 2

    .line 635
    iget-object p1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    invoke-virtual {p1}, Ldc;->r()V

    return-void
.end method

.method public a(Lmp;)V
    .registers 6

    const-string v0, "http://www.minecraft.net/game/joinserver.jsp?user="

    .line 431
    iget-object v1, p1, Lmp;->a:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xe

    if-eqz v1, :cond_1e

    .line 432
    new-instance p1, Lnz;

    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->k:Lgr;

    iget-object v0, v0, Lgr;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v2}, Lnz;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lnb;->b(Lki;)V

    goto/16 :goto_a6

    .line 435
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->k:Lgr;

    iget-object v0, v0, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&sessionId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->k:Lgr;

    iget-object v0, v0, Lgr;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&serverId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmp;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 436
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 437
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    const-string p1, "ok"

    .line 440
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 441
    new-instance p1, Lnz;

    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->k:Lgr;

    iget-object v0, v0, Lgr;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v2}, Lnz;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lnb;->b(Lki;)V

    goto :goto_a6

    .line 443
    :cond_79
    iget-object p1, p0, Lnb;->e:Lpf;

    const-string v1, "disconnect.loginFailedInfo"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_84} :catch_85

    goto :goto_a6

    :catch_85
    move-exception p1

    .line 446
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    iget-object v0, p0, Lnb;->e:Lpf;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal client error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "disconnect.genericReason"

    invoke-virtual {v0, v1, p1}, Lpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a6
    return-void
.end method

.method public a(Lmv;)V
    .registers 4

    .line 621
    invoke-virtual {p0, p1}, Lnb;->c(Lki;)V

    .line 622
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->e:Ldw;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->e:Ldw;

    iget v0, v0, Ldw;->f:I

    iget v1, p1, Lmv;->a:I

    if-ne v0, v1, :cond_24

    .line 623
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->e:Ldw;

    iget v1, p1, Lmv;->b:I

    iget p1, p1, Lmv;->c:I

    invoke-virtual {v0, v1, p1}, Ldw;->a(II)V

    :cond_24
    return-void
.end method

.method public a(Lnd;)V
    .registers 15

    .line 136
    iget v0, p1, Lnd;->b:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    div-double v6, v0, v2

    .line 137
    iget v0, p1, Lnd;->c:I

    int-to-double v0, v0

    div-double v8, v0, v2

    .line 138
    iget v0, p1, Lnd;->d:I

    int-to-double v0, v0

    div-double v10, v0, v2

    .line 139
    new-instance v0, Lhl;

    iget-object v5, p0, Lnb;->g:Lmm;

    new-instance v12, Liz;

    iget v1, p1, Lnd;->h:I

    iget v2, p1, Lnd;->i:I

    iget v3, p1, Lnd;->l:I

    invoke-direct {v12, v1, v2, v3}, Liz;-><init>(III)V

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lhl;-><init>(Lfd;DDDLiz;)V

    .line 140
    iget-byte v1, p1, Lnd;->e:B

    int-to-double v1, v1

    const-wide/high16 v3, 0x4060000000000000L    # 128.0

    div-double/2addr v1, v3

    iput-wide v1, v0, Lhl;->aP:D

    .line 141
    iget-byte v1, p1, Lnd;->f:B

    int-to-double v1, v1

    div-double/2addr v1, v3

    iput-wide v1, v0, Lhl;->aQ:D

    .line 142
    iget-byte v1, p1, Lnd;->g:B

    int-to-double v1, v1

    div-double/2addr v1, v3

    iput-wide v1, v0, Lhl;->aR:D

    .line 143
    iget v1, p1, Lnd;->b:I

    iput v1, v0, Lhl;->bJ:I

    .line 144
    iget v1, p1, Lnd;->c:I

    iput v1, v0, Lhl;->bK:I

    .line 145
    iget v1, p1, Lnd;->d:I

    iput v1, v0, Lhl;->bL:I

    .line 147
    iget-object v1, p0, Lnb;->g:Lmm;

    iget p1, p1, Lnd;->a:I

    invoke-virtual {v1, p1, v0}, Lmm;->a(ILsn;)V

    return-void
.end method

.method public a(Lnm;)V
    .registers 5

    .line 404
    iget v0, p1, Lnm;->a:I

    invoke-direct {p0, v0}, Lnb;->a(I)Lsn;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 406
    :cond_9
    iget v1, p1, Lnm;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 407
    check-cast v0, Lgs;

    .line 408
    invoke-virtual {v0}, Lgs;->J()V

    goto :goto_33

    .line 409
    :cond_14
    iget v1, p1, Lnm;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 410
    invoke-virtual {v0}, Lsn;->h()V

    goto :goto_33

    .line 411
    :cond_1d
    iget v1, p1, Lnm;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_29

    .line 412
    check-cast v0, Lgs;

    const/4 p1, 0x0

    .line 413
    invoke-virtual {v0, p1, p1, p1}, Lgs;->a(ZZZ)V

    goto :goto_33

    .line 414
    :cond_29
    iget p1, p1, Lnm;->b:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_33

    .line 415
    check-cast v0, Lgs;

    .line 416
    invoke-virtual {v0}, Lgs;->v()V

    :cond_33
    :goto_33
    return-void
.end method

.method public a(Lns;)V
    .registers 5

    .line 500
    iget v0, p1, Lns;->a:I

    invoke-direct {p0, v0}, Lnb;->a(I)Lsn;

    move-result-object v0

    .line 501
    iget v1, p1, Lns;->b:I

    invoke-direct {p0, v1}, Lnb;->a(I)Lsn;

    move-result-object v1

    .line 503
    iget p1, p1, Lns;->a:I

    iget-object v2, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v2, v2, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v2, v2, Ldc;->aD:I

    if-ne p1, v2, :cond_1a

    iget-object p1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, p1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    :cond_1a
    if-nez v0, :cond_1d

    return-void

    .line 506
    :cond_1d
    invoke-virtual {v0, v1}, Lsn;->i(Lsn;)V

    return-void
.end method

.method public a(Lnz;)V
    .registers 7

    .line 124
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lxk;

    invoke-direct {v1, v0, p0}, Lxk;-><init>(Lnet/minecraft/client/Minecraft;Lnb;)V

    iput-object v1, v0, Lnet/minecraft/client/Minecraft;->c:Lob;

    .line 125
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->I:Lxi;

    sget-object v1, Ljl;->i:Lvr;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lxi;->a(Lvr;I)V

    .line 127
    new-instance v0, Lmm;

    iget-wide v3, p1, Lnz;->c:J

    iget-byte v1, p1, Lnz;->d:B

    invoke-direct {v0, p0, v3, v4, v1}, Lmm;-><init>(Lnb;JI)V

    iput-object v0, p0, Lnb;->g:Lmm;

    .line 128
    iput-boolean v2, v0, Lmm;->B:Z

    .line 129
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, p0, Lnb;->g:Lmm;

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lfd;)V

    .line 130
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-byte v1, p1, Lnz;->d:B

    iput v1, v0, Ldc;->m:I

    .line 131
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lgg;

    invoke-direct {v1, p0}, Lgg;-><init>(Lnb;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 132
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget p1, p1, Lnz;->a:I

    iput p1, v0, Ldc;->aD:I

    return-void
.end method

.method public a(Lof;)V
    .registers 4

    .line 675
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    check-cast v0, Ltk;

    iget v1, p1, Lof;->a:I

    invoke-static {v1}, Ljl;->a(I)Lvr;

    move-result-object v1

    iget p1, p1, Lof;->b:I

    invoke-virtual {v0, v1, p1}, Ltk;->b(Lvr;I)V

    return-void
.end method

.method public a(Loj;)V
    .registers 5

    .line 584
    iget v0, p1, Loj;->a:I

    if-nez v0, :cond_b

    .line 585
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->d:Ldw;

    goto :goto_1f

    .line 586
    :cond_b
    iget v0, p1, Loj;->a:I

    iget-object v1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v1, v1, Ldc;->e:Ldw;

    iget v1, v1, Ldw;->f:I

    if-ne v0, v1, :cond_1e

    .line 587
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-object v0, v0, Ldc;->e:Ldw;

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_3d

    .line 590
    iget-boolean v1, p1, Loj;->c:Z

    if-eqz v1, :cond_2b

    .line 591
    iget-short p1, p1, Loj;->b:S

    invoke-virtual {v0, p1}, Ldw;->a(S)V

    goto :goto_3d

    .line 593
    :cond_2b
    iget-short v1, p1, Loj;->b:S

    invoke-virtual {v0, v1}, Ldw;->b(S)V

    .line 594
    new-instance v0, Loj;

    iget v1, p1, Loj;->a:I

    iget-short p1, p1, Loj;->b:S

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Loj;-><init>(ISZ)V

    invoke-virtual {p0, v0}, Lnb;->b(Lki;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public a(Lox;)V
    .registers 7

    .line 526
    iget-byte v0, p1, Lox;->a:B

    iget-object v1, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v1, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget v1, v1, Ldc;->m:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v0, 0x0

    .line 527
    iput-boolean v0, p0, Lnb;->h:Z

    .line 528
    new-instance v0, Lmm;

    iget-object v1, p0, Lnb;->g:Lmm;

    invoke-virtual {v1}, Lmm;->x()Lei;

    move-result-object v1

    invoke-virtual {v1}, Lei;->b()J

    move-result-wide v3

    iget-byte v1, p1, Lox;->a:B

    invoke-direct {v0, p0, v3, v4, v1}, Lmm;-><init>(Lnb;JI)V

    iput-object v0, p0, Lnb;->g:Lmm;

    .line 529
    iput-boolean v2, v0, Lmm;->B:Z

    .line 530
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, p0, Lnb;->g:Lmm;

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lfd;)V

    .line 531
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    iget-byte v1, p1, Lox;->a:B

    iput v1, v0, Ldc;->m:I

    .line 532
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lgg;

    invoke-direct {v1, p0}, Lgg;-><init>(Lnb;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    .line 535
    :cond_3c
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-byte p1, p1, Lox;->a:B

    invoke-virtual {v0, v2, p1}, Lnet/minecraft/client/Minecraft;->a(ZI)V

    return-void
.end method

.method public a(Lpe;)V
    .registers 3

    .line 400
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->v:Luq;

    iget-object p1, p1, Lpe;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Luq;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lrc;)V
    .registers 7

    .line 495
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->h:Ldc;

    new-instance v1, Lbr;

    iget v2, p1, Lrc;->a:I

    iget v3, p1, Lrc;->b:I

    iget v4, p1, Lrc;->c:I

    invoke-direct {v1, v2, v3, v4}, Lbr;-><init>(III)V

    invoke-virtual {v0, v1}, Ldc;->a(Lbr;)V

    .line 496
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    invoke-virtual {v0}, Lfd;->x()Lei;

    move-result-object v0

    iget v1, p1, Lrc;->a:I

    iget v2, p1, Lrc;->b:I

    iget p1, p1, Lrc;->c:I

    invoke-virtual {v0, v1, v2, p1}, Lei;->a(III)V

    return-void
.end method

.method public a(Lrg;)V
    .registers 13

    .line 254
    iget v0, p1, Lrg;->a:I

    invoke-direct {p0, v0}, Lnb;->a(I)Lsn;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    .line 256
    :cond_9
    iget v0, p1, Lrg;->b:I

    iput v0, v1, Lsn;->bJ:I

    .line 257
    iget v0, p1, Lrg;->c:I

    iput v0, v1, Lsn;->bK:I

    .line 258
    iget v0, p1, Lrg;->d:I

    iput v0, v1, Lsn;->bL:I

    .line 259
    iget v0, v1, Lsn;->bJ:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    div-double/2addr v2, v4

    .line 260
    iget v0, v1, Lsn;->bK:I

    int-to-double v6, v0

    div-double/2addr v6, v4

    const-wide/high16 v8, 0x3f90000000000000L    # 0.015625

    add-double/2addr v6, v8

    .line 261
    iget v0, v1, Lsn;->bL:I

    int-to-double v8, v0

    div-double/2addr v8, v4

    .line 262
    iget-byte v0, p1, Lrg;->e:B

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    const/high16 v4, 0x43800000    # 256.0f

    div-float/2addr v0, v4

    .line 263
    iget-byte p1, p1, Lrg;->f:B

    mul-int/lit16 p1, p1, 0x168

    int-to-float p1, p1

    div-float/2addr p1, v4

    const/4 v10, 0x3

    move-wide v4, v6

    move-wide v6, v8

    move v8, v0

    move v9, p1

    .line 264
    invoke-virtual/range {v1 .. v10}, Lsn;->a(DDDFFI)V

    return-void
.end method

.method public a(Lrm;)V
    .registers 13

    .line 539
    new-instance v10, Lqx;

    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    const/4 v2, 0x0

    iget-wide v3, p1, Lrm;->a:D

    iget-wide v5, p1, Lrm;->b:D

    iget-wide v7, p1, Lrm;->c:D

    iget v9, p1, Lrm;->d:F

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lqx;-><init>(Lfd;Lsn;DDDF)V

    .line 540
    iget-object p1, p1, Lrm;->e:Ljava/util/Set;

    iput-object p1, v10, Lqx;->g:Ljava/util/Set;

    const/4 p1, 0x1

    .line 541
    invoke-virtual {v10, p1}, Lqx;->a(Z)V

    return-void
.end method

.method public a(Lrv;)V
    .registers 3

    .line 283
    iget-object v0, p0, Lnb;->g:Lmm;

    iget p1, p1, Lrv;->a:I

    invoke-virtual {v0, p1}, Lmm;->c(I)Lsn;

    return-void
.end method

.method public a(Ls;)V
    .registers 5

    .line 628
    iget v0, p1, Ls;->a:I

    invoke-direct {p0, v0}, Lnb;->a(I)Lsn;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 630
    iget v1, p1, Ls;->b:I

    iget v2, p1, Ls;->c:I

    iget p1, p1, Ls;->d:I

    invoke-virtual {v0, v1, v2, p1}, Lsn;->c(III)V

    :cond_11
    return-void
.end method

.method public a(Lse;)V
    .registers 5

    .line 325
    iget-object v0, p0, Lnb;->g:Lmm;

    iget v1, p1, Lse;->a:I

    iget v2, p1, Lse;->b:I

    iget-boolean p1, p1, Lse;->c:Z

    invoke-virtual {v0, v1, v2, p1}, Lmm;->a(IIZ)V

    return-void
.end method

.method public a(Lso;)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 151
    iget v2, v1, Lso;->b:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    div-double/2addr v2, v4

    .line 152
    iget v6, v1, Lso;->c:I

    int-to-double v6, v6

    div-double v20, v6, v4

    .line 153
    iget v6, v1, Lso;->d:I

    int-to-double v6, v6

    div-double v4, v6, v4

    .line 155
    iget v6, v1, Lso;->h:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_28

    new-instance v15, Lyl;

    iget-object v7, v0, Lnb;->g:Lmm;

    const/4 v14, 0x0

    move-object v6, v15

    move-wide v8, v2

    move-wide/from16 v10, v20

    move-wide v12, v4

    invoke-direct/range {v6 .. v14}, Lyl;-><init>(Lfd;DDDI)V

    goto :goto_29

    :cond_28
    const/4 v15, 0x0

    .line 156
    :goto_29
    iget v6, v1, Lso;->h:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_3c

    new-instance v15, Lyl;

    iget-object v7, v0, Lnb;->g:Lmm;

    const/4 v14, 0x1

    move-object v6, v15

    move-wide v8, v2

    move-wide/from16 v10, v20

    move-wide v12, v4

    invoke-direct/range {v6 .. v14}, Lyl;-><init>(Lfd;DDDI)V

    .line 157
    :cond_3c
    iget v6, v1, Lso;->h:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_4f

    new-instance v15, Lyl;

    iget-object v7, v0, Lnb;->g:Lmm;

    const/4 v14, 0x2

    move-object v6, v15

    move-wide v8, v2

    move-wide/from16 v10, v20

    move-wide v12, v4

    invoke-direct/range {v6 .. v14}, Lyl;-><init>(Lfd;DDDI)V

    .line 158
    :cond_4f
    iget v6, v1, Lso;->h:I

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_61

    new-instance v15, Llx;

    iget-object v7, v0, Lnb;->g:Lmm;

    move-object v6, v15

    move-wide v8, v2

    move-wide/from16 v10, v20

    move-wide v12, v4

    invoke-direct/range {v6 .. v13}, Llx;-><init>(Lfd;DDD)V

    .line 159
    :cond_61
    iget v6, v1, Lso;->h:I

    const/16 v14, 0x3c

    if-ne v6, v14, :cond_73

    new-instance v15, Lsl;

    iget-object v7, v0, Lnb;->g:Lmm;

    move-object v6, v15

    move-wide v8, v2

    move-wide/from16 v10, v20

    move-wide v12, v4

    invoke-direct/range {v6 .. v13}, Lsl;-><init>(Lfd;DDD)V

    .line 160
    :cond_73
    iget v6, v1, Lso;->h:I

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_85

    new-instance v15, Lby;

    iget-object v7, v0, Lnb;->g:Lmm;

    move-object v6, v15

    move-wide v8, v2

    move-wide/from16 v10, v20

    move-wide v12, v4

    invoke-direct/range {v6 .. v13}, Lby;-><init>(Lfd;DDD)V

    .line 161
    :cond_85
    iget v6, v1, Lso;->h:I

    const/16 v7, 0x3f

    const-wide v22, 0x40bf400000000000L    # 8000.0

    if-ne v6, v7, :cond_b6

    .line 162
    new-instance v24, Lcf;

    iget-object v7, v0, Lnb;->g:Lmm;

    iget v6, v1, Lso;->e:I

    int-to-double v8, v6

    div-double v15, v8, v22

    iget v6, v1, Lso;->f:I

    int-to-double v8, v6

    div-double v17, v8, v22

    iget v6, v1, Lso;->g:I

    int-to-double v8, v6

    div-double v25, v8, v22

    move-object/from16 v6, v24

    move-wide v8, v2

    move-wide/from16 v10, v20

    move-wide v12, v4

    move-wide v14, v15

    move-wide/from16 v16, v17

    move-wide/from16 v18, v25

    invoke-direct/range {v6 .. v19}, Lcf;-><init>(Lfd;DDDDDD)V

    const/4 v6, 0x0

    .line 163
    iput v6, v1, Lso;->i:I

    move-object/from16 v15, v24

    .line 165
    :cond_b6
    iget v6, v1, Lso;->h:I

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_c8

    new-instance v15, Lvv;

    iget-object v7, v0, Lnb;->g:Lmm;

    move-object v6, v15

    move-wide v8, v2

    move-wide/from16 v10, v20

    move-wide v12, v4

    invoke-direct/range {v6 .. v13}, Lvv;-><init>(Lfd;DDD)V

    .line 166
    :cond_c8
    iget v6, v1, Lso;->h:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d9

    new-instance v15, Lfz;

    iget-object v7, v0, Lnb;->g:Lmm;

    move-object v6, v15

    move-wide v8, v2

    move-wide/from16 v10, v20

    move-wide v12, v4

    invoke-direct/range {v6 .. v13}, Lfz;-><init>(Lfd;DDD)V

    .line 167
    :cond_d9
    iget v6, v1, Lso;->h:I

    const/16 v7, 0x32

    if-ne v6, v7, :cond_eb

    new-instance v15, Lqw;

    iget-object v7, v0, Lnb;->g:Lmm;

    move-object v6, v15

    move-wide v8, v2

    move-wide/from16 v10, v20

    move-wide v12, v4

    invoke-direct/range {v6 .. v13}, Lqw;-><init>(Lfd;DDD)V

    .line 168
    :cond_eb
    iget v6, v1, Lso;->h:I

    const/16 v7, 0x46

    if-ne v6, v7, :cond_101

    new-instance v15, Lju;

    iget-object v7, v0, Lnb;->g:Lmm;

    sget-object v6, Luu;->F:Luu;

    iget v14, v6, Luu;->bn:I

    move-object v6, v15

    move-wide v8, v2

    move-wide/from16 v10, v20

    move-wide v12, v4

    invoke-direct/range {v6 .. v14}, Lju;-><init>(Lfd;DDDI)V

    .line 169
    :cond_101
    iget v6, v1, Lso;->h:I

    const/16 v7, 0x47

    if-ne v6, v7, :cond_117

    new-instance v15, Lju;

    iget-object v7, v0, Lnb;->g:Lmm;

    sget-object v6, Luu;->G:Luu;

    iget v14, v6, Luu;->bn:I

    move-object v6, v15

    move-wide v8, v2

    move-wide/from16 v10, v20

    move-wide v12, v4

    invoke-direct/range {v6 .. v14}, Lju;-><init>(Lfd;DDDI)V

    :cond_117
    if-eqz v15, :cond_164

    .line 171
    iget v2, v1, Lso;->b:I

    iput v2, v15, Lsn;->bJ:I

    .line 172
    iget v2, v1, Lso;->c:I

    iput v2, v15, Lsn;->bK:I

    .line 173
    iget v2, v1, Lso;->d:I

    iput v2, v15, Lsn;->bL:I

    const/4 v2, 0x0

    .line 174
    iput v2, v15, Lsn;->aS:F

    .line 175
    iput v2, v15, Lsn;->aT:F

    .line 176
    iget v2, v1, Lso;->a:I

    iput v2, v15, Lsn;->aD:I

    .line 177
    iget-object v2, v0, Lnb;->g:Lmm;

    iget v3, v1, Lso;->a:I

    invoke-virtual {v2, v3, v15}, Lmm;->a(ILsn;)V

    .line 178
    iget v2, v1, Lso;->i:I

    if-lez v2, :cond_164

    .line 180
    iget v2, v1, Lso;->h:I

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_150

    .line 181
    iget v2, v1, Lso;->i:I

    invoke-direct {v0, v2}, Lnb;->a(I)Lsn;

    move-result-object v2

    .line 182
    instance-of v3, v2, Lls;

    if-eqz v3, :cond_150

    .line 183
    move-object v3, v15

    check-cast v3, Lsl;

    check-cast v2, Lls;

    iput-object v2, v3, Lsl;->c:Lls;

    .line 187
    :cond_150
    iget v2, v1, Lso;->e:I

    int-to-double v2, v2

    div-double v28, v2, v22

    iget v2, v1, Lso;->f:I

    int-to-double v2, v2

    div-double v30, v2, v22

    iget v1, v1, Lso;->g:I

    int-to-double v1, v1

    div-double v32, v1, v22

    move-object/from16 v27, v15

    invoke-virtual/range {v27 .. v33}, Lsn;->a(DDD)V

    :cond_164
    return-void
.end method

.method public a(Ltv;)V
    .registers 8

    .line 355
    iget-object v0, p0, Lnb;->g:Lmm;

    iget v1, p1, Ltv;->a:I

    iget v2, p1, Ltv;->b:I

    iget v3, p1, Ltv;->c:I

    iget v4, p1, Ltv;->d:I

    iget v5, p1, Ltv;->e:I

    invoke-virtual/range {v0 .. v5}, Lmm;->f(IIIII)Z

    return-void
.end method

.method public a(Luh;)V
    .registers 13

    .line 269
    iget v0, p1, Luh;->a:I

    invoke-direct {p0, v0}, Lnb;->a(I)Lsn;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    .line 271
    :cond_9
    iget v0, v1, Lsn;->bJ:I

    iget-byte v2, p1, Luh;->b:B

    add-int/2addr v0, v2

    iput v0, v1, Lsn;->bJ:I

    .line 272
    iget v0, v1, Lsn;->bK:I

    iget-byte v2, p1, Luh;->c:B

    add-int/2addr v0, v2

    iput v0, v1, Lsn;->bK:I

    .line 273
    iget v0, v1, Lsn;->bL:I

    iget-byte v2, p1, Luh;->d:B

    add-int/2addr v0, v2

    iput v0, v1, Lsn;->bL:I

    .line 274
    iget v0, v1, Lsn;->bJ:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    div-double/2addr v2, v4

    .line 275
    iget v0, v1, Lsn;->bK:I

    int-to-double v6, v0

    div-double/2addr v6, v4

    .line 276
    iget v0, v1, Lsn;->bL:I

    int-to-double v8, v0

    div-double/2addr v8, v4

    .line 277
    iget-boolean v0, p1, Luh;->g:Z

    const/high16 v4, 0x43800000    # 256.0f

    if-eqz v0, :cond_39

    iget-byte v0, p1, Luh;->e:B

    mul-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    div-float/2addr v0, v4

    goto :goto_3b

    :cond_39
    iget v0, v1, Lsn;->aS:F

    .line 278
    :goto_3b
    iget-boolean v5, p1, Luh;->g:Z

    if-eqz v5, :cond_46

    iget-byte p1, p1, Luh;->f:B

    mul-int/lit16 p1, p1, 0x168

    int-to-float p1, p1

    div-float/2addr p1, v4

    goto :goto_48

    :cond_46
    iget p1, v1, Lsn;->aT:F

    :goto_48
    const/4 v10, 0x3

    move-wide v4, v6

    move-wide v6, v8

    move v8, v0

    move v9, p1

    .line 279
    invoke-virtual/range {v1 .. v10}, Lsn;->a(DDDFFI)V

    return-void
.end method

.method public a(Lui;)V
    .registers 6

    .line 608
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget v1, p1, Lui;->a:I

    iget v2, p1, Lui;->b:I

    iget v3, p1, Lui;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lfd;->i(III)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 609
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v0, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget v1, p1, Lui;->a:I

    iget v2, p1, Lui;->b:I

    iget v3, p1, Lui;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lfd;->b(III)Low;

    move-result-object v0

    .line 610
    instance-of v1, v0, Lyk;

    if-eqz v1, :cond_36

    .line 611
    check-cast v0, Lyk;

    const/4 v1, 0x0

    :goto_25
    const/4 v2, 0x4

    if-ge v1, v2, :cond_33

    .line 613
    iget-object v2, v0, Lyk;->a:[Ljava/lang/String;

    iget-object v3, p1, Lui;->d:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 615
    :cond_33
    invoke-virtual {v0}, Lyk;->y_()V

    :cond_36
    return-void
.end method

.method public a(Lux;)V
    .registers 4

    .line 226
    iget v0, p1, Lux;->a:I

    invoke-direct {p0, v0}, Lnb;->a(I)Lsn;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 227
    invoke-virtual {p1}, Lux;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 228
    invoke-virtual {v0}, Lsn;->ad()Lud;

    move-result-object v0

    invoke-virtual {p1}, Lux;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lud;->a(Ljava/util/List;)V

    :cond_19
    return-void
.end method

.method public a(Lvt;)V
    .registers 10

    .line 214
    new-instance v7, Lqv;

    iget-object v1, p0, Lnb;->g:Lmm;

    iget v2, p1, Lvt;->b:I

    iget v3, p1, Lvt;->c:I

    iget v4, p1, Lvt;->d:I

    iget v5, p1, Lvt;->e:I

    iget-object v6, p1, Lvt;->f:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lqv;-><init>(Lfd;IIIILjava/lang/String;)V

    .line 215
    iget-object v0, p0, Lnb;->g:Lmm;

    iget p1, p1, Lvt;->a:I

    invoke-virtual {v0, p1, v7}, Lmm;->a(ILsn;)V

    return-void
.end method

.method public a(Lvw;)V
    .registers 9

    .line 639
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    iget-object v1, v0, Lnet/minecraft/client/Minecraft;->f:Lfd;

    iget v2, p1, Lvw;->a:I

    iget v3, p1, Lvw;->b:I

    iget v4, p1, Lvw;->c:I

    iget v5, p1, Lvw;->d:I

    iget v6, p1, Lvw;->e:I

    invoke-virtual/range {v1 .. v6}, Lfd;->d(IIIII)V

    return-void
.end method

.method public a(Lwu;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 329
    iget-object v2, v0, Lnb;->g:Lmm;

    iget v3, v1, Lwu;->a:I

    iget v4, v1, Lwu;->b:I

    invoke-virtual {v2, v3, v4}, Lmm;->c(II)Llm;

    move-result-object v2

    .line 330
    iget v3, v1, Lwu;->a:I

    mul-int/lit8 v3, v3, 0x10

    .line 331
    iget v4, v1, Lwu;->b:I

    mul-int/lit8 v4, v4, 0x10

    const/4 v5, 0x0

    move v11, v5

    .line 332
    :goto_18
    iget v5, v1, Lwu;->f:I

    if-ge v11, v5, :cond_57

    .line 333
    iget-object v5, v1, Lwu;->c:[S

    aget-short v5, v5, v11

    .line 334
    iget-object v6, v1, Lwu;->d:[B

    aget-byte v6, v6, v11

    and-int/lit16 v9, v6, 0xff

    .line 335
    iget-object v6, v1, Lwu;->e:[B

    aget-byte v10, v6, v11

    shr-int/lit8 v6, v5, 0xc

    and-int/lit8 v12, v6, 0xf

    shr-int/lit8 v6, v5, 0x8

    and-int/lit8 v13, v6, 0xf

    and-int/lit16 v15, v5, 0xff

    move-object v5, v2

    move v6, v12

    move v7, v15

    move v8, v13

    .line 343
    invoke-virtual/range {v5 .. v10}, Llm;->a(IIIII)Z

    .line 344
    iget-object v14, v0, Lnb;->g:Lmm;

    add-int v5, v12, v3

    add-int v6, v13, v4

    move v15, v5

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v6

    invoke-virtual/range {v14 .. v20}, Lmm;->c(IIIIII)V

    .line 345
    iget-object v14, v0, Lnb;->g:Lmm;

    invoke-virtual/range {v14 .. v20}, Lmm;->b(IIIIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    :cond_57
    return-void
.end method

.method public a(Lyr;)V
    .registers 6

    .line 359
    iget-object v0, p0, Lnb;->e:Lpf;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "disconnect.kicked"

    invoke-virtual {v0, v2, v1}, Lpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Lnb;->d:Z

    .line 361
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lfd;)V

    .line 362
    iget-object v0, p0, Lnb;->f:Lnet/minecraft/client/Minecraft;

    new-instance v1, Lex;

    iget-object p1, p1, Lyr;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "disconnect.disconnected"

    const-string v3, "disconnect.genericReason"

    invoke-direct {v1, v2, v3, p1}, Lex;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lnet/minecraft/client/Minecraft;->a(Lda;)V

    return-void
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x1

    .line 453
    iput-boolean v0, p0, Lnb;->d:Z

    .line 454
    iget-object v0, p0, Lnb;->e:Lpf;

    invoke-virtual {v0}, Lpf;->a()V

    .line 455
    iget-object v0, p0, Lnb;->e:Lpf;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "disconnect.closed"

    invoke-virtual {v0, v2, v1}, Lpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lki;)V
    .registers 3

    .line 381
    iget-boolean v0, p0, Lnb;->d:Z

    if-eqz v0, :cond_5

    return-void

    .line 382
    :cond_5
    iget-object v0, p0, Lnb;->e:Lpf;

    invoke-virtual {v0, p1}, Lpf;->a(Lki;)V

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
