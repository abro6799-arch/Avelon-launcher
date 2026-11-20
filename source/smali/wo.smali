###### Class defpackage.wo (wo)
.class public Lwo;
.super Luu;
.source "SourceFile"


# static fields
.field public static final a:[D

.field private static final b:[I


# instance fields
.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x4

    new-array v1, v0, [D

    .line 21
    fill-array-data v1, :array_12

    sput-object v1, Lwo;->a:[D

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 26
    filled-new-array {v3, v1, v2, v0}, [I

    move-result-object v0

    sput-object v0, Lwo;->b:[I

    return-void

    :array_12
    .array-data 8
        -0x4050000000000000L    # -0.0625
        0x3fb0000000000000L    # 0.0625
        0x3fc8000000000000L    # 0.1875
        0x3fd4000000000000L    # 0.3125
    .end array-data
.end method

.method protected constructor <init>(IZ)V
    .registers 12

    const/4 v0, 0x6

    .line 33
    sget-object v1, Lln;->o:Lln;

    invoke-direct {p0, p1, v0, v1}, Luu;-><init>(IILln;)V

    .line 34
    iput-boolean p2, p0, Lwo;->c:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3e000000    # 0.125f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p0

    .line 35
    invoke-virtual/range {v2 .. v8}, Lwo;->a(FFFFFF)V

    return-void
.end method

.method private f(Lfd;IIII)Z
    .registers 10

    const/4 v0, 0x3

    and-int/2addr p5, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p5, :cond_5b

    if-eq p5, v2, :cond_41

    const/4 v3, 0x2

    if-eq p5, v3, :cond_28

    if-eq p5, v0, :cond_e

    return v1

    :cond_e
    add-int/2addr p2, v2

    const/4 p5, 0x5

    .line 173
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->k(IIII)Z

    move-result p5

    if-nez p5, :cond_26

    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p5

    sget-object v0, Luu;->aw:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p5, v0, :cond_27

    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p1

    if-lez p1, :cond_27

    :cond_26
    move v1, v2

    :cond_27
    return v1

    :cond_28
    sub-int/2addr p4, v2

    .line 171
    invoke-virtual {p1, p2, p3, p4, v3}, Lfd;->k(IIII)Z

    move-result p5

    if-nez p5, :cond_3f

    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p5

    sget-object v0, Luu;->aw:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p5, v0, :cond_40

    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p1

    if-lez p1, :cond_40

    :cond_3f
    move v1, v2

    :cond_40
    return v1

    :cond_41
    sub-int/2addr p2, v2

    const/4 p5, 0x4

    .line 175
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->k(IIII)Z

    move-result p5

    if-nez p5, :cond_59

    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p5

    sget-object v0, Luu;->aw:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p5, v0, :cond_5a

    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p1

    if-lez p1, :cond_5a

    :cond_59
    move v1, v2

    :cond_5a
    return v1

    :cond_5b
    add-int/2addr p4, v2

    .line 169
    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->k(IIII)Z

    move-result p5

    if-nez p5, :cond_72

    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p5

    sget-object v0, Luu;->aw:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p5, v0, :cond_73

    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p1

    if-lez p1, :cond_73

    :cond_72
    move v1, v2

    :cond_73
    return v1
.end method


# virtual methods
.method public a(I)I
    .registers 3

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, p1, v0}, Lwo;->a(II)I

    move-result p1

    return p1
.end method

.method public a(II)I
    .registers 3

    if-nez p1, :cond_c

    .line 90
    iget-boolean p1, p0, Lwo;->c:Z

    if-eqz p1, :cond_9

    const/16 p1, 0x63

    return p1

    :cond_9
    const/16 p1, 0x73

    return p1

    :cond_c
    const/4 p2, 0x1

    if-ne p1, p2, :cond_19

    .line 96
    iget-boolean p1, p0, Lwo;->c:Z

    if-eqz p1, :cond_16

    const/16 p1, 0x93

    return p1

    :cond_16
    const/16 p1, 0x83

    return p1

    :cond_19
    const/4 p1, 0x5

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    .line 225
    sget-object p1, Lgm;->aZ:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 13

    .line 62
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 63
    invoke-direct/range {v0 .. v5}, Lwo;->f(Lfd;IIII)Z

    move-result v6

    .line 64
    iget-boolean v0, p0, Lwo;->c:Z

    if-eqz v0, :cond_21

    if-nez v6, :cond_21

    .line 65
    sget-object v0, Luu;->bi:Luu;

    iget v4, v0, Luu;->bn:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lfd;->b(IIIII)Z

    goto :goto_46

    :cond_21
    if-nez v0, :cond_46

    .line 69
    sget-object v0, Luu;->bj:Luu;

    iget v4, v0, Luu;->bn:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lfd;->b(IIIII)Z

    if-nez v6, :cond_46

    and-int/lit8 p5, p5, 0xc

    shr-int/lit8 p5, p5, 0x2

    .line 72
    sget-object v0, Luu;->bj:Luu;

    iget v5, v0, Luu;->bn:I

    sget-object v0, Lwo;->b:[I

    aget p5, v0, p5

    mul-int/lit8 v6, p5, 0x2

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Lfd;->c(IIIII)V

    :cond_46
    :goto_46
    return-void
.end method

.method public a(Lfd;IIILls;)V
    .registers 12

    .line 198
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

    and-int/lit8 p5, p5, 0x3

    add-int/lit8 p5, p5, 0x2

    rem-int/lit8 v5, p5, 0x4

    .line 199
    invoke-virtual {p1, p2, p3, p4, v5}, Lfd;->d(IIII)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 201
    invoke-direct/range {v0 .. v5}, Lwo;->f(Lfd;IIII)Z

    move-result p5

    if-eqz p5, :cond_2e

    .line 203
    iget v4, p0, Lwo;->bn:I

    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lfd;->c(IIIII)V

    :cond_2e
    return-void
.end method

.method public a(Lfd;III)Z
    .registers 6

    add-int/lit8 v0, p3, -0x1

    .line 45
    invoke-virtual {p1, p2, v0, p4}, Lfd;->h(III)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 48
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Luu;->a(Lfd;III)Z

    move-result p1

    return p1
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 8

    .line 183
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p5

    and-int/lit8 v0, p5, 0xc

    shr-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0xc

    and-int/lit8 p5, p5, 0x3

    or-int/2addr p5, v0

    .line 187
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->d(IIII)V

    return v1
.end method

.method public b()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method public b(Lfd;IIII)V
    .registers 14

    .line 148
    invoke-virtual {p0, p1, p2, p3, p4}, Lwo;->g(Lfd;III)Z

    move-result p5

    if-nez p5, :cond_17

    .line 149
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lwo;->g(Lfd;IIII)V

    const/4 p5, 0x0

    .line 150
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    return-void

    .line 154
    :cond_17
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 156
    invoke-direct/range {v0 .. v5}, Lwo;->f(Lfd;IIII)Z

    move-result v0

    and-int/lit8 p5, p5, 0xc

    shr-int/lit8 p5, p5, 0x2

    .line 158
    iget-boolean v1, p0, Lwo;->c:Z

    if-eqz v1, :cond_3f

    if-nez v0, :cond_3f

    .line 159
    iget v6, p0, Lwo;->bn:I

    sget-object v0, Lwo;->b:[I

    aget p5, v0, p5

    mul-int/lit8 v7, p5, 0x2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v2 .. v7}, Lfd;->c(IIIII)V

    goto :goto_52

    :cond_3f
    if-nez v1, :cond_52

    if-eqz v0, :cond_52

    .line 161
    iget v4, p0, Lwo;->bn:I

    sget-object v0, Lwo;->b:[I

    aget p5, v0, p5

    mul-int/lit8 v5, p5, 0x2

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lfd;->c(IIIII)V

    :cond_52
    :goto_52
    return-void
.end method

.method public b(Lfd;IIILjava/util/Random;)V
    .registers 34

    move-object/from16 v0, p0

    .line 230
    iget-boolean v1, v0, Lwo;->c:Z

    if-nez v1, :cond_7

    return-void

    .line 231
    :cond_7
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v1

    move/from16 v2, p2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-double v4, v2

    .line 233
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v3

    float-to-double v6, v2

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move/from16 v2, p3

    int-to-float v2, v2

    const v6, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v6

    float-to-double v6, v2

    .line 234
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v3

    float-to-double v10, v2

    mul-double/2addr v10, v8

    add-double v16, v6, v10

    move/from16 v2, p4

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-double v6, v2

    .line 235
    invoke-virtual/range {p5 .. p5}, Ljava/util/Random;->nextFloat()F

    move-result v2

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v8

    add-double/2addr v6, v2

    const/4 v2, 0x2

    move-object/from16 v3, p5

    .line 240
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x3

    if-nez v3, :cond_63

    and-int/2addr v1, v11

    const-wide/high16 v12, -0x402c000000000000L    # -0.3125

    if-eqz v1, :cond_8c

    const-wide/high16 v14, 0x3fd4000000000000L    # 0.3125

    if-eq v1, v8, :cond_60

    if-eq v1, v2, :cond_5e

    if-eq v1, v11, :cond_58

    goto :goto_6f

    :cond_58
    move-wide/from16 v26, v9

    move-wide v9, v12

    move-wide/from16 v12, v26

    goto :goto_8c

    :cond_5e
    move-wide v12, v14

    goto :goto_8c

    :cond_60
    move-wide v12, v9

    move-wide v9, v14

    goto :goto_8c

    :cond_63
    and-int/lit8 v3, v1, 0xc

    shr-int/2addr v3, v2

    and-int/2addr v1, v11

    if-eqz v1, :cond_87

    if-eq v1, v8, :cond_7f

    if-eq v1, v2, :cond_78

    if-eq v1, v11, :cond_71

    :goto_6f
    move-wide v12, v9

    goto :goto_8c

    .line 267
    :cond_71
    sget-object v1, Lwo;->a:[D

    aget-wide v2, v1, v3

    move-wide v12, v9

    move-wide v9, v2

    goto :goto_8c

    .line 264
    :cond_78
    sget-object v1, Lwo;->a:[D

    aget-wide v2, v1, v3

    neg-double v1, v2

    move-wide v12, v1

    goto :goto_8c

    .line 270
    :cond_7f
    sget-object v1, Lwo;->a:[D

    aget-wide v2, v1, v3

    neg-double v1, v2

    move-wide v12, v9

    move-wide v9, v1

    goto :goto_8c

    .line 261
    :cond_87
    sget-object v1, Lwo;->a:[D

    aget-wide v2, v1, v3

    move-wide v12, v2

    :cond_8c
    :goto_8c
    const-string v1, "reddust"

    add-double v14, v4, v9

    add-double v18, v6, v12

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v12, p1

    move-object v13, v1

    .line 274
    invoke-virtual/range {v12 .. v25}, Lfd;->a(Ljava/lang/String;DDDDDD)V

    return-void
.end method

.method public b(Lxp;IIII)Z
    .registers 6

    if-eqz p5, :cond_7

    const/4 p1, 0x1

    if-ne p5, p1, :cond_6

    goto :goto_7

    :cond_6
    return p1

    :cond_7
    :goto_7
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lfd;III)V
    .registers 7

    add-int/lit8 v0, p2, 0x1

    .line 210
    iget v1, p0, Lwo;->bn:I

    invoke-virtual {p1, v0, p3, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p2, -0x1

    .line 211
    iget v1, p0, Lwo;->bn:I

    invoke-virtual {p1, v0, p3, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p4, 0x1

    .line 212
    iget v1, p0, Lwo;->bn:I

    invoke-virtual {p1, p2, p3, v0, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p4, -0x1

    .line 213
    iget v1, p0, Lwo;->bn:I

    invoke-virtual {p1, p2, p3, v0, v1}, Lfd;->i(IIII)V

    add-int/lit8 v0, p3, -0x1

    .line 214
    iget v1, p0, Lwo;->bn:I

    invoke-virtual {p1, p2, v0, p4, v1}, Lfd;->i(IIII)V

    add-int/lit8 p3, p3, 0x1

    .line 215
    iget v0, p0, Lwo;->bn:I

    invoke-virtual {p1, p2, p3, p4, v0}, Lfd;->i(IIII)V

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lxp;IIII)Z
    .registers 8

    .line 131
    iget-boolean v0, p0, Lwo;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 135
    :cond_6
    invoke-interface {p1, p2, p3, p4}, Lxp;->e(III)I

    move-result p1

    const/4 p2, 0x3

    and-int/2addr p1, p2

    const/4 p3, 0x1

    if-nez p1, :cond_12

    if-ne p5, p2, :cond_12

    return p3

    :cond_12
    if-ne p1, p3, :cond_18

    const/4 p4, 0x4

    if-ne p5, p4, :cond_18

    return p3

    :cond_18
    const/4 p4, 0x2

    if-ne p1, p4, :cond_1e

    if-ne p5, p4, :cond_1e

    return p3

    :cond_1e
    if-ne p1, p2, :cond_24

    const/4 p1, 0x5

    if-ne p5, p1, :cond_24

    return p3

    :cond_24
    return v1
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lfd;IIII)Z
    .registers 6

    .line 126
    invoke-virtual/range {p0 .. p5}, Lwo;->c(Lxp;IIII)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g(Lfd;III)Z
    .registers 6

    add-int/lit8 v0, p3, -0x1

    .line 53
    invoke-virtual {p1, p2, v0, p4}, Lfd;->h(III)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 56
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Luu;->g(Lfd;III)Z

    move-result p1

    return p1
.end method
