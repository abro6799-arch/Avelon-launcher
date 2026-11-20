###### Class defpackage.bs (bs)
.class public Lbs;
.super Luu;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 5

    .line 15
    sget-object v0, Lln;->e:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    if-eqz p3, :cond_b

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Lbs;->b(Z)Luu;

    .line 19
    :cond_b
    iput-boolean p3, p0, Lbs;->a:Z

    return-void
.end method

.method private h(Lfd;III)V
    .registers 7

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lbs;->i(Lfd;III)V

    .line 43
    iget v0, p0, Lbs;->bn:I

    sget-object v1, Luu;->aO:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_12

    .line 44
    sget-object v0, Luu;->aP:Luu;

    iget v0, v0, Luu;->bn:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->f(IIII)Z

    :cond_12
    return-void
.end method

.method private i(Lfd;III)V
    .registers 29

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 69
    iget-object v10, v14, Lfd;->r:Ljava/util/Random;

    const/4 v0, 0x0

    move v11, v0

    :goto_c
    const/4 v0, 0x6

    if-ge v11, v0, :cond_d0

    int-to-float v0, v15

    .line 72
    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    int-to-float v2, v12

    .line 73
    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    int-to-float v4, v13

    .line 74
    invoke-virtual {v10}, Ljava/util/Random;->nextFloat()F

    move-result v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fb0000000000000L    # 0.0625

    if-nez v11, :cond_32

    add-int/lit8 v8, v12, 0x1

    .line 75
    invoke-virtual {v14, v15, v8, v13}, Lfd;->g(III)Z

    move-result v9

    if-nez v9, :cond_32

    int-to-double v2, v8

    add-double/2addr v2, v6

    :cond_32
    const/4 v8, 0x1

    if-ne v11, v8, :cond_41

    add-int/lit8 v8, v12, -0x1

    .line 76
    invoke-virtual {v14, v15, v8, v13}, Lfd;->g(III)Z

    move-result v8

    if-nez v8, :cond_41

    add-int/lit8 v2, v12, 0x0

    int-to-double v2, v2

    sub-double/2addr v2, v6

    :cond_41
    move-wide v8, v2

    const/4 v2, 0x2

    if-ne v11, v2, :cond_50

    add-int/lit8 v2, v13, 0x1

    .line 77
    invoke-virtual {v14, v15, v12, v2}, Lfd;->g(III)Z

    move-result v3

    if-nez v3, :cond_50

    int-to-double v2, v2

    add-double v4, v2, v6

    :cond_50
    const/4 v2, 0x3

    if-ne v11, v2, :cond_62

    add-int/lit8 v2, v13, -0x1

    .line 78
    invoke-virtual {v14, v15, v12, v2}, Lfd;->g(III)Z

    move-result v2

    if-nez v2, :cond_62

    add-int/lit8 v2, v13, 0x0

    int-to-double v2, v2

    sub-double/2addr v2, v6

    move-wide/from16 v16, v2

    goto :goto_64

    :cond_62
    move-wide/from16 v16, v4

    :goto_64
    const/4 v2, 0x4

    if-ne v11, v2, :cond_71

    add-int/lit8 v2, v15, 0x1

    .line 79
    invoke-virtual {v14, v2, v12, v13}, Lfd;->g(III)Z

    move-result v3

    if-nez v3, :cond_71

    int-to-double v0, v2

    add-double/2addr v0, v6

    :cond_71
    const/4 v2, 0x5

    if-ne v11, v2, :cond_80

    add-int/lit8 v2, v15, -0x1

    .line 80
    invoke-virtual {v14, v2, v12, v13}, Lfd;->g(III)Z

    move-result v2

    if-nez v2, :cond_80

    add-int/lit8 v0, v15, 0x0

    int-to-double v0, v0

    sub-double/2addr v0, v6

    :cond_80
    move-wide v2, v0

    int-to-double v0, v15

    cmpg-double v0, v2, v0

    if-ltz v0, :cond_ac

    add-int/lit8 v0, v15, 0x1

    int-to-double v0, v0

    cmpl-double v0, v2, v0

    if-gtz v0, :cond_ac

    const-wide/16 v0, 0x0

    cmpg-double v0, v8, v0

    if-ltz v0, :cond_ac

    add-int/lit8 v0, v12, 0x1

    int-to-double v0, v0

    cmpl-double v0, v8, v0

    if-gtz v0, :cond_ac

    int-to-double v0, v13

    cmpg-double v0, v16, v0

    if-ltz v0, :cond_ac

    add-int/lit8 v0, v13, 0x1

    int-to-double v0, v0

    cmpl-double v0, v16, v0

    if-lez v0, :cond_a7

    goto :goto_ac

    :cond_a7
    move-object/from16 v16, v10

    move/from16 v17, v11

    goto :goto_c6

    :cond_ac
    :goto_ac
    const-string v1, "reddust"

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v0, p1

    move-wide v4, v8

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-wide/from16 v10, v20

    move-wide/from16 v12, v22

    .line 82
    invoke-virtual/range {v0 .. v13}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    :goto_c6
    add-int/lit8 v11, v17, 0x1

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v10, v16

    goto/16 :goto_c

    :cond_d0
    return-void
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 3

    .line 55
    sget-object p1, Lgm;->aA:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 3

    const/4 v0, 0x2

    .line 59
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 7

    .line 49
    iget p5, p0, Lbs;->bn:I

    sget-object v0, Luu;->aP:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p5, v0, :cond_f

    .line 50
    sget-object p5, Luu;->aO:Luu;

    iget p5, p5, Luu;->bn:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    :cond_f
    return-void
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 6

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lbs;->h(Lfd;III)V

    .line 38
    invoke-super/range {p0 .. p5}, Luu;->a(Lfd;IIILgs;)Z

    move-result p1

    return p1
.end method

.method public b(Lfd;IIILgs;)V
    .registers 6

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lbs;->h(Lfd;III)V

    .line 28
    invoke-super/range {p0 .. p5}, Luu;->b(Lfd;IIILgs;)V

    return-void
.end method

.method public b(Lfd;IIILjava/util/Random;)V
    .registers 6

    .line 63
    iget-boolean p5, p0, Lbs;->a:Z

    if-eqz p5, :cond_7

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lbs;->i(Lfd;III)V

    :cond_7
    return-void
.end method

.method public b(Lfd;IIILsn;)V
    .registers 6

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lbs;->h(Lfd;III)V

    .line 33
    invoke-super/range {p0 .. p5}, Luu;->b(Lfd;IIILsn;)V

    return-void
.end method

.method public e()I
    .registers 2

    const/16 v0, 0x1e

    return v0
.end method
