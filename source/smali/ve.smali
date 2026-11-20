###### Class defpackage.ve (ve)
.class public Lve;
.super Luu;
.source "SourceFile"


# static fields
.field public static final a:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 20
    filled-new-array {v0, v1}, [I

    move-result-object v2

    const/4 v3, -0x1

    filled-new-array {v3, v0}, [I

    move-result-object v4

    filled-new-array {v0, v3}, [I

    move-result-object v3

    filled-new-array {v1, v0}, [I

    move-result-object v0

    filled-new-array {v2, v4, v3, v0}, [[I

    move-result-object v0

    sput-object v0, Lve;->a:[[I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/16 v0, 0x86

    .line 34
    sget-object v1, Lln;->l:Lln;

    invoke-direct {p0, p1, v0, v1}, Luu;-><init>(IILln;)V

    .line 36
    invoke-direct {p0}, Lve;->r()V

    return-void
.end method

.method public static a(Lfd;IIIZ)V
    .registers 6

    .line 199
    invoke-virtual {p0, p1, p2, p3}, Lfd;->e(III)I

    move-result v0

    if-eqz p4, :cond_9

    or-int/lit8 p4, v0, 0x4

    goto :goto_b

    :cond_9
    and-int/lit8 p4, v0, -0x5

    .line 205
    :goto_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lfd;->d(IIII)V

    return-void
.end method

.method public static d(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static e(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static f(Lfd;IIII)Lbr;
    .registers 14

    .line 209
    invoke-virtual {p0, p1, p2, p3}, Lfd;->e(III)I

    move-result v0

    .line 210
    invoke-static {v0}, Lve;->d(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    const/4 v3, 0x1

    if-gt v2, v3, :cond_50

    .line 214
    sget-object v4, Lve;->a:[[I

    aget-object v4, v4, v0

    aget v5, v4, v1

    mul-int/2addr v5, v2

    sub-int v5, p1, v5

    sub-int/2addr v5, v3

    .line 215
    aget v4, v4, v3

    mul-int/2addr v4, v2

    sub-int v4, p3, v4

    sub-int/2addr v4, v3

    add-int/lit8 v3, v5, 0x2

    add-int/lit8 v6, v4, 0x2

    :goto_21
    if-gt v5, v3, :cond_4d

    move v7, v4

    :goto_24
    if-gt v7, v6, :cond_4a

    add-int/lit8 v8, p2, -0x1

    .line 221
    invoke-virtual {p0, v5, v8, v7}, Lfd;->h(III)Z

    move-result v8

    if-eqz v8, :cond_47

    invoke-virtual {p0, v5, p2, v7}, Lfd;->d(III)Z

    move-result v8

    if-eqz v8, :cond_47

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0, v5, v8, v7}, Lfd;->d(III)Z

    move-result v8

    if-eqz v8, :cond_47

    if-lez p4, :cond_41

    add-int/lit8 p4, p4, -0x1

    goto :goto_47

    .line 226
    :cond_41
    new-instance p0, Lbr;

    invoke-direct {p0, v5, p2, v7}, Lbr;-><init>(III)V

    return-object p0

    :cond_47
    :goto_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_50
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private r()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f100000    # 0.5625f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 183
    invoke-virtual/range {v0 .. v6}, Lve;->a(FFFFFF)V

    return-void
.end method


# virtual methods
.method public a(II)I
    .registers 5

    if-nez p1, :cond_7

    .line 109
    sget-object p1, Luu;->y:Luu;

    iget p1, p1, Luu;->bm:I

    return p1

    .line 112
    :cond_7
    invoke-static {p2}, Lve;->d(I)I

    move-result v0

    .line 113
    sget-object v1, Ljj;->c:[[I

    aget-object v0, v1, v0

    aget p1, v0, p1

    .line 115
    invoke-static {p2}, Lve;->e(I)Z

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x5

    if-eqz p2, :cond_33

    const/4 p2, 0x2

    if-ne p1, p2, :cond_22

    .line 118
    iget p1, p0, Lve;->bm:I

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x10

    return p1

    :cond_22
    if-eq p1, v1, :cond_2c

    if-ne p1, v0, :cond_27

    goto :goto_2c

    .line 123
    :cond_27
    iget p1, p0, Lve;->bm:I

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 121
    :cond_2c
    :goto_2c
    iget p1, p0, Lve;->bm:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x10

    return p1

    :cond_33
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3d

    .line 126
    iget p1, p0, Lve;->bm:I

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p1, p1, 0x10

    return p1

    :cond_3d
    if-eq p1, v1, :cond_45

    if-ne p1, v0, :cond_42

    goto :goto_45

    .line 131
    :cond_42
    iget p1, p0, Lve;->bm:I

    return p1

    .line 129
    :cond_45
    :goto_45
    iget p1, p0, Lve;->bm:I

    add-int/lit8 p1, p1, 0x10

    return p1
.end method

.method public a(ILjava/util/Random;)I
    .registers 3

    .line 176
    invoke-static {p1}, Lve;->e(I)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 179
    :cond_8
    sget-object p1, Lgm;->aY:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1
.end method

.method public a(Lfd;IIIIF)V
    .registers 8

    .line 238
    invoke-static {p5}, Lve;->e(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 239
    invoke-super/range {p0 .. p6}, Luu;->a(Lfd;IIIIF)V

    :cond_9
    return-void
.end method

.method public a(Lxp;III)V
    .registers 5

    .line 152
    invoke-direct {p0}, Lve;->r()V

    return-void
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p5

    .line 41
    iget-boolean v4, v1, Lfd;->B:Z

    const/4 v11, 0x1

    if-eqz v4, :cond_e

    return v11

    .line 43
    :cond_e
    invoke-virtual/range {p1 .. p4}, Lfd;->e(III)I

    move-result v4

    .line 45
    invoke-static {v4}, Lve;->e(I)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_37

    .line 47
    invoke-static {v4}, Lve;->d(I)I

    move-result v4

    .line 48
    sget-object v5, Lve;->a:[[I

    aget-object v4, v5, v4

    aget v5, v4, v6

    add-int v5, p2, v5

    .line 49
    aget v4, v4, v11

    add-int v4, p4, v4

    .line 50
    invoke-virtual {v1, v5, v2, v4}, Lfd;->a(III)I

    move-result v7

    iget v8, v0, Lve;->bn:I

    if-eq v7, v8, :cond_32

    return v11

    .line 53
    :cond_32
    invoke-virtual {v1, v5, v2, v4}, Lfd;->e(III)I

    move-result v7

    goto :goto_3c

    :cond_37
    move/from16 v5, p2

    move v7, v4

    move/from16 v4, p4

    .line 56
    :goto_3c
    iget-object v8, v1, Lfd;->t:Lxa;

    invoke-virtual {v8}, Lxa;->f()Z

    move-result v8

    if-nez v8, :cond_7b

    .line 60
    invoke-virtual {v1, v5, v2, v4, v6}, Lfd;->f(IIII)Z

    .line 61
    invoke-static {v7}, Lve;->d(I)I

    move-result v3

    .line 62
    sget-object v7, Lve;->a:[[I

    aget-object v3, v7, v3

    aget v7, v3, v6

    add-int/2addr v5, v7

    .line 63
    aget v3, v3, v11

    add-int/2addr v4, v3

    .line 64
    invoke-virtual {v1, v5, v2, v4}, Lfd;->a(III)I

    move-result v3

    iget v7, v0, Lve;->bn:I

    if-ne v3, v7, :cond_60

    .line 65
    invoke-virtual {v1, v5, v2, v4, v6}, Lfd;->f(IIII)Z

    :cond_60
    const/4 v3, 0x0

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-double v7, v5

    int-to-float v2, v2

    add-float/2addr v2, v6

    float-to-double v9, v2

    int-to-float v2, v4

    add-float/2addr v2, v6

    float-to-double v12, v2

    const/high16 v14, 0x40a00000    # 5.0f

    const/4 v15, 0x1

    move-object/from16 v1, p1

    move-object v2, v3

    move-wide v3, v7

    move-wide v5, v9

    move-wide v7, v12

    move v9, v14

    move v10, v15

    .line 70
    invoke-virtual/range {v1 .. v10}, Lfd;->a(Lsn;DDDFZ)Lqx;

    return v11

    .line 74
    :cond_7b
    invoke-static {v7}, Lve;->f(I)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 76
    iget-object v7, v1, Lfd;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :cond_88
    :goto_88
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_aa

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgs;

    .line 77
    invoke-virtual {v9}, Lgs;->N()Z

    move-result v10

    if-eqz v10, :cond_88

    .line 78
    iget-object v10, v9, Lgs;->v:Lbr;

    .line 79
    iget v12, v10, Lbr;->a:I

    if-ne v12, v5, :cond_88

    iget v12, v10, Lbr;->b:I

    if-ne v12, v2, :cond_88

    iget v10, v10, Lbr;->c:I

    if-ne v10, v4, :cond_88

    move-object v8, v9

    goto :goto_88

    :cond_aa
    if-nez v8, :cond_b0

    .line 86
    invoke-static {v1, v5, v2, v4, v6}, Lve;->a(Lfd;IIIZ)V

    goto :goto_b6

    :cond_b0
    const-string v1, "tile.bed.occupied"

    .line 88
    invoke-virtual {v3, v1}, Lgs;->b(Ljava/lang/String;)V

    return v11

    .line 93
    :cond_b6
    :goto_b6
    invoke-virtual {v3, v5, v2, v4}, Lgs;->b(III)Lcw;

    move-result-object v6

    .line 94
    sget-object v7, Lcw;->a:Lcw;

    if-ne v6, v7, :cond_c2

    .line 95
    invoke-static {v1, v5, v2, v4, v11}, Lve;->a(Lfd;IIIZ)V

    return v11

    .line 99
    :cond_c2
    sget-object v1, Lcw;->c:Lcw;

    if-ne v6, v1, :cond_cb

    const-string v1, "tile.bed.noSleep"

    .line 100
    invoke-virtual {v3, v1}, Lgs;->b(Ljava/lang/String;)V

    :cond_cb
    return v11
.end method

.method public b()I
    .registers 2

    const/16 v0, 0xe

    return v0
.end method

.method public b(Lfd;IIII)V
    .registers 12

    .line 157
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v5

    .line 158
    invoke-static {v5}, Lve;->d(I)I

    move-result p5

    .line 160
    invoke-static {v5}, Lve;->e(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 161
    sget-object v0, Lve;->a:[[I

    aget-object p5, v0, p5

    aget v0, p5, v2

    sub-int v0, p2, v0

    aget p5, p5, v1

    sub-int p5, p4, p5

    invoke-virtual {p1, v0, p3, p5}, Lfd;->a(III)I

    move-result p5

    iget v0, p0, Lve;->bn:I

    if-eq p5, v0, :cond_49

    .line 162
    invoke-virtual {p1, p2, p3, p4, v2}, Lfd;->f(IIII)Z

    goto :goto_49

    .line 165
    :cond_28
    sget-object v0, Lve;->a:[[I

    aget-object p5, v0, p5

    aget v0, p5, v2

    add-int/2addr v0, p2

    aget p5, p5, v1

    add-int/2addr p5, p4

    invoke-virtual {p1, v0, p3, p5}, Lfd;->a(III)I

    move-result p5

    iget v0, p0, Lve;->bn:I

    if-eq p5, v0, :cond_49

    .line 166
    invoke-virtual {p1, p2, p3, p4, v2}, Lfd;->f(IIII)Z

    .line 167
    iget-boolean p5, p1, Lfd;->B:Z

    if-nez p5, :cond_49

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 168
    invoke-virtual/range {v0 .. v5}, Lve;->g(Lfd;IIII)V

    :cond_49
    :goto_49
    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
