###### Class defpackage.eq (eq)
.class public Leq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:Ljava/util/List;

.field private static h:I


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Leq;->g:Ljava/util/List;

    const/4 v0, 0x0

    .line 8
    sput v0, Leq;->h:I

    return-void
.end method

.method private constructor <init>(DDDDDD)V
    .registers 13

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Leq;->a:D

    .line 36
    iput-wide p3, p0, Leq;->b:D

    .line 37
    iput-wide p5, p0, Leq;->c:D

    .line 38
    iput-wide p7, p0, Leq;->d:D

    .line 39
    iput-wide p9, p0, Leq;->e:D

    .line 40
    iput-wide p11, p0, Leq;->f:D

    return-void
.end method

.method public static a(DDDDDD)Leq;
    .registers 26

    .line 11
    new-instance v13, Leq;

    move-object v0, v13

    move-wide v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Leq;-><init>(DDDDDD)V

    return-object v13
.end method

.method public static a()V
    .registers 1

    .line 15
    sget-object v0, Leq;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 16
    sput v0, Leq;->h:I

    return-void
.end method

.method public static b(DDDDDD)Leq;
    .registers 26

    .line 24
    sget v0, Leq;->h:I

    sget-object v1, Leq;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1f

    .line 25
    sget-object v0, Leq;->g:Ljava/util/List;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v1 .. v12}, Leq;->a(DDDDDD)Leq;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1f
    sget-object v0, Leq;->g:Ljava/util/List;

    sget v1, Leq;->h:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Leq;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Leq;

    move-wide v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-virtual/range {v1 .. v13}, Leq;->c(DDDDDD)Leq;

    move-result-object v0

    return-object v0
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    .line 20
    sput v0, Leq;->h:I

    return-void
.end method

.method private b(Lbt;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 238
    :cond_4
    iget-wide v1, p1, Lbt;->b:D

    iget-wide v3, p0, Leq;->b:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_25

    iget-wide v1, p1, Lbt;->b:D

    iget-wide v3, p0, Leq;->e:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_25

    iget-wide v1, p1, Lbt;->c:D

    iget-wide v3, p0, Leq;->c:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_25

    iget-wide v1, p1, Lbt;->c:D

    iget-wide v3, p0, Leq;->f:D

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method private c(Lbt;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 243
    :cond_4
    iget-wide v1, p1, Lbt;->a:D

    iget-wide v3, p0, Leq;->a:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_25

    iget-wide v1, p1, Lbt;->a:D

    iget-wide v3, p0, Leq;->d:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_25

    iget-wide v1, p1, Lbt;->c:D

    iget-wide v3, p0, Leq;->c:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_25

    iget-wide v1, p1, Lbt;->c:D

    iget-wide v3, p0, Leq;->f:D

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method private d(Lbt;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 248
    :cond_4
    iget-wide v1, p1, Lbt;->a:D

    iget-wide v3, p0, Leq;->a:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_25

    iget-wide v1, p1, Lbt;->a:D

    iget-wide v3, p0, Leq;->d:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_25

    iget-wide v1, p1, Lbt;->b:D

    iget-wide v3, p0, Leq;->b:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_25

    iget-wide v1, p1, Lbt;->b:D

    iget-wide v3, p0, Leq;->e:D

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method


# virtual methods
.method public a(Leq;D)D
    .registers 11

    .line 89
    iget-wide v0, p1, Leq;->e:D

    iget-wide v2, p0, Leq;->b:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_48

    iget-wide v0, p1, Leq;->b:D

    iget-wide v2, p0, Leq;->e:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_11

    goto :goto_48

    .line 90
    :cond_11
    iget-wide v0, p1, Leq;->f:D

    iget-wide v2, p0, Leq;->c:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_48

    iget-wide v0, p1, Leq;->c:D

    iget-wide v2, p0, Leq;->f:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_22

    goto :goto_48

    :cond_22
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_36

    .line 92
    iget-wide v2, p1, Leq;->d:D

    iget-wide v4, p0, Leq;->a:D

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_36

    sub-double/2addr v4, v2

    cmpg-double v2, v4, p2

    if-gez v2, :cond_36

    move-wide p2, v4

    :cond_36
    cmpg-double v0, p2, v0

    if-gez v0, :cond_48

    .line 96
    iget-wide v0, p1, Leq;->a:D

    iget-wide v2, p0, Leq;->d:D

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_48

    sub-double/2addr v2, v0

    cmpl-double p1, v2, p2

    if-lez p1, :cond_48

    move-wide p2, v2

    :cond_48
    :goto_48
    return-wide p2
.end method

.method public a(DDD)Leq;
    .registers 34

    move-object/from16 v0, p0

    .line 54
    iget-wide v1, v0, Leq;->a:D

    .line 55
    iget-wide v3, v0, Leq;->b:D

    .line 56
    iget-wide v5, v0, Leq;->c:D

    .line 57
    iget-wide v7, v0, Leq;->d:D

    .line 58
    iget-wide v9, v0, Leq;->e:D

    .line 59
    iget-wide v11, v0, Leq;->f:D

    const-wide/16 v13, 0x0

    cmpg-double v15, p1, v13

    if-gez v15, :cond_16

    add-double v1, v1, p1

    :cond_16
    move-wide v15, v1

    cmpl-double v1, p1, v13

    if-lez v1, :cond_1d

    add-double v7, v7, p1

    :cond_1d
    move-wide/from16 v21, v7

    cmpg-double v1, p3, v13

    if-gez v1, :cond_25

    add-double v3, v3, p3

    :cond_25
    move-wide/from16 v17, v3

    cmpl-double v1, p3, v13

    if-lez v1, :cond_2d

    add-double v9, v9, p3

    :cond_2d
    move-wide/from16 v23, v9

    cmpg-double v1, p5, v13

    if-gez v1, :cond_35

    add-double v5, v5, p5

    :cond_35
    move-wide/from16 v19, v5

    cmpl-double v1, p5, v13

    if-lez v1, :cond_3d

    add-double v11, v11, p5

    :cond_3d
    move-wide/from16 v25, v11

    .line 70
    invoke-static/range {v15 .. v26}, Leq;->b(DDDDDD)Leq;

    move-result-object v1

    return-object v1
.end method

.method public a(Lbt;Lbt;)Lvf;
    .registers 16

    .line 197
    iget-wide v0, p0, Leq;->a:D

    invoke-virtual {p1, p2, v0, v1}, Lbt;->a(Lbt;D)Lbt;

    move-result-object v0

    .line 198
    iget-wide v1, p0, Leq;->d:D

    invoke-virtual {p1, p2, v1, v2}, Lbt;->a(Lbt;D)Lbt;

    move-result-object v1

    .line 200
    iget-wide v2, p0, Leq;->b:D

    invoke-virtual {p1, p2, v2, v3}, Lbt;->b(Lbt;D)Lbt;

    move-result-object v2

    .line 201
    iget-wide v3, p0, Leq;->e:D

    invoke-virtual {p1, p2, v3, v4}, Lbt;->b(Lbt;D)Lbt;

    move-result-object v3

    .line 203
    iget-wide v4, p0, Leq;->c:D

    invoke-virtual {p1, p2, v4, v5}, Lbt;->c(Lbt;D)Lbt;

    move-result-object v4

    .line 204
    iget-wide v5, p0, Leq;->f:D

    invoke-virtual {p1, p2, v5, v6}, Lbt;->c(Lbt;D)Lbt;

    move-result-object p2

    .line 206
    invoke-direct {p0, v0}, Leq;->b(Lbt;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2c

    move-object v0, v6

    .line 207
    :cond_2c
    invoke-direct {p0, v1}, Leq;->b(Lbt;)Z

    move-result v5

    if-nez v5, :cond_33

    move-object v1, v6

    .line 208
    :cond_33
    invoke-direct {p0, v2}, Leq;->c(Lbt;)Z

    move-result v5

    if-nez v5, :cond_3a

    move-object v2, v6

    .line 209
    :cond_3a
    invoke-direct {p0, v3}, Leq;->c(Lbt;)Z

    move-result v5

    if-nez v5, :cond_41

    move-object v3, v6

    .line 210
    :cond_41
    invoke-direct {p0, v4}, Leq;->d(Lbt;)Z

    move-result v5

    if-nez v5, :cond_48

    move-object v4, v6

    .line 211
    :cond_48
    invoke-direct {p0, p2}, Leq;->d(Lbt;)Z

    move-result v5

    if-nez v5, :cond_4f

    move-object p2, v6

    :cond_4f
    if-eqz v0, :cond_53

    move-object v5, v0

    goto :goto_54

    :cond_53
    move-object v5, v6

    :goto_54
    if-eqz v1, :cond_65

    if-eqz v5, :cond_64

    .line 216
    invoke-virtual {p1, v1}, Lbt;->d(Lbt;)D

    move-result-wide v7

    invoke-virtual {p1, v5}, Lbt;->d(Lbt;)D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_65

    :cond_64
    move-object v5, v1

    :cond_65
    if-eqz v2, :cond_76

    if-eqz v5, :cond_75

    .line 217
    invoke-virtual {p1, v2}, Lbt;->d(Lbt;)D

    move-result-wide v7

    invoke-virtual {p1, v5}, Lbt;->d(Lbt;)D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_76

    :cond_75
    move-object v5, v2

    :cond_76
    if-eqz v3, :cond_87

    if-eqz v5, :cond_86

    .line 218
    invoke-virtual {p1, v3}, Lbt;->d(Lbt;)D

    move-result-wide v7

    invoke-virtual {p1, v5}, Lbt;->d(Lbt;)D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_87

    :cond_86
    move-object v5, v3

    :cond_87
    if-eqz v4, :cond_98

    if-eqz v5, :cond_97

    .line 219
    invoke-virtual {p1, v4}, Lbt;->d(Lbt;)D

    move-result-wide v7

    invoke-virtual {p1, v5}, Lbt;->d(Lbt;)D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_98

    :cond_97
    move-object v5, v4

    :cond_98
    if-eqz p2, :cond_aa

    if-eqz v5, :cond_a8

    .line 220
    invoke-virtual {p1, p2}, Lbt;->d(Lbt;)D

    move-result-wide v7

    invoke-virtual {p1, v5}, Lbt;->d(Lbt;)D

    move-result-wide v9

    cmpg-double p1, v7, v9

    if-gez p1, :cond_aa

    :cond_a8
    move-object v12, p2

    goto :goto_ab

    :cond_aa
    move-object v12, v5

    :goto_ab
    if-nez v12, :cond_ae

    return-object v6

    :cond_ae
    if-ne v12, v0, :cond_b2

    const/4 p1, 0x4

    goto :goto_b3

    :cond_b2
    const/4 p1, -0x1

    :goto_b3
    if-ne v12, v1, :cond_b6

    const/4 p1, 0x5

    :cond_b6
    if-ne v12, v2, :cond_b9

    const/4 p1, 0x0

    :cond_b9
    if-ne v12, v3, :cond_bc

    const/4 p1, 0x1

    :cond_bc
    if-ne v12, v4, :cond_bf

    const/4 p1, 0x2

    :cond_bf
    if-ne v12, p2, :cond_c2

    const/4 p1, 0x3

    :cond_c2
    move v11, p1

    .line 233
    new-instance p1, Lvf;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lvf;-><init>(IIIILbt;)V

    return-object p1
.end method

.method public a(Lbt;)Z
    .registers 8

    .line 168
    iget-wide v0, p1, Lbt;->a:D

    iget-wide v2, p0, Leq;->a:D

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_36

    iget-wide v2, p1, Lbt;->a:D

    iget-wide v4, p0, Leq;->d:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_12

    goto :goto_36

    .line 169
    :cond_12
    iget-wide v2, p1, Lbt;->b:D

    iget-wide v4, p0, Leq;->b:D

    cmpg-double v0, v2, v4

    if-lez v0, :cond_36

    iget-wide v2, p1, Lbt;->b:D

    iget-wide v4, p0, Leq;->e:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_23

    goto :goto_36

    .line 170
    :cond_23
    iget-wide v2, p1, Lbt;->c:D

    iget-wide v4, p0, Leq;->c:D

    cmpg-double v0, v2, v4

    if-lez v0, :cond_36

    iget-wide v2, p1, Lbt;->c:D

    iget-wide v4, p0, Leq;->f:D

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_34

    goto :goto_36

    :cond_34
    const/4 p1, 0x1

    return p1

    :cond_36
    :goto_36
    return v1
.end method

.method public a(Leq;)Z
    .registers 8

    .line 137
    iget-wide v0, p1, Leq;->d:D

    iget-wide v2, p0, Leq;->a:D

    cmpg-double v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_36

    iget-wide v2, p1, Leq;->a:D

    iget-wide v4, p0, Leq;->d:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_12

    goto :goto_36

    .line 138
    :cond_12
    iget-wide v2, p1, Leq;->e:D

    iget-wide v4, p0, Leq;->b:D

    cmpg-double v0, v2, v4

    if-lez v0, :cond_36

    iget-wide v2, p1, Leq;->b:D

    iget-wide v4, p0, Leq;->e:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_23

    goto :goto_36

    .line 139
    :cond_23
    iget-wide v2, p1, Leq;->f:D

    iget-wide v4, p0, Leq;->c:D

    cmpg-double v0, v2, v4

    if-lez v0, :cond_36

    iget-wide v2, p1, Leq;->c:D

    iget-wide v4, p0, Leq;->f:D

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_34

    goto :goto_36

    :cond_34
    const/4 p1, 0x1

    return p1

    :cond_36
    :goto_36
    return v1
.end method

.method public b(Leq;D)D
    .registers 11

    .line 105
    iget-wide v0, p1, Leq;->d:D

    iget-wide v2, p0, Leq;->a:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_48

    iget-wide v0, p1, Leq;->a:D

    iget-wide v2, p0, Leq;->d:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_11

    goto :goto_48

    .line 106
    :cond_11
    iget-wide v0, p1, Leq;->f:D

    iget-wide v2, p0, Leq;->c:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_48

    iget-wide v0, p1, Leq;->c:D

    iget-wide v2, p0, Leq;->f:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_22

    goto :goto_48

    :cond_22
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_36

    .line 108
    iget-wide v2, p1, Leq;->e:D

    iget-wide v4, p0, Leq;->b:D

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_36

    sub-double/2addr v4, v2

    cmpg-double v2, v4, p2

    if-gez v2, :cond_36

    move-wide p2, v4

    :cond_36
    cmpg-double v0, p2, v0

    if-gez v0, :cond_48

    .line 112
    iget-wide v0, p1, Leq;->b:D

    iget-wide v2, p0, Leq;->e:D

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_48

    sub-double/2addr v2, v0

    cmpl-double p1, v2, p2

    if-lez p1, :cond_48

    move-wide p2, v2

    :cond_48
    :goto_48
    return-wide p2
.end method

.method public b(DDD)Leq;
    .registers 22

    move-object v0, p0

    .line 74
    iget-wide v1, v0, Leq;->a:D

    sub-double v3, v1, p1

    .line 75
    iget-wide v1, v0, Leq;->b:D

    sub-double v5, v1, p3

    .line 76
    iget-wide v1, v0, Leq;->c:D

    sub-double v7, v1, p5

    .line 77
    iget-wide v1, v0, Leq;->d:D

    add-double v9, v1, p1

    .line 78
    iget-wide v1, v0, Leq;->e:D

    add-double v11, v1, p3

    .line 79
    iget-wide v1, v0, Leq;->f:D

    add-double v13, v1, p5

    .line 81
    invoke-static/range {v3 .. v14}, Leq;->b(DDDDDD)Leq;

    move-result-object v1

    return-object v1
.end method

.method public b(Leq;)V
    .registers 4

    .line 252
    iget-wide v0, p1, Leq;->a:D

    iput-wide v0, p0, Leq;->a:D

    .line 253
    iget-wide v0, p1, Leq;->b:D

    iput-wide v0, p0, Leq;->b:D

    .line 254
    iget-wide v0, p1, Leq;->c:D

    iput-wide v0, p0, Leq;->c:D

    .line 255
    iget-wide v0, p1, Leq;->d:D

    iput-wide v0, p0, Leq;->d:D

    .line 256
    iget-wide v0, p1, Leq;->e:D

    iput-wide v0, p0, Leq;->e:D

    .line 257
    iget-wide v0, p1, Leq;->f:D

    iput-wide v0, p0, Leq;->f:D

    return-void
.end method

.method public c()D
    .registers 9

    .line 175
    iget-wide v0, p0, Leq;->d:D

    iget-wide v2, p0, Leq;->a:D

    sub-double/2addr v0, v2

    .line 176
    iget-wide v2, p0, Leq;->e:D

    iget-wide v4, p0, Leq;->b:D

    sub-double/2addr v2, v4

    .line 177
    iget-wide v4, p0, Leq;->f:D

    iget-wide v6, p0, Leq;->c:D

    sub-double/2addr v4, v6

    add-double/2addr v0, v2

    add-double/2addr v0, v4

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public c(Leq;D)D
    .registers 11

    .line 121
    iget-wide v0, p1, Leq;->d:D

    iget-wide v2, p0, Leq;->a:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_48

    iget-wide v0, p1, Leq;->a:D

    iget-wide v2, p0, Leq;->d:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_11

    goto :goto_48

    .line 122
    :cond_11
    iget-wide v0, p1, Leq;->e:D

    iget-wide v2, p0, Leq;->b:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_48

    iget-wide v0, p1, Leq;->b:D

    iget-wide v2, p0, Leq;->e:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_22

    goto :goto_48

    :cond_22
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-lez v2, :cond_36

    .line 124
    iget-wide v2, p1, Leq;->f:D

    iget-wide v4, p0, Leq;->c:D

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_36

    sub-double/2addr v4, v2

    cmpg-double v2, v4, p2

    if-gez v2, :cond_36

    move-wide p2, v4

    :cond_36
    cmpg-double v0, p2, v0

    if-gez v0, :cond_48

    .line 128
    iget-wide v0, p1, Leq;->c:D

    iget-wide v2, p0, Leq;->f:D

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_48

    sub-double/2addr v2, v0

    cmpl-double p1, v2, p2

    if-lez p1, :cond_48

    move-wide p2, v2

    :cond_48
    :goto_48
    return-wide p2
.end method

.method public c(DDD)Leq;
    .registers 22

    move-object v0, p0

    .line 85
    iget-wide v1, v0, Leq;->a:D

    add-double v3, v1, p1

    iget-wide v1, v0, Leq;->b:D

    add-double v5, v1, p3

    iget-wide v1, v0, Leq;->c:D

    add-double v7, v1, p5

    iget-wide v1, v0, Leq;->d:D

    add-double v9, v1, p1

    iget-wide v1, v0, Leq;->e:D

    add-double v11, v1, p3

    iget-wide v1, v0, Leq;->f:D

    add-double v13, v1, p5

    invoke-static/range {v3 .. v14}, Leq;->b(DDDDDD)Leq;

    move-result-object v1

    return-object v1
.end method

.method public c(DDDDDD)Leq;
    .registers 13

    .line 44
    iput-wide p1, p0, Leq;->a:D

    .line 45
    iput-wide p3, p0, Leq;->b:D

    .line 46
    iput-wide p5, p0, Leq;->c:D

    .line 47
    iput-wide p7, p0, Leq;->d:D

    .line 48
    iput-wide p9, p0, Leq;->e:D

    .line 49
    iput-wide p11, p0, Leq;->f:D

    return-object p0
.end method

.method public d()Leq;
    .registers 13

    .line 193
    iget-wide v0, p0, Leq;->a:D

    iget-wide v2, p0, Leq;->b:D

    iget-wide v4, p0, Leq;->c:D

    iget-wide v6, p0, Leq;->d:D

    iget-wide v8, p0, Leq;->e:D

    iget-wide v10, p0, Leq;->f:D

    invoke-static/range {v0 .. v11}, Leq;->b(DDDDDD)Leq;

    move-result-object v0

    return-object v0
.end method

.method public d(DDD)Leq;
    .registers 9

    .line 151
    iget-wide v0, p0, Leq;->a:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Leq;->a:D

    .line 152
    iget-wide v0, p0, Leq;->b:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Leq;->b:D

    .line 153
    iget-wide v0, p0, Leq;->c:D

    add-double/2addr v0, p5

    iput-wide v0, p0, Leq;->c:D

    .line 154
    iget-wide v0, p0, Leq;->d:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Leq;->d:D

    .line 155
    iget-wide p1, p0, Leq;->e:D

    add-double/2addr p1, p3

    iput-wide p1, p0, Leq;->e:D

    .line 156
    iget-wide p1, p0, Leq;->f:D

    add-double/2addr p1, p5

    iput-wide p1, p0, Leq;->f:D

    return-object p0
.end method

.method public e(DDD)Leq;
    .registers 22

    move-object v0, p0

    .line 182
    iget-wide v1, v0, Leq;->a:D

    add-double v3, v1, p1

    .line 183
    iget-wide v1, v0, Leq;->b:D

    add-double v5, v1, p3

    .line 184
    iget-wide v1, v0, Leq;->c:D

    add-double v7, v1, p5

    .line 185
    iget-wide v1, v0, Leq;->d:D

    sub-double v9, v1, p1

    .line 186
    iget-wide v1, v0, Leq;->e:D

    sub-double v11, v1, p3

    .line 187
    iget-wide v1, v0, Leq;->f:D

    sub-double v13, v1, p5

    .line 189
    invoke-static/range {v3 .. v14}, Leq;->b(DDDDDD)Leq;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "box["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Leq;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Leq;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Leq;->c:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Leq;->d:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Leq;->e:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Leq;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
