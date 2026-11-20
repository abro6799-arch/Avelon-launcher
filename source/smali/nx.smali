###### Class defpackage.nx (nx)
.class public Lnx;
.super Lrp;
.source "SourceFile"


# direct methods
.method protected constructor <init>(ILln;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lrp;-><init>(ILln;)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lnx;->b(Z)Luu;

    .line 13
    sget-object p1, Lln;->h:Lln;

    if-ne p2, p1, :cond_f

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnx;->b(Z)Luu;

    :cond_f
    return-void
.end method

.method private j(Lfd;III)V
    .registers 13

    .line 29
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v5

    const/4 v7, 0x1

    .line 30
    iput-boolean v7, p1, Lfd;->o:Z

    .line 31
    iget v0, p0, Lnx;->bn:I

    add-int/lit8 v4, v0, -0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lfd;->a(IIIII)Z

    move v4, p2

    move v5, p3

    move v6, p4

    .line 32
    invoke-virtual/range {v0 .. v6}, Lfd;->b(IIIIII)V

    .line 33
    iget v0, p0, Lnx;->bn:I

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0}, Lnx;->e()I

    move-result v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lfd;->c(IIIII)V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p1, Lfd;->o:Z

    return-void
.end method

.method private k(Lfd;III)Z
    .registers 5

    .line 60
    invoke-virtual {p1, p2, p3, p4}, Lfd;->f(III)Lln;

    move-result-object p1

    invoke-virtual {p1}, Lln;->e()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Lfd;IIILjava/util/Random;)V
    .registers 11

    .line 38
    iget-object v0, p0, Lnx;->bA:Lln;

    sget-object v1, Lln;->h:Lln;

    if-ne v0, v1, :cond_6c

    const/4 v0, 0x3

    .line 39
    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_6c

    .line 41
    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr p2, v3

    add-int/lit8 p3, p3, 0x1

    .line 43
    invoke-virtual {p5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr p4, v3

    .line 44
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result v3

    if-nez v3, :cond_5c

    add-int/lit8 v3, p2, -0x1

    .line 46
    invoke-direct {p0, p1, v3, p3, p4}, Lnx;->k(Lfd;III)Z

    move-result v3

    if-nez v3, :cond_54

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, p1, v3, p3, p4}, Lnx;->k(Lfd;III)Z

    move-result v3

    if-nez v3, :cond_54

    add-int/lit8 v3, p4, -0x1

    invoke-direct {p0, p1, p2, p3, v3}, Lnx;->k(Lfd;III)Z

    move-result v3

    if-nez v3, :cond_54

    add-int/lit8 v3, p4, 0x1

    invoke-direct {p0, p1, p2, p3, v3}, Lnx;->k(Lfd;III)Z

    move-result v3

    if-nez v3, :cond_54

    add-int/lit8 v3, p3, -0x1

    invoke-direct {p0, p1, p2, v3, p4}, Lnx;->k(Lfd;III)Z

    move-result v3

    if-nez v3, :cond_54

    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, p1, p2, v3, p4}, Lnx;->k(Lfd;III)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 48
    :cond_54
    sget-object p5, Luu;->as:Lyq;

    iget p5, p5, Lyq;->bn:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    return-void

    .line 51
    :cond_5c
    sget-object v4, Luu;->m:[Luu;

    aget-object v3, v4, v3

    iget-object v3, v3, Luu;->bA:Lln;

    invoke-virtual {v3}, Lln;->c()Z

    move-result v3

    if-eqz v3, :cond_69

    return-void

    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_6c
    return-void
.end method

.method public b(Lfd;IIII)V
    .registers 7

    .line 22
    invoke-super/range {p0 .. p5}, Lrp;->b(Lfd;IIII)V

    .line 23
    invoke-virtual {p1, p2, p3, p4}, Lfd;->a(III)I

    move-result p5

    iget v0, p0, Lnx;->bn:I

    if-ne p5, v0, :cond_e

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lnx;->j(Lfd;III)V

    :cond_e
    return-void
.end method
