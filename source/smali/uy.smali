###### Class defpackage.uy (uy)
.class public Luy;
.super Lck;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lck;-><init>(I)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Luy;->e(I)Lgm;

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Luy;->a(Z)Lgm;

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4

    .line 23
    sget-object v0, Luu;->L:Lbk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lbk;->a(II)I

    move-result p1

    return p1
.end method

.method public b(I)I
    .registers 2

    or-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public f(I)I
    .registers 4

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 30
    invoke-static {}, Ljh;->a()I

    move-result p1

    return p1

    :cond_a
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_13

    .line 33
    invoke-static {}, Ljh;->b()I

    move-result p1

    return p1

    .line 35
    :cond_13
    invoke-static {}, Ljh;->c()I

    move-result p1

    return p1
.end method
