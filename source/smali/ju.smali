###### Class defpackage.ju (ju)
.class public Lju;
.super Lsn;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lju;->b:I

    return-void
.end method

.method public constructor <init>(Lfd;DDDI)V
    .registers 16

    .line 20
    invoke-direct {p0, p1}, Lsn;-><init>(Lfd;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lju;->b:I

    .line 21
    iput p8, p0, Lju;->a:I

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lju;->aF:Z

    const p1, 0x3f7ae148    # 0.98f

    .line 23
    invoke-virtual {p0, p1, p1}, Lju;->b(FF)V

    .line 24
    iget p1, p0, Lju;->bh:F

    const/high16 p8, 0x40000000    # 2.0f

    div-float/2addr p1, p8

    iput p1, p0, Lju;->bf:F

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    .line 25
    invoke-virtual/range {v0 .. v6}, Lju;->e(DDD)V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lju;->aP:D

    .line 28
    iput-wide v0, p0, Lju;->aQ:D

    .line 29
    iput-wide v0, p0, Lju;->aR:D

    .line 31
    iput-wide p2, p0, Lju;->aJ:D

    .line 32
    iput-wide p4, p0, Lju;->aK:D

    .line 33
    iput-wide p6, p0, Lju;->aL:D

    return-void
.end method


# virtual methods
.method protected a(Lnu;)V
    .registers 3

    const-string v0, "Tile"

    .line 98
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lju;->a:I

    return-void
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected b(Lnu;)V
    .registers 4

    .line 94
    iget v0, p0, Lju;->a:I

    int-to-byte v0, v0

    const-string v1, "Tile"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;B)V

    return-void
.end method

.method public h_()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lju;->be:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public k()Lfd;
    .registers 2

    .line 106
    iget-object v0, p0, Lju;->aI:Lfd;

    return-object v0
.end method

.method protected n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public w_()V
    .registers 12

    .line 52
    iget v0, p0, Lju;->a:I

    if-nez v0, :cond_8

    .line 53
    invoke-virtual {p0}, Lju;->K()V

    return-void

    .line 57
    :cond_8
    iget-wide v0, p0, Lju;->aM:D

    iput-wide v0, p0, Lju;->aJ:D

    .line 58
    iget-wide v0, p0, Lju;->aN:D

    iput-wide v0, p0, Lju;->aK:D

    .line 59
    iget-wide v0, p0, Lju;->aO:D

    iput-wide v0, p0, Lju;->aL:D

    .line 60
    iget v0, p0, Lju;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lju;->b:I

    .line 62
    iget-wide v2, p0, Lju;->aQ:D

    const-wide v4, 0x3fa47ae140000000L    # 0.03999999910593033

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lju;->aQ:D

    .line 63
    iget-wide v5, p0, Lju;->aP:D

    iget-wide v7, p0, Lju;->aQ:D

    iget-wide v9, p0, Lju;->aR:D

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lju;->b(DDD)V

    .line 64
    iget-wide v2, p0, Lju;->aP:D

    const-wide v4, 0x3fef5c2900000000L    # 0.9800000190734863

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lju;->aP:D

    .line 65
    iget-wide v2, p0, Lju;->aQ:D

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lju;->aQ:D

    .line 66
    iget-wide v2, p0, Lju;->aR:D

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lju;->aR:D

    .line 68
    iget-wide v2, p0, Lju;->aM:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v0

    .line 69
    iget-wide v2, p0, Lju;->aN:D

    invoke-static {v2, v3}, Lin;->b(D)I

    move-result v2

    .line 70
    iget-wide v3, p0, Lju;->aO:D

    invoke-static {v3, v4}, Lin;->b(D)I

    move-result v3

    .line 71
    iget-object v4, p0, Lju;->aI:Lfd;

    invoke-virtual {v4, v0, v2, v3}, Lfd;->a(III)I

    move-result v4

    iget v5, p0, Lju;->a:I

    if-ne v4, v5, :cond_64

    .line 72
    iget-object v4, p0, Lju;->aI:Lfd;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Lfd;->f(IIII)Z

    .line 75
    :cond_64
    iget-boolean v4, p0, Lju;->aX:Z

    if-eqz v4, :cond_b1

    .line 76
    iget-wide v4, p0, Lju;->aP:D

    const-wide v6, 0x3fe6666660000000L    # 0.699999988079071

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lju;->aP:D

    .line 77
    iget-wide v4, p0, Lju;->aR:D

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lju;->aR:D

    .line 78
    iget-wide v4, p0, Lju;->aQ:D

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lju;->aQ:D

    .line 80
    invoke-virtual {p0}, Lju;->K()V

    .line 82
    iget-object v4, p0, Lju;->aI:Lfd;

    iget v5, p0, Lju;->a:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    move v6, v0

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v10}, Lfd;->a(IIIIZI)Z

    move-result v4

    if-eqz v4, :cond_a5

    iget-object v4, p0, Lju;->aI:Lfd;

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v0, v5, v3}, Lgk;->c_(Lfd;III)Z

    move-result v4

    if-nez v4, :cond_a5

    iget-object v4, p0, Lju;->aI:Lfd;

    iget v5, p0, Lju;->a:I

    invoke-virtual {v4, v0, v2, v3, v5}, Lfd;->f(IIII)Z

    move-result v0

    if-eqz v0, :cond_a5

    goto :goto_c5

    .line 83
    :cond_a5
    iget-object v0, p0, Lju;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_c5

    .line 84
    iget v0, p0, Lju;->a:I

    invoke-virtual {p0, v0, v1}, Lju;->b(II)Lhl;

    goto :goto_c5

    .line 86
    :cond_b1
    iget v0, p0, Lju;->b:I

    const/16 v2, 0x64

    if-le v0, v2, :cond_c5

    iget-object v0, p0, Lju;->aI:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_c5

    .line 87
    iget v0, p0, Lju;->a:I

    invoke-virtual {p0, v0, v1}, Lju;->b(II)Lhl;

    .line 88
    invoke-virtual {p0}, Lju;->K()V

    :cond_c5
    :goto_c5
    return-void
.end method

.method public x_()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
