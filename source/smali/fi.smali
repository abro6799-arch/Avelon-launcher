###### Class defpackage.fi (fi)
.class public Lfi;
.super Luu;
.source "SourceFile"


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    .line 9
    sget-object v0, Lln;->d:Lln;

    invoke-direct {p0, p1, v0}, Luu;-><init>(ILln;)V

    const/16 p1, 0x3b

    .line 10
    iput p1, p0, Lfi;->bm:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 14
    iget p1, p0, Lfi;->bm:I

    add-int/lit8 p1, p1, -0x10

    return p1

    :cond_8
    if-nez p1, :cond_12

    .line 15
    sget-object p1, Luu;->y:Luu;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Luu;->a(I)I

    move-result p1

    return p1

    :cond_12
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1c

    const/4 v1, 0x4

    if-ne p1, v1, :cond_19

    goto :goto_1c

    .line 17
    :cond_19
    iget p1, p0, Lfi;->bm:I

    return p1

    .line 16
    :cond_1c
    :goto_1c
    iget p1, p0, Lfi;->bm:I

    add-int/2addr p1, v0

    return p1
.end method

.method public a(Lfd;IIILgs;)Z
    .registers 7

    .line 21
    iget-boolean p1, p1, Lfd;->B:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    return v0

    .line 24
    :cond_6
    invoke-virtual {p5, p2, p3, p4}, Lgs;->a(III)V

    return v0
.end method
