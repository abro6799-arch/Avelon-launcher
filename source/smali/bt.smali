###### Class defpackage.bt (bt)
.class public Lbt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Ljava/util/List;

.field private static e:I


# instance fields
.field public a:D

.field public b:D

.field public c:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbt;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 10
    sput v0, Lbt;->e:I

    return-void
.end method

.method private constructor <init>(DDD)V
    .registers 12

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    cmpl-double v2, p1, v0

    const-wide/16 v3, 0x0

    if-nez v2, :cond_c

    move-wide p1, v3

    :cond_c
    cmpl-double v2, p3, v0

    if-nez v2, :cond_11

    move-wide p3, v3

    :cond_11
    cmpl-double v0, p5, v0

    if-nez v0, :cond_16

    move-wide p5, v3

    .line 38
    :cond_16
    iput-wide p1, p0, Lbt;->a:D

    .line 39
    iput-wide p3, p0, Lbt;->b:D

    .line 40
    iput-wide p5, p0, Lbt;->c:D

    return-void
.end method

.method public static a(DDD)Lbt;
    .registers 14

    .line 13
    new-instance v7, Lbt;

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lbt;-><init>(DDD)V

    return-object v7
.end method

.method public static a()V
    .registers 1

    .line 17
    sget-object v0, Lbt;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 18
    sput v0, Lbt;->e:I

    return-void
.end method

.method public static b(DDD)Lbt;
    .registers 14

    .line 26
    sget v0, Lbt;->e:I

    sget-object v1, Lbt;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_19

    .line 27
    sget-object v0, Lbt;->d:Ljava/util/List;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v6}, Lbt;->a(DDD)Lbt;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_19
    sget-object v0, Lbt;->d:Ljava/util/List;

    sget v1, Lbt;->e:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lbt;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lbt;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lbt;->e(DDD)Lbt;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .registers 1

    const/4 v0, 0x0

    .line 22
    sput v0, Lbt;->e:I

    return-void
.end method

.method private e(DDD)Lbt;
    .registers 7

    .line 44
    iput-wide p1, p0, Lbt;->a:D

    .line 45
    iput-wide p3, p0, Lbt;->b:D

    .line 46
    iput-wide p5, p0, Lbt;->c:D

    return-object p0
.end method


# virtual methods
.method public a(Lbt;)Lbt;
    .registers 12

    .line 64
    iget-wide v0, p1, Lbt;->a:D

    iget-wide v2, p0, Lbt;->a:D

    sub-double v4, v0, v2

    iget-wide v0, p1, Lbt;->b:D

    iget-wide v2, p0, Lbt;->b:D

    sub-double v6, v0, v2

    iget-wide v0, p1, Lbt;->c:D

    iget-wide v2, p0, Lbt;->c:D

    sub-double v8, v0, v2

    invoke-static/range {v4 .. v9}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbt;D)Lbt;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 115
    iget-wide v2, v1, Lbt;->a:D

    iget-wide v4, v0, Lbt;->a:D

    sub-double/2addr v2, v4

    .line 116
    iget-wide v6, v1, Lbt;->b:D

    iget-wide v8, v0, Lbt;->b:D

    sub-double/2addr v6, v8

    .line 117
    iget-wide v10, v1, Lbt;->c:D

    iget-wide v12, v0, Lbt;->c:D

    sub-double/2addr v10, v12

    mul-double v14, v2, v2

    const-wide v16, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    cmpg-double v1, v14, v16

    const/4 v14, 0x0

    if-gez v1, :cond_20

    return-object v14

    :cond_20
    sub-double v15, p2, v4

    div-double/2addr v15, v2

    const-wide/16 v17, 0x0

    cmpg-double v1, v15, v17

    if-ltz v1, :cond_3e

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v15, v17

    if-lez v1, :cond_30

    goto :goto_3e

    :cond_30
    mul-double/2addr v2, v15

    add-double v17, v4, v2

    mul-double/2addr v6, v15

    add-double v19, v8, v6

    mul-double/2addr v10, v15

    add-double v21, v12, v10

    .line 123
    invoke-static/range {v17 .. v22}, Lbt;->b(DDD)Lbt;

    move-result-object v1

    return-object v1

    :cond_3e
    :goto_3e
    return-object v14
.end method

.method public a(F)V
    .registers 17

    move-object v0, p0

    .line 159
    invoke-static/range {p1 .. p1}, Lin;->b(F)F

    move-result v1

    .line 160
    invoke-static/range {p1 .. p1}, Lin;->a(F)F

    move-result v2

    .line 162
    iget-wide v3, v0, Lbt;->a:D

    .line 163
    iget-wide v5, v0, Lbt;->b:D

    float-to-double v7, v1

    mul-double v9, v5, v7

    iget-wide v11, v0, Lbt;->c:D

    float-to-double v1, v2

    mul-double v13, v11, v1

    add-double/2addr v9, v13

    mul-double/2addr v11, v7

    mul-double/2addr v5, v1

    sub-double/2addr v11, v5

    .line 166
    iput-wide v3, v0, Lbt;->a:D

    .line 167
    iput-wide v9, v0, Lbt;->b:D

    .line 168
    iput-wide v11, v0, Lbt;->c:D

    return-void
.end method

.method public b(Lbt;)Lbt;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 78
    iget-wide v2, v0, Lbt;->b:D

    iget-wide v4, v1, Lbt;->c:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Lbt;->c:D

    iget-wide v10, v1, Lbt;->b:D

    mul-double v12, v8, v10

    sub-double v14, v6, v12

    iget-wide v6, v1, Lbt;->a:D

    mul-double/2addr v8, v6

    iget-wide v12, v0, Lbt;->a:D

    mul-double/2addr v4, v12

    sub-double v16, v8, v4

    mul-double/2addr v12, v10

    mul-double/2addr v2, v6

    sub-double v18, v12, v2

    invoke-static/range {v14 .. v19}, Lbt;->b(DDD)Lbt;

    move-result-object v1

    return-object v1
.end method

.method public b(Lbt;D)Lbt;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 127
    iget-wide v2, v1, Lbt;->a:D

    iget-wide v4, v0, Lbt;->a:D

    sub-double/2addr v2, v4

    .line 128
    iget-wide v6, v1, Lbt;->b:D

    iget-wide v8, v0, Lbt;->b:D

    sub-double/2addr v6, v8

    .line 129
    iget-wide v10, v1, Lbt;->c:D

    iget-wide v12, v0, Lbt;->c:D

    sub-double/2addr v10, v12

    mul-double v14, v6, v6

    const-wide v16, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    cmpg-double v1, v14, v16

    const/4 v14, 0x0

    if-gez v1, :cond_20

    return-object v14

    :cond_20
    sub-double v15, p2, v8

    div-double/2addr v15, v6

    const-wide/16 v17, 0x0

    cmpg-double v1, v15, v17

    if-ltz v1, :cond_3e

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v15, v17

    if-lez v1, :cond_30

    goto :goto_3e

    :cond_30
    mul-double/2addr v2, v15

    add-double v17, v4, v2

    mul-double/2addr v6, v15

    add-double v19, v8, v6

    mul-double/2addr v10, v15

    add-double v21, v12, v10

    .line 135
    invoke-static/range {v17 .. v22}, Lbt;->b(DDD)Lbt;

    move-result-object v1

    return-object v1

    :cond_3e
    :goto_3e
    return-object v14
.end method

.method public b(F)V
    .registers 15

    .line 172
    invoke-static {p1}, Lin;->b(F)F

    move-result v0

    .line 173
    invoke-static {p1}, Lin;->a(F)F

    move-result p1

    .line 175
    iget-wide v1, p0, Lbt;->a:D

    float-to-double v3, v0

    mul-double v5, v1, v3

    iget-wide v7, p0, Lbt;->c:D

    float-to-double v9, p1

    mul-double v11, v7, v9

    add-double/2addr v5, v11

    .line 176
    iget-wide v11, p0, Lbt;->b:D

    mul-double/2addr v7, v3

    mul-double/2addr v1, v9

    sub-double/2addr v7, v1

    .line 179
    iput-wide v5, p0, Lbt;->a:D

    .line 180
    iput-wide v11, p0, Lbt;->b:D

    .line 181
    iput-wide v7, p0, Lbt;->c:D

    return-void
.end method

.method public c(Lbt;)D
    .registers 10

    .line 86
    iget-wide v0, p1, Lbt;->a:D

    iget-wide v2, p0, Lbt;->a:D

    sub-double/2addr v0, v2

    .line 87
    iget-wide v2, p1, Lbt;->b:D

    iget-wide v4, p0, Lbt;->b:D

    sub-double/2addr v2, v4

    .line 88
    iget-wide v4, p1, Lbt;->c:D

    iget-wide v6, p0, Lbt;->c:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    .line 89
    invoke-static {v0, v1}, Lin;->a(D)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public c()Lbt;
    .registers 11

    .line 68
    iget-wide v0, p0, Lbt;->a:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lbt;->b:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lbt;->c:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, v0, v2

    if-gez v2, :cond_24

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    .line 69
    invoke-static/range {v3 .. v8}, Lbt;->b(DDD)Lbt;

    move-result-object v0

    return-object v0

    .line 70
    :cond_24
    iget-wide v2, p0, Lbt;->a:D

    div-double v4, v2, v0

    iget-wide v2, p0, Lbt;->b:D

    div-double v6, v2, v0

    iget-wide v2, p0, Lbt;->c:D

    div-double v8, v2, v0

    invoke-static/range {v4 .. v9}, Lbt;->b(DDD)Lbt;

    move-result-object v0

    return-object v0
.end method

.method public c(DDD)Lbt;
    .registers 9

    .line 82
    iget-wide v0, p0, Lbt;->a:D

    add-double/2addr p1, v0

    iget-wide v0, p0, Lbt;->b:D

    add-double/2addr p3, v0

    iget-wide v0, p0, Lbt;->c:D

    add-double/2addr p5, v0

    invoke-static/range {p1 .. p6}, Lbt;->b(DDD)Lbt;

    move-result-object p1

    return-object p1
.end method

.method public c(Lbt;D)Lbt;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 139
    iget-wide v2, v1, Lbt;->a:D

    iget-wide v4, v0, Lbt;->a:D

    sub-double/2addr v2, v4

    .line 140
    iget-wide v6, v1, Lbt;->b:D

    iget-wide v8, v0, Lbt;->b:D

    sub-double/2addr v6, v8

    .line 141
    iget-wide v10, v1, Lbt;->c:D

    iget-wide v12, v0, Lbt;->c:D

    sub-double/2addr v10, v12

    mul-double v14, v10, v10

    const-wide v16, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    cmpg-double v1, v14, v16

    const/4 v14, 0x0

    if-gez v1, :cond_20

    return-object v14

    :cond_20
    sub-double v15, p2, v12

    div-double/2addr v15, v10

    const-wide/16 v17, 0x0

    cmpg-double v1, v15, v17

    if-ltz v1, :cond_3e

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v15, v17

    if-lez v1, :cond_30

    goto :goto_3e

    :cond_30
    mul-double/2addr v2, v15

    add-double v17, v4, v2

    mul-double/2addr v6, v15

    add-double v19, v8, v6

    mul-double/2addr v10, v15

    add-double v21, v12, v10

    .line 147
    invoke-static/range {v17 .. v22}, Lbt;->b(DDD)Lbt;

    move-result-object v1

    return-object v1

    :cond_3e
    :goto_3e
    return-object v14
.end method

.method public d()D
    .registers 5

    .line 111
    iget-wide v0, p0, Lbt;->a:D

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lbt;->b:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lbt;->c:D

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lin;->a(D)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public d(DDD)D
    .registers 9

    .line 100
    iget-wide v0, p0, Lbt;->a:D

    sub-double/2addr p1, v0

    .line 101
    iget-wide v0, p0, Lbt;->b:D

    sub-double/2addr p3, v0

    .line 102
    iget-wide v0, p0, Lbt;->c:D

    sub-double/2addr p5, v0

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    mul-double/2addr p5, p5

    add-double/2addr p1, p5

    return-wide p1
.end method

.method public d(Lbt;)D
    .registers 10

    .line 93
    iget-wide v0, p1, Lbt;->a:D

    iget-wide v2, p0, Lbt;->a:D

    sub-double/2addr v0, v2

    .line 94
    iget-wide v2, p1, Lbt;->b:D

    iget-wide v4, p0, Lbt;->b:D

    sub-double/2addr v2, v4

    .line 95
    iget-wide v4, p1, Lbt;->c:D

    iget-wide v6, p0, Lbt;->c:D

    sub-double/2addr v4, v6

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lbt;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lbt;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lbt;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
