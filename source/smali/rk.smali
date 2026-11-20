###### Class defpackage.rk (rk)
.class public Lrk;
.super Lgm;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 11
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    .line 12
    iput p2, p0, Lrk;->a:I

    return-void
.end method


# virtual methods
.method public a(Liz;Lgs;Lfd;IIII)Z
    .registers 10

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p7, v0, :cond_5

    return p2

    .line 18
    :cond_5
    invoke-virtual {p3, p4, p5, p6}, Lfd;->a(III)I

    move-result p7

    .line 20
    sget-object v1, Luu;->aB:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne p7, v1, :cond_21

    add-int/2addr p5, v0

    invoke-virtual {p3, p4, p5, p6}, Lfd;->d(III)Z

    move-result p7

    if-eqz p7, :cond_21

    .line 21
    iget p2, p0, Lrk;->a:I

    invoke-virtual {p3, p4, p5, p6, p2}, Lfd;->f(IIII)Z

    .line 22
    iget p2, p1, Liz;->a:I

    sub-int/2addr p2, v0

    iput p2, p1, Liz;->a:I

    return v0

    :cond_21
    return p2
.end method
