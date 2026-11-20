###### Class defpackage.hb (hb)
.class public Lhb;
.super Luu;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 11
    sget-object v0, Lln;->d:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    const/4 v0, 0x1

    if-gt p1, v0, :cond_5

    const/4 p1, 0x4

    return p1

    .line 17
    :cond_5
    iget p1, p0, Lhb;->bm:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
