###### Class defpackage.hd (hd)
.class public Lhd;
.super Lxv;
.source "SourceFile"


# instance fields
.field private e:Lkd;

.field private f:D

.field private g:D


# direct methods
.method public constructor <init>(Lkd;DD)V
    .registers 6

    .line 11
    invoke-direct {p0}, Lxv;-><init>()V

    .line 12
    iput-object p1, p0, Lhd;->e:Lkd;

    .line 13
    iput-wide p2, p0, Lhd;->f:D

    .line 14
    iput-wide p4, p0, Lhd;->g:D

    return-void
.end method


# virtual methods
.method public a(II)Lkd;
    .registers 3

    .line 22
    iget-object p1, p0, Lhd;->e:Lkd;

    return-object p1
.end method

.method public a(Lyy;)Lkd;
    .registers 2

    .line 18
    iget-object p1, p0, Lhd;->e:Lkd;

    return-object p1
.end method

.method public a([DIIII)[D
    .registers 6

    if-eqz p1, :cond_7

    .line 35
    array-length p2, p1

    mul-int p3, p4, p5

    if-ge p2, p3, :cond_b

    :cond_7
    mul-int p1, p4, p5

    .line 36
    new-array p1, p1, [D

    :cond_b
    mul-int/2addr p4, p5

    .line 39
    iget-wide p2, p0, Lhd;->f:D

    const/4 p5, 0x0

    invoke-static {p1, p5, p4, p2, p3}, Ljava/util/Arrays;->fill([DIID)V

    return-object p1
.end method

.method public a(IIII)[Lkd;
    .registers 11

    .line 30
    iget-object v1, p0, Lhd;->d:[Lkd;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lhd;->a([Lkd;IIII)[Lkd;

    move-result-object p1

    iput-object p1, p0, Lhd;->d:[Lkd;

    .line 31
    iget-object p1, p0, Lhd;->d:[Lkd;

    return-object p1
.end method

.method public a([Lkd;IIII)[Lkd;
    .registers 8

    if-eqz p1, :cond_7

    .line 53
    array-length p2, p1

    mul-int p3, p4, p5

    if-ge p2, p3, :cond_b

    :cond_7
    mul-int p1, p4, p5

    .line 54
    new-array p1, p1, [Lkd;

    .line 57
    :cond_b
    iget-object p2, p0, Lhd;->a:[D

    if-eqz p2, :cond_16

    iget-object p2, p0, Lhd;->a:[D

    array-length p2, p2

    mul-int p3, p4, p5

    if-ge p2, p3, :cond_20

    :cond_16
    mul-int p2, p4, p5

    .line 58
    new-array p3, p2, [D

    iput-object p3, p0, Lhd;->a:[D

    .line 59
    new-array p2, p2, [D

    iput-object p2, p0, Lhd;->b:[D

    :cond_20
    mul-int/2addr p4, p5

    .line 62
    iget-object p2, p0, Lhd;->e:Lkd;

    const/4 p3, 0x0

    invoke-static {p1, p3, p4, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 63
    iget-object p2, p0, Lhd;->b:[D

    iget-wide v0, p0, Lhd;->g:D

    invoke-static {p2, p3, p4, v0, v1}, Ljava/util/Arrays;->fill([DIID)V

    .line 64
    iget-object p2, p0, Lhd;->a:[D

    iget-wide v0, p0, Lhd;->f:D

    invoke-static {p2, p3, p4, v0, v1}, Ljava/util/Arrays;->fill([DIID)V

    return-object p1
.end method

.method public b(II)D
    .registers 3

    .line 26
    iget-wide p1, p0, Lhd;->f:D

    return-wide p1
.end method
