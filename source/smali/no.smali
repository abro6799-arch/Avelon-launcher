###### Class defpackage.no (no)
.class public Lno;
.super Lko;
.source "SourceFile"


# instance fields
.field a:Lps;

.field b:Lps;

.field c:Lps;

.field d:Lps;


# direct methods
.method public constructor <init>(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 7
    invoke-direct/range {p0 .. p0}, Lko;-><init>()V

    .line 8
    new-instance v2, Lps;

    const/4 v9, 0x0

    invoke-direct {v2, v9, v1}, Lps;-><init>(II)V

    iput-object v2, v0, Lno;->a:Lps;

    const/high16 v3, -0x3f800000    # -4.0f

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, -0x3f800000    # -4.0f

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x8

    .line 9
    invoke-virtual/range {v2 .. v8}, Lps;->a(FFFIII)V

    if-lez v1, :cond_6f

    .line 11
    new-instance v10, Lps;

    invoke-direct {v10, v9, v1}, Lps;-><init>(II)V

    iput-object v10, v0, Lno;->a:Lps;

    const/high16 v11, -0x3fc00000    # -3.0f

    const/high16 v12, 0x41880000    # 17.0f

    const/high16 v13, -0x3fc00000    # -3.0f

    const/4 v14, 0x6

    const/4 v15, 0x6

    const/16 v16, 0x6

    .line 12
    invoke-virtual/range {v10 .. v16}, Lps;->a(FFFIII)V

    .line 14
    new-instance v1, Lps;

    const/16 v8, 0x20

    invoke-direct {v1, v8, v9}, Lps;-><init>(II)V

    iput-object v1, v0, Lno;->b:Lps;

    const/high16 v2, -0x3fb00000    # -3.25f

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, -0x3fa00000    # -3.5f

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    .line 15
    invoke-virtual/range {v1 .. v7}, Lps;->a(FFFIII)V

    .line 17
    new-instance v9, Lps;

    const/4 v1, 0x4

    invoke-direct {v9, v8, v1}, Lps;-><init>(II)V

    iput-object v9, v0, Lno;->c:Lps;

    const/high16 v10, 0x3fa00000    # 1.25f

    const/high16 v11, 0x41900000    # 18.0f

    const/high16 v12, -0x3fa00000    # -3.5f

    const/4 v13, 0x2

    const/4 v14, 0x2

    const/4 v15, 0x2

    .line 18
    invoke-virtual/range {v9 .. v15}, Lps;->a(FFFIII)V

    .line 20
    new-instance v1, Lps;

    const/16 v2, 0x8

    invoke-direct {v1, v8, v2}, Lps;-><init>(II)V

    iput-object v1, v0, Lno;->d:Lps;

    const/4 v2, 0x0

    const/high16 v3, 0x41a80000    # 21.0f

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 21
    invoke-virtual/range {v1 .. v7}, Lps;->a(FFFIII)V

    :cond_6f
    return-void
.end method


# virtual methods
.method public a(FFFFFF)V
    .registers 7

    .line 29
    invoke-virtual/range {p0 .. p6}, Lno;->b(FFFFFF)V

    .line 31
    iget-object p1, p0, Lno;->a:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 32
    iget-object p1, p0, Lno;->b:Lps;

    if-eqz p1, :cond_19

    .line 33
    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 34
    iget-object p1, p0, Lno;->c:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    .line 35
    iget-object p1, p0, Lno;->d:Lps;

    invoke-virtual {p1, p6}, Lps;->a(F)V

    :cond_19
    return-void
.end method

.method public b(FFFFFF)V
    .registers 7

    return-void
.end method
