###### Class defpackage.cu (cu)
.class public Lcu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)F
    .registers 6

    .line 10
    iget v0, p0, Lcu;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lcu;->a:F

    .line 12
    iget p1, p0, Lcu;->b:F

    sub-float/2addr v0, p1

    mul-float/2addr v0, p2

    .line 13
    iget p2, p0, Lcu;->c:F

    sub-float v1, v0, p2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr p2, v1

    iput p2, p0, Lcu;->c:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1c

    cmpl-float v2, v0, p2

    if-gtz v2, :cond_24

    :cond_1c
    cmpg-float v1, v0, v1

    if-gez v1, :cond_25

    cmpg-float v1, v0, p2

    if-gez v1, :cond_25

    :cond_24
    move v0, p2

    :cond_25
    add-float/2addr p1, v0

    .line 17
    iput p1, p0, Lcu;->b:F

    return v0
.end method
