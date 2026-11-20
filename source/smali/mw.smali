###### Class defpackage.mw (mw)
.class public Lmw;
.super Lnn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 13

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lnn;-><init>(IF)V

    .line 9
    new-instance v0, Lps;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Lps;-><init>(II)V

    iput-object v0, p0, Lmw;->d:Lps;

    .line 10
    iget-object v3, p0, Lmw;->d:Lps;

    const/high16 v4, -0x3fc00000    # -3.0f

    const/high16 v5, -0x3f800000    # -4.0f

    const/high16 v6, -0x3f400000    # -6.0f

    const/4 v7, 0x6

    const/4 v8, 0x6

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lps;->a(FFFIIIF)V

    .line 11
    iget-object v0, p0, Lmw;->d:Lps;

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, -0x3f000000    # -8.0f

    invoke-virtual {v0, v1, v2, v3}, Lps;->a(FFF)V

    .line 13
    new-instance v0, Lps;

    const/16 v2, 0x1c

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3}, Lps;-><init>(II)V

    iput-object v0, p0, Lmw;->e:Lps;

    .line 14
    iget-object v4, p0, Lmw;->e:Lps;

    const/high16 v6, -0x3ee00000    # -10.0f

    const/high16 v7, -0x3f200000    # -7.0f

    const/16 v8, 0x8

    const/16 v9, 0x10

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lps;->a(FFFIIIF)V

    .line 15
    iget-object v0, p0, Lmw;->e:Lps;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2, v3}, Lps;->a(FFF)V

    return-void
.end method
