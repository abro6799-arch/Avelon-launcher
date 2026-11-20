###### Class defpackage.ez (ez)
.class public Lez;
.super Lko;
.source "SourceFile"


# instance fields
.field public a:[Lps;


# direct methods
.method public constructor <init>()V
    .registers 21

    move-object/from16 v0, p0

    .line 8
    invoke-direct/range {p0 .. p0}, Lko;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Lps;

    .line 6
    iput-object v1, v0, Lez;->a:[Lps;

    .line 9
    new-instance v2, Lps;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lps;-><init>(II)V

    aput-object v2, v1, v4

    .line 10
    iget-object v1, v0, Lez;->a:[Lps;

    new-instance v2, Lps;

    invoke-direct {v2, v4, v4}, Lps;-><init>(II)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 11
    iget-object v1, v0, Lez;->a:[Lps;

    new-instance v2, Lps;

    invoke-direct {v2, v4, v4}, Lps;-><init>(II)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 12
    iget-object v1, v0, Lez;->a:[Lps;

    new-instance v2, Lps;

    invoke-direct {v2, v4, v4}, Lps;-><init>(II)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 13
    iget-object v1, v0, Lez;->a:[Lps;

    new-instance v2, Lps;

    invoke-direct {v2, v4, v4}, Lps;-><init>(II)V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 20
    iget-object v1, v0, Lez;->a:[Lps;

    aget-object v8, v1, v4

    const/16 v1, -0xc

    int-to-float v9, v1

    const/4 v1, -0x8

    int-to-float v10, v1

    const/high16 v11, -0x3fc00000    # -3.0f

    const/16 v13, 0x10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/16 v12, 0x18

    invoke-virtual/range {v8 .. v15}, Lps;->a(FFFIIIF)V

    .line 21
    iget-object v1, v0, Lez;->a:[Lps;

    aget-object v1, v1, v4

    int-to-float v2, v7

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v2, v8}, Lps;->a(FFF)V

    .line 23
    iget-object v1, v0, Lez;->a:[Lps;

    aget-object v9, v1, v3

    const/16 v1, -0xa

    int-to-float v1, v1

    const/4 v10, -0x7

    int-to-float v15, v10

    const/high16 v12, -0x40800000    # -1.0f

    const/16 v18, 0x14

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x6

    move v10, v1

    move v11, v15

    move/from16 v13, v18

    move/from16 v19, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-virtual/range {v9 .. v16}, Lps;->a(FFFIIIF)V

    .line 24
    iget-object v9, v0, Lez;->a:[Lps;

    aget-object v9, v9, v3

    const/16 v10, -0xb

    int-to-float v10, v10

    invoke-virtual {v9, v10, v2, v8}, Lps;->a(FFF)V

    .line 26
    iget-object v9, v0, Lez;->a:[Lps;

    aget-object v10, v9, v5

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v16, 0x2

    const/4 v15, 0x6

    move v11, v1

    move/from16 v12, v19

    move/from16 v14, v18

    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    .line 27
    iget-object v9, v0, Lez;->a:[Lps;

    aget-object v9, v9, v5

    const/16 v10, 0xb

    int-to-float v10, v10

    invoke-virtual {v9, v10, v2, v8}, Lps;->a(FFF)V

    .line 29
    iget-object v9, v0, Lez;->a:[Lps;

    aget-object v10, v9, v6

    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    .line 30
    iget-object v9, v0, Lez;->a:[Lps;

    aget-object v9, v9, v6

    const/16 v10, -0x9

    int-to-float v10, v10

    invoke-virtual {v9, v8, v2, v10}, Lps;->a(FFF)V

    .line 32
    iget-object v9, v0, Lez;->a:[Lps;

    aget-object v10, v9, v7

    invoke-virtual/range {v10 .. v17}, Lps;->a(FFFIIIF)V

    .line 33
    iget-object v1, v0, Lez;->a:[Lps;

    aget-object v1, v1, v7

    const/16 v7, 0x9

    int-to-float v7, v7

    invoke-virtual {v1, v8, v2, v7}, Lps;->a(FFF)V

    .line 35
    iget-object v1, v0, Lez;->a:[Lps;

    aget-object v1, v1, v4

    const v2, 0x3fc90fdb

    iput v2, v1, Lps;->d:F

    .line 36
    iget-object v1, v0, Lez;->a:[Lps;

    aget-object v1, v1, v3

    const v3, 0x4096cbe4

    iput v3, v1, Lps;->e:F

    .line 37
    iget-object v1, v0, Lez;->a:[Lps;

    aget-object v1, v1, v5

    iput v2, v1, Lps;->e:F

    .line 38
    iget-object v1, v0, Lez;->a:[Lps;

    aget-object v1, v1, v6

    const v2, 0x40490fdb    # (float)Math.PI

    iput v2, v1, Lps;->e:F

    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .registers 7

    const/4 p1, 0x0

    :goto_1
    const/4 p2, 0x5

    if-ge p1, p2, :cond_e

    .line 43
    iget-object p2, p0, Lez;->a:[Lps;

    aget-object p2, p2, p1

    invoke-virtual {p2, p6}, Lps;->a(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public b(FFFFFF)V
    .registers 7

    return-void
.end method
