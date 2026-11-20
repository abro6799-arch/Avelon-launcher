###### Class defpackage.yl (yl)
.class public Lyl;
.super Lsn;
.source "SourceFile"

# interfaces
.implements Llw;


# static fields
.field private static final j:[[[I


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:D

.field public g:D

.field private h:[Liz;

.field private i:Z

.field private k:I

.field private l:D

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:D

.field private r:D

.field private s:D


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 163
    filled-new-array {v0, v0, v1}, [I

    move-result-object v2

    const/4 v3, 0x1

    filled-new-array {v0, v0, v3}, [I

    move-result-object v4

    filled-new-array {v2, v4}, [[I

    move-result-object v5

    filled-new-array {v1, v0, v0}, [I

    move-result-object v2

    filled-new-array {v3, v0, v0}, [I

    move-result-object v4

    filled-new-array {v2, v4}, [[I

    move-result-object v6

    filled-new-array {v1, v1, v0}, [I

    move-result-object v2

    filled-new-array {v3, v0, v0}, [I

    move-result-object v4

    filled-new-array {v2, v4}, [[I

    move-result-object v7

    filled-new-array {v1, v0, v0}, [I

    move-result-object v2

    filled-new-array {v3, v1, v0}, [I

    move-result-object v4

    filled-new-array {v2, v4}, [[I

    move-result-object v8

    filled-new-array {v0, v0, v1}, [I

    move-result-object v2

    filled-new-array {v0, v1, v3}, [I

    move-result-object v4

    filled-new-array {v2, v4}, [[I

    move-result-object v9

    filled-new-array {v0, v1, v1}, [I

    move-result-object v2

    filled-new-array {v0, v0, v3}, [I

    move-result-object v4

    filled-new-array {v2, v4}, [[I

    move-result-object v10

    filled-new-array {v0, v0, v3}, [I

    move-result-object v2

    filled-new-array {v3, v0, v0}, [I

    move-result-object v4

    filled-new-array {v2, v4}, [[I

    move-result-object v11

    filled-new-array {v0, v0, v3}, [I

    move-result-object v2

    filled-new-array {v1, v0, v0}, [I

    move-result-object v4

    filled-new-array {v2, v4}, [[I

    move-result-object v12

    filled-new-array {v0, v0, v1}, [I

    move-result-object v2

    filled-new-array {v1, v0, v0}, [I

    move-result-object v4

    filled-new-array {v2, v4}, [[I

    move-result-object v13

    filled-new-array {v0, v0, v1}, [I

    move-result-object v1

    filled-new-array {v3, v0, v0}, [I

    move-result-object v0

    filled-new-array {v1, v0}, [[I

    move-result-object v14

    filled-new-array/range {v5 .. v14}, [[[I

    move-result-object v0

    sput-object v0, Lyl;->j:[[[I

    return-void
.end method

.method public constructor <init>(Lfd;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/16 p1, 0x24

    new-array p1, p1, [Liz;

    .line 26
    iput-object p1, p0, Lyl;->h:[Liz;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lyl;->a:I

    .line 31
    iput p1, p0, Lyl;->b:I

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lyl;->c:I

    .line 33
    iput-boolean p1, p0, Lyl;->i:Z

    .line 39
    iput-boolean v0, p0, Lyl;->aF:Z

    const p1, 0x3f7ae148    # 0.98f

    const v0, 0x3f333333    # 0.7f

    .line 40
    invoke-virtual {p0, p1, v0}, Lyl;->b(FF)V

    .line 41
    iget p1, p0, Lyl;->bh:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lyl;->bf:F

    return-void
.end method

.method public constructor <init>(Lfd;DDDI)V
    .registers 19

    move-object v7, p0

    move-wide v8, p4

    .line 68
    invoke-direct {p0, p1}, Lyl;-><init>(Lfd;)V

    .line 69
    iget v0, v7, Lyl;->bf:F

    float-to-double v0, v0

    add-double v3, v8, v0

    move-object v0, p0

    move-wide v1, p2

    move-wide/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lyl;->e(DDD)V

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, v7, Lyl;->aP:D

    .line 72
    iput-wide v0, v7, Lyl;->aQ:D

    .line 73
    iput-wide v0, v7, Lyl;->aR:D

    move-wide v0, p2

    .line 75
    iput-wide v0, v7, Lyl;->aJ:D

    .line 76
    iput-wide v8, v7, Lyl;->aK:D

    move-wide/from16 v0, p6

    .line 77
    iput-wide v0, v7, Lyl;->aL:D

    move/from16 v0, p8

    .line 78
    iput v0, v7, Lyl;->d:I

    return-void
.end method


# virtual methods
.method public K()V
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 139
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lyl;->a()I

    move-result v2

    if-ge v1, v2, :cond_a1

    .line 140
    invoke-virtual {v0, v1}, Lyl;->f_(I)Liz;

    move-result-object v2

    if-eqz v2, :cond_9b

    .line 142
    iget-object v3, v0, Lyl;->bs:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    const v5, 0x3dcccccd    # 0.1f

    add-float/2addr v3, v5

    .line 143
    iget-object v6, v0, Lyl;->bs:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    .line 144
    iget-object v7, v0, Lyl;->bs:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    .line 146
    :goto_2d
    iget v4, v2, Liz;->a:I

    if-lez v4, :cond_9b

    .line 147
    iget-object v4, v0, Lyl;->bs:Ljava/util/Random;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    .line 148
    iget v5, v2, Liz;->a:I

    if-le v4, v5, :cond_41

    iget v4, v2, Liz;->a:I

    .line 149
    :cond_41
    iget v5, v2, Liz;->a:I

    sub-int/2addr v5, v4

    iput v5, v2, Liz;->a:I

    .line 151
    new-instance v5, Lhl;

    iget-object v9, v0, Lyl;->aI:Lfd;

    iget-wide v10, v0, Lyl;->aM:D

    float-to-double v12, v3

    add-double/2addr v10, v12

    iget-wide v12, v0, Lyl;->aN:D

    float-to-double v14, v6

    add-double/2addr v12, v14

    iget-wide v14, v0, Lyl;->aO:D

    move/from16 v17, v1

    float-to-double v0, v7

    add-double/2addr v14, v0

    new-instance v0, Liz;

    iget v1, v2, Liz;->c:I

    invoke-virtual {v2}, Liz;->i()I

    move-result v8

    invoke-direct {v0, v1, v4, v8}, Liz;-><init>(III)V

    move-object v8, v5

    move-object/from16 v16, v0

    invoke-direct/range {v8 .. v16}, Lhl;-><init>(Lfd;DDDLiz;)V

    move-object/from16 v0, p0

    .line 153
    iget-object v1, v0, Lyl;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v8

    double-to-float v1, v8

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v4

    float-to-double v8, v1

    iput-wide v8, v5, Lhl;->aP:D

    .line 154
    iget-object v1, v0, Lyl;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v8

    double-to-float v1, v8

    mul-float/2addr v1, v4

    const v8, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v8

    float-to-double v8, v1

    iput-wide v8, v5, Lhl;->aQ:D

    .line 155
    iget-object v1, v0, Lyl;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v8

    double-to-float v1, v8

    mul-float/2addr v1, v4

    float-to-double v8, v1

    iput-wide v8, v5, Lhl;->aR:D

    .line 156
    iget-object v1, v0, Lyl;->aI:Lfd;

    invoke-virtual {v1, v5}, Lfd;->b(Lsn;)Z

    move/from16 v1, v17

    goto :goto_2d

    :cond_9b
    move/from16 v17, v1

    add-int/lit8 v1, v17, 0x1

    goto/16 :goto_3

    .line 160
    :cond_a1
    invoke-super/range {p0 .. p0}, Lsn;->K()V

    return-void
.end method

.method public a()I
    .registers 2

    const/16 v0, 0x1b

    return v0
.end method

.method public a(DDDD)Lbt;
    .registers 27

    move-object/from16 v0, p0

    .line 546
    invoke-static/range {p1 .. p2}, Lin;->b(D)I

    move-result v1

    .line 547
    invoke-static/range {p3 .. p4}, Lin;->b(D)I

    move-result v2

    .line 548
    invoke-static/range {p5 .. p6}, Lin;->b(D)I

    move-result v3

    .line 549
    iget-object v4, v0, Lyl;->aI:Lfd;

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v1, v5, v3}, Lpc;->h(Lfd;III)Z

    move-result v4

    if-eqz v4, :cond_1a

    add-int/lit8 v2, v2, -0x1

    .line 553
    :cond_1a
    iget-object v4, v0, Lyl;->aI:Lfd;

    invoke-virtual {v4, v1, v2, v3}, Lfd;->a(III)I

    move-result v4

    .line 554
    invoke-static {v4}, Lpc;->d(I)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 555
    iget-object v5, v0, Lyl;->aI:Lfd;

    invoke-virtual {v5, v1, v2, v3}, Lfd;->e(III)I

    move-result v5

    .line 557
    sget-object v6, Luu;->m:[Luu;

    aget-object v4, v6, v4

    check-cast v4, Lpc;

    invoke-virtual {v4}, Lpc;->i()Z

    move-result v4

    if-eqz v4, :cond_3a

    and-int/lit8 v5, v5, 0x7

    :cond_3a
    int-to-double v6, v2

    const/4 v4, 0x2

    const/4 v8, 0x1

    if-lt v5, v4, :cond_44

    const/4 v9, 0x5

    if-gt v5, v9, :cond_44

    add-int/2addr v2, v8

    int-to-double v6, v2

    .line 566
    :cond_44
    sget-object v2, Lyl;->j:[[[I

    aget-object v2, v2, v5

    .line 568
    aget-object v5, v2, v8

    const/4 v9, 0x0

    aget v10, v5, v9

    aget-object v11, v2, v9

    aget v12, v11, v9

    sub-int/2addr v10, v12

    int-to-double v12, v10

    .line 569
    aget v5, v5, v4

    aget v10, v11, v4

    sub-int/2addr v5, v10

    int-to-double v10, v5

    mul-double v14, v12, v12

    mul-double v16, v10, v10

    add-double v14, v14, v16

    .line 570
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    div-double/2addr v10, v14

    mul-double v12, v12, p7

    add-double v12, p1, v12

    mul-double v10, v10, p7

    add-double v10, p5, v10

    .line 577
    aget-object v5, v2, v9

    aget v5, v5, v8

    if-eqz v5, :cond_8e

    invoke-static {v12, v13}, Lin;->b(D)I

    move-result v5

    sub-int/2addr v5, v1

    aget-object v14, v2, v9

    aget v14, v14, v9

    if-ne v5, v14, :cond_8e

    invoke-static {v10, v11}, Lin;->b(D)I

    move-result v5

    sub-int/2addr v5, v3

    aget-object v14, v2, v9

    aget v15, v14, v4

    if-ne v5, v15, :cond_8e

    .line 578
    aget v1, v14, v8

    :goto_8b
    int-to-double v1, v1

    add-double/2addr v6, v1

    goto :goto_ad

    .line 579
    :cond_8e
    aget-object v5, v2, v8

    aget v5, v5, v8

    if-eqz v5, :cond_ad

    invoke-static {v12, v13}, Lin;->b(D)I

    move-result v5

    sub-int/2addr v5, v1

    aget-object v1, v2, v8

    aget v1, v1, v9

    if-ne v5, v1, :cond_ad

    invoke-static {v10, v11}, Lin;->b(D)I

    move-result v1

    sub-int/2addr v1, v3

    aget-object v2, v2, v8

    aget v3, v2, v4

    if-ne v1, v3, :cond_ad

    .line 580
    aget v1, v2, v8

    goto :goto_8b

    :cond_ad
    :goto_ad
    move-object/from16 p1, p0

    move-wide/from16 p2, v12

    move-wide/from16 p4, v6

    move-wide/from16 p6, v10

    .line 584
    invoke-virtual/range {p1 .. p7}, Lyl;->i(DDD)Lbt;

    move-result-object v1

    return-object v1

    :cond_ba
    const/4 v1, 0x0

    return-object v1
.end method

.method public a(Lsn;)Leq;
    .registers 2

    .line 55
    iget-object p1, p1, Lsn;->aW:Leq;

    return-object p1
.end method

.method public a(II)Liz;
    .registers 5

    .line 773
    iget-object v0, p0, Lyl;->h:[Liz;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 774
    iget v0, v0, Liz;->a:I

    if-gt v0, p2, :cond_12

    .line 775
    iget-object p2, p0, Lyl;->h:[Liz;

    aget-object v0, p2, p1

    .line 776
    aput-object v1, p2, p1

    return-object v0

    .line 779
    :cond_12
    iget-object v0, p0, Lyl;->h:[Liz;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Liz;->a(I)Liz;

    move-result-object p2

    .line 780
    iget-object v0, p0, Lyl;->h:[Liz;

    aget-object v0, v0, p1

    iget v0, v0, Liz;->a:I

    if-nez v0, :cond_26

    iget-object v0, p0, Lyl;->h:[Liz;

    aput-object v1, v0, p1

    :cond_26
    return-object p2

    :cond_27
    return-object v1
.end method

.method public a(DDD)V
    .registers 7

    .line 857
    iput-wide p1, p0, Lyl;->aP:D

    iput-wide p1, p0, Lyl;->q:D

    .line 858
    iput-wide p3, p0, Lyl;->aQ:D

    iput-wide p3, p0, Lyl;->r:D

    .line 859
    iput-wide p5, p0, Lyl;->aR:D

    iput-wide p5, p0, Lyl;->s:D

    return-void
.end method

.method public a(DDDFFI)V
    .registers 10

    .line 843
    iput-wide p1, p0, Lyl;->l:D

    .line 844
    iput-wide p3, p0, Lyl;->m:D

    .line 845
    iput-wide p5, p0, Lyl;->n:D

    float-to-double p1, p7

    .line 846
    iput-wide p1, p0, Lyl;->o:D

    float-to-double p1, p8

    .line 847
    iput-wide p1, p0, Lyl;->p:D

    add-int/lit8 p9, p9, 0x2

    .line 849
    iput p9, p0, Lyl;->k:I

    .line 851
    iget-wide p1, p0, Lyl;->q:D

    iput-wide p1, p0, Lyl;->aP:D

    .line 852
    iget-wide p1, p0, Lyl;->r:D

    iput-wide p1, p0, Lyl;->aQ:D

    .line 853
    iget-wide p1, p0, Lyl;->s:D

    iput-wide p1, p0, Lyl;->aR:D

    return-void
.end method

.method public a(ILiz;)V
    .registers 4

    .line 788
    iget-object v0, p0, Lyl;->h:[Liz;

    aput-object p2, v0, p1

    if-eqz p2, :cond_14

    .line 789
    iget p1, p2, Liz;->a:I

    invoke-virtual {p0}, Lyl;->d()I

    move-result v0

    if-le p1, v0, :cond_14

    invoke-virtual {p0}, Lyl;->d()I

    move-result p1

    iput p1, p2, Liz;->a:I

    :cond_14
    return-void
.end method

.method protected a(Lnu;)V
    .registers 7

    const-string v0, "Type"

    .line 673
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lyl;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    const-string v0, "PushX"

    .line 675
    invoke-virtual {p1, v0}, Lnu;->h(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lyl;->f:D

    const-string v0, "PushZ"

    .line 676
    invoke-virtual {p1, v0}, Lnu;->h(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lyl;->g:D

    const-string v0, "Fuel"

    .line 677
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result p1

    iput p1, p0, Lyl;->e:I

    goto :goto_5b

    :cond_24
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5b

    const-string v0, "Items"

    .line 679
    invoke-virtual {p1, v0}, Lnu;->l(Ljava/lang/String;)Lsp;

    move-result-object p1

    .line 680
    invoke-virtual {p0}, Lyl;->a()I

    move-result v0

    new-array v0, v0, [Liz;

    iput-object v0, p0, Lyl;->h:[Liz;

    const/4 v0, 0x0

    .line 681
    :goto_36
    invoke-virtual {p1}, Lsp;->c()I

    move-result v1

    if-ge v0, v1, :cond_5b

    .line 682
    invoke-virtual {p1, v0}, Lsp;->a(I)Lij;

    move-result-object v1

    check-cast v1, Lnu;

    const-string v2, "Slot"

    .line 683
    invoke-virtual {v1, v2}, Lnu;->c(Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-ltz v2, :cond_58

    .line 684
    iget-object v3, p0, Lyl;->h:[Liz;

    array-length v4, v3

    if-ge v2, v4, :cond_58

    new-instance v4, Liz;

    invoke-direct {v4, v1}, Liz;-><init>(Lnu;)V

    aput-object v4, v3, v2

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_5b
    :goto_5b
    return-void
.end method

.method public a(Lgs;)Z
    .registers 8

    .line 807
    iget v0, p0, Lyl;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    .line 808
    iget-object v0, p0, Lyl;->aG:Lsn;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lyl;->aG:Lsn;

    instance-of v0, v0, Lgs;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lyl;->aG:Lsn;

    if-eq v0, p1, :cond_14

    return v1

    .line 809
    :cond_14
    iget-object v0, p0, Lyl;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_62

    .line 810
    invoke-virtual {p1, p0}, Lgs;->i(Lsn;)V

    goto :goto_62

    :cond_1e
    if-ne v0, v1, :cond_2a

    .line 813
    iget-object v0, p0, Lyl;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_62

    .line 814
    invoke-virtual {p1, p0}, Lgs;->a(Llw;)V

    goto :goto_62

    :cond_2a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_62

    .line 818
    iget-object v0, p1, Lgs;->c:Lix;

    invoke-virtual {v0}, Lix;->b()Liz;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 819
    iget v2, v0, Liz;->c:I

    sget-object v3, Lgm;->k:Lgm;

    iget v3, v3, Lgm;->bf:I

    if-ne v2, v3, :cond_54

    .line 820
    iget v2, v0, Liz;->a:I

    sub-int/2addr v2, v1

    iput v2, v0, Liz;->a:I

    if-nez v2, :cond_4e

    iget-object v0, p1, Lgs;->c:Lix;

    iget-object v2, p1, Lgs;->c:Lix;

    iget v2, v2, Lix;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lix;->a(ILiz;)V

    .line 821
    :cond_4e
    iget v0, p0, Lyl;->e:I

    add-int/lit16 v0, v0, 0x4b0

    iput v0, p0, Lyl;->e:I

    .line 824
    :cond_54
    iget-wide v2, p0, Lyl;->aM:D

    iget-wide v4, p1, Lgs;->aM:D

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lyl;->f:D

    .line 825
    iget-wide v2, p0, Lyl;->aO:D

    iget-wide v4, p1, Lgs;->aO:D

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lyl;->g:D

    :cond_62
    :goto_62
    return v1
.end method

.method public a(Lsn;I)Z
    .registers 25

    move-object/from16 v0, p0

    .line 86
    iget-object v1, v0, Lyl;->aI:Lfd;

    iget-boolean v1, v1, Lfd;->B:Z

    const/4 v2, 0x1

    if-nez v1, :cond_ff

    iget-boolean v1, v0, Lyl;->be:Z

    if-eqz v1, :cond_f

    goto/16 :goto_ff

    .line 87
    :cond_f
    iget v1, v0, Lyl;->c:I

    neg-int v1, v1

    iput v1, v0, Lyl;->c:I

    const/16 v1, 0xa

    .line 88
    iput v1, v0, Lyl;->b:I

    .line 89
    invoke-virtual/range {p0 .. p0}, Lyl;->ai()V

    .line 90
    iget v3, v0, Lyl;->a:I

    mul-int/lit8 v4, p2, 0xa

    add-int/2addr v3, v4

    iput v3, v0, Lyl;->a:I

    const/16 v4, 0x28

    if-le v3, v4, :cond_fd

    .line 92
    iget-object v3, v0, Lyl;->aG:Lsn;

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lyl;->aG:Lsn;

    invoke-virtual {v3, v0}, Lsn;->i(Lsn;)V

    .line 93
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lyl;->K()V

    .line 95
    sget-object v3, Lgm;->ax:Lgm;

    iget v3, v3, Lgm;->bf:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Lyl;->a(IIF)Lhl;

    .line 96
    iget v3, v0, Lyl;->d:I

    if-ne v3, v2, :cond_ed

    const/4 v3, 0x0

    .line 98
    :goto_3f
    invoke-interface/range {p0 .. p0}, Llw;->a()I

    move-result v5

    if-ge v3, v5, :cond_e3

    .line 99
    invoke-interface {v0, v3}, Llw;->f_(I)Liz;

    move-result-object v5

    if-eqz v5, :cond_db

    .line 101
    iget-object v6, v0, Lyl;->bs:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    const v8, 0x3dcccccd    # 0.1f

    add-float/2addr v6, v8

    .line 102
    iget-object v9, v0, Lyl;->bs:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    mul-float/2addr v9, v7

    add-float/2addr v9, v8

    .line 103
    iget-object v10, v0, Lyl;->bs:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v10

    mul-float/2addr v10, v7

    add-float/2addr v10, v8

    .line 105
    :goto_69
    iget v7, v5, Liz;->a:I

    if-lez v7, :cond_db

    .line 106
    iget-object v7, v0, Lyl;->bs:Ljava/util/Random;

    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr v7, v1

    .line 107
    iget v8, v5, Liz;->a:I

    if-le v7, v8, :cond_7c

    iget v7, v5, Liz;->a:I

    .line 108
    :cond_7c
    iget v8, v5, Liz;->a:I

    sub-int/2addr v8, v7

    iput v8, v5, Liz;->a:I

    .line 110
    new-instance v8, Lhl;

    iget-object v12, v0, Lyl;->aI:Lfd;

    iget-wide v13, v0, Lyl;->aM:D

    float-to-double v1, v6

    add-double/2addr v13, v1

    iget-wide v1, v0, Lyl;->aN:D

    move-object/from16 v20, v5

    float-to-double v4, v9

    add-double v15, v1, v4

    iget-wide v1, v0, Lyl;->aO:D

    float-to-double v4, v10

    add-double v17, v1, v4

    new-instance v1, Liz;

    move-object/from16 v2, v20

    iget v4, v2, Liz;->c:I

    invoke-virtual {v2}, Liz;->i()I

    move-result v5

    invoke-direct {v1, v4, v7, v5}, Liz;-><init>(III)V

    move-object v11, v8

    move-object/from16 v19, v1

    invoke-direct/range {v11 .. v19}, Lhl;-><init>(Lfd;DDDLiz;)V

    .line 112
    iget-object v1, v0, Lyl;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v4

    double-to-float v1, v4

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v4

    float-to-double v11, v1

    iput-wide v11, v8, Lhl;->aP:D

    .line 113
    iget-object v1, v0, Lyl;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v11

    double-to-float v1, v11

    mul-float/2addr v1, v4

    const v5, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v5

    float-to-double v11, v1

    iput-wide v11, v8, Lhl;->aQ:D

    .line 114
    iget-object v1, v0, Lyl;->bs:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v11

    double-to-float v1, v11

    mul-float/2addr v1, v4

    float-to-double v4, v1

    iput-wide v4, v8, Lhl;->aR:D

    .line 115
    iget-object v1, v0, Lyl;->aI:Lfd;

    invoke-virtual {v1, v8}, Lfd;->b(Lsn;)Z

    move-object v5, v2

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto :goto_69

    :cond_db
    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v4, 0x0

    goto/16 :goto_3f

    .line 119
    :cond_e3
    sget-object v1, Luu;->av:Luu;

    iget v1, v1, Luu;->bn:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2}, Lyl;->a(IIF)Lhl;

    goto :goto_fe

    :cond_ed
    move/from16 v21, v4

    move v4, v2

    move/from16 v2, v21

    const/4 v1, 0x2

    if-ne v3, v1, :cond_fe

    .line 121
    sget-object v1, Luu;->aC:Luu;

    iget v1, v1, Luu;->bn:I

    invoke-virtual {v0, v1, v4, v2}, Lyl;->a(IIF)Lhl;

    goto :goto_fe

    :cond_fd
    move v4, v2

    :cond_fe
    :goto_fe
    return v4

    :cond_ff
    :goto_ff
    move v4, v2

    return v4
.end method

.method public a_(Lgs;)Z
    .registers 8

    .line 863
    iget-boolean v0, p0, Lyl;->be:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 864
    :cond_6
    invoke-virtual {p1, p0}, Lgs;->g(Lsn;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4050000000000000L    # 64.0

    cmpl-double p1, v2, v4

    if-lez p1, :cond_11

    return v1

    :cond_11
    const/4 p1, 0x1

    return p1
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected b(Lnu;)V
    .registers 7

    const-string v0, "Type"

    .line 650
    iget v1, p0, Lyl;->d:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    .line 652
    iget v0, p0, Lyl;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    const-string v0, "PushX"

    .line 653
    iget-wide v1, p0, Lyl;->f:D

    invoke-virtual {p1, v0, v1, v2}, Lnu;->a(Ljava/lang/String;D)V

    const-string v0, "PushZ"

    .line 654
    iget-wide v1, p0, Lyl;->g:D

    invoke-virtual {p1, v0, v1, v2}, Lnu;->a(Ljava/lang/String;D)V

    .line 655
    iget v0, p0, Lyl;->e:I

    int-to-short v0, v0

    const-string v1, "Fuel"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    goto :goto_52

    :cond_23
    const/4 v1, 0x1

    if-ne v0, v1, :cond_52

    .line 657
    new-instance v0, Lsp;

    invoke-direct {v0}, Lsp;-><init>()V

    const/4 v1, 0x0

    .line 659
    :goto_2c
    iget-object v2, p0, Lyl;->h:[Liz;

    array-length v3, v2

    if-ge v1, v3, :cond_4d

    .line 660
    aget-object v2, v2, v1

    if-eqz v2, :cond_4a

    .line 661
    new-instance v2, Lnu;

    invoke-direct {v2}, Lnu;-><init>()V

    const-string v3, "Slot"

    int-to-byte v4, v1

    .line 662
    invoke-virtual {v2, v3, v4}, Lnu;->a(Ljava/lang/String;B)V

    .line 663
    iget-object v3, p0, Lyl;->h:[Liz;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Liz;->a(Lnu;)Lnu;

    .line 664
    invoke-virtual {v0, v2}, Lsp;->a(Lij;)V

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_4d
    const-string v1, "Items"

    .line 667
    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Lij;)V

    :cond_52
    :goto_52
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "Minecart"

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method public f()Leq;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public f_(I)Liz;
    .registers 3

    .line 769
    iget-object v0, p0, Lyl;->h:[Liz;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public h()V
    .registers 3

    .line 128
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Animating hurt"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lyl;->c:I

    neg-int v0, v0

    iput v0, p0, Lyl;->c:I

    const/16 v0, 0xa

    .line 130
    iput v0, p0, Lyl;->b:I

    .line 131
    iget v0, p0, Lyl;->a:I

    mul-int/lit8 v1, v0, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lyl;->a:I

    return-void
.end method

.method public h(Lsn;)V
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 694
    iget-object v0, v7, Lyl;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-eqz v0, :cond_b

    return-void

    .line 696
    :cond_b
    iget-object v0, v7, Lyl;->aG:Lsn;

    if-ne v8, v0, :cond_10

    return-void

    .line 697
    :cond_10
    instance-of v0, v8, Lls;

    if-eqz v0, :cond_3b

    instance-of v0, v8, Lgs;

    if-nez v0, :cond_3b

    iget v0, v7, Lyl;->d:I

    if-nez v0, :cond_3b

    iget-wide v0, v7, Lyl;->aP:D

    iget-wide v2, v7, Lyl;->aP:D

    mul-double/2addr v0, v2

    iget-wide v2, v7, Lyl;->aR:D

    iget-wide v4, v7, Lyl;->aR:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3b

    .line 698
    iget-object v0, v7, Lyl;->aG:Lsn;

    if-nez v0, :cond_3b

    iget-object v0, v8, Lsn;->aH:Lsn;

    if-nez v0, :cond_3b

    .line 699
    invoke-virtual {v8, v7}, Lsn;->i(Lsn;)V

    .line 703
    :cond_3b
    iget-wide v0, v8, Lsn;->aM:D

    iget-wide v2, v7, Lyl;->aM:D

    sub-double/2addr v0, v2

    .line 704
    iget-wide v2, v8, Lsn;->aO:D

    iget-wide v4, v7, Lyl;->aO:D

    sub-double/2addr v2, v4

    mul-double v4, v0, v0

    mul-double v9, v2, v2

    add-double/2addr v4, v9

    const-wide v9, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v6, v4, v9

    if-ltz v6, :cond_152

    .line 708
    invoke-static {v4, v5}, Lin;->a(D)F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v0, v4

    div-double/2addr v2, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double v4, v9, v4

    cmpl-double v6, v4, v9

    if-lez v6, :cond_63

    goto :goto_64

    :cond_63
    move-wide v9, v4

    :goto_64
    mul-double/2addr v0, v9

    mul-double/2addr v2, v9

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double/2addr v0, v4

    mul-double/2addr v2, v4

    .line 718
    iget v4, v7, Lyl;->br:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    float-to-double v9, v4

    mul-double/2addr v0, v9

    .line 719
    iget v4, v7, Lyl;->br:F

    sub-float/2addr v5, v4

    float-to-double v4, v5

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v9, v0, v4

    mul-double v11, v2, v4

    .line 723
    instance-of v0, v8, Lyl;

    if-eqz v0, :cond_139

    .line 724
    iget-wide v0, v8, Lsn;->aM:D

    iget-wide v2, v7, Lyl;->aM:D

    sub-double/2addr v0, v2

    .line 725
    iget-wide v2, v8, Lsn;->aO:D

    iget-wide v4, v7, Lyl;->aO:D

    sub-double/2addr v2, v4

    .line 727
    iget-wide v4, v8, Lsn;->aR:D

    mul-double/2addr v0, v4

    iget-wide v4, v8, Lsn;->aJ:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_9d

    return-void

    .line 731
    :cond_9d
    iget-wide v0, v8, Lsn;->aP:D

    iget-wide v2, v7, Lyl;->aP:D

    add-double/2addr v0, v2

    .line 732
    iget-wide v2, v8, Lsn;->aR:D

    iget-wide v4, v7, Lyl;->aR:D

    add-double/2addr v2, v4

    .line 734
    move-object v4, v8

    check-cast v4, Lyl;

    iget v4, v4, Lyl;->d:I

    const-wide v13, 0x3fe6666660000000L    # 0.699999988079071

    const/4 v5, 0x2

    const-wide v15, 0x3fc99999a0000000L    # 0.20000000298023224

    if-ne v4, v5, :cond_e1

    iget v6, v7, Lyl;->d:I

    if-eq v6, v5, :cond_e1

    .line 735
    iget-wide v0, v7, Lyl;->aP:D

    mul-double/2addr v0, v15

    iput-wide v0, v7, Lyl;->aP:D

    .line 736
    iget-wide v0, v7, Lyl;->aR:D

    mul-double/2addr v0, v15

    iput-wide v0, v7, Lyl;->aR:D

    .line 737
    iget-wide v0, v8, Lsn;->aP:D

    sub-double v1, v0, v9

    const-wide/16 v3, 0x0

    iget-wide v5, v8, Lsn;->aR:D

    sub-double/2addr v5, v11

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lyl;->d(DDD)V

    .line 738
    iget-wide v0, v8, Lsn;->aP:D

    mul-double/2addr v0, v13

    iput-wide v0, v8, Lsn;->aP:D

    .line 739
    iget-wide v0, v8, Lsn;->aR:D

    mul-double/2addr v0, v13

    iput-wide v0, v8, Lsn;->aR:D

    goto/16 :goto_152

    :cond_e1
    if-eq v4, v5, :cond_10a

    .line 740
    iget v4, v7, Lyl;->d:I

    if-ne v4, v5, :cond_10a

    .line 741
    iget-wide v0, v8, Lsn;->aP:D

    mul-double/2addr v0, v15

    iput-wide v0, v8, Lsn;->aP:D

    .line 742
    iget-wide v0, v8, Lsn;->aR:D

    mul-double/2addr v0, v15

    iput-wide v0, v8, Lsn;->aR:D

    .line 743
    iget-wide v0, v7, Lyl;->aP:D

    add-double v1, v0, v9

    const-wide/16 v3, 0x0

    iget-wide v5, v7, Lyl;->aR:D

    add-double/2addr v5, v11

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Lsn;->d(DDD)V

    .line 744
    iget-wide v0, v7, Lyl;->aP:D

    mul-double/2addr v0, v13

    iput-wide v0, v7, Lyl;->aP:D

    .line 745
    iget-wide v0, v7, Lyl;->aR:D

    mul-double/2addr v0, v13

    iput-wide v0, v7, Lyl;->aR:D

    goto :goto_152

    :cond_10a
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v13, v0, v4

    div-double v17, v2, v4

    .line 749
    iget-wide v0, v7, Lyl;->aP:D

    mul-double/2addr v0, v15

    iput-wide v0, v7, Lyl;->aP:D

    .line 750
    iget-wide v0, v7, Lyl;->aR:D

    mul-double/2addr v0, v15

    iput-wide v0, v7, Lyl;->aR:D

    sub-double v1, v13, v9

    const-wide/16 v3, 0x0

    sub-double v5, v17, v11

    move-object/from16 v0, p0

    .line 751
    invoke-virtual/range {v0 .. v6}, Lyl;->d(DDD)V

    .line 752
    iget-wide v0, v8, Lsn;->aP:D

    mul-double/2addr v0, v15

    iput-wide v0, v8, Lsn;->aP:D

    .line 753
    iget-wide v0, v8, Lsn;->aR:D

    mul-double/2addr v0, v15

    iput-wide v0, v8, Lsn;->aR:D

    add-double v1, v13, v9

    add-double v5, v17, v11

    move-object/from16 v0, p1

    .line 754
    invoke-virtual/range {v0 .. v6}, Lsn;->d(DDD)V

    goto :goto_152

    :cond_139
    neg-double v1, v9

    const-wide/16 v3, 0x0

    neg-double v5, v11

    move-object/from16 v0, p0

    .line 758
    invoke-virtual/range {v0 .. v6}, Lyl;->d(DDD)V

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double v2, v9, v0

    const-wide/16 v4, 0x0

    div-double v9, v11, v0

    move-object/from16 v0, p1

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v9

    .line 759
    invoke-virtual/range {v0 .. v6}, Lsn;->d(DDD)V

    :cond_152
    :goto_152
    return-void
.end method

.method public h_()Z
    .registers 2

    .line 135
    iget-boolean v0, p0, Lyl;->be:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public i(DDD)Lbt;
    .registers 29

    move-object/from16 v0, p0

    .line 590
    invoke-static/range {p1 .. p2}, Lin;->b(D)I

    move-result v1

    .line 591
    invoke-static/range {p3 .. p4}, Lin;->b(D)I

    move-result v2

    .line 592
    invoke-static/range {p5 .. p6}, Lin;->b(D)I

    move-result v3

    .line 593
    iget-object v4, v0, Lyl;->aI:Lfd;

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v1, v5, v3}, Lpc;->h(Lfd;III)Z

    move-result v4

    if-eqz v4, :cond_1a

    add-int/lit8 v2, v2, -0x1

    .line 597
    :cond_1a
    iget-object v4, v0, Lyl;->aI:Lfd;

    invoke-virtual {v4, v1, v2, v3}, Lfd;->a(III)I

    move-result v4

    .line 598
    invoke-static {v4}, Lpc;->d(I)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 599
    iget-object v5, v0, Lyl;->aI:Lfd;

    invoke-virtual {v5, v1, v2, v3}, Lfd;->e(III)I

    move-result v5

    int-to-double v6, v2

    .line 602
    sget-object v2, Luu;->m:[Luu;

    aget-object v2, v2, v4

    check-cast v2, Lpc;

    invoke-virtual {v2}, Lpc;->i()Z

    move-result v2

    if-eqz v2, :cond_3b

    and-int/lit8 v5, v5, 0x7

    :cond_3b
    const/4 v2, 0x2

    .line 610
    sget-object v4, Lyl;->j:[[[I

    aget-object v4, v4, v5

    int-to-double v8, v1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double v12, v8, v10

    const/4 v1, 0x0

    .line 613
    aget-object v5, v4, v1

    aget v14, v5, v1

    int-to-double v14, v14

    mul-double/2addr v14, v10

    add-double/2addr v14, v12

    add-double/2addr v6, v10

    const/16 v16, 0x1

    .line 614
    aget v1, v5, v16

    move/from16 p4, v3

    int-to-double v2, v1

    mul-double/2addr v2, v10

    add-double/2addr v2, v6

    move/from16 v1, p4

    int-to-double v0, v1

    add-double v18, v0, v10

    const/16 v17, 0x2

    .line 615
    aget v5, v5, v17

    move-wide/from16 v20, v8

    int-to-double v8, v5

    mul-double/2addr v8, v10

    add-double v8, v18, v8

    .line 616
    aget-object v4, v4, v16

    const/4 v5, 0x0

    aget v5, v4, v5

    move-wide/from16 p3, v0

    int-to-double v0, v5

    mul-double/2addr v0, v10

    add-double/2addr v12, v0

    .line 617
    aget v0, v4, v16

    int-to-double v0, v0

    mul-double/2addr v0, v10

    add-double/2addr v6, v0

    const/4 v0, 0x2

    .line 618
    aget v0, v4, v0

    int-to-double v0, v0

    mul-double/2addr v0, v10

    add-double v18, v18, v0

    sub-double/2addr v12, v14

    sub-double/2addr v6, v2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v0

    sub-double v18, v18, v8

    const-wide/16 v4, 0x0

    cmpl-double v16, v12, v4

    if-nez v16, :cond_8e

    move-wide/from16 v16, p3

    sub-double v0, p5, v16

    goto :goto_a1

    :cond_8e
    cmpl-double v16, v18, v4

    if-nez v16, :cond_95

    sub-double v0, p1, v20

    goto :goto_a1

    :cond_95
    sub-double v16, p1, v14

    sub-double v20, p5, v8

    mul-double v16, v16, v12

    mul-double v20, v20, v18

    add-double v16, v16, v20

    mul-double v0, v0, v16

    :goto_a1
    mul-double/2addr v12, v0

    add-double/2addr v12, v14

    mul-double v14, v6, v0

    add-double/2addr v2, v14

    mul-double v18, v18, v0

    add-double v0, v8, v18

    cmpg-double v8, v6, v4

    if-gez v8, :cond_b1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v8

    :cond_b1
    cmpl-double v4, v6, v4

    if-lez v4, :cond_b6

    add-double/2addr v2, v10

    :cond_b6
    move-wide/from16 p1, v12

    move-wide/from16 p3, v2

    move-wide/from16 p5, v0

    .line 644
    invoke-static/range {p1 .. p6}, Lbt;->b(DDD)Lbt;

    move-result-object v0

    return-object v0

    :cond_c1
    const/4 v0, 0x0

    return-object v0
.end method

.method public i_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public m()D
    .registers 5

    .line 82
    iget v0, p0, Lyl;->bh:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    mul-double/2addr v0, v2

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method protected n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public w_()V
    .registers 37

    move-object/from16 v7, p0

    .line 239
    iget v0, v7, Lyl;->b:I

    const/4 v8, 0x1

    if-lez v0, :cond_a

    sub-int/2addr v0, v8

    iput v0, v7, Lyl;->b:I

    .line 240
    :cond_a
    iget v0, v7, Lyl;->a:I

    if-lez v0, :cond_11

    sub-int/2addr v0, v8

    iput v0, v7, Lyl;->a:I

    .line 242
    :cond_11
    iget-object v0, v7, Lyl;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    const-wide v9, -0x3f99800000000000L    # -180.0

    if-eqz v0, :cond_a4

    iget v0, v7, Lyl;->k:I

    if-lez v0, :cond_a4

    if-lez v0, :cond_91

    .line 244
    iget-wide v0, v7, Lyl;->aM:D

    iget-wide v2, v7, Lyl;->l:D

    iget-wide v4, v7, Lyl;->aM:D

    sub-double/2addr v2, v4

    iget v4, v7, Lyl;->k:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    add-double v1, v0, v2

    .line 245
    iget-wide v3, v7, Lyl;->aN:D

    iget-wide v5, v7, Lyl;->m:D

    iget-wide v11, v7, Lyl;->aN:D

    sub-double/2addr v5, v11

    iget v0, v7, Lyl;->k:I

    int-to-double v11, v0

    div-double/2addr v5, v11

    add-double/2addr v3, v5

    .line 246
    iget-wide v5, v7, Lyl;->aO:D

    iget-wide v11, v7, Lyl;->n:D

    iget-wide v13, v7, Lyl;->aO:D

    sub-double/2addr v11, v13

    iget v0, v7, Lyl;->k:I

    int-to-double v13, v0

    div-double/2addr v11, v13

    add-double/2addr v5, v11

    .line 248
    iget-wide v11, v7, Lyl;->o:D

    iget v0, v7, Lyl;->aS:F

    float-to-double v13, v0

    sub-double/2addr v11, v13

    :goto_4d
    cmpg-double v0, v11, v9

    const-wide v13, 0x4076800000000000L    # 360.0

    if-gez v0, :cond_58

    add-double/2addr v11, v13

    goto :goto_4d

    :cond_58
    :goto_58
    const-wide v9, 0x4066800000000000L    # 180.0

    cmpl-double v0, v11, v9

    if-ltz v0, :cond_63

    sub-double/2addr v11, v13

    goto :goto_58

    .line 254
    :cond_63
    iget v0, v7, Lyl;->aS:F

    float-to-double v9, v0

    iget v0, v7, Lyl;->k:I

    int-to-double v13, v0

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-float v0, v9

    iput v0, v7, Lyl;->aS:F

    .line 255
    iget v0, v7, Lyl;->aT:F

    float-to-double v9, v0

    iget-wide v11, v7, Lyl;->p:D

    iget v0, v7, Lyl;->aT:F

    float-to-double v13, v0

    sub-double/2addr v11, v13

    iget v0, v7, Lyl;->k:I

    int-to-double v13, v0

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-float v0, v9

    iput v0, v7, Lyl;->aT:F

    .line 257
    iget v0, v7, Lyl;->k:I

    sub-int/2addr v0, v8

    iput v0, v7, Lyl;->k:I

    move-object/from16 v0, p0

    .line 258
    invoke-virtual/range {v0 .. v6}, Lyl;->e(DDD)V

    .line 259
    iget v0, v7, Lyl;->aS:F

    iget v1, v7, Lyl;->aT:F

    invoke-virtual {v7, v0, v1}, Lyl;->c(FF)V

    goto :goto_a3

    .line 261
    :cond_91
    iget-wide v1, v7, Lyl;->aM:D

    iget-wide v3, v7, Lyl;->aN:D

    iget-wide v5, v7, Lyl;->aO:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lyl;->e(DDD)V

    .line 262
    iget v0, v7, Lyl;->aS:F

    iget v1, v7, Lyl;->aT:F

    invoke-virtual {v7, v0, v1}, Lyl;->c(FF)V

    :goto_a3
    return-void

    .line 267
    :cond_a4
    iget-wide v0, v7, Lyl;->aM:D

    iput-wide v0, v7, Lyl;->aJ:D

    .line 268
    iget-wide v0, v7, Lyl;->aN:D

    iput-wide v0, v7, Lyl;->aK:D

    .line 269
    iget-wide v0, v7, Lyl;->aO:D

    iput-wide v0, v7, Lyl;->aL:D

    .line 271
    iget-wide v0, v7, Lyl;->aQ:D

    const-wide v2, 0x3fa47ae140000000L    # 0.03999999910593033

    sub-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aQ:D

    .line 273
    iget-wide v0, v7, Lyl;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v11

    .line 274
    iget-wide v0, v7, Lyl;->aN:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 275
    iget-wide v1, v7, Lyl;->aO:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v12

    .line 276
    iget-object v1, v7, Lyl;->aI:Lfd;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v11, v2, v12}, Lpc;->h(Lfd;III)Z

    move-result v1

    if-eqz v1, :cond_d8

    add-int/lit8 v0, v0, -0x1

    :cond_d8
    move v13, v0

    .line 284
    iget-object v0, v7, Lyl;->aI:Lfd;

    invoke-virtual {v0, v11, v13, v12}, Lfd;->a(III)I

    move-result v14

    .line 285
    invoke-static {v14}, Lpc;->d(I)Z

    move-result v0

    const-wide v19, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    const/16 v23, 0x0

    if-eqz v0, :cond_4cd

    .line 286
    iget-wide v1, v7, Lyl;->aM:D

    iget-wide v3, v7, Lyl;->aN:D

    iget-wide v5, v7, Lyl;->aO:D

    move-object/from16 v0, p0

    const-wide/16 v9, 0x0

    const/4 v15, 0x4

    invoke-virtual/range {v0 .. v6}, Lyl;->i(DDD)Lbt;

    move-result-object v5

    .line 287
    iget-object v0, v7, Lyl;->aI:Lfd;

    invoke-virtual {v0, v11, v13, v12}, Lfd;->e(III)I

    move-result v0

    int-to-double v1, v13

    .line 288
    iput-wide v1, v7, Lyl;->aN:D

    .line 292
    sget-object v1, Luu;->U:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v14, v1, :cond_119

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_112

    move v1, v8

    goto :goto_114

    :cond_112
    move/from16 v1, v23

    :goto_114
    xor-int/lit8 v2, v1, 0x1

    move/from16 v16, v1

    goto :goto_11d

    :cond_119
    move/from16 v2, v23

    move/from16 v16, v2

    .line 296
    :goto_11d
    sget-object v1, Luu;->m:[Luu;

    aget-object v1, v1, v14

    check-cast v1, Lpc;

    invoke-virtual {v1}, Lpc;->i()Z

    move-result v1

    if-eqz v1, :cond_12b

    and-int/lit8 v0, v0, 0x7

    :cond_12b
    move v14, v0

    const/4 v0, 0x5

    const/4 v6, 0x2

    if-lt v14, v6, :cond_137

    if-gt v14, v0, :cond_137

    add-int/lit8 v1, v13, 0x1

    int-to-double v3, v1

    .line 301
    iput-wide v3, v7, Lyl;->aN:D

    :cond_137
    const-wide/high16 v3, 0x3f80000000000000L    # 0.0078125

    if-ne v14, v6, :cond_140

    .line 304
    iget-wide v9, v7, Lyl;->aP:D

    sub-double/2addr v9, v3

    iput-wide v9, v7, Lyl;->aP:D

    :cond_140
    const/4 v1, 0x3

    if-ne v14, v1, :cond_148

    .line 305
    iget-wide v9, v7, Lyl;->aP:D

    add-double/2addr v9, v3

    iput-wide v9, v7, Lyl;->aP:D

    :cond_148
    if-ne v14, v15, :cond_14f

    .line 306
    iget-wide v9, v7, Lyl;->aR:D

    add-double/2addr v9, v3

    iput-wide v9, v7, Lyl;->aR:D

    :cond_14f
    if-ne v14, v0, :cond_156

    .line 307
    iget-wide v0, v7, Lyl;->aR:D

    sub-double/2addr v0, v3

    iput-wide v0, v7, Lyl;->aR:D

    .line 309
    :cond_156
    sget-object v0, Lyl;->j:[[[I

    aget-object v9, v0, v14

    .line 311
    aget-object v0, v9, v8

    aget v1, v0, v23

    aget-object v3, v9, v23

    aget v4, v3, v23

    sub-int/2addr v1, v4

    move-object/from16 v24, v9

    int-to-double v8, v1

    .line 312
    aget v0, v0, v6

    aget v1, v3, v6

    sub-int/2addr v0, v1

    int-to-double v0, v0

    mul-double v3, v8, v8

    mul-double v25, v0, v0

    add-double v3, v3, v25

    .line 313
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    move/from16 v25, v11

    .line 315
    iget-wide v10, v7, Lyl;->aP:D

    mul-double/2addr v10, v8

    move/from16 v27, v13

    move/from16 v28, v14

    iget-wide v13, v7, Lyl;->aR:D

    mul-double/2addr v13, v0

    add-double/2addr v10, v13

    const-wide/16 v13, 0x0

    cmpg-double v10, v10, v13

    if-gez v10, :cond_18b

    neg-double v8, v8

    neg-double v0, v0

    .line 321
    :cond_18b
    iget-wide v10, v7, Lyl;->aP:D

    iget-wide v13, v7, Lyl;->aP:D

    mul-double/2addr v10, v13

    iget-wide v13, v7, Lyl;->aR:D

    move-object/from16 v29, v5

    iget-wide v5, v7, Lyl;->aR:D

    mul-double/2addr v13, v5

    add-double/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v8, v5

    div-double/2addr v8, v3

    .line 323
    iput-wide v8, v7, Lyl;->aP:D

    mul-double/2addr v5, v0

    div-double/2addr v5, v3

    .line 324
    iput-wide v5, v7, Lyl;->aR:D

    if-eqz v2, :cond_1e3

    .line 328
    iget-wide v0, v7, Lyl;->aP:D

    iget-wide v2, v7, Lyl;->aP:D

    mul-double/2addr v0, v2

    iget-wide v2, v7, Lyl;->aR:D

    iget-wide v4, v7, Lyl;->aR:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1d0

    .line 330
    iget-wide v0, v7, Lyl;->aP:D

    const-wide/16 v2, 0x0

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aP:D

    .line 331
    iget-wide v0, v7, Lyl;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aQ:D

    .line 332
    iget-wide v0, v7, Lyl;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aR:D

    goto :goto_1e3

    :cond_1d0
    const-wide/16 v2, 0x0

    .line 334
    iget-wide v0, v7, Lyl;->aP:D

    mul-double v0, v0, v21

    iput-wide v0, v7, Lyl;->aP:D

    .line 335
    iget-wide v0, v7, Lyl;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aQ:D

    .line 336
    iget-wide v0, v7, Lyl;->aR:D

    mul-double v0, v0, v21

    iput-wide v0, v7, Lyl;->aR:D

    :cond_1e3
    :goto_1e3
    move/from16 v8, v25

    int-to-double v0, v8

    add-double v2, v0, v21

    .line 341
    aget-object v4, v24, v23

    aget v5, v4, v23

    int-to-double v5, v5

    mul-double v5, v5, v21

    add-double/2addr v5, v2

    int-to-double v13, v12

    add-double v9, v13, v21

    const/4 v11, 0x2

    .line 342
    aget v4, v4, v11

    move/from16 v25, v12

    int-to-double v11, v4

    mul-double v11, v11, v21

    add-double/2addr v11, v9

    const/4 v4, 0x1

    .line 343
    aget-object v26, v24, v4

    move-wide/from16 v30, v11

    move-wide v10, v9

    aget v4, v26, v23

    move-wide/from16 v32, v13

    int-to-double v12, v4

    mul-double v12, v12, v21

    add-double/2addr v12, v2

    const/4 v14, 0x2

    .line 344
    aget v4, v26, v14

    int-to-double v14, v4

    mul-double v14, v14, v21

    add-double/2addr v14, v10

    sub-double/2addr v12, v5

    sub-double v14, v14, v30

    const-wide/16 v21, 0x0

    cmpl-double v4, v12, v21

    if-nez v4, :cond_221

    .line 350
    iput-wide v2, v7, Lyl;->aM:D

    .line 351
    iget-wide v0, v7, Lyl;->aO:D

    sub-double v0, v0, v32

    goto :goto_239

    :cond_221
    cmpl-double v2, v14, v21

    if-nez v2, :cond_22c

    .line 353
    iput-wide v10, v7, Lyl;->aO:D

    .line 354
    iget-wide v2, v7, Lyl;->aM:D

    sub-double v0, v2, v0

    goto :goto_239

    .line 357
    :cond_22c
    iget-wide v0, v7, Lyl;->aM:D

    sub-double/2addr v0, v5

    .line 358
    iget-wide v2, v7, Lyl;->aO:D

    sub-double v2, v2, v30

    mul-double/2addr v0, v12

    mul-double/2addr v2, v14

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    :goto_239
    mul-double/2addr v12, v0

    add-double/2addr v5, v12

    .line 364
    iput-wide v5, v7, Lyl;->aM:D

    mul-double/2addr v14, v0

    add-double v11, v30, v14

    .line 365
    iput-wide v11, v7, Lyl;->aO:D

    .line 367
    iget-wide v1, v7, Lyl;->aM:D

    iget-wide v3, v7, Lyl;->aN:D

    iget v0, v7, Lyl;->bf:F

    float-to-double v5, v0

    add-double/2addr v3, v5

    iget-wide v5, v7, Lyl;->aO:D

    move-object/from16 v0, p0

    move-object/from16 v11, v29

    const/4 v12, 0x2

    invoke-virtual/range {v0 .. v6}, Lyl;->e(DDD)V

    .line 369
    iget-wide v0, v7, Lyl;->aP:D

    .line 370
    iget-wide v2, v7, Lyl;->aR:D

    .line 371
    iget-object v4, v7, Lyl;->aG:Lsn;

    if-eqz v4, :cond_260

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v4

    mul-double/2addr v2, v4

    :cond_260
    const-wide v5, -0x4026666666666666L    # -0.4

    move-wide/from16 v34, v0

    move-wide v0, v2

    move-wide/from16 v3, v34

    cmpg-double v2, v3, v5

    if-gez v2, :cond_26f

    move-wide v3, v5

    :cond_26f
    const-wide v13, 0x3fd999999999999aL    # 0.4

    cmpl-double v2, v3, v13

    if-lez v2, :cond_279

    move-wide v3, v13

    :cond_279
    cmpg-double v2, v0, v5

    if-gez v2, :cond_27e

    move-wide v0, v5

    :cond_27e
    cmpl-double v2, v0, v13

    if-lez v2, :cond_288

    const-wide v5, 0x3fd999999999999aL    # 0.4

    goto :goto_289

    :cond_288
    move-wide v5, v0

    :goto_289
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v13

    .line 379
    invoke-virtual/range {v0 .. v6}, Lyl;->b(DDD)V

    .line 381
    aget-object v0, v24, v23

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_2c7

    iget-wide v0, v7, Lyl;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    sub-int/2addr v0, v8

    aget-object v1, v24, v23

    aget v1, v1, v23

    if-ne v0, v1, :cond_2c7

    iget-wide v0, v7, Lyl;->aO:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    sub-int v0, v0, v25

    aget-object v1, v24, v23

    aget v1, v1, v12

    if-ne v0, v1, :cond_2c7

    .line 382
    iget-wide v1, v7, Lyl;->aM:D

    iget-wide v3, v7, Lyl;->aN:D

    aget-object v0, v24, v23

    const/4 v5, 0x1

    aget v0, v0, v5

    int-to-double v5, v0

    add-double/2addr v3, v5

    iget-wide v5, v7, Lyl;->aO:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lyl;->e(DDD)V

    goto :goto_2fa

    :cond_2c7
    const/4 v0, 0x1

    .line 383
    aget-object v1, v24, v0

    aget v1, v1, v0

    if-eqz v1, :cond_2fa

    iget-wide v1, v7, Lyl;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    sub-int/2addr v1, v8

    aget-object v2, v24, v0

    aget v2, v2, v23

    if-ne v1, v2, :cond_2fa

    iget-wide v1, v7, Lyl;->aO:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    sub-int v1, v1, v25

    aget-object v2, v24, v0

    aget v2, v2, v12

    if-ne v1, v2, :cond_2fa

    .line 384
    iget-wide v1, v7, Lyl;->aM:D

    iget-wide v3, v7, Lyl;->aN:D

    aget-object v5, v24, v0

    aget v5, v5, v0

    int-to-double v5, v5

    add-double/2addr v3, v5

    iget-wide v5, v7, Lyl;->aO:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lyl;->e(DDD)V

    .line 388
    :cond_2fa
    :goto_2fa
    iget-object v0, v7, Lyl;->aG:Lsn;

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    if-eqz v0, :cond_31d

    .line 389
    iget-wide v0, v7, Lyl;->aP:D

    const-wide v2, 0x3fefe76c80000000L    # 0.996999979019165

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aP:D

    .line 390
    iget-wide v0, v7, Lyl;->aQ:D

    const-wide/16 v4, 0x0

    mul-double/2addr v0, v4

    iput-wide v0, v7, Lyl;->aQ:D

    .line 391
    iget-wide v0, v7, Lyl;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aR:D

    move/from16 v9, v23

    goto/16 :goto_397

    .line 393
    :cond_31d
    iget v0, v7, Lyl;->d:I

    if-ne v0, v12, :cond_37e

    .line 394
    iget-wide v0, v7, Lyl;->f:D

    mul-double/2addr v0, v0

    iget-wide v2, v7, Lyl;->g:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v2, v0, v13

    if-lez v2, :cond_368

    .line 397
    iget-wide v2, v7, Lyl;->f:D

    div-double/2addr v2, v0

    iput-wide v2, v7, Lyl;->f:D

    .line 398
    iget-wide v2, v7, Lyl;->g:D

    div-double/2addr v2, v0

    iput-wide v2, v7, Lyl;->g:D

    .line 400
    iget-wide v0, v7, Lyl;->aP:D

    const-wide v2, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aP:D

    .line 401
    iget-wide v0, v7, Lyl;->aQ:D

    const-wide/16 v4, 0x0

    mul-double/2addr v0, v4

    iput-wide v0, v7, Lyl;->aQ:D

    .line 402
    iget-wide v0, v7, Lyl;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aR:D

    .line 403
    iget-wide v0, v7, Lyl;->aP:D

    iget-wide v2, v7, Lyl;->f:D

    const-wide v4, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aP:D

    .line 404
    iget-wide v0, v7, Lyl;->aR:D

    iget-wide v2, v7, Lyl;->g:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aR:D

    const/4 v0, 0x1

    goto :goto_380

    .line 406
    :cond_368
    iget-wide v0, v7, Lyl;->aP:D

    const-wide v2, 0x3fecccccc0000000L    # 0.8999999761581421

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aP:D

    .line 407
    iget-wide v0, v7, Lyl;->aQ:D

    const-wide/16 v4, 0x0

    mul-double/2addr v0, v4

    iput-wide v0, v7, Lyl;->aQ:D

    .line 408
    iget-wide v0, v7, Lyl;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aR:D

    :cond_37e
    move/from16 v0, v23

    .line 411
    :goto_380
    iget-wide v1, v7, Lyl;->aP:D

    const-wide v3, 0x3feeb851e0000000L    # 0.9599999785423279

    mul-double/2addr v1, v3

    iput-wide v1, v7, Lyl;->aP:D

    .line 412
    iget-wide v1, v7, Lyl;->aQ:D

    const-wide/16 v5, 0x0

    mul-double/2addr v1, v5

    iput-wide v1, v7, Lyl;->aQ:D

    .line 413
    iget-wide v1, v7, Lyl;->aR:D

    mul-double/2addr v1, v3

    iput-wide v1, v7, Lyl;->aR:D

    move v9, v0

    .line 417
    :goto_397
    iget-wide v1, v7, Lyl;->aM:D

    iget-wide v3, v7, Lyl;->aN:D

    iget-wide v5, v7, Lyl;->aO:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lyl;->i(DDD)Lbt;

    move-result-object v0

    if-eqz v0, :cond_3df

    if-eqz v11, :cond_3df

    .line 419
    iget-wide v1, v11, Lbt;->b:D

    iget-wide v3, v0, Lbt;->b:D

    sub-double/2addr v1, v3

    const-wide v3, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v1, v3

    .line 421
    iget-wide v3, v7, Lyl;->aP:D

    iget-wide v5, v7, Lyl;->aP:D

    mul-double/2addr v3, v5

    iget-wide v5, v7, Lyl;->aR:D

    iget-wide v10, v7, Lyl;->aR:D

    mul-double/2addr v5, v10

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v10, v3, v5

    if-lez v10, :cond_3d4

    .line 423
    iget-wide v5, v7, Lyl;->aP:D

    div-double/2addr v5, v3

    add-double/2addr v1, v3

    mul-double/2addr v5, v1

    iput-wide v5, v7, Lyl;->aP:D

    .line 424
    iget-wide v5, v7, Lyl;->aR:D

    div-double/2addr v5, v3

    mul-double/2addr v5, v1

    iput-wide v5, v7, Lyl;->aR:D

    .line 426
    :cond_3d4
    iget-wide v1, v7, Lyl;->aM:D

    iget-wide v3, v0, Lbt;->b:D

    iget-wide v5, v7, Lyl;->aO:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lyl;->e(DDD)V

    .line 429
    :cond_3df
    iget-wide v0, v7, Lyl;->aM:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    .line 430
    iget-wide v1, v7, Lyl;->aO:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    move/from16 v2, v25

    if-ne v0, v8, :cond_3f1

    if-eq v1, v2, :cond_40a

    .line 432
    :cond_3f1
    iget-wide v3, v7, Lyl;->aP:D

    iget-wide v5, v7, Lyl;->aP:D

    mul-double/2addr v3, v5

    iget-wide v5, v7, Lyl;->aR:D

    iget-wide v10, v7, Lyl;->aR:D

    mul-double/2addr v5, v10

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    sub-int/2addr v0, v8

    int-to-double v5, v0

    mul-double/2addr v5, v3

    .line 434
    iput-wide v5, v7, Lyl;->aP:D

    sub-int/2addr v1, v2

    int-to-double v0, v1

    mul-double/2addr v3, v0

    .line 435
    iput-wide v3, v7, Lyl;->aR:D

    .line 438
    :cond_40a
    iget v0, v7, Lyl;->d:I

    if-ne v0, v12, :cond_453

    .line 439
    iget-wide v0, v7, Lyl;->f:D

    mul-double/2addr v0, v0

    iget-wide v3, v7, Lyl;->g:D

    mul-double/2addr v3, v3

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v3, v0, v13

    if-lez v3, :cond_453

    .line 440
    iget-wide v3, v7, Lyl;->aP:D

    iget-wide v5, v7, Lyl;->aP:D

    mul-double/2addr v3, v5

    iget-wide v5, v7, Lyl;->aR:D

    iget-wide v10, v7, Lyl;->aR:D

    mul-double/2addr v5, v10

    add-double/2addr v3, v5

    cmpl-double v3, v3, v19

    if-lez v3, :cond_453

    .line 441
    iget-wide v3, v7, Lyl;->f:D

    div-double/2addr v3, v0

    iput-wide v3, v7, Lyl;->f:D

    .line 442
    iget-wide v5, v7, Lyl;->g:D

    div-double/2addr v5, v0

    iput-wide v5, v7, Lyl;->g:D

    .line 444
    iget-wide v0, v7, Lyl;->aP:D

    mul-double/2addr v3, v0

    iget-wide v0, v7, Lyl;->g:D

    iget-wide v5, v7, Lyl;->aR:D

    mul-double/2addr v0, v5

    add-double/2addr v3, v0

    const-wide/16 v0, 0x0

    cmpg-double v3, v3, v0

    if-gez v3, :cond_44b

    .line 445
    iput-wide v0, v7, Lyl;->f:D

    .line 446
    iput-wide v0, v7, Lyl;->g:D

    goto :goto_453

    .line 448
    :cond_44b
    iget-wide v0, v7, Lyl;->aP:D

    iput-wide v0, v7, Lyl;->f:D

    .line 449
    iget-wide v0, v7, Lyl;->aR:D

    iput-wide v0, v7, Lyl;->g:D

    :cond_453
    :goto_453
    if-eqz v16, :cond_533

    .line 456
    iget-wide v0, v7, Lyl;->aP:D

    iget-wide v3, v7, Lyl;->aP:D

    mul-double/2addr v0, v3

    iget-wide v3, v7, Lyl;->aR:D

    iget-wide v5, v7, Lyl;->aR:D

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    cmpl-double v3, v0, v13

    if-lez v3, :cond_481

    .line 459
    iget-wide v2, v7, Lyl;->aP:D

    iget-wide v4, v7, Lyl;->aP:D

    div-double/2addr v4, v0

    const-wide v10, 0x3faeb851eb851eb8L    # 0.06

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    iput-wide v2, v7, Lyl;->aP:D

    .line 460
    iget-wide v2, v7, Lyl;->aR:D

    iget-wide v4, v7, Lyl;->aR:D

    div-double/2addr v4, v0

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    iput-wide v2, v7, Lyl;->aR:D

    goto/16 :goto_533

    :cond_481
    const-wide v0, -0x406b851eb851eb85L    # -0.02

    const-wide v3, 0x3f947ae147ae147bL    # 0.02

    move/from16 v5, v28

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4ae

    .line 465
    iget-object v5, v7, Lyl;->aI:Lfd;

    add-int/lit8 v11, v8, -0x1

    move/from16 v12, v27

    invoke-virtual {v5, v11, v12, v2}, Lfd;->h(III)Z

    move-result v5

    if-eqz v5, :cond_4a0

    .line 466
    iput-wide v3, v7, Lyl;->aP:D

    goto/16 :goto_533

    .line 467
    :cond_4a0
    iget-object v3, v7, Lyl;->aI:Lfd;

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v3, v11, v12, v2}, Lfd;->h(III)Z

    move-result v2

    if-eqz v2, :cond_533

    .line 468
    iput-wide v0, v7, Lyl;->aP:D

    goto/16 :goto_533

    :cond_4ae
    move/from16 v12, v27

    if-nez v5, :cond_533

    .line 471
    iget-object v5, v7, Lyl;->aI:Lfd;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v8, v12, v6}, Lfd;->h(III)Z

    move-result v5

    if-eqz v5, :cond_4c0

    .line 472
    iput-wide v3, v7, Lyl;->aR:D

    goto/16 :goto_533

    .line 473
    :cond_4c0
    iget-object v3, v7, Lyl;->aI:Lfd;

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v3, v8, v12, v2}, Lfd;->h(III)Z

    move-result v2

    if-eqz v2, :cond_533

    .line 474
    iput-wide v0, v7, Lyl;->aR:D

    goto :goto_533

    :cond_4cd
    const-wide v5, -0x4026666666666666L    # -0.4

    .line 481
    iget-wide v0, v7, Lyl;->aP:D

    cmpg-double v0, v0, v5

    if-gez v0, :cond_4da

    iput-wide v5, v7, Lyl;->aP:D

    .line 482
    :cond_4da
    iget-wide v0, v7, Lyl;->aP:D

    const-wide v2, 0x3fd999999999999aL    # 0.4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4e7

    iput-wide v2, v7, Lyl;->aP:D

    .line 483
    :cond_4e7
    iget-wide v0, v7, Lyl;->aR:D

    cmpg-double v0, v0, v5

    if-gez v0, :cond_4ef

    iput-wide v5, v7, Lyl;->aR:D

    .line 484
    :cond_4ef
    iget-wide v0, v7, Lyl;->aR:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4f7

    iput-wide v2, v7, Lyl;->aR:D

    .line 485
    :cond_4f7
    iget-boolean v0, v7, Lyl;->aX:Z

    if-eqz v0, :cond_50d

    .line 486
    iget-wide v0, v7, Lyl;->aP:D

    mul-double v0, v0, v21

    iput-wide v0, v7, Lyl;->aP:D

    .line 487
    iget-wide v0, v7, Lyl;->aQ:D

    mul-double v0, v0, v21

    iput-wide v0, v7, Lyl;->aQ:D

    .line 488
    iget-wide v0, v7, Lyl;->aR:D

    mul-double v0, v0, v21

    iput-wide v0, v7, Lyl;->aR:D

    .line 490
    :cond_50d
    iget-wide v1, v7, Lyl;->aP:D

    iget-wide v3, v7, Lyl;->aQ:D

    iget-wide v5, v7, Lyl;->aR:D

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lyl;->b(DDD)V

    .line 492
    iget-boolean v0, v7, Lyl;->aX:Z

    if-eqz v0, :cond_51d

    goto :goto_531

    .line 494
    :cond_51d
    iget-wide v0, v7, Lyl;->aP:D

    const-wide v2, 0x3fee666660000000L    # 0.949999988079071

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aP:D

    .line 495
    iget-wide v0, v7, Lyl;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aQ:D

    .line 496
    iget-wide v0, v7, Lyl;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, v7, Lyl;->aR:D

    :goto_531
    move/from16 v9, v23

    :cond_533
    :goto_533
    const/4 v0, 0x0

    .line 500
    iput v0, v7, Lyl;->aT:F

    .line 501
    iget-wide v0, v7, Lyl;->aJ:D

    iget-wide v2, v7, Lyl;->aM:D

    sub-double/2addr v0, v2

    .line 502
    iget-wide v2, v7, Lyl;->aL:D

    iget-wide v4, v7, Lyl;->aO:D

    sub-double/2addr v2, v4

    mul-double v4, v0, v0

    mul-double v11, v2, v2

    add-double/2addr v4, v11

    cmpl-double v4, v4, v19

    const/high16 v5, 0x43340000    # 180.0f

    if-lez v4, :cond_567

    .line 504
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v11

    double-to-float v0, v0

    iput v0, v7, Lyl;->aS:F

    .line 505
    iget-boolean v0, v7, Lyl;->i:Z

    if-eqz v0, :cond_567

    iget v0, v7, Lyl;->aS:F

    add-float/2addr v0, v5

    iput v0, v7, Lyl;->aS:F

    .line 508
    :cond_567
    iget v0, v7, Lyl;->aS:F

    iget v1, v7, Lyl;->aU:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    :goto_572
    cmpl-double v4, v0, v2

    const-wide v11, 0x4076800000000000L    # 360.0

    if-ltz v4, :cond_57d

    sub-double/2addr v0, v11

    goto :goto_572

    :cond_57d
    const-wide v2, -0x3f99800000000000L    # -180.0

    :goto_582
    cmpg-double v4, v0, v2

    if-gez v4, :cond_588

    add-double/2addr v0, v11

    goto :goto_582

    :cond_588
    const-wide v2, -0x3f9ac00000000000L    # -170.0

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_59a

    const-wide v2, 0x4065400000000000L    # 170.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_5a5

    .line 514
    :cond_59a
    iget v0, v7, Lyl;->aS:F

    add-float/2addr v0, v5

    iput v0, v7, Lyl;->aS:F

    .line 515
    iget-boolean v0, v7, Lyl;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, v7, Lyl;->i:Z

    .line 517
    :cond_5a5
    iget v0, v7, Lyl;->aS:F

    iget v1, v7, Lyl;->aT:F

    invoke-virtual {v7, v0, v1}, Lyl;->c(FF)V

    .line 521
    iget-object v0, v7, Lyl;->aI:Lfd;

    iget-object v11, v7, Lyl;->aW:Leq;

    const-wide v12, 0x3fc99999a0000000L    # 0.20000000298023224

    const-wide/16 v14, 0x0

    const-wide v16, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-virtual/range {v11 .. v17}, Leq;->b(DDD)Leq;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5ee

    .line 522
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5ee

    move/from16 v1, v23

    .line 523
    :goto_5ce
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5ee

    .line 524
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsn;

    .line 525
    iget-object v3, v7, Lyl;->aG:Lsn;

    if-eq v2, v3, :cond_5eb

    invoke-virtual {v2}, Lsn;->i_()Z

    move-result v3

    if-eqz v3, :cond_5eb

    instance-of v3, v2, Lyl;

    if-eqz v3, :cond_5eb

    .line 526
    invoke-virtual {v2, v7}, Lsn;->h(Lsn;)V

    :cond_5eb
    add-int/lit8 v1, v1, 0x1

    goto :goto_5ce

    .line 532
    :cond_5ee
    iget-object v0, v7, Lyl;->aG:Lsn;

    if-eqz v0, :cond_5fb

    .line 533
    iget-object v0, v7, Lyl;->aG:Lsn;

    iget-boolean v0, v0, Lsn;->be:Z

    if-eqz v0, :cond_5fb

    const/4 v0, 0x0

    iput-object v0, v7, Lyl;->aG:Lsn;

    :cond_5fb
    if-eqz v9, :cond_62e

    .line 536
    iget-object v0, v7, Lyl;->bs:Ljava/util/Random;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_62e

    .line 537
    iget v0, v7, Lyl;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, v7, Lyl;->e:I

    if-gez v0, :cond_614

    const-wide/16 v0, 0x0

    .line 539
    iput-wide v0, v7, Lyl;->g:D

    iput-wide v0, v7, Lyl;->f:D

    .line 541
    :cond_614
    iget-object v8, v7, Lyl;->aI:Lfd;

    const-string v9, "largesmoke"

    iget-wide v10, v7, Lyl;->aM:D

    iget-wide v0, v7, Lyl;->aN:D

    const-wide v2, 0x3fe999999999999aL    # 0.8

    add-double v12, v0, v2

    iget-wide v14, v7, Lyl;->aO:D

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v8 .. v21}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    :cond_62e
    return-void
.end method

.method public x_()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public y_()V
    .registers 1

    return-void
.end method
