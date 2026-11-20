###### Class defpackage.jo (jo)
.class public Ljo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private a:D

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>(Lsn;)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-wide v0, p1, Lsn;->aM:D

    neg-double v0, v0

    iput-wide v0, p0, Ljo;->a:D

    .line 13
    iget-wide v0, p1, Lsn;->aN:D

    neg-double v0, v0

    iput-wide v0, p0, Ljo;->b:D

    .line 14
    iget-wide v0, p1, Lsn;->aO:D

    neg-double v0, v0

    iput-wide v0, p0, Ljo;->c:D

    return-void
.end method


# virtual methods
.method public a(Ldk;Ldk;)I
    .registers 15

    .line 18
    iget v0, p1, Ldk;->q:I

    int-to-double v0, v0

    iget-wide v2, p0, Ljo;->a:D

    add-double/2addr v0, v2

    .line 19
    iget v2, p1, Ldk;->r:I

    int-to-double v2, v2

    iget-wide v4, p0, Ljo;->b:D

    add-double/2addr v2, v4

    .line 20
    iget p1, p1, Ldk;->s:I

    int-to-double v4, p1

    iget-wide v6, p0, Ljo;->c:D

    add-double/2addr v4, v6

    .line 22
    iget p1, p2, Ldk;->q:I

    int-to-double v6, p1

    iget-wide v8, p0, Ljo;->a:D

    add-double/2addr v6, v8

    .line 23
    iget p1, p2, Ldk;->r:I

    int-to-double v8, p1

    iget-wide v10, p0, Ljo;->b:D

    add-double/2addr v8, v10

    .line 24
    iget p1, p2, Ldk;->s:I

    int-to-double p1, p1

    iget-wide v10, p0, Ljo;->c:D

    add-double/2addr p1, v10

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    mul-double/2addr v6, v6

    mul-double/2addr v8, v8

    add-double/2addr v6, v8

    mul-double/2addr p1, p1

    add-double/2addr v6, p1

    sub-double/2addr v0, v6

    const-wide/high16 p1, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 8
    check-cast p1, Ldk;

    check-cast p2, Ldk;

    invoke-virtual {p0, p1, p2}, Ljo;->a(Ldk;Ldk;)I

    move-result p1

    return p1
.end method
