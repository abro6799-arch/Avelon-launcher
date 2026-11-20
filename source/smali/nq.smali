###### Class defpackage.nq (nq)
.class public Lnq;
.super Lko;
.source "SourceFile"


# instance fields
.field public a:[Lps;


# direct methods
.method public constructor <init>()V
    .registers 31

    move-object/from16 v0, p0

    .line 8
    invoke-direct/range {p0 .. p0}, Lko;-><init>()V

    const/4 v1, 0x7

    new-array v2, v1, [Lps;

    .line 6
    iput-object v2, v0, Lnq;->a:[Lps;

    .line 9
    new-instance v3, Lps;

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Lps;-><init>(II)V

    aput-object v3, v2, v4

    .line 10
    iget-object v2, v0, Lnq;->a:[Lps;

    new-instance v3, Lps;

    invoke-direct {v3, v4, v4}, Lps;-><init>(II)V

    const/4 v6, 0x1

    aput-object v3, v2, v6

    .line 11
    iget-object v2, v0, Lnq;->a:[Lps;

    new-instance v3, Lps;

    invoke-direct {v3, v4, v4}, Lps;-><init>(II)V

    const/4 v7, 0x2

    aput-object v3, v2, v7

    .line 12
    iget-object v2, v0, Lnq;->a:[Lps;

    new-instance v3, Lps;

    invoke-direct {v3, v4, v4}, Lps;-><init>(II)V

    const/4 v8, 0x3

    aput-object v3, v2, v8

    .line 13
    iget-object v2, v0, Lnq;->a:[Lps;

    new-instance v3, Lps;

    invoke-direct {v3, v4, v4}, Lps;-><init>(II)V

    const/4 v9, 0x4

    aput-object v3, v2, v9

    .line 14
    iget-object v2, v0, Lnq;->a:[Lps;

    new-instance v3, Lps;

    const/16 v10, 0x2c

    invoke-direct {v3, v10, v5}, Lps;-><init>(II)V

    const/4 v5, 0x5

    aput-object v3, v2, v5

    .line 21
    iget-object v2, v0, Lnq;->a:[Lps;

    aget-object v10, v2, v4

    const/16 v2, -0xa

    int-to-float v11, v2

    const/4 v2, -0x8

    int-to-float v12, v2

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v14, 0x14

    const/16 v15, 0x10

    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    .line 22
    iget-object v3, v0, Lnq;->a:[Lps;

    aget-object v3, v3, v4

    int-to-float v10, v9

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v10, v11}, Lps;->a(FFF)V

    .line 24
    iget-object v3, v0, Lnq;->a:[Lps;

    aget-object v12, v3, v5

    const/16 v3, -0x9

    int-to-float v15, v3

    const/4 v13, -0x7

    int-to-float v14, v13

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x12

    const/16 v18, 0xe

    const/16 v19, 0x1

    const/16 v20, 0x0

    move v13, v15

    move/from16 v21, v14

    move v4, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    invoke-virtual/range {v12 .. v19}, Lps;->a(FFFIIIF)V

    .line 25
    iget-object v12, v0, Lnq;->a:[Lps;

    aget-object v12, v12, v5

    invoke-virtual {v12, v11, v10, v11}, Lps;->a(FFF)V

    .line 27
    iget-object v12, v0, Lnq;->a:[Lps;

    aget-object v13, v12, v6

    int-to-float v2, v2

    int-to-float v3, v3

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v12, 0x10

    const/16 v19, 0x2

    const/16 v18, 0x8

    move v14, v2

    move v15, v3

    move/from16 v17, v12

    invoke-virtual/range {v13 .. v20}, Lps;->a(FFFIIIF)V

    .line 28
    iget-object v13, v0, Lnq;->a:[Lps;

    aget-object v13, v13, v6

    invoke-virtual {v13, v4, v10, v11}, Lps;->a(FFF)V

    .line 30
    iget-object v4, v0, Lnq;->a:[Lps;

    aget-object v22, v4, v7

    const/high16 v25, -0x40800000    # -1.0f

    const/16 v28, 0x2

    const/16 v29, 0x0

    const/16 v27, 0x8

    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v26, v12

    invoke-virtual/range {v22 .. v29}, Lps;->a(FFFIIIF)V

    .line 31
    iget-object v4, v0, Lnq;->a:[Lps;

    aget-object v4, v4, v7

    const/16 v13, 0x9

    int-to-float v13, v13

    invoke-virtual {v4, v13, v10, v11}, Lps;->a(FFF)V

    .line 33
    iget-object v4, v0, Lnq;->a:[Lps;

    aget-object v22, v4, v8

    invoke-virtual/range {v22 .. v29}, Lps;->a(FFFIIIF)V

    .line 34
    iget-object v4, v0, Lnq;->a:[Lps;

    aget-object v4, v4, v8

    move/from16 v13, v21

    invoke-virtual {v4, v11, v10, v13}, Lps;->a(FFF)V

    .line 36
    iget-object v4, v0, Lnq;->a:[Lps;

    aget-object v22, v4, v9

    invoke-virtual/range {v22 .. v29}, Lps;->a(FFFIIIF)V

    .line 37
    iget-object v2, v0, Lnq;->a:[Lps;

    aget-object v2, v2, v9

    int-to-float v1, v1

    invoke-virtual {v2, v11, v10, v1}, Lps;->a(FFF)V

    .line 39
    iget-object v1, v0, Lnq;->a:[Lps;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const v2, 0x3fc90fdb

    iput v2, v1, Lps;->d:F

    .line 40
    iget-object v1, v0, Lnq;->a:[Lps;

    aget-object v1, v1, v6

    const v3, 0x4096cbe4

    iput v3, v1, Lps;->e:F

    .line 41
    iget-object v1, v0, Lnq;->a:[Lps;

    aget-object v1, v1, v7

    iput v2, v1, Lps;->e:F

    .line 42
    iget-object v1, v0, Lnq;->a:[Lps;

    aget-object v1, v1, v8

    const v2, 0x40490fdb    # (float)Math.PI

    iput v2, v1, Lps;->e:F

    .line 43
    iget-object v1, v0, Lnq;->a:[Lps;

    aget-object v1, v1, v5

    const v2, -0x4036f025

    iput v2, v1, Lps;->d:F

    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .registers 7

    .line 47
    iget-object p1, p0, Lnq;->a:[Lps;

    const/4 p2, 0x5

    aget-object p1, p1, p2

    const/high16 p2, 0x40800000    # 4.0f

    sub-float/2addr p2, p3

    iput p2, p1, Lps;->b:F

    const/4 p1, 0x0

    :goto_b
    const/4 p2, 0x6

    if-ge p1, p2, :cond_18

    .line 49
    iget-object p2, p0, Lnq;->a:[Lps;

    aget-object p2, p2, p1

    invoke-virtual {p2, p6}, Lps;->a(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_18
    return-void
.end method

.method public b(FFFFFF)V
    .registers 7

    return-void
.end method
