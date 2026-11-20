###### Class defpackage.fw (fw)
.class public Lfw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lxp;

.field private b:Llf;

.field private c:Ljx;

.field private d:[Ld;


# direct methods
.method public constructor <init>(Lxp;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Llf;

    invoke-direct {v0}, Llf;-><init>()V

    iput-object v0, p0, Lfw;->b:Llf;

    .line 13
    new-instance v0, Ljx;

    invoke-direct {v0}, Ljx;-><init>()V

    iput-object v0, p0, Lfw;->c:Ljx;

    const/16 v0, 0x20

    new-array v0, v0, [Ld;

    .line 15
    iput-object v0, p0, Lfw;->d:[Ld;

    .line 18
    iput-object p1, p0, Lfw;->a:Lxp;

    return-void
.end method

.method private a(Lsn;IIILd;)I
    .registers 11

    move p1, p2

    .line 158
    :goto_1
    iget v0, p5, Ld;->a:I

    add-int/2addr v0, p2

    if-ge p1, v0, :cond_57

    move v0, p3

    .line 159
    :goto_7
    iget v1, p5, Ld;->b:I

    add-int/2addr v1, p3

    if-ge v0, v1, :cond_54

    move v1, p4

    .line 160
    :goto_d
    iget v2, p5, Ld;->c:I

    add-int/2addr v2, p4

    if-ge v1, v2, :cond_51

    .line 161
    iget-object v2, p0, Lfw;->a:Lxp;

    invoke-interface {v2, p1, v0, v1}, Lxp;->a(III)I

    move-result v2

    if-lez v2, :cond_4e

    .line 163
    sget-object v3, Luu;->aM:Luu;

    iget v3, v3, Luu;->bn:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_41

    sget-object v3, Luu;->aF:Luu;

    iget v3, v3, Luu;->bn:I

    if-ne v2, v3, :cond_28

    goto :goto_41

    .line 169
    :cond_28
    sget-object v3, Luu;->m:[Luu;

    aget-object v2, v3, v2

    iget-object v2, v2, Luu;->bA:Lln;

    .line 170
    invoke-virtual {v2}, Lln;->c()Z

    move-result v3

    if-eqz v3, :cond_35

    return v4

    .line 171
    :cond_35
    sget-object v3, Lln;->g:Lln;

    if-ne v2, v3, :cond_3b

    const/4 p1, -0x1

    return p1

    .line 174
    :cond_3b
    sget-object v3, Lln;->h:Lln;

    if-ne v2, v3, :cond_4e

    const/4 p1, -0x2

    return p1

    .line 164
    :cond_41
    :goto_41
    iget-object v2, p0, Lfw;->a:Lxp;

    invoke-interface {v2, p1, v0, v1}, Lxp;->e(III)I

    move-result v2

    .line 165
    invoke-static {v2}, Lle;->f(I)Z

    move-result v2

    if-nez v2, :cond_4e

    return v4

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_54
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_57
    const/4 p1, 0x1

    return p1
.end method

.method private final a(III)Ld;
    .registers 6

    .line 143
    invoke-static {p1, p2, p3}, Ld;->a(III)I

    move-result v0

    .line 144
    iget-object v1, p0, Lfw;->c:Ljx;

    invoke-virtual {v1, v0}, Ljx;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld;

    if-nez v1, :cond_18

    .line 146
    new-instance v1, Ld;

    invoke-direct {v1, p1, p2, p3}, Ld;-><init>(III)V

    .line 147
    iget-object p1, p0, Lfw;->c:Ljx;

    invoke-virtual {p1, v0, v1}, Ljx;->a(ILjava/lang/Object;)V

    :cond_18
    return-object v1
.end method

.method private a(Lsn;IIILd;I)Ld;
    .registers 21

    move-object v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 115
    invoke-direct/range {p0 .. p5}, Lfw;->a(Lsn;IIILd;)I

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_15

    invoke-direct {p0, v7, v8, v9}, Lfw;->a(III)Ld;

    move-result-object v0

    move-object v12, v0

    goto :goto_16

    :cond_15
    move-object v12, v10

    :goto_16
    if-nez v12, :cond_30

    if-lez p6, :cond_30

    add-int v13, v8, p6

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move v3, v13

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 116
    invoke-direct/range {v0 .. v5}, Lfw;->a(Lsn;IIILd;)I

    move-result v0

    if-ne v0, v11, :cond_30

    .line 117
    invoke-direct {p0, v7, v13, v9}, Lfw;->a(III)Ld;

    move-result-object v12

    goto :goto_31

    :cond_30
    move v13, v8

    :goto_31
    if-eqz v12, :cond_59

    const/4 v0, 0x0

    move v8, v0

    :cond_35
    :goto_35
    if-lez v13, :cond_55

    add-int/lit8 v3, v13, -0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 124
    invoke-direct/range {v0 .. v5}, Lfw;->a(Lsn;IIILd;)I

    move-result v0

    if-ne v0, v11, :cond_55

    add-int/2addr v8, v11

    const/4 v1, 0x4

    if-lt v8, v1, :cond_4c

    return-object v10

    :cond_4c
    add-int/lit8 v13, v13, -0x1

    if-lez v13, :cond_35

    .line 129
    invoke-direct {p0, v7, v13, v9}, Lfw;->a(III)Ld;

    move-result-object v12

    goto :goto_35

    :cond_55
    const/4 v1, -0x2

    if-ne v0, v1, :cond_59

    return-object v10

    :cond_59
    return-object v12
.end method

.method private a(Ld;Ld;)Ldh;
    .registers 5

    const/4 p1, 0x1

    move-object v0, p2

    .line 189
    :goto_2
    iget-object v1, v0, Ld;->h:Ld;

    if-eqz v1, :cond_b

    add-int/lit8 p1, p1, 0x1

    .line 191
    iget-object v0, v0, Ld;->h:Ld;

    goto :goto_2

    .line 194
    :cond_b
    new-array v0, p1, [Ld;

    add-int/lit8 p1, p1, -0x1

    .line 196
    aput-object p2, v0, p1

    .line 197
    :goto_11
    iget-object v1, p2, Ld;->h:Ld;

    if-eqz v1, :cond_1c

    .line 198
    iget-object p2, p2, Ld;->h:Ld;

    add-int/lit8 p1, p1, -0x1

    .line 199
    aput-object p2, v0, p1

    goto :goto_11

    .line 201
    :cond_1c
    new-instance p1, Ldh;

    invoke-direct {p1, v0}, Ldh;-><init>([Ld;)V

    return-object p1
.end method

.method private a(Lsn;DDDF)Ldh;
    .registers 14

    .line 30
    iget-object v0, p0, Lfw;->b:Llf;

    invoke-virtual {v0}, Llf;->a()V

    .line 31
    iget-object v0, p0, Lfw;->c:Ljx;

    invoke-virtual {v0}, Ljx;->a()V

    .line 33
    iget-object v0, p1, Lsn;->aW:Leq;

    iget-wide v0, v0, Leq;->a:D

    invoke-static {v0, v1}, Lin;->b(D)I

    move-result v0

    iget-object v1, p1, Lsn;->aW:Leq;

    iget-wide v1, v1, Leq;->b:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    iget-object v2, p1, Lsn;->aW:Leq;

    iget-wide v2, v2, Leq;->c:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lfw;->a(III)Ld;

    move-result-object v0

    .line 34
    iget v1, p1, Lsn;->bg:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    sub-double/2addr p2, v3

    invoke-static {p2, p3}, Lin;->b(D)I

    move-result p2

    invoke-static {p4, p5}, Lin;->b(D)I

    move-result p3

    iget p4, p1, Lsn;->bg:F

    div-float/2addr p4, v2

    float-to-double p4, p4

    sub-double/2addr p6, p4

    invoke-static {p6, p7}, Lin;->b(D)I

    move-result p4

    invoke-direct {p0, p2, p3, p4}, Lfw;->a(III)Ld;

    move-result-object p5

    .line 36
    new-instance p6, Ld;

    iget p2, p1, Lsn;->bg:F

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p2, p3

    invoke-static {p2}, Lin;->d(F)I

    move-result p2

    iget p4, p1, Lsn;->bh:F

    add-float/2addr p4, p3

    invoke-static {p4}, Lin;->d(F)I

    move-result p4

    iget p7, p1, Lsn;->bg:F

    add-float/2addr p7, p3

    invoke-static {p7}, Lin;->d(F)I

    move-result p3

    invoke-direct {p6, p2, p4, p3}, Ld;-><init>(III)V

    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move p7, p8

    .line 37
    invoke-direct/range {p2 .. p7}, Lfw;->a(Lsn;Ld;Ld;Ld;F)Ldh;

    move-result-object p1

    return-object p1
.end method

.method private a(Lsn;Ld;Ld;Ld;F)Ldh;
    .registers 14

    const/4 v0, 0x0

    .line 43
    iput v0, p2, Ld;->e:F

    .line 44
    invoke-virtual {p2, p3}, Ld;->a(Ld;)F

    move-result v0

    iput v0, p2, Ld;->f:F

    .line 45
    iget v0, p2, Ld;->f:F

    iput v0, p2, Ld;->g:F

    .line 47
    iget-object v0, p0, Lfw;->b:Llf;

    invoke-virtual {v0}, Llf;->a()V

    .line 48
    iget-object v0, p0, Lfw;->b:Llf;

    invoke-virtual {v0, p2}, Llf;->a(Ld;)Ld;

    move-object v0, p2

    .line 52
    :cond_18
    iget-object v1, p0, Lfw;->b:Llf;

    invoke-virtual {v1}, Llf;->c()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 53
    iget-object v1, p0, Lfw;->b:Llf;

    invoke-virtual {v1}, Llf;->b()Ld;

    move-result-object v1

    .line 55
    invoke-virtual {v1, p3}, Ld;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 56
    invoke-direct {p0, p2, p3}, Lfw;->a(Ld;Ld;)Ldh;

    move-result-object p1

    return-object p1

    .line 59
    :cond_31
    invoke-virtual {v1, p3}, Ld;->a(Ld;)F

    move-result v2

    invoke-virtual {v0, p3}, Ld;->a(Ld;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3e

    move-object v0, v1

    :cond_3e
    const/4 v2, 0x1

    .line 62
    iput-boolean v2, v1, Ld;->i:Z

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, p4

    move-object v6, p3

    move v7, p5

    .line 64
    invoke-direct/range {v2 .. v7}, Lfw;->b(Lsn;Ld;Ld;Ld;F)I

    move-result v2

    const/4 v3, 0x0

    :goto_4c
    if-ge v3, v2, :cond_18

    .line 66
    iget-object v4, p0, Lfw;->d:[Ld;

    aget-object v4, v4, v3

    .line 68
    iget v5, v1, Ld;->e:F

    invoke-virtual {v1, v4}, Ld;->a(Ld;)F

    move-result v6

    add-float/2addr v5, v6

    .line 69
    invoke-virtual {v4}, Ld;->a()Z

    move-result v6

    if-eqz v6, :cond_65

    iget v6, v4, Ld;->e:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_8c

    .line 70
    :cond_65
    iput-object v1, v4, Ld;->h:Ld;

    .line 71
    iput v5, v4, Ld;->e:F

    .line 72
    invoke-virtual {v4, p3}, Ld;->a(Ld;)F

    move-result v5

    iput v5, v4, Ld;->f:F

    .line 73
    invoke-virtual {v4}, Ld;->a()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 74
    iget-object v5, p0, Lfw;->b:Llf;

    iget v6, v4, Ld;->e:F

    iget v7, v4, Ld;->f:F

    add-float/2addr v6, v7

    invoke-virtual {v5, v4, v6}, Llf;->a(Ld;F)V

    goto :goto_8c

    .line 76
    :cond_80
    iget v5, v4, Ld;->e:F

    iget v6, v4, Ld;->f:F

    add-float/2addr v5, v6

    iput v5, v4, Ld;->g:F

    .line 77
    iget-object v5, p0, Lfw;->b:Llf;

    invoke-virtual {v5, v4}, Llf;->a(Ld;)Ld;

    :cond_8c
    :goto_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_8f
    if-ne v0, p2, :cond_93

    const/4 p1, 0x0

    return-object p1

    .line 84
    :cond_93
    invoke-direct {p0, p2, v0}, Lfw;->a(Ld;Ld;)Ldh;

    move-result-object p1

    return-object p1
.end method

.method private b(Lsn;Ld;Ld;Ld;F)I
    .registers 22

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    .line 91
    iget v2, v8, Ld;->a:I

    iget v0, v8, Ld;->b:I

    const/4 v10, 0x1

    add-int/lit8 v3, v0, 0x1

    iget v4, v8, Ld;->c:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lfw;->a(Lsn;IIILd;)I

    move-result v0

    const/4 v11, 0x0

    if-ne v0, v10, :cond_1e

    move v12, v10

    goto :goto_1f

    :cond_1e
    move v12, v11

    .line 93
    :goto_1f
    iget v2, v8, Ld;->a:I

    iget v3, v8, Ld;->b:I

    iget v0, v8, Ld;->c:I

    add-int/lit8 v4, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p3

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lfw;->a(Lsn;IIILd;I)Ld;

    move-result-object v13

    .line 94
    iget v0, v8, Ld;->a:I

    add-int/lit8 v2, v0, -0x1

    iget v3, v8, Ld;->b:I

    iget v4, v8, Ld;->c:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lfw;->a(Lsn;IIILd;I)Ld;

    move-result-object v14

    .line 95
    iget v0, v8, Ld;->a:I

    add-int/lit8 v2, v0, 0x1

    iget v3, v8, Ld;->b:I

    iget v4, v8, Ld;->c:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lfw;->a(Lsn;IIILd;I)Ld;

    move-result-object v15

    .line 96
    iget v2, v8, Ld;->a:I

    iget v3, v8, Ld;->b:I

    iget v0, v8, Ld;->c:I

    add-int/lit8 v4, v0, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lfw;->a(Lsn;IIILd;I)Ld;

    move-result-object v0

    if-eqz v13, :cond_6f

    .line 98
    iget-boolean v1, v13, Ld;->i:Z

    if-nez v1, :cond_6f

    invoke-virtual {v13, v9}, Ld;->a(Ld;)F

    move-result v1

    cmpg-float v1, v1, p5

    if-gez v1, :cond_6f

    iget-object v1, v7, Lfw;->d:[Ld;

    aput-object v13, v1, v11

    goto :goto_70

    :cond_6f
    move v10, v11

    :goto_70
    if-eqz v14, :cond_85

    .line 99
    iget-boolean v1, v14, Ld;->i:Z

    if-nez v1, :cond_85

    invoke-virtual {v14, v9}, Ld;->a(Ld;)F

    move-result v1

    cmpg-float v1, v1, p5

    if-gez v1, :cond_85

    iget-object v1, v7, Lfw;->d:[Ld;

    add-int/lit8 v2, v10, 0x1

    aput-object v14, v1, v10

    move v10, v2

    :cond_85
    if-eqz v15, :cond_9a

    .line 100
    iget-boolean v1, v15, Ld;->i:Z

    if-nez v1, :cond_9a

    invoke-virtual {v15, v9}, Ld;->a(Ld;)F

    move-result v1

    cmpg-float v1, v1, p5

    if-gez v1, :cond_9a

    iget-object v1, v7, Lfw;->d:[Ld;

    add-int/lit8 v2, v10, 0x1

    aput-object v15, v1, v10

    move v10, v2

    :cond_9a
    if-eqz v0, :cond_af

    .line 101
    iget-boolean v1, v0, Ld;->i:Z

    if-nez v1, :cond_af

    invoke-virtual {v0, v9}, Ld;->a(Ld;)F

    move-result v1

    cmpg-float v1, v1, p5

    if-gez v1, :cond_af

    iget-object v1, v7, Lfw;->d:[Ld;

    add-int/lit8 v2, v10, 0x1

    aput-object v0, v1, v10

    move v10, v2

    :cond_af
    return v10
.end method


# virtual methods
.method public a(Lsn;IIIF)Ldh;
    .registers 16

    int-to-float p2, p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p2, v0

    float-to-double v3, p2

    int-to-float p2, p3

    add-float/2addr p2, v0

    float-to-double v5, p2

    int-to-float p2, p4

    add-float/2addr p2, v0

    float-to-double v7, p2

    move-object v1, p0

    move-object v2, p1

    move v9, p5

    .line 26
    invoke-direct/range {v1 .. v9}, Lfw;->a(Lsn;DDDF)Ldh;

    move-result-object p1

    return-object p1
.end method

.method public a(Lsn;Lsn;F)Ldh;
    .registers 13

    .line 22
    iget-wide v2, p2, Lsn;->aM:D

    iget-object v0, p2, Lsn;->aW:Leq;

    iget-wide v4, v0, Leq;->b:D

    iget-wide v6, p2, Lsn;->aO:D

    move-object v0, p0

    move-object v1, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lfw;->a(Lsn;DDDF)Ldh;

    move-result-object p1

    return-object p1
.end method
