###### Class defpackage.dd (dd)
.class public Ldd;
.super Lrw;
.source "SourceFile"


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    .line 10
    sget-object v0, Lln;->e:Lln;

    invoke-direct {p0, p1, p2, v0}, Lrw;-><init>(IILln;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method protected a_()Low;
    .registers 2

    .line 14
    new-instance v0, Lcy;

    invoke-direct {v0}, Lcy;-><init>()V

    return-object v0
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
