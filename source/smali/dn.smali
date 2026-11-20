###### Class defpackage.dn (dn)
.class public Ldn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lfd;

.field private b:[Ljava/util/List;

.field private c:Lji;

.field private d:Ljava/util/Random;


# direct methods
.method public constructor <init>(Lfd;Lji;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/util/List;

    .line 28
    iput-object v1, p0, Ldn;->b:[Ljava/util/List;

    .line 30
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Ldn;->d:Ljava/util/Random;

    if-eqz p1, :cond_13

    .line 34
    iput-object p1, p0, Ldn;->a:Lfd;

    .line 36
    :cond_13
    iput-object p2, p0, Ldn;->c:Lji;

    const/4 p1, 0x0

    :goto_16
    if-ge p1, v0, :cond_24

    .line 38
    iget-object p2, p0, Ldn;->b:[Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_16

    :cond_24
    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_31

    move v2, v0

    .line 50
    :goto_6
    iget-object v3, p0, Ldn;->b:[Ljava/util/List;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 51
    iget-object v3, p0, Ldn;->b:[Ljava/util/List;

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxw;

    .line 52
    invoke-virtual {v3}, Lxw;->w_()V

    .line 53
    iget-boolean v3, v3, Lxw;->be:Z

    if-eqz v3, :cond_2b

    .line 54
    iget-object v3, p0, Ldn;->b:[Ljava/util/List;

    aget-object v3, v3, v1

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v4

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_31
    return-void
.end method

.method public a(IIII)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v10, p4

    .line 129
    iget-object v4, v0, Ldn;->a:Lfd;

    invoke-virtual {v4, v1, v2, v3}, Lfd;->a(III)I

    move-result v4

    if-nez v4, :cond_13

    return-void

    .line 131
    :cond_13
    sget-object v5, Luu;->m:[Luu;

    aget-object v11, v5, v4

    int-to-double v4, v1

    .line 133
    iget-object v6, v0, Ldn;->d:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    iget-wide v8, v11, Luu;->bv:D

    iget-wide v12, v11, Luu;->bs:D

    sub-double/2addr v8, v12

    const v14, 0x3e4ccccd    # 0.2f

    float-to-double v12, v14

    sub-double/2addr v8, v12

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    const v8, 0x3dcccccd    # 0.1f

    float-to-double v8, v8

    add-double/2addr v6, v8

    iget-wide v14, v11, Luu;->bs:D

    add-double/2addr v6, v14

    int-to-double v14, v2

    move-wide/from16 v17, v6

    .line 134
    iget-object v6, v0, Ldn;->d:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    iget-wide v1, v11, Luu;->bw:D

    move-wide/from16 v19, v4

    iget-wide v4, v11, Luu;->bt:D

    sub-double/2addr v1, v4

    sub-double/2addr v1, v12

    mul-double/2addr v6, v1

    add-double/2addr v6, v14

    add-double/2addr v6, v8

    iget-wide v1, v11, Luu;->bt:D

    add-double/2addr v6, v1

    int-to-double v1, v3

    .line 135
    iget-object v4, v0, Ldn;->d:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    move-wide/from16 v21, v6

    iget-wide v6, v11, Luu;->bx:D

    move-wide/from16 v23, v14

    iget-wide v14, v11, Luu;->bu:D

    sub-double/2addr v6, v14

    sub-double/2addr v6, v12

    mul-double/2addr v4, v6

    add-double/2addr v4, v1

    add-double/2addr v4, v8

    iget-wide v6, v11, Luu;->bu:D

    add-double/2addr v4, v6

    if-nez v10, :cond_69

    .line 136
    iget-wide v6, v11, Luu;->bt:D

    add-double v14, v23, v6

    sub-double v6, v14, v8

    goto :goto_6b

    :cond_69
    move-wide/from16 v6, v21

    :goto_6b
    const/4 v12, 0x1

    if-ne v10, v12, :cond_76

    .line 137
    iget-wide v6, v11, Luu;->bw:D

    add-double v14, v23, v6

    add-double/2addr v14, v8

    move-wide/from16 v21, v14

    goto :goto_78

    :cond_76
    move-wide/from16 v21, v6

    :goto_78
    const/4 v6, 0x2

    if-ne v10, v6, :cond_7f

    .line 138
    iget-wide v4, v11, Luu;->bu:D

    add-double/2addr v4, v1

    sub-double/2addr v4, v8

    :cond_7f
    const/4 v6, 0x3

    if-ne v10, v6, :cond_87

    .line 139
    iget-wide v4, v11, Luu;->bx:D

    add-double/2addr v1, v4

    add-double/2addr v1, v8

    goto :goto_88

    :cond_87
    move-wide v1, v4

    :goto_88
    const/4 v4, 0x4

    if-ne v10, v4, :cond_92

    .line 140
    iget-wide v4, v11, Luu;->bs:D

    add-double v4, v19, v4

    sub-double v6, v4, v8

    goto :goto_94

    :cond_92
    move-wide/from16 v6, v17

    :goto_94
    const/4 v4, 0x5

    if-ne v10, v4, :cond_9d

    .line 141
    iget-wide v4, v11, Luu;->bv:D

    add-double v4, v19, v4

    add-double/2addr v4, v8

    move-wide v6, v4

    .line 142
    :cond_9d
    new-instance v8, Lqm;

    move-object v4, v8

    iget-object v9, v0, Ldn;->a:Lfd;

    move-object v5, v9

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move/from16 v12, p1

    move/from16 v13, p2

    invoke-virtual {v9, v12, v13, v3}, Lfd;->e(III)I

    move-result v20

    move-object/from16 v25, v8

    move-wide/from16 v8, v21

    move-object/from16 v18, v11

    move-wide v10, v1

    move/from16 v19, p4

    move v1, v12

    move v2, v13

    const-wide/16 v12, 0x0

    invoke-direct/range {v4 .. v20}, Lqm;-><init>(Lfd;DDDDDDLuu;II)V

    move-object/from16 v4, v25

    invoke-virtual {v4, v1, v2, v3}, Lqm;->a(III)Lqm;

    move-result-object v1

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Lqm;->c(F)Lxw;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lxw;->d(F)Lxw;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldn;->a(Lxw;)V

    return-void
.end method

.method public a(IIIII)V
    .registers 38

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-nez p4, :cond_b

    return-void

    .line 115
    :cond_b
    sget-object v4, Luu;->m:[Luu;

    aget-object v4, v4, p4

    const/16 v22, 0x0

    move/from16 v15, v22

    :goto_13
    const/4 v13, 0x4

    if-ge v15, v13, :cond_9d

    move/from16 v14, v22

    :goto_18
    if-ge v14, v13, :cond_96

    move/from16 v6, v22

    :goto_1c
    if-ge v6, v13, :cond_8c

    int-to-double v11, v1

    int-to-double v7, v15

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    add-double v7, v7, v17

    int-to-double v9, v13

    div-double/2addr v7, v9

    add-double v23, v11, v7

    move-wide/from16 v7, v23

    move-wide/from16 v25, v7

    int-to-double v7, v2

    move-wide/from16 v19, v11

    int-to-double v11, v14

    add-double v11, v11, v17

    div-double/2addr v11, v9

    add-double v27, v7, v11

    move-wide v11, v9

    move-wide/from16 v9, v27

    int-to-double v1, v3

    move/from16 v16, v14

    int-to-double v13, v6

    add-double v13, v13, v17

    div-double/2addr v13, v11

    add-double v29, v1, v13

    move-wide/from16 v13, v19

    move-wide/from16 v11, v29

    .line 123
    iget-object v5, v0, Ldn;->d:Ljava/util/Random;

    move/from16 v19, v6

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v20

    .line 124
    new-instance v6, Lqm;

    move-object v5, v6

    move-object/from16 v21, v6

    iget-object v6, v0, Ldn;->a:Lfd;

    move/from16 v31, v19

    move-object/from16 v0, v21

    sub-double v23, v23, v13

    sub-double v13, v23, v17

    move/from16 v23, v16

    const/16 v24, 0x4

    sub-double v27, v27, v7

    sub-double v7, v27, v17

    move/from16 v27, v15

    move-wide v15, v7

    sub-double v29, v29, v1

    sub-double v17, v29, v17

    move-object/from16 v19, v4

    move/from16 v21, p5

    move-wide/from16 v7, v25

    invoke-direct/range {v5 .. v21}, Lqm;-><init>(Lfd;DDDDDDLuu;II)V

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lqm;->a(III)Lqm;

    move-result-object v0

    move-object/from16 v5, p0

    invoke-virtual {v5, v0}, Ldn;->a(Lxw;)V

    add-int/lit8 v6, v31, 0x1

    move-object v0, v5

    move/from16 v14, v23

    move/from16 v13, v24

    move/from16 v15, v27

    goto :goto_1c

    :cond_8c
    move-object v5, v0

    move/from16 v24, v13

    move/from16 v23, v14

    move/from16 v27, v15

    add-int/lit8 v14, v23, 0x1

    goto :goto_18

    :cond_96
    move-object v5, v0

    move/from16 v27, v15

    add-int/lit8 v15, v27, 0x1

    goto/16 :goto_13

    :cond_9d
    move-object v5, v0

    return-void
.end method

.method public a(Lfd;)V
    .registers 3

    .line 104
    iput-object p1, p0, Ldn;->a:Lfd;

    const/4 p1, 0x0

    :goto_3
    const/4 v0, 0x4

    if-ge p1, v0, :cond_10

    .line 107
    iget-object v0, p0, Ldn;->b:[Ljava/util/List;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_10
    return-void
.end method

.method public a(Lsn;F)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 61
    iget v2, v1, Lsn;->aS:F

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v2, v3

    const/high16 v4, 0x43340000    # 180.0f

    div-float/2addr v2, v4

    invoke-static {v2}, Lin;->b(F)F

    move-result v2

    .line 62
    iget v5, v1, Lsn;->aS:F

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    invoke-static {v5}, Lin;->a(F)F

    move-result v13

    neg-float v5, v13

    .line 64
    iget v6, v1, Lsn;->aT:F

    mul-float/2addr v6, v3

    div-float/2addr v6, v4

    invoke-static {v6}, Lin;->a(F)F

    move-result v6

    mul-float v14, v5, v6

    .line 65
    iget v5, v1, Lsn;->aT:F

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    invoke-static {v5}, Lin;->a(F)F

    move-result v5

    mul-float v15, v2, v5

    .line 66
    iget v5, v1, Lsn;->aT:F

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    invoke-static {v5}, Lin;->b(F)F

    move-result v3

    .line 68
    iget-wide v4, v1, Lsn;->bl:D

    iget-wide v6, v1, Lsn;->aM:D

    iget-wide v8, v1, Lsn;->bl:D

    sub-double/2addr v6, v8

    move/from16 v12, p2

    float-to-double v8, v12

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    sput-wide v4, Lxw;->l:D

    .line 69
    iget-wide v4, v1, Lsn;->bm:D

    iget-wide v6, v1, Lsn;->aN:D

    iget-wide v10, v1, Lsn;->bm:D

    sub-double/2addr v6, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    sput-wide v4, Lxw;->m:D

    .line 70
    iget-wide v4, v1, Lsn;->bn:D

    iget-wide v6, v1, Lsn;->aO:D

    iget-wide v10, v1, Lsn;->bn:D

    sub-double/2addr v6, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    sput-wide v4, Lxw;->n:D

    const/4 v1, 0x0

    move v4, v1

    :goto_5c
    const/4 v5, 0x3

    if-ge v4, v5, :cond_c6

    .line 72
    iget-object v5, v0, Ldn;->b:[Ljava/util/List;

    aget-object v5, v5, v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6a

    goto :goto_c1

    :cond_6a
    if-nez v4, :cond_75

    .line 75
    iget-object v5, v0, Ldn;->c:Lji;

    const-string v6, "/particles.png"

    invoke-virtual {v5, v6}, Lji;->b(Ljava/lang/String;)I

    move-result v5

    goto :goto_76

    :cond_75
    move v5, v1

    :goto_76
    const/4 v6, 0x1

    if-ne v4, v6, :cond_81

    .line 76
    iget-object v5, v0, Ldn;->c:Lji;

    const-string v6, "/terrain.png"

    invoke-virtual {v5, v6}, Lji;->b(Ljava/lang/String;)I

    move-result v5

    :cond_81
    const/4 v6, 0x2

    if-ne v4, v6, :cond_8c

    .line 77
    iget-object v5, v0, Ldn;->c:Lji;

    const-string v6, "/gui/items.png"

    invoke-virtual {v5, v6}, Lji;->b(Ljava/lang/String;)I

    move-result v5

    :cond_8c
    const/16 v6, 0xde1

    .line 78
    invoke-static {v6, v5}, Lorg/lwjgl/opengl/GL11;->glBindTexture(II)V

    .line 79
    sget-object v16, Lnw;->a:Lnw;

    .line 81
    invoke-virtual/range {v16 .. v16}, Lnw;->b()V

    move v11, v1

    .line 82
    :goto_97
    iget-object v5, v0, Ldn;->b:[Ljava/util/List;

    aget-object v5, v5, v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v11, v5, :cond_be

    .line 83
    iget-object v5, v0, Ldn;->b:[Ljava/util/List;

    aget-object v5, v5, v4

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lxw;

    move-object/from16 v6, v16

    move/from16 v7, p2

    move v8, v2

    move v9, v3

    move v10, v13

    move/from16 v17, v11

    move v11, v14

    move v12, v15

    .line 85
    invoke-virtual/range {v5 .. v12}, Lxw;->a(Lnw;FFFFFF)V

    add-int/lit8 v11, v17, 0x1

    move/from16 v12, p2

    goto :goto_97

    .line 87
    :cond_be
    invoke-virtual/range {v16 .. v16}, Lnw;->a()V

    :goto_c1
    add-int/lit8 v4, v4, 0x1

    move/from16 v12, p2

    goto :goto_5c

    :cond_c6
    return-void
.end method

.method public a(Lxw;)V
    .registers 5

    .line 43
    invoke-virtual {p1}, Lxw;->c_()I

    move-result v0

    .line 44
    iget-object v1, p0, Ldn;->b:[Ljava/util/List;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xfa0

    if-lt v1, v2, :cond_18

    iget-object v1, p0, Ldn;->b:[Ljava/util/List;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 45
    :cond_18
    iget-object v1, p0, Ldn;->b:[Ljava/util/List;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 5

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ldn;->b:[Ljava/util/List;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Ldn;->b:[Ljava/util/List;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Ldn;->b:[Ljava/util/List;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lsn;F)V
    .registers 13

    .line 94
    iget-object p1, p0, Ldn;->b:[Ljava/util/List;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 96
    :cond_c
    sget-object p1, Lnw;->a:Lnw;

    const/4 v1, 0x0

    move v9, v1

    .line 97
    :goto_10
    iget-object v1, p0, Ldn;->b:[Ljava/util/List;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_31

    .line 98
    iget-object v1, p0, Ldn;->b:[Ljava/util/List;

    aget-object v1, v1, v0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxw;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    .line 99
    invoke-virtual/range {v1 .. v8}, Lxw;->a(Lnw;FFFFFF)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_31
    return-void
.end method
