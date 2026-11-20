###### Class defpackage.sy (sy)
.class public Lsy;
.super Lxd;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;DDDDDD)V
    .registers 14

    .line 8
    invoke-direct/range {p0 .. p7}, Lxd;-><init>(Lfd;DDD)V

    const p1, 0x3d23d70a    # 0.04f

    .line 9
    iput p1, p0, Lsy;->h:F

    .line 10
    iget p1, p0, Lsy;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lsy;->b:I

    const-wide/16 p1, 0x0

    cmpl-double p3, p10, p1

    if-nez p3, :cond_28

    cmpl-double p3, p8, p1

    if-nez p3, :cond_1c

    cmpl-double p1, p12, p1

    if-eqz p1, :cond_28

    .line 12
    :cond_1c
    iput-wide p8, p0, Lsy;->aP:D

    const-wide p1, 0x3fb999999999999aL    # 0.1

    add-double/2addr p10, p1

    .line 13
    iput-wide p10, p0, Lsy;->aQ:D

    .line 14
    iput-wide p12, p0, Lsy;->aR:D

    :cond_28
    return-void
.end method
