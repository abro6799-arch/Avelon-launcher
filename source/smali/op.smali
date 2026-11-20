###### Class defpackage.op (op)
.class public Lop;
.super Lxw;
.source "SourceFile"


# instance fields
.field private a:F

.field private o:D

.field private p:D

.field private q:D


# direct methods
.method public constructor <init>(Lfd;DDDDDD)V
    .registers 14

    .line 12
    invoke-direct/range {p0 .. p13}, Lxw;-><init>(Lfd;DDDDDD)V

    .line 14
    iput-wide p8, p0, Lop;->aP:D

    .line 15
    iput-wide p10, p0, Lop;->aQ:D

    .line 16
    iput-wide p12, p0, Lop;->aR:D

    .line 17
    iput-wide p2, p0, Lop;->aM:D

    iput-wide p2, p0, Lop;->o:D

    .line 18
    iput-wide p4, p0, Lop;->aN:D

    iput-wide p4, p0, Lop;->p:D

    .line 19
    iput-wide p6, p0, Lop;->aO:D

    iput-wide p6, p0, Lop;->q:D

    .line 21
    iget-object p1, p0, Lop;->bs:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const p2, 0x3f19999a    # 0.6f

    mul-float/2addr p1, p2

    const p2, 0x3ecccccd    # 0.4f

    add-float/2addr p1, p2

    .line 22
    iget-object p2, p0, Lop;->bs:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const p3, 0x3e4ccccd    # 0.2f

    mul-float/2addr p2, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p2, p3

    iput p2, p0, Lop;->g:F

    iput p2, p0, Lop;->a:F

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    .line 23
    iput p1, p0, Lop;->k:F

    iput p1, p0, Lop;->j:F

    iput p1, p0, Lop;->i:F

    .line 24
    iget p1, p0, Lop;->j:F

    const p2, 0x3e99999a    # 0.3f

    mul-float/2addr p1, p2

    iput p1, p0, Lop;->j:F

    .line 25
    iget p1, p0, Lop;->i:F

    const p2, 0x3f666666    # 0.9f

    mul-float/2addr p1, p2

    iput p1, p0, Lop;->i:F

    .line 27
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide/high16 p3, 0x4024000000000000L    # 10.0

    mul-double/2addr p1, p3

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x28

    iput p1, p0, Lop;->f:I

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lop;->bq:Z

    .line 29
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide/high16 p3, 0x4020000000000000L    # 8.0

    mul-double/2addr p1, p3

    double-to-int p1, p1

    iput p1, p0, Lop;->b:I

    return-void
.end method


# virtual methods
.method public a(F)F
    .registers 4

    .line 42
    invoke-super {p0, p1}, Lxw;->a(F)F

    move-result p1

    .line 43
    iget v0, p0, Lop;->e:I

    int-to-float v0, v0

    iget v1, p0, Lop;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v0

    mul-float/2addr v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    return p1
.end method

.method public a(Lnw;FFFFFF)V
    .registers 10

    .line 33
    iget v0, p0, Lop;->e:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lop;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float/2addr v0, v0

    sub-float/2addr v1, v0

    .line 37
    iget v0, p0, Lop;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lop;->g:F

    .line 38
    invoke-super/range {p0 .. p7}, Lxw;->a(Lnw;FFFFFF)V

    return-void
.end method

.method public w_()V
    .registers 10

    .line 50
    iget-wide v0, p0, Lop;->aM:D

    iput-wide v0, p0, Lop;->aJ:D

    .line 51
    iget-wide v0, p0, Lop;->aN:D

    iput-wide v0, p0, Lop;->aK:D

    .line 52
    iget-wide v0, p0, Lop;->aO:D

    iput-wide v0, p0, Lop;->aL:D

    .line 54
    iget v0, p0, Lop;->e:I

    int-to-float v0, v0

    iget v1, p0, Lop;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    neg-float v1, v0

    mul-float v2, v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 61
    iget-wide v3, p0, Lop;->o:D

    iget-wide v5, p0, Lop;->aP:D

    float-to-double v7, v1

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iput-wide v3, p0, Lop;->aM:D

    .line 62
    iget-wide v3, p0, Lop;->p:D

    iget-wide v5, p0, Lop;->aQ:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    sub-float/2addr v2, v0

    float-to-double v0, v2

    add-double/2addr v3, v0

    iput-wide v3, p0, Lop;->aN:D

    .line 63
    iget-wide v0, p0, Lop;->q:D

    iget-wide v2, p0, Lop;->aR:D

    mul-double/2addr v2, v7

    add-double/2addr v0, v2

    iput-wide v0, p0, Lop;->aO:D

    .line 68
    iget v0, p0, Lop;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lop;->e:I

    iget v1, p0, Lop;->f:I

    if-lt v0, v1, :cond_47

    invoke-virtual {p0}, Lop;->K()V

    :cond_47
    return-void
.end method
