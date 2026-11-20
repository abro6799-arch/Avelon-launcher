###### Class defpackage.ug (ug)
.class public Lug;
.super Ldf;
.source "SourceFile"


# instance fields
.field private a:[Lcc;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/Random;I)V
    .registers 6

    .line 13
    invoke-direct {p0}, Ldf;-><init>()V

    .line 14
    iput p2, p0, Lug;->b:I

    .line 15
    new-array v0, p2, [Lcc;

    iput-object v0, p0, Lug;->a:[Lcc;

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p2, :cond_18

    .line 17
    iget-object v1, p0, Lug;->a:[Lcc;

    new-instance v2, Lcc;

    invoke-direct {v2, p1}, Lcc;-><init>(Ljava/util/Random;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_18
    return-void
.end method


# virtual methods
.method public a([DDDIIDDD)[D
    .registers 30

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    .line 46
    invoke-virtual/range {v0 .. v15}, Lug;->a([DDDIIDDDD)[D

    move-result-object v0

    return-object v0
.end method

.method public a([DDDIIDDDD)[D
    .registers 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    div-double v15, p8, v2

    div-double v17, p10, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 53
    array-length v3, v1

    mul-int v4, p6, p7

    if-ge v3, v4, :cond_13

    goto :goto_1e

    :cond_13
    move v3, v2

    .line 54
    :goto_14
    array-length v4, v1

    if-ge v3, v4, :cond_22

    const-wide/16 v4, 0x0

    .line 55
    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1e
    :goto_1e
    mul-int v1, p6, p7

    .line 53
    new-array v1, v1, [D

    :cond_22
    move-object/from16 v19, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move v13, v2

    move-wide/from16 v20, v3

    move-wide/from16 v22, v20

    .line 60
    :goto_2b
    iget v1, v0, Lug;->b:I

    if-ge v13, v1, :cond_56

    .line 61
    iget-object v1, v0, Lug;->a:[Lcc;

    aget-object v1, v1, v13

    mul-double v9, v15, v20

    mul-double v11, v17, v20

    const-wide v2, 0x3fe199999999999aL    # 0.55

    div-double v24, v2, v22

    move-object/from16 v2, v19

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v26, v13

    move-wide/from16 v13, v24

    invoke-virtual/range {v1 .. v14}, Lcc;->a([DDDIIDDD)V

    mul-double v20, v20, p12

    mul-double v22, v22, p14

    add-int/lit8 v13, v26, 0x1

    goto :goto_2b

    :cond_56
    return-object v19
.end method
