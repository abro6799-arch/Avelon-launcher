###### Class defpackage.ly (ly)
.class public Lly;
.super Luu;
.source "SourceFile"


# direct methods
.method public constructor <init>(IILln;)V
    .registers 4

    .line 10
    invoke-direct {p0, p1, p2, p3}, Luu;-><init>(IILln;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 3

    .line 18
    sget-object p1, Lgm;->aR:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 3

    const/4 v0, 0x3

    .line 14
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    return p1
.end method
