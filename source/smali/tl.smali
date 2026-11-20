###### Class defpackage.tl (tl)
.class public Ltl;
.super Lwb;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 10

    .line 9
    invoke-direct {p0, p1, p2}, Lwb;-><init>(II)V

    const v3, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v6, 0x3f333333    # 0.7f

    const v5, 0x3ecccccd    # 0.4f

    move-object v0, p0

    move v1, v3

    move v4, v6

    .line 11
    invoke-virtual/range {v0 .. v6}, Ltl;->a(FFFFFF)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Ltl;->b(Z)Luu;

    return-void
.end method


# virtual methods
.method public a(Lfd;IIILjava/util/Random;)V
    .registers 9

    const/16 v0, 0x64

    .line 16
    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_45

    const/4 v0, 0x3

    .line 17
    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x2

    .line 18
    invoke-virtual {p5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr p3, v2

    invoke-virtual {p5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sub-int/2addr p3, v1

    .line 19
    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr p4, v1

    add-int/lit8 p4, p4, -0x1

    .line 20
    invoke-virtual {p1, p2, p3, p4}, Lfd;->d(III)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 21
    invoke-virtual {p0, p1, p2, p3, p4}, Ltl;->g(Lfd;III)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 22
    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    .line 23
    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    .line 25
    invoke-virtual {p1, p2, p3, p4}, Lfd;->d(III)Z

    move-result p5

    if-eqz p5, :cond_45

    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Ltl;->g(Lfd;III)Z

    move-result p5

    if-eqz p5, :cond_45

    .line 27
    iget p5, p0, Ltl;->bn:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    :cond_45
    return-void
.end method

.method protected d(I)Z
    .registers 3

    .line 36
    sget-object v0, Luu;->o:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public g(Lfd;III)Z
    .registers 8

    const/4 v0, 0x0

    if-ltz p3, :cond_1d

    const/16 v1, 0x80

    if-lt p3, v1, :cond_8

    goto :goto_1d

    .line 42
    :cond_8
    invoke-virtual {p1, p2, p3, p4}, Lfd;->m(III)I

    move-result v1

    const/16 v2, 0xd

    if-ge v1, v2, :cond_1d

    const/4 v1, 0x1

    sub-int/2addr p3, v1

    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p1

    invoke-virtual {p0, p1}, Ltl;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    move v0, v1

    :cond_1d
    :goto_1d
    return v0
.end method
