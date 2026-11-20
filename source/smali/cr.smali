###### Class defpackage.cr (cr)
.class public Lcr;
.super Lxw;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;DDDDDD)V
    .registers 16

    .line 10
    invoke-direct/range {p0 .. p13}, Lxw;-><init>(Lfd;DDDDDD)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    iput p1, p0, Lcr;->i:F

    .line 13
    iput p1, p0, Lcr;->j:F

    .line 14
    iput p1, p0, Lcr;->k:F

    const/16 p1, 0x20

    .line 15
    iput p1, p0, Lcr;->b:I

    const p1, 0x3ca3d70a    # 0.02f

    .line 16
    invoke-virtual {p0, p1, p1}, Lcr;->b(FF)V

    .line 18
    iget p2, p0, Lcr;->g:F

    iget-object p3, p0, Lcr;->bs:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result p3

    const p4, 0x3f19999a    # 0.6f

    mul-float/2addr p3, p4

    const p4, 0x3e4ccccd    # 0.2f

    add-float/2addr p3, p4

    mul-float/2addr p2, p3

    iput p2, p0, Lcr;->g:F

    const-wide p2, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr p8, p2

    .line 20
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p4

    const-wide/high16 p6, 0x4000000000000000L    # 2.0

    mul-double/2addr p4, p6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p4, v0

    double-to-float p4, p4

    mul-float/2addr p4, p1

    float-to-double p4, p4

    add-double/2addr p8, p4

    iput-wide p8, p0, Lcr;->aP:D

    mul-double/2addr p10, p2

    .line 21
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p4

    mul-double/2addr p4, p6

    sub-double/2addr p4, v0

    double-to-float p4, p4

    mul-float/2addr p4, p1

    float-to-double p4, p4

    add-double/2addr p10, p4

    iput-wide p10, p0, Lcr;->aQ:D

    mul-double/2addr p12, p2

    .line 22
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    mul-double/2addr p2, p6

    sub-double/2addr p2, v0

    double-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-double p1, p2

    add-double/2addr p12, p1

    iput-wide p12, p0, Lcr;->aR:D

    .line 24
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide p3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr p1, p3

    const-wide p3, 0x3fc999999999999aL    # 0.2

    add-double/2addr p1, p3

    const-wide/high16 p3, 0x4020000000000000L    # 8.0

    div-double/2addr p3, p1

    double-to-int p1, p3

    iput p1, p0, Lcr;->f:I

    return-void
.end method


# virtual methods
.method public w_()V
    .registers 10

    .line 28
    iget-wide v0, p0, Lcr;->aM:D

    iput-wide v0, p0, Lcr;->aJ:D

    .line 29
    iget-wide v0, p0, Lcr;->aN:D

    iput-wide v0, p0, Lcr;->aK:D

    .line 30
    iget-wide v0, p0, Lcr;->aO:D

    iput-wide v0, p0, Lcr;->aL:D

    .line 32
    iget-wide v0, p0, Lcr;->aQ:D

    const-wide v2, 0x3f60624dd2f1a9fcL    # 0.002

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcr;->aQ:D

    .line 33
    iget-wide v3, p0, Lcr;->aP:D

    iget-wide v5, p0, Lcr;->aQ:D

    iget-wide v7, p0, Lcr;->aR:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcr;->b(DDD)V

    .line 34
    iget-wide v0, p0, Lcr;->aP:D

    const-wide v2, 0x3feb333340000000L    # 0.8500000238418579

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcr;->aP:D

    .line 35
    iget-wide v0, p0, Lcr;->aQ:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcr;->aQ:D

    .line 36
    iget-wide v0, p0, Lcr;->aR:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcr;->aR:D

    .line 38
    iget-object v0, p0, Lcr;->aI:Lfd;

    iget-wide v1, p0, Lcr;->aM:D

    invoke-static {v1, v2}, Lin;->b(D)I

    move-result v1

    iget-wide v2, p0, Lcr;->aN:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    iget-wide v3, p0, Lcr;->aO:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lfd;->f(III)Lln;

    move-result-object v0

    sget-object v1, Lln;->g:Lln;

    if-eq v0, v1, :cond_53

    invoke-virtual {p0}, Lcr;->K()V

    .line 40
    :cond_53
    iget v0, p0, Lcr;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcr;->f:I

    if-gtz v0, :cond_5e

    invoke-virtual {p0}, Lcr;->K()V

    :cond_5e
    return-void
.end method
