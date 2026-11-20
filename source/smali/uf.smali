###### Class defpackage.uf (uf)
.class public Luf;
.super Ldf;
.source "SourceFile"


# instance fields
.field private a:[Lam;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/Random;I)V
    .registers 6

    .line 13
    invoke-direct {p0}, Ldf;-><init>()V

    .line 14
    iput p2, p0, Luf;->b:I

    .line 15
    new-array v0, p2, [Lam;

    iput-object v0, p0, Luf;->a:[Lam;

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p2, :cond_18

    .line 17
    iget-object v1, p0, Luf;->a:[Lam;

    new-instance v2, Lam;

    invoke-direct {v2, p1}, Lam;-><init>(Ljava/util/Random;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_18
    return-void
.end method


# virtual methods
.method public a(DD)D
    .registers 15

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    .line 25
    :goto_5
    iget v5, p0, Luf;->b:I

    if-ge v4, v5, :cond_1d

    .line 26
    iget-object v5, p0, Luf;->a:[Lam;

    aget-object v5, v5, v4

    mul-double v6, p1, v2

    mul-double v8, p3, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Lam;->a(DD)D

    move-result-wide v5

    div-double/2addr v5, v2

    add-double/2addr v0, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_1d
    return-wide v0
.end method

.method public a([DDDDIIIDDD)[D
    .registers 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    mul-int v1, p8, p9

    mul-int v1, v1, p10

    .line 46
    new-array v1, v1, [D

    goto :goto_19

    :cond_e
    move v3, v2

    .line 47
    :goto_f
    array-length v4, v1

    if-ge v3, v4, :cond_19

    const-wide/16 v4, 0x0

    .line 48
    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_19
    :goto_19
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v3

    .line 53
    :goto_1d
    iget v3, v0, Luf;->b:I

    if-ge v2, v3, :cond_44

    .line 55
    iget-object v3, v0, Luf;->a:[Lam;

    aget-object v3, v3, v2

    mul-double v14, p11, v22

    mul-double v16, p13, v22

    mul-double v18, p15, v22

    move-object v4, v1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-wide/from16 v20, v22

    invoke-virtual/range {v3 .. v21}, Lam;->a([DDDDIIIDDDD)V

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v22, v22, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_44
    return-object v1
.end method

.method public a([DIIIIDDD)[D
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p4

    move/from16 v10, p5

    move-wide/from16 v11, p6

    move-wide/from16 v15, p8

    move/from16 v2, p2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    move/from16 v6, p3

    int-to-double v6, v6

    const/4 v9, 0x1

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 63
    invoke-virtual/range {v0 .. v16}, Luf;->a([DDDDIIIDDD)[D

    move-result-object v0

    return-object v0
.end method
