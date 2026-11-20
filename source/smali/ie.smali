###### Class defpackage.ie (ie)
.class public Lie;
.super Lgm;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 10

    .line 13
    invoke-virtual {p3, p4, p5, p6}, Lfd;->a(III)I

    move-result p2

    sget-object v0, Luu;->aT:Luu;

    iget v0, v0, Luu;->bn:I

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2f

    if-nez p7, :cond_f

    add-int/lit8 p5, p5, -0x1

    :cond_f
    if-ne p7, v1, :cond_13

    add-int/lit8 p5, p5, 0x1

    :cond_13
    const/4 p2, 0x2

    if-ne p7, p2, :cond_18

    add-int/lit8 p6, p6, -0x1

    :cond_18
    const/4 p2, 0x3

    if-ne p7, p2, :cond_1d

    add-int/lit8 p6, p6, 0x1

    :cond_1d
    const/4 p2, 0x4

    if-ne p7, p2, :cond_22

    add-int/lit8 p4, p4, -0x1

    :cond_22
    const/4 p2, 0x5

    if-ne p7, p2, :cond_27

    add-int/lit8 p4, p4, 0x1

    .line 20
    :cond_27
    invoke-virtual {p3, p4, p5, p6}, Lfd;->d(III)Z

    move-result p2

    if-nez p2, :cond_2f

    const/4 p1, 0x0

    return p1

    .line 22
    :cond_2f
    sget-object p2, Luu;->aw:Luu;

    invoke-virtual {p2, p3, p4, p5, p6}, Luu;->a(Lfd;III)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 23
    iget p2, p1, Liz;->a:I

    sub-int/2addr p2, v1

    iput p2, p1, Liz;->a:I

    .line 24
    sget-object p1, Luu;->aw:Luu;

    iget p1, p1, Luu;->bn:I

    invoke-virtual {p3, p4, p5, p6, p1}, Lfd;->f(IIII)Z

    :cond_43
    return v1
.end method
