###### Class defpackage.br (br)
.class public Lbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lbr;->a:I

    .line 15
    iput p2, p0, Lbr;->b:I

    .line 16
    iput p3, p0, Lbr;->c:I

    return-void
.end method

.method public constructor <init>(Lbr;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget v0, p1, Lbr;->a:I

    iput v0, p0, Lbr;->a:I

    .line 21
    iget v0, p1, Lbr;->b:I

    iput v0, p0, Lbr;->b:I

    .line 22
    iget p1, p1, Lbr;->c:I

    iput p1, p0, Lbr;->c:I

    return-void
.end method


# virtual methods
.method public a(III)D
    .registers 5

    .line 187
    iget v0, p0, Lbr;->a:I

    sub-int/2addr v0, p1

    .line 188
    iget p1, p0, Lbr;->b:I

    sub-int/2addr p1, p2

    .line 189
    iget p2, p0, Lbr;->c:I

    sub-int/2addr p2, p3

    mul-int/2addr v0, v0

    mul-int/2addr p1, p1

    add-int/2addr v0, p1

    mul-int/2addr p2, p2

    add-int/2addr v0, p2

    int-to-double p1, v0

    .line 191
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public a(Lbr;)I
    .registers 4

    .line 41
    iget v0, p0, Lbr;->b:I

    iget v1, p1, Lbr;->b:I

    if-ne v0, v1, :cond_14

    .line 42
    iget v0, p0, Lbr;->c:I

    iget v1, p1, Lbr;->c:I

    if-ne v0, v1, :cond_12

    .line 43
    iget v0, p0, Lbr;->a:I

    iget p1, p1, Lbr;->a:I

    sub-int/2addr v0, p1

    return v0

    :cond_12
    sub-int/2addr v0, v1

    return v0

    :cond_14
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 3
    check-cast p1, Lbr;

    invoke-virtual {p0, p1}, Lbr;->a(Lbr;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 27
    instance-of v0, p1, Lbr;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 31
    :cond_6
    check-cast p1, Lbr;

    .line 32
    iget v0, p0, Lbr;->a:I

    iget v2, p1, Lbr;->a:I

    if-ne v0, v2, :cond_1b

    iget v0, p0, Lbr;->b:I

    iget v2, p1, Lbr;->b:I

    if-ne v0, v2, :cond_1b

    iget v0, p0, Lbr;->c:I

    iget p1, p1, Lbr;->c:I

    if-ne v0, p1, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 37
    iget v0, p0, Lbr;->a:I

    iget v1, p0, Lbr;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lbr;->b:I

    add-int/lit8 v1, v1, 0x8

    shl-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method
