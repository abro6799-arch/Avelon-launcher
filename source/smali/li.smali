###### Class defpackage.li (li)
.class public Lli;
.super Llm;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfd;II)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2, p3}, Llm;-><init>(Lfd;II)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lli;->p:Z

    return-void
.end method

.method public constructor <init>(Lfd;[BII)V
    .registers 5

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Llm;-><init>(Lfd;[BII)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lli;->p:Z

    return-void
.end method


# virtual methods
.method public a(III)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public a(Leb;III)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public a([BIIIIIII)I
    .registers 9

    sub-int/2addr p5, p2

    sub-int/2addr p6, p3

    sub-int/2addr p7, p4

    mul-int/2addr p5, p6

    mul-int/2addr p5, p7

    .line 163
    div-int/lit8 p1, p5, 0x2

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p5, p1

    return p5
.end method

.method public a(J)Ljava/util/Random;
    .registers 10

    .line 167
    new-instance v0, Ljava/util/Random;

    iget-object v1, p0, Lli;->d:Lfd;

    invoke-virtual {v1}, Lfd;->s()J

    move-result-wide v1

    iget v3, p0, Lli;->j:I

    iget v4, p0, Lli;->j:I

    mul-int/2addr v3, v4

    const v4, 0x4c1906

    mul-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iget v3, p0, Lli;->j:I

    const v4, 0x5ac0db

    mul-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    iget v3, p0, Lli;->k:I

    iget v4, p0, Lli;->k:I

    mul-int/2addr v3, v4

    int-to-long v3, v3

    const-wide/32 v5, 0x4307a7

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iget v3, p0, Lli;->k:I

    const v4, 0x5f24f

    mul-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    xor-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Ljava/util/Random;-><init>(J)V

    return-object v0
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(IIILow;)V
    .registers 5

    return-void
.end method

.method public a(Leb;IIII)V
    .registers 6

    return-void
.end method

.method public a(Ljava/lang/Class;Leq;Ljava/util/List;)V
    .registers 4

    return-void
.end method

.method public a(Low;)V
    .registers 2

    return-void
.end method

.method public a(Lsn;)V
    .registers 2

    return-void
.end method

.method public a(Lsn;I)V
    .registers 3

    return-void
.end method

.method public a(Lsn;Leq;Ljava/util/List;)V
    .registers 4

    return-void
.end method

.method public a(II)Z
    .registers 4

    .line 22
    iget v0, p0, Lli;->j:I

    if-ne p1, v0, :cond_a

    iget p1, p0, Lli;->k:I

    if-ne p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public a(IIII)Z
    .registers 5

    const/4 p1, 0x1

    return p1
.end method

.method public a(IIIII)Z
    .registers 6

    const/4 p1, 0x1

    return p1
.end method

.method public a(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public b(II)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public b(III)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(IIII)V
    .registers 5

    return-void
.end method

.method public b(Lsn;)V
    .registers 2

    return-void
.end method

.method public c(IIII)I
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public c(III)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public d(III)Low;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public e(III)V
    .registers 4

    return-void
.end method

.method public f()V
    .registers 1

    return-void
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
