###### Class defpackage.rd (rd)
.class public Lrd;
.super Luu;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/16 v0, 0xc0

    .line 9
    sget-object v1, Lln;->e:Lln;

    invoke-direct {p0, p1, v0, v1}, Luu;-><init>(IILln;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 15
    iget p1, p0, Lrd;->bm:I

    add-int/lit8 p1, p1, -0x10

    return p1

    :cond_8
    if-nez p1, :cond_f

    .line 18
    iget p1, p0, Lrd;->bm:I

    add-int/lit8 p1, p1, 0x10

    return p1

    .line 20
    :cond_f
    iget p1, p0, Lrd;->bm:I

    return p1
.end method
