###### Class defpackage.oa (oa)
.class public Loa;
.super Luu;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 10
    sget-object v0, Lln;->n:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    return-void
.end method


# virtual methods
.method public a(Lfd;IIILsn;)V
    .registers 6

    .line 24
    iget-wide p1, p5, Lsn;->aP:D

    const-wide p3, 0x3fd999999999999aL    # 0.4

    mul-double/2addr p1, p3

    iput-wide p1, p5, Lsn;->aP:D

    .line 25
    iget-wide p1, p5, Lsn;->aR:D

    mul-double/2addr p1, p3

    iput-wide p1, p5, Lsn;->aR:D

    return-void
.end method

.method public e(Lfd;III)Leq;
    .registers 20

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    int-to-double v3, v0

    int-to-double v5, v1

    int-to-double v7, v2

    add-int/lit8 v0, v0, 0x1

    int-to-double v9, v0

    add-int/lit8 v0, v1, 0x1

    int-to-float v0, v0

    const/high16 v1, 0x3e000000    # 0.125f

    sub-float/2addr v0, v1

    float-to-double v11, v0

    add-int/lit8 v0, v2, 0x1

    int-to-double v13, v0

    move-wide v0, v3

    move-wide v2, v5

    move-wide v4, v7

    move-wide v6, v9

    move-wide v8, v11

    move-wide v10, v13

    .line 15
    invoke-static/range {v0 .. v11}, Leq;->b(DDDDDD)Leq;

    move-result-object v0

    return-object v0
.end method
