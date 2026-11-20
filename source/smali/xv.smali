###### Class defpackage.xv (xv)
.class public Lxv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[D

.field public b:[D

.field public c:[D

.field public d:[Lkd;

.field private e:Lug;

.field private f:Lug;

.field private g:Lug;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfd;)V
    .registers 9

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lug;

    new-instance v1, Ljava/util/Random;

    invoke-virtual {p1}, Lfd;->s()J

    move-result-wide v2

    const-wide/16 v4, 0x268f

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lug;-><init>(Ljava/util/Random;I)V

    iput-object v0, p0, Lxv;->e:Lug;

    .line 18
    new-instance v0, Lug;

    new-instance v1, Ljava/util/Random;

    invoke-virtual {p1}, Lfd;->s()J

    move-result-wide v3

    const-wide/32 v5, 0x9b83

    mul-long/2addr v3, v5

    invoke-direct {v1, v3, v4}, Ljava/util/Random;-><init>(J)V

    invoke-direct {v0, v1, v2}, Lug;-><init>(Ljava/util/Random;I)V

    iput-object v0, p0, Lxv;->f:Lug;

    .line 19
    new-instance v0, Lug;

    new-instance v1, Ljava/util/Random;

    invoke-virtual {p1}, Lfd;->s()J

    move-result-wide v2

    const-wide/32 v4, 0x84a59

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 p1, 0x2

    invoke-direct {v0, v1, p1}, Lug;-><init>(Ljava/util/Random;I)V

    iput-object v0, p0, Lxv;->g:Lug;

    return-void
.end method


# virtual methods
.method public a(II)Lkd;
    .registers 4

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, p1, p2, v0, v0}, Lxv;->a(IIII)[Lkd;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    return-object p1
.end method

.method public a(Lyy;)Lkd;
    .registers 3

    .line 35
    iget v0, p1, Lyy;->a:I

    shl-int/lit8 v0, v0, 0x4

    iget p1, p1, Lyy;->b:I

    shl-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0, p1}, Lxv;->a(II)Lkd;

    move-result-object p1

    return-object p1
.end method

.method public a([DIIII)[D
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v15, p4

    move/from16 v13, p5

    if-eqz v1, :cond_f

    .line 53
    array-length v2, v1

    mul-int v3, v15, v13

    if-ge v2, v3, :cond_13

    :cond_f
    mul-int v1, v15, v13

    .line 54
    new-array v1, v1, [D

    :cond_13
    move-object v2, v1

    .line 57
    iget-object v1, v0, Lxv;->e:Lug;

    move/from16 v3, p2

    int-to-double v11, v3

    move/from16 v3, p3

    int-to-double v9, v3

    const-wide v16, 0x3f999999a0000000L    # 0.02500000037252903

    const-wide v18, 0x3f999999a0000000L    # 0.02500000037252903

    const-wide/high16 v20, 0x3fd0000000000000L    # 0.25

    move-wide v3, v11

    move-wide v5, v9

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v22, v9

    move-wide/from16 v9, v16

    move-wide/from16 v16, v11

    move-wide/from16 v11, v18

    move-wide/from16 v13, v20

    invoke-virtual/range {v1 .. v14}, Lug;->a([DDDIIDDD)[D

    move-result-object v18

    .line 58
    iget-object v1, v0, Lxv;->g:Lug;

    iget-object v2, v0, Lxv;->c:[D

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    const-wide v13, 0x3fe2d2d2d2d2d2d3L    # 0.5882352941176471

    move-wide/from16 v3, v16

    move-wide/from16 v5, v22

    invoke-virtual/range {v1 .. v14}, Lug;->a([DDDIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lxv;->c:[D

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_56
    if-ge v2, v15, :cond_a3

    move/from16 v4, p5

    move v5, v1

    :goto_5b
    if-ge v5, v4, :cond_a0

    .line 63
    iget-object v6, v0, Lxv;->c:[D

    aget-wide v7, v6, v3

    const-wide v9, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v9

    .line 67
    aget-wide v9, v18, v3

    const-wide v11, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v9, v11

    const-wide v11, 0x3fe6666666666666L    # 0.7

    add-double/2addr v9, v11

    const-wide v11, 0x3fefae147ae147aeL    # 0.99

    mul-double/2addr v9, v11

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v7, v11

    add-double/2addr v9, v7

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v8, v6, v9

    mul-double/2addr v8, v8

    sub-double v8, v6, v8

    const-wide/16 v10, 0x0

    cmpg-double v12, v8, v10

    if-gez v12, :cond_93

    move-wide v8, v10

    :cond_93
    cmpl-double v10, v8, v6

    if-lez v10, :cond_98

    goto :goto_99

    :cond_98
    move-wide v6, v8

    .line 73
    :goto_99
    aput-wide v6, v18, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    :cond_a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_a3
    return-object v18
.end method

.method public a(IIII)[Lkd;
    .registers 11

    .line 48
    iget-object v1, p0, Lxv;->d:[Lkd;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lxv;->a([Lkd;IIII)[Lkd;

    move-result-object p1

    iput-object p1, p0, Lxv;->d:[Lkd;

    return-object p1
.end method

.method public a([Lkd;IIII)[Lkd;
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v15, p4

    move/from16 v13, p5

    if-eqz v1, :cond_f

    .line 93
    array-length v2, v1

    mul-int v3, v15, v13

    if-ge v2, v3, :cond_13

    :cond_f
    mul-int v1, v15, v13

    .line 94
    new-array v1, v1, [Lkd;

    :cond_13
    move-object/from16 v16, v1

    .line 97
    iget-object v1, v0, Lxv;->e:Lug;

    iget-object v2, v0, Lxv;->a:[D

    move/from16 v3, p2

    int-to-double v11, v3

    move/from16 v3, p3

    int-to-double v9, v3

    const-wide v17, 0x3f999999a0000000L    # 0.02500000037252903

    const-wide v19, 0x3f999999a0000000L    # 0.02500000037252903

    const-wide/high16 v21, 0x3fd0000000000000L    # 0.25

    move-wide v3, v11

    move-wide v5, v9

    move/from16 v7, p4

    move/from16 v8, p4

    move-wide/from16 v23, v9

    move-wide/from16 v9, v17

    move-wide/from16 v17, v11

    move-wide/from16 v11, v19

    move-wide/from16 v13, v21

    invoke-virtual/range {v1 .. v14}, Lug;->a([DDDIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lxv;->a:[D

    .line 98
    iget-object v1, v0, Lxv;->f:Lug;

    iget-object v2, v0, Lxv;->b:[D

    const-wide v9, 0x3fa99999a0000000L    # 0.05000000074505806

    const-wide v11, 0x3fa99999a0000000L    # 0.05000000074505806

    const-wide v13, 0x3fd5555555555555L    # 0.3333333333333333

    move-wide/from16 v3, v17

    move-wide/from16 v5, v23

    invoke-virtual/range {v1 .. v14}, Lug;->a([DDDIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lxv;->b:[D

    .line 99
    iget-object v1, v0, Lxv;->g:Lug;

    iget-object v2, v0, Lxv;->c:[D

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    const-wide v13, 0x3fe2d2d2d2d2d2d3L    # 0.5882352941176471

    invoke-virtual/range {v1 .. v14}, Lug;->a([DDDIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lxv;->c:[D

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_73
    if-ge v2, v15, :cond_f2

    move/from16 v4, p5

    const/4 v5, 0x0

    :goto_78
    if-ge v5, v4, :cond_ef

    .line 108
    iget-object v6, v0, Lxv;->c:[D

    aget-wide v7, v6, v3

    const-wide v9, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v9

    .line 112
    iget-object v6, v0, Lxv;->a:[D

    aget-wide v11, v6, v3

    const-wide v13, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v11, v13

    const-wide v17, 0x3fe6666666666666L    # 0.7

    add-double v11, v11, v17

    const-wide v17, 0x3fefae147ae147aeL    # 0.99

    mul-double v11, v11, v17

    const-wide v17, 0x3f847ae147ae147bL    # 0.01

    mul-double v17, v17, v7

    add-double v11, v11, v17

    .line 115
    iget-object v1, v0, Lxv;->b:[D

    aget-wide v17, v1, v3

    mul-double v17, v17, v13

    add-double v17, v17, v9

    const-wide v9, 0x3fefef9db22d0e56L    # 0.998

    mul-double v17, v17, v9

    const-wide v9, 0x3f60624dd2f1a9fcL    # 0.002

    mul-double/2addr v7, v9

    add-double v17, v17, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v9, v7, v11

    mul-double/2addr v9, v9

    sub-double v9, v7, v9

    const-wide/16 v11, 0x0

    cmpg-double v13, v9, v11

    if-gez v13, :cond_cd

    move-wide v9, v11

    :cond_cd
    cmpg-double v13, v17, v11

    if-gez v13, :cond_d3

    move-wide/from16 v17, v11

    :cond_d3
    cmpl-double v11, v9, v7

    if-lez v11, :cond_d8

    move-wide v9, v7

    :cond_d8
    cmpl-double v11, v17, v7

    if-lez v11, :cond_dd

    goto :goto_df

    :cond_dd
    move-wide/from16 v7, v17

    .line 124
    :goto_df
    aput-wide v9, v6, v3

    .line 125
    aput-wide v7, v1, v3

    add-int/lit8 v1, v3, 0x1

    .line 127
    invoke-static {v9, v10, v7, v8}, Lkd;->a(DD)Lkd;

    move-result-object v6

    aput-object v6, v16, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v1

    goto :goto_78

    :cond_ef
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    :cond_f2
    return-object v16
.end method

.method public b(II)D
    .registers 18

    move-object v0, p0

    .line 43
    iget-object v1, v0, Lxv;->e:Lug;

    iget-object v2, v0, Lxv;->a:[D

    move/from16 v3, p1

    int-to-double v3, v3

    move/from16 v5, p2

    int-to-double v5, v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-wide v9, 0x3f999999a0000000L    # 0.02500000037252903

    const-wide v11, 0x3f999999a0000000L    # 0.02500000037252903

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    invoke-virtual/range {v1 .. v14}, Lug;->a([DDDIIDDD)[D

    move-result-object v1

    iput-object v1, v0, Lxv;->a:[D

    const/4 v2, 0x0

    .line 44
    aget-wide v2, v1, v2

    return-wide v2
.end method
