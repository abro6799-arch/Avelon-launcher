###### Class defpackage.mt (mt)
.class public Lmt;
.super Luu;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 11
    sget-object v0, Lln;->e:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 3

    .line 15
    iget p1, p0, Lmt;->bn:I

    sget-object p2, Luu;->J:Luu;

    iget p2, p2, Luu;->bn:I

    if-ne p1, p2, :cond_d

    sget-object p1, Lgm;->k:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1

    .line 16
    :cond_d
    iget p1, p0, Lmt;->bn:I

    sget-object p2, Luu;->ax:Luu;

    iget p2, p2, Luu;->bn:I

    if-ne p1, p2, :cond_1a

    sget-object p1, Lgm;->l:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1

    .line 17
    :cond_1a
    iget p1, p0, Lmt;->bn:I

    sget-object p2, Luu;->O:Luu;

    iget p2, p2, Luu;->bn:I

    if-ne p1, p2, :cond_27

    sget-object p1, Lgm;->aU:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1

    .line 18
    :cond_27
    iget p1, p0, Lmt;->bn:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 4

    .line 22
    iget v0, p0, Lmt;->bn:I

    sget-object v1, Luu;->O:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1

    :cond_10
    const/4 p1, 0x1

    return p1
.end method

.method protected b_(I)I
    .registers 3

    .line 29
    iget p1, p0, Lmt;->bn:I

    sget-object v0, Luu;->O:Luu;

    iget v0, v0, Luu;->bn:I

    if-ne p1, v0, :cond_a

    const/4 p1, 0x4

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
