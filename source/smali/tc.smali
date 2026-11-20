###### Class defpackage.tc (tc)
.class public Ltc;
.super Lrw;
.source "SourceFile"


# static fields
.field private static c:Z


# instance fields
.field private a:Ljava/util/Random;

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(IZ)V
    .registers 4

    .line 21
    sget-object v0, Lln;->e:Lln;

    invoke-direct {p0, p1, v0}, Lrw;-><init>(ILln;)V

    .line 16
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Ltc;->a:Ljava/util/Random;

    .line 22
    iput-boolean p2, p0, Ltc;->b:Z

    const/16 p1, 0x2d

    .line 23
    iput p1, p0, Ltc;->bm:I

    return-void
.end method

.method public static a(ZLfd;III)V
    .registers 8

    .line 108
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v0

    .line 109
    invoke-virtual {p1, p2, p3, p4}, Lfd;->b(III)Low;

    move-result-object v1

    const/4 v2, 0x1

    .line 111
    sput-boolean v2, Ltc;->c:Z

    if-eqz p0, :cond_15

    .line 112
    sget-object p0, Luu;->aD:Luu;

    iget p0, p0, Luu;->bn:I

    invoke-virtual {p1, p2, p3, p4, p0}, Lfd;->f(IIII)Z

    goto :goto_1c

    .line 113
    :cond_15
    sget-object p0, Luu;->aC:Luu;

    iget p0, p0, Luu;->bn:I

    invoke-virtual {p1, p2, p3, p4, p0}, Lfd;->f(IIII)Z

    :goto_1c
    const/4 p0, 0x0

    .line 114
    sput-boolean p0, Ltc;->c:Z

    .line 116
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    .line 117
    invoke-virtual {v1}, Low;->j()V

    .line 118
    invoke-virtual {p1, p2, p3, p4, v1}, Lfd;->a(IIILow;)V

    return-void
.end method

.method private h(Lfd;III)V
    .registers 10

    .line 37
    iget-boolean v0, p1, Lfd;->B:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    add-int/lit8 v0, p4, -0x1

    .line 41
    invoke-virtual {p1, p2, p3, v0}, Lfd;->a(III)I

    move-result v0

    add-int/lit8 v1, p4, 0x1

    .line 42
    invoke-virtual {p1, p2, p3, v1}, Lfd;->a(III)I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    .line 43
    invoke-virtual {p1, v2, p3, p4}, Lfd;->a(III)I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    .line 44
    invoke-virtual {p1, v3, p3, p4}, Lfd;->a(III)I

    move-result v3

    .line 47
    sget-object v4, Luu;->o:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_27

    sget-object v4, Luu;->o:[Z

    aget-boolean v4, v4, v1

    .line 48
    :cond_27
    sget-object v4, Luu;->o:[Z

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_35

    sget-object v1, Luu;->o:[Z

    aget-boolean v0, v1, v0

    if-nez v0, :cond_35

    const/4 v0, 0x2

    goto :goto_36

    :cond_35
    const/4 v0, 0x3

    .line 49
    :goto_36
    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_43

    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_43

    const/4 v0, 0x5

    .line 50
    :cond_43
    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_50

    sget-object v1, Luu;->o:[Z

    aget-boolean v1, v1, v2

    if-nez v1, :cond_50

    const/4 v0, 0x4

    .line 51
    :cond_50
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 92
    iget p1, p0, Ltc;->bm:I

    add-int/lit8 p1, p1, 0x11

    return p1

    :cond_8
    if-nez p1, :cond_f

    .line 93
    iget p1, p0, Ltc;->bm:I

    add-int/lit8 p1, p1, 0x11

    return p1

    :cond_f
    const/4 v1, 0x3

    if-ne p1, v1, :cond_16

    .line 94
    iget p1, p0, Ltc;->bm:I

    sub-int/2addr p1, v0

    return p1

    .line 95
    :cond_16
    iget p1, p0, Ltc;->bm:I

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    .line 27
    sget-object p1, Luu;->aC:Luu;

    iget p1, p1, Luu;->bn:I

    return p1
.end method

.method public a(Lxp;IIII)I
    .registers 7

    const/4 v0, 0x1

    if-ne p5, v0, :cond_8

    .line 55
    iget p1, p0, Ltc;->bm:I

    add-int/lit8 p1, p1, 0x11

    return p1

    :cond_8
    if-nez p5, :cond_f

    .line 56
    iget p1, p0, Ltc;->bm:I

    add-int/lit8 p1, p1, 0x11

    return p1

    .line 58
    :cond_f
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p1

    if-eq p5, p1, :cond_18

    .line 60
    iget p1, p0, Ltc;->bm:I

    return p1

    .line 61
    :cond_18
    iget-boolean p1, p0, Ltc;->b:Z

    if-eqz p1, :cond_21

    iget p1, p0, Ltc;->bm:I

    add-int/lit8 p1, p1, 0x10

    return p1

    .line 62
    :cond_21
    iget p1, p0, Ltc;->bm:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public a(Lfd;IIILls;)V
    .registers 10

    .line 126
    iget p5, p5, Lls;->aS:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p5, v0

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p5, v0

    float-to-double v0, p5

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result p5

    const/4 v0, 0x3

    and-int/2addr p5, v0

    const/4 v1, 0x2

    if-nez p5, :cond_18

    .line 128
    invoke-virtual {p1, p2, p3, p4, v1}, Lfd;->d(IIII)V

    :cond_18
    const/4 v2, 0x1

    if-ne p5, v2, :cond_1f

    const/4 v2, 0x5

    .line 129
    invoke-virtual {p1, p2, p3, p4, v2}, Lfd;->d(IIII)V

    :cond_1f
    if-ne p5, v1, :cond_24

    .line 130
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->d(IIII)V

    :cond_24
    if-ne p5, v0, :cond_2a

    const/4 p5, 0x4

    .line 131
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    :cond_2a
    return-void
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 8

    .line 99
    iget-boolean v0, p1, Lfd;->B:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 102
    :cond_6
    invoke-virtual {p1, p2, p3, p4}, Lfd;->b(III)Low;

    move-result-object p1

    check-cast p1, Lsk;

    .line 103
    invoke-virtual {p5, p1}, Lgs;->a(Lsk;)V

    return v1
.end method

.method protected a_()Low;
    .registers 2

    .line 122
    new-instance v0, Lsk;

    invoke-direct {v0}, Lsk;-><init>()V

    return-object v0
.end method

.method public b(Lfd;III)V
    .registers 27

    move-object/from16 v0, p0

    .line 135
    sget-boolean v1, Ltc;->c:Z

    if-nez v1, :cond_c3

    .line 136
    invoke-virtual/range {p1 .. p4}, Lfd;->b(III)Low;

    move-result-object v1

    check-cast v1, Lsk;

    const/4 v2, 0x0

    .line 137
    :goto_d
    invoke-interface {v1}, Llw;->a()I

    move-result v3

    if-ge v2, v3, :cond_c3

    .line 138
    invoke-interface {v1, v2}, Llw;->f_(I)Liz;

    move-result-object v3

    if-eqz v3, :cond_b9

    .line 140
    iget-object v4, v0, Ltc;->a:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr v4, v6

    .line 141
    iget-object v7, v0, Ltc;->a:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v6

    .line 142
    iget-object v8, v0, Ltc;->a:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v8, v5

    add-float/2addr v8, v6

    .line 144
    :goto_37
    iget v5, v3, Liz;->a:I

    if-lez v5, :cond_b9

    .line 145
    iget-object v5, v0, Ltc;->a:Ljava/util/Random;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    .line 146
    iget v6, v3, Liz;->a:I

    if-le v5, v6, :cond_4b

    iget v5, v3, Liz;->a:I

    .line 147
    :cond_4b
    iget v6, v3, Liz;->a:I

    sub-int/2addr v6, v5

    iput v6, v3, Liz;->a:I

    .line 149
    new-instance v6, Lhl;

    move/from16 v15, p2

    int-to-float v9, v15

    add-float/2addr v9, v4

    float-to-double v11, v9

    move/from16 v13, p3

    int-to-float v9, v13

    add-float/2addr v9, v7

    float-to-double v9, v9

    move/from16 v14, p4

    move-object/from16 v18, v1

    int-to-float v1, v14

    add-float/2addr v1, v8

    move/from16 v19, v7

    move/from16 v20, v8

    float-to-double v7, v1

    new-instance v1, Liz;

    move/from16 v21, v4

    iget v4, v3, Liz;->c:I

    move-wide/from16 v16, v9

    invoke-virtual {v3}, Liz;->i()I

    move-result v9

    invoke-direct {v1, v4, v5, v9}, Liz;-><init>(III)V

    move-wide/from16 v4, v16

    move-object v9, v6

    move-object/from16 v10, p1

    move-wide v13, v4

    move-wide v15, v7

    move-object/from16 v17, v1

    invoke-direct/range {v9 .. v17}, Lhl;-><init>(Lfd;DDDLiz;)V

    .line 151
    iget-object v1, v0, Ltc;->a:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v4

    double-to-float v1, v4

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v4

    float-to-double v7, v1

    iput-wide v7, v6, Lhl;->aP:D

    .line 152
    iget-object v1, v0, Ltc;->a:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v7

    double-to-float v1, v7

    mul-float/2addr v1, v4

    const v5, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v5

    float-to-double v7, v1

    iput-wide v7, v6, Lhl;->aQ:D

    .line 153
    iget-object v1, v0, Ltc;->a:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v7

    double-to-float v1, v7

    mul-float/2addr v1, v4

    float-to-double v4, v1

    iput-wide v4, v6, Lhl;->aR:D

    move-object/from16 v1, p1

    .line 154
    invoke-virtual {v1, v6}, Lfd;->b(Lsn;)Z

    move-object/from16 v1, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v4, v21

    goto/16 :goto_37

    :cond_b9
    move-object/from16 v18, v1

    move-object/from16 v1, p1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v18

    goto/16 :goto_d

    :cond_c3
    move-object/from16 v1, p1

    .line 159
    invoke-super/range {p0 .. p4}, Lrw;->b(Lfd;III)V

    return-void
.end method

.method public b(Lfd;IIILjava/util/Random;)V
    .registers 30

    move-object/from16 v0, p0

    .line 66
    iget-boolean v1, v0, Ltc;->b:Z

    if-nez v1, :cond_7

    return-void

    .line 68
    :cond_7
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v1

    move/from16 v2, p2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    move/from16 v4, p3

    int-to-float v4, v4

    const/4 v5, 0x0

    add-float/2addr v4, v5

    .line 71
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x41800000    # 16.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move/from16 v5, p4

    int-to-float v5, v5

    add-float/2addr v5, v3

    .line 74
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v6

    const v6, 0x3e99999a    # 0.3f

    sub-float/2addr v3, v6

    const/4 v6, 0x4

    const v7, 0x3f051eb8    # 0.52f

    if-ne v1, v6, :cond_5b

    const-string v9, "smoke"

    sub-float/2addr v2, v7

    float-to-double v1, v2

    float-to-double v6, v4

    add-float/2addr v5, v3

    float-to-double v3, v5

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v8, p1

    move-wide v10, v1

    move-wide v12, v6

    move-wide v14, v3

    .line 77
    invoke-virtual/range {v8 .. v21}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    const-string v11, "flame"

    const-wide/16 v22, 0x0

    move-object/from16 v10, p1

    move-wide v12, v1

    move-wide v14, v6

    move-wide/from16 v16, v3

    .line 78
    invoke-virtual/range {v10 .. v23}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    goto/16 :goto_cc

    :cond_5b
    const/4 v6, 0x5

    if-ne v1, v6, :cond_81

    const-string v9, "smoke"

    add-float/2addr v2, v7

    float-to-double v1, v2

    float-to-double v6, v4

    add-float/2addr v5, v3

    float-to-double v3, v5

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v8, p1

    move-wide v10, v1

    move-wide v12, v6

    move-wide v14, v3

    .line 80
    invoke-virtual/range {v8 .. v21}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    const-string v11, "flame"

    const-wide/16 v22, 0x0

    move-object/from16 v10, p1

    move-wide v12, v1

    move-wide v14, v6

    move-wide/from16 v16, v3

    .line 81
    invoke-virtual/range {v10 .. v23}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    goto :goto_cc

    :cond_81
    const/4 v6, 0x2

    if-ne v1, v6, :cond_a7

    const-string v9, "smoke"

    add-float/2addr v2, v3

    float-to-double v1, v2

    float-to-double v3, v4

    sub-float/2addr v5, v7

    float-to-double v5, v5

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v8, p1

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    .line 83
    invoke-virtual/range {v8 .. v21}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    const-string v11, "flame"

    const-wide/16 v22, 0x0

    move-object/from16 v10, p1

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    .line 84
    invoke-virtual/range {v10 .. v23}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    goto :goto_cc

    :cond_a7
    const/4 v6, 0x3

    if-ne v1, v6, :cond_cc

    const-string v9, "smoke"

    add-float/2addr v2, v3

    float-to-double v1, v2

    float-to-double v3, v4

    add-float/2addr v5, v7

    float-to-double v5, v5

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v8, p1

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    .line 86
    invoke-virtual/range {v8 .. v21}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    const-string v11, "flame"

    const-wide/16 v22, 0x0

    move-object/from16 v10, p1

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    .line 87
    invoke-virtual/range {v10 .. v23}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    :cond_cc
    :goto_cc
    return-void
.end method

.method public c(Lfd;III)V
    .registers 5

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lrw;->c(Lfd;III)V

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Ltc;->h(Lfd;III)V

    return-void
.end method
