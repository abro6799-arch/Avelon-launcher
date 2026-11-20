###### Class defpackage.qq (qq)
.class public Lqq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D

.field public c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lkv;II)V
    .registers 8

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p2, p0, Lqq;->d:I

    .line 16
    iput p3, p0, Lqq;->e:I

    const/4 p2, 0x1

    .line 17
    iput p2, p0, Lqq;->c:I

    .line 19
    iget p1, p1, Lkv;->I:I

    if-nez p1, :cond_10

    const/16 p1, 0x3e8

    .line 21
    :cond_10
    :goto_10
    iget p2, p0, Lqq;->c:I

    if-ge p2, p1, :cond_2b

    iget p3, p0, Lqq;->d:I

    add-int/lit8 v0, p2, 0x1

    div-int/2addr p3, v0

    const/16 v0, 0x140

    if-lt p3, v0, :cond_2b

    iget p3, p0, Lqq;->e:I

    add-int/lit8 v0, p2, 0x1

    div-int/2addr p3, v0

    const/16 v0, 0xf0

    if-lt p3, v0, :cond_2b

    add-int/lit8 p2, p2, 0x1

    .line 22
    iput p2, p0, Lqq;->c:I

    goto :goto_10

    .line 24
    :cond_2b
    iget p1, p0, Lqq;->d:I

    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lqq;->a:D

    .line 25
    iget p1, p0, Lqq;->e:I

    int-to-double v2, p1

    int-to-double p1, p2

    div-double/2addr v2, p1

    iput-wide v2, p0, Lqq;->b:D

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lqq;->d:I

    .line 27
    iget-wide p1, p0, Lqq;->b:D

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lqq;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 31
    iget v0, p0, Lqq;->d:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 35
    iget v0, p0, Lqq;->e:I

    return v0
.end method
