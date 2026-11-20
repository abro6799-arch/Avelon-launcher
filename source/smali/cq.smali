###### Class defpackage.cq (cq)
.class public final Lcq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:[Ljava/lang/Class;

.field private static b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcq;->b:Ljava/util/Set;

    .line 188
    const-class v0, Lcn;

    const-class v1, Luz;

    const-class v2, Lfr;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcq;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lfd;ZZ)I
    .registers 44

    move-object/from16 v0, p0

    const/4 v10, 0x0

    if-nez p1, :cond_8

    if-nez p2, :cond_8

    return v10

    .line 59
    :cond_8
    sget-object v1, Lcq;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    move v1, v10

    .line 61
    :goto_e
    iget-object v2, v0, Lfd;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 62
    iget-object v2, v0, Lfd;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgs;

    .line 63
    iget-wide v3, v2, Lgs;->aM:D

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    .line 64
    iget-wide v7, v2, Lgs;->aO:D

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Lin;->b(D)I

    move-result v2

    const/4 v4, -0x8

    move v5, v4

    :goto_30
    const/16 v6, 0x8

    if-gt v5, v6, :cond_4b

    move v7, v4

    :goto_35
    if-gt v7, v6, :cond_48

    .line 69
    sget-object v8, Lcq;->b:Ljava/util/Set;

    new-instance v9, Lyy;

    add-int v11, v5, v3

    add-int v12, v7, v2

    invoke-direct {v9, v11, v12}, Lyy;-><init>(II)V

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 74
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lfd;->u()Lbr;

    move-result-object v11

    .line 76
    invoke-static {}, Llk;->values()[Llk;

    move-result-object v12

    array-length v13, v12

    move v1, v10

    move v14, v1

    :goto_59
    if-ge v14, v13, :cond_289

    aget-object v15, v12, v14

    .line 78
    invoke-virtual {v15}, Llk;->d()Z

    move-result v2

    if-eqz v2, :cond_65

    if-eqz p2, :cond_85

    :cond_65
    invoke-virtual {v15}, Llk;->d()Z

    move-result v2

    if-nez v2, :cond_6e

    if-nez p1, :cond_6e

    goto :goto_85

    .line 82
    :cond_6e
    invoke-virtual {v15}, Llk;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfd;->b(Ljava/lang/Class;)I

    move-result v2

    invoke-virtual {v15}, Llk;->b()I

    move-result v3

    sget-object v4, Lcq;->b:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x100

    if-le v2, v3, :cond_8e

    :cond_85
    :goto_85
    move v5, v10

    move-object/from16 v32, v12

    move/from16 v33, v13

    move/from16 v34, v14

    goto/16 :goto_280

    .line 86
    :cond_8e
    sget-object v2, Lcq;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_94
    :goto_94
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyy;

    .line 88
    invoke-virtual/range {p0 .. p0}, Lfd;->a()Lxv;

    move-result-object v3

    invoke-virtual {v3, v2}, Lxv;->a(Lyy;)Lkd;

    move-result-object v3

    .line 89
    invoke-virtual {v3, v15}, Lkd;->a(Llk;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_26c

    .line 90
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b6

    goto/16 :goto_26c

    .line 93
    :cond_b6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v10

    :goto_bb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbj;

    .line 94
    iget v6, v6, Lbj;->b:I

    add-int/2addr v5, v6

    goto :goto_bb

    .line 96
    :cond_cb
    iget-object v4, v0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 97
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbj;

    .line 98
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_db
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ee

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbj;

    .line 99
    iget v7, v6, Lbj;->b:I

    sub-int/2addr v4, v7

    if-gez v4, :cond_db

    move-object v8, v6

    goto :goto_ef

    :cond_ee
    move-object v8, v5

    .line 107
    :goto_ef
    iget v3, v2, Lyy;->a:I

    mul-int/lit8 v3, v3, 0x10

    iget v2, v2, Lyy;->b:I

    mul-int/lit8 v2, v2, 0x10

    invoke-static {v0, v3, v2}, Lcq;->a(Lfd;II)Lwf;

    move-result-object v2

    .line 108
    iget v9, v2, Lwf;->a:I

    .line 109
    iget v6, v2, Lwf;->b:I

    .line 110
    iget v7, v2, Lwf;->c:I

    .line 112
    invoke-virtual {v0, v9, v6, v7}, Lfd;->h(III)Z

    move-result v2

    if-eqz v2, :cond_109

    goto/16 :goto_26c

    .line 113
    :cond_109
    invoke-virtual {v0, v9, v6, v7}, Lfd;->f(III)Lln;

    move-result-object v2

    invoke-virtual {v15}, Llk;->c()Lln;

    move-result-object v3

    if-eq v2, v3, :cond_115

    goto/16 :goto_26c

    :cond_115
    move v2, v10

    move v4, v2

    :goto_117
    const/4 v3, 0x3

    if-ge v4, v3, :cond_94

    move/from16 v17, v1

    move/from16 v18, v2

    move v2, v6

    move v3, v7

    move v1, v9

    move v5, v10

    :goto_122
    const/4 v10, 0x4

    if-ge v5, v10, :cond_24f

    .line 122
    iget-object v10, v0, Lfd;->r:Ljava/util/Random;

    move/from16 v19, v4

    const/4 v4, 0x6

    invoke-virtual {v10, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    move/from16 v20, v5

    iget-object v5, v0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sub-int/2addr v10, v5

    add-int/2addr v10, v1

    .line 123
    iget-object v1, v0, Lfd;->r:Ljava/util/Random;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v4, v0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sub-int/2addr v1, v4

    add-int v4, v2, v1

    .line 124
    iget-object v1, v0, Lfd;->r:Ljava/util/Random;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v5, v0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int/2addr v1, v2

    add-int v5, v3, v1

    .line 127
    invoke-static {v15, v0, v10, v4, v5}, Lcq;->a(Llk;Lfd;III)Z

    move-result v1

    if-eqz v1, :cond_219

    int-to-float v1, v10

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v3, v1, v2

    int-to-float v1, v4

    move/from16 v22, v4

    int-to-float v4, v5

    add-float/2addr v4, v2

    move-object/from16 v23, v8

    move/from16 v24, v9

    float-to-double v8, v3

    move-object/from16 v32, v12

    move/from16 v33, v13

    float-to-double v12, v1

    move/from16 v34, v14

    move-object/from16 v35, v15

    float-to-double v14, v4

    const-wide/high16 v25, 0x4038000000000000L    # 24.0

    move v2, v1

    move-object/from16 v1, p0

    move v0, v2

    move/from16 v36, v10

    move v10, v3

    move-wide v2, v8

    move/from16 v37, v4

    move/from16 v21, v19

    move/from16 v19, v22

    move/from16 v22, v20

    move/from16 v20, v5

    move-wide v4, v12

    move/from16 v38, v6

    move/from16 v39, v7

    move-wide v6, v14

    move-wide/from16 v27, v8

    move-wide/from16 v29, v14

    move-object/from16 v14, v23

    move/from16 v40, v24

    move-wide/from16 v8, v25

    .line 131
    invoke-virtual/range {v1 .. v9}, Lfd;->a(DDDD)Lgs;

    move-result-object v1

    if-eqz v1, :cond_1a6

    :goto_1a1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_233

    .line 134
    :cond_1a6
    iget v1, v11, Lbr;->a:I

    int-to-float v1, v1

    sub-float v3, v10, v1

    .line 135
    iget v1, v11, Lbr;->b:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 136
    iget v2, v11, Lbr;->c:I

    int-to-float v2, v2

    move/from16 v4, v37

    sub-float v2, v4, v2

    mul-float/2addr v3, v3

    mul-float/2addr v1, v1

    add-float/2addr v3, v1

    mul-float/2addr v2, v2

    add-float/2addr v3, v2

    const/high16 v1, 0x44100000    # 576.0f

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1c3

    goto :goto_1a1

    .line 145
    :cond_1c3
    :try_start_1c3
    iget-object v1, v14, Lbj;->a:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lfd;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lls;
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1db} :catch_214

    move v2, v0

    move-object/from16 v0, p0

    .line 151
    iget-object v3, v0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float/2addr v3, v6

    const/16 v31, 0x0

    move-object/from16 v23, v1

    move-wide/from16 v24, v27

    move-wide/from16 v26, v12

    move-wide/from16 v28, v29

    move/from16 v30, v3

    invoke-virtual/range {v23 .. v31}, Lls;->c(DDDFF)V

    .line 153
    invoke-virtual {v1}, Lls;->d()Z

    move-result v3

    if-eqz v3, :cond_211

    add-int/lit8 v3, v18, 0x1

    .line 155
    invoke-virtual {v0, v1}, Lfd;->b(Lsn;)Z

    .line 156
    invoke-static {v1, v0, v10, v2, v4}, Lcq;->a(Lls;Lfd;FFF)V

    .line 157
    invoke-virtual {v1}, Lls;->l()I

    move-result v1

    if-lt v3, v1, :cond_20f

    move v10, v5

    move/from16 v1, v17

    goto/16 :goto_276

    :cond_20f
    move/from16 v18, v3

    :cond_211
    add-int v17, v17, v18

    goto :goto_233

    :catch_214
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v17

    :cond_219
    move/from16 v38, v6

    move/from16 v39, v7

    move/from16 v40, v9

    move/from16 v36, v10

    move-object/from16 v32, v12

    move/from16 v33, v13

    move/from16 v34, v14

    move-object/from16 v35, v15

    move/from16 v21, v19

    move/from16 v22, v20

    move/from16 v19, v4

    move/from16 v20, v5

    move-object v14, v8

    const/4 v5, 0x0

    :goto_233
    add-int/lit8 v1, v22, 0x1

    move v5, v1

    move-object v8, v14

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    move-object/from16 v12, v32

    move/from16 v13, v33

    move/from16 v14, v34

    move-object/from16 v15, v35

    move/from16 v1, v36

    move/from16 v6, v38

    move/from16 v7, v39

    move/from16 v9, v40

    goto/16 :goto_122

    :cond_24f
    move/from16 v21, v4

    move/from16 v38, v6

    move/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v32, v12

    move/from16 v33, v13

    move/from16 v34, v14

    move-object/from16 v35, v15

    const/4 v5, 0x0

    move-object v14, v8

    add-int/lit8 v4, v21, 0x1

    move v10, v5

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v14, v34

    goto/16 :goto_117

    :cond_26c
    :goto_26c
    move v5, v10

    move-object/from16 v32, v12

    move/from16 v33, v13

    move/from16 v34, v14

    move-object/from16 v35, v15

    move v10, v5

    :goto_276
    move-object/from16 v12, v32

    move/from16 v13, v33

    move/from16 v14, v34

    move-object/from16 v15, v35

    goto/16 :goto_94

    :goto_280
    add-int/lit8 v14, v34, 0x1

    move v10, v5

    move-object/from16 v12, v32

    move/from16 v13, v33

    goto/16 :goto_59

    :cond_289
    return v1
.end method

.method protected static a(Lfd;II)Lwf;
    .registers 6

    .line 44
    iget-object v0, p0, Lfd;->r:Ljava/util/Random;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 45
    iget-object v0, p0, Lfd;->r:Ljava/util/Random;

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 46
    iget-object p0, p0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {p0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p2, p0

    .line 48
    new-instance p0, Lwf;

    invoke-direct {p0, p1, v0, p2}, Lwf;-><init>(III)V

    return-object p0
.end method

.method private static a(Lls;Lfd;FFF)V
    .registers 15

    .line 177
    instance-of v0, p0, Lcn;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lfd;->r:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_24

    .line 178
    new-instance v0, Lfr;

    invoke-direct {v0, p1}, Lfr;-><init>(Lfd;)V

    float-to-double v2, p2

    float-to-double v4, p3

    float-to-double v6, p4

    .line 179
    iget v8, p0, Lls;->aS:F

    const/4 v9, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Lfr;->c(DDDFF)V

    .line 180
    invoke-virtual {p1, v0}, Lfd;->b(Lsn;)Z

    .line 181
    invoke-virtual {v0, p0}, Lfr;->i(Lsn;)V

    goto :goto_33

    .line 182
    :cond_24
    instance-of p2, p0, Ldl;

    if-eqz p2, :cond_33

    .line 183
    check-cast p0, Ldl;

    iget-object p1, p1, Lfd;->r:Ljava/util/Random;

    invoke-static {p1}, Ldl;->a(Ljava/util/Random;)I

    move-result p1

    invoke-virtual {p0, p1}, Ldl;->e_(I)V

    :cond_33
    :goto_33
    return-void
.end method

.method public static a(Lfd;Ljava/util/List;)Z
    .registers 30

    move-object/from16 v0, p0

    .line 196
    new-instance v1, Lfw;

    invoke-direct {v1, v0}, Lfw;-><init>(Lxp;)V

    .line 198
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgs;

    .line 201
    sget-object v6, Lcq;->a:[Ljava/lang/Class;

    if-eqz v6, :cond_19a

    .line 202
    array-length v7, v6

    if-nez v7, :cond_21

    goto/16 :goto_19a

    :cond_21
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_23
    const/16 v9, 0x14

    if-ge v7, v9, :cond_19a

    if-nez v8, :cond_19a

    .line 210
    iget-wide v9, v5, Lgs;->aM:D

    invoke-static {v9, v10}, Lin;->b(D)I

    move-result v9

    iget-object v10, v0, Lfd;->r:Ljava/util/Random;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, v0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    sub-int/2addr v9, v10

    .line 211
    iget-wide v12, v5, Lgs;->aO:D

    invoke-static {v12, v13}, Lin;->b(D)I

    move-result v10

    iget-object v12, v0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v12, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v10, v12

    iget-object v12, v0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v12, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    sub-int/2addr v10, v11

    .line 212
    iget-wide v11, v5, Lgs;->aN:D

    invoke-static {v11, v12}, Lin;->b(D)I

    move-result v11

    iget-object v12, v0, Lfd;->r:Ljava/util/Random;

    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, v0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    sub-int/2addr v11, v12

    const/16 v12, 0x80

    const/4 v13, 0x1

    if-ge v11, v13, :cond_70

    move v11, v13

    goto :goto_73

    :cond_70
    if-le v11, v12, :cond_73

    move v11, v12

    .line 220
    :cond_73
    :goto_73
    iget-object v14, v0, Lfd;->r:Ljava/util/Random;

    array-length v15, v6

    invoke-virtual {v14, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    move v15, v11

    :goto_7b
    const/4 v3, 0x2

    if-le v15, v3, :cond_89

    add-int/lit8 v3, v15, -0x1

    .line 223
    invoke-virtual {v0, v9, v3, v10}, Lfd;->h(III)Z

    move-result v3

    if-nez v3, :cond_89

    add-int/lit8 v15, v15, -0x1

    goto :goto_7b

    .line 227
    :cond_89
    :goto_89
    sget-object v3, Llk;->a:Llk;

    invoke-static {v3, v0, v9, v15, v10}, Lcq;->a(Llk;Lfd;III)Z

    move-result v3

    if-nez v3, :cond_9a

    add-int/lit8 v3, v11, 0x10

    if-ge v15, v3, :cond_9a

    if-ge v15, v12, :cond_9a

    add-int/lit8 v15, v15, 0x1

    goto :goto_89

    :cond_9a
    add-int/lit8 v11, v11, 0x10

    if-ge v15, v11, :cond_18b

    if-lt v15, v12, :cond_a2

    goto/16 :goto_18b

    :cond_a2
    int-to-float v3, v9

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v3, v11

    int-to-float v12, v15

    int-to-float v13, v10

    add-float/2addr v13, v11

    .line 240
    :try_start_a9
    aget-object v14, v6, v14

    move-object/from16 v16, v2

    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/Class;

    const-class v11, Lfd;

    const/16 v17, 0x0

    aput-object v11, v2, v17

    invoke-virtual {v14, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lls;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_c4} :catch_186

    move-object v11, v6

    move v14, v7

    float-to-double v6, v3

    move-object v3, v11

    float-to-double v11, v12

    move/from16 v26, v14

    float-to-double v13, v13

    move-object/from16 v27, v3

    .line 247
    iget-object v3, v0, Lfd;->r:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v17, 0x43b40000    # 360.0f

    mul-float v24, v3, v17

    const/16 v25, 0x0

    move-object/from16 v17, v2

    move-wide/from16 v18, v6

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    invoke-virtual/range {v17 .. v25}, Lls;->c(DDDFF)V

    .line 249
    invoke-virtual {v2}, Lls;->d()Z

    move-result v3

    if-nez v3, :cond_ed

    goto/16 :goto_191

    :cond_ed
    const/high16 v3, 0x42000000    # 32.0f

    .line 253
    invoke-virtual {v1, v2, v5, v3}, Lfw;->a(Lsn;Lsn;F)Ldh;

    move-result-object v3

    if-eqz v3, :cond_191

    .line 254
    iget v6, v3, Ldh;->a:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_191

    .line 255
    invoke-virtual {v3}, Ldh;->c()Ld;

    move-result-object v3

    .line 257
    iget v6, v3, Ld;->a:I

    int-to-double v6, v6

    iget-wide v11, v5, Lgs;->aM:D

    sub-double/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    cmpg-double v6, v6, v11

    if-gez v6, :cond_191

    iget v6, v3, Ld;->c:I

    int-to-double v6, v6

    iget-wide v13, v5, Lgs;->aO:D

    sub-double/2addr v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v6, v6, v11

    if-gez v6, :cond_191

    iget v3, v3, Ld;->b:I

    int-to-double v6, v3

    iget-wide v13, v5, Lgs;->aN:D

    sub-double/2addr v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v3, v6, v11

    if-gez v3, :cond_191

    .line 260
    iget-wide v3, v5, Lgs;->aM:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    iget-wide v6, v5, Lgs;->aN:D

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v4

    iget-wide v6, v5, Lgs;->aO:D

    invoke-static {v6, v7}, Lin;->b(D)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v0, v3, v4, v6, v7}, Lve;->f(Lfd;IIII)Lbr;

    move-result-object v3

    if-nez v3, :cond_14a

    .line 264
    new-instance v3, Lbr;

    add-int/lit8 v15, v15, 0x1

    invoke-direct {v3, v9, v15, v10}, Lbr;-><init>(III)V

    .line 266
    :cond_14a
    iget v4, v3, Lbr;->a:I

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-double v7, v4

    iget v4, v3, Lbr;->b:I

    int-to-double v9, v4

    iget v4, v3, Lbr;->c:I

    int-to-float v4, v4

    add-float/2addr v4, v6

    float-to-double v11, v4

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v17, v2

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    move-wide/from16 v22, v11

    invoke-virtual/range {v17 .. v25}, Lls;->c(DDDFF)V

    .line 271
    invoke-virtual {v0, v2}, Lfd;->b(Lsn;)Z

    .line 272
    iget v4, v3, Lbr;->a:I

    int-to-float v4, v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    iget v7, v3, Lbr;->b:I

    int-to-float v7, v7

    iget v3, v3, Lbr;->c:I

    int-to-float v3, v3

    add-float/2addr v3, v6

    invoke-static {v2, v0, v4, v7, v3}, Lcq;->a(Lls;Lfd;FFF)V

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 273
    invoke-virtual {v5, v3, v6, v6}, Lgs;->a(ZZZ)V

    .line 275
    invoke-virtual {v2}, Lls;->T()V

    move v4, v3

    move v8, v4

    goto :goto_192

    :catch_186
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :cond_18b
    :goto_18b
    move-object/from16 v16, v2

    move-object/from16 v27, v6

    move/from16 v26, v7

    :cond_191
    :goto_191
    const/4 v6, 0x0

    :goto_192
    add-int/lit8 v7, v26, 0x1

    move-object/from16 v2, v16

    move-object/from16 v6, v27

    goto/16 :goto_23

    :cond_19a
    :goto_19a
    move-object/from16 v16, v2

    const/4 v6, 0x0

    move-object/from16 v2, v16

    goto/16 :goto_c

    :cond_1a1
    return v4
.end method

.method private static a(Llk;Lfd;III)Z
    .registers 8

    .line 169
    invoke-virtual {p0}, Llk;->c()Lln;

    move-result-object p0

    sget-object v0, Lln;->g:Lln;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_1d

    .line 170
    invoke-virtual {p1, p2, p3, p4}, Lfd;->f(III)Lln;

    move-result-object p0

    invoke-virtual {p0}, Lln;->d()Z

    move-result p0

    if-eqz p0, :cond_1c

    add-int/2addr p3, v2

    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p0

    if-nez p0, :cond_1c

    move v1, v2

    :cond_1c
    return v1

    :cond_1d
    add-int/lit8 p0, p3, -0x1

    .line 172
    invoke-virtual {p1, p2, p0, p4}, Lfd;->h(III)Z

    move-result p0

    if-eqz p0, :cond_3d

    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p0

    if-nez p0, :cond_3d

    invoke-virtual {p1, p2, p3, p4}, Lfd;->f(III)Lln;

    move-result-object p0

    invoke-virtual {p0}, Lln;->d()Z

    move-result p0

    if-nez p0, :cond_3d

    add-int/2addr p3, v2

    invoke-virtual {p1, p2, p3, p4}, Lfd;->h(III)Z

    move-result p0

    if-nez p0, :cond_3d

    move v1, v2

    :cond_3d
    return v1
.end method
