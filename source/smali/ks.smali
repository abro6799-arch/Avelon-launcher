###### Class defpackage.ks (ks)
.class public Lks;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    .line 11
    sget-object v0, Lln;->d:Lln;

    invoke-direct {p0, p1, v0}, Luu;-><init>(ILln;)V

    const/16 p1, 0x1a

    .line 12
    iput p1, p0, Lks;->bm:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 33
    iget p1, p0, Lks;->bm:I

    sub-int/2addr p1, v0

    return p1

    :cond_7
    if-nez p1, :cond_d

    .line 34
    iget p1, p0, Lks;->bm:I

    sub-int/2addr p1, v0

    return p1

    :cond_d
    const/4 v1, 0x3

    if-ne p1, v1, :cond_14

    .line 35
    iget p1, p0, Lks;->bm:I

    add-int/2addr p1, v0

    return p1

    .line 36
    :cond_14
    iget p1, p0, Lks;->bm:I

    return p1
.end method

.method public a(Lxp;IIII)I
    .registers 10

    const/4 v0, 0x1

    if-ne p5, v0, :cond_7

    .line 16
    iget p1, p0, Lks;->bm:I

    :goto_5
    sub-int/2addr p1, v0

    return p1

    :cond_7
    if-nez p5, :cond_c

    .line 17
    iget p1, p0, Lks;->bm:I

    goto :goto_5

    :cond_c
    add-int/lit8 v1, p4, -0x1

    .line 19
    invoke-interface {p1, p2, p3, v1}, Lxp;->a(III)I

    move-result v1

    add-int/lit8 v2, p4, 0x1

    .line 20
    invoke-interface {p1, p2, p3, v2}, Lxp;->a(III)I

    move-result v2

    add-int/lit8 v3, p2, -0x1

    .line 21
    invoke-interface {p1, v3, p3, p4}, Lxp;->a(III)I

    move-result v3

    add-int/2addr p2, v0

    .line 22
    invoke-interface {p1, p2, p3, p4}, Lxp;->a(III)I

    move-result p1

    .line 25
    sget-object p2, Luu;->o:[Z

    aget-boolean p2, p2, v1

    if-eqz p2, :cond_2d

    sget-object p2, Luu;->o:[Z

    aget-boolean p2, p2, v2

    .line 26
    :cond_2d
    sget-object p2, Luu;->o:[Z

    aget-boolean p2, p2, v2

    if-eqz p2, :cond_3b

    sget-object p2, Luu;->o:[Z

    aget-boolean p2, p2, v1

    if-nez p2, :cond_3b

    const/4 p2, 0x2

    goto :goto_3c

    :cond_3b
    const/4 p2, 0x3

    .line 27
    :goto_3c
    sget-object p3, Luu;->o:[Z

    aget-boolean p3, p3, v3

    if-eqz p3, :cond_49

    sget-object p3, Luu;->o:[Z

    aget-boolean p3, p3, p1

    if-nez p3, :cond_49

    const/4 p2, 0x5

    .line 28
    :cond_49
    sget-object p3, Luu;->o:[Z

    aget-boolean p1, p3, p1

    if-eqz p1, :cond_56

    sget-object p1, Luu;->o:[Z

    aget-boolean p1, p1, v3

    if-nez p1, :cond_56

    const/4 p2, 0x4

    .line 29
    :cond_56
    iget p1, p0, Lks;->bm:I

    if-ne p5, p2, :cond_5b

    add-int/2addr p1, v0

    :cond_5b
    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 6

    const/4 p5, 0x0

    .line 44
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    return-void
.end method

.method public a(Lfd;III)Z
    .registers 5

    const/4 p1, 0x1

    return p1
.end method
