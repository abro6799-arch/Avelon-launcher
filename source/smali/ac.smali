###### Class defpackage.ac (ac)
.class public Lac;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    .line 11
    sget-object v0, Lln;->u:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lac;->b(Z)Luu;

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 3

    .line 16
    sget-object p1, Lgm;->aB:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x4

    return p1
.end method

.method public a(Lfd;IIILjava/util/Random;)V
    .registers 13

    .line 24
    sget-object p5, Leb;->b:Leb;

    invoke-virtual {p1, p5, p2, p3, p4}, Lfd;->a(Leb;III)I

    move-result p5

    const/16 v0, 0xb

    if-le p5, v0, :cond_1a

    .line 25
    invoke-virtual {p1, p2, p3, p4}, Lfd;->e(III)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lac;->g(Lfd;IIII)V

    const/4 p5, 0x0

    .line 26
    invoke-virtual {p1, p2, p3, p4, p5}, Lfd;->f(IIII)Z

    :cond_1a
    return-void
.end method
