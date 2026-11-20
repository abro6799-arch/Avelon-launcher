###### Class defpackage.rz (rz)
.class public Lrz;
.super Luu;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 10
    sget-object v0, Lln;->w:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 3

    .line 14
    sget-object p1, Lgm;->aG:Lgm;

    iget p1, p1, Lgm;->bf:I

    return p1
.end method

.method public a(Ljava/util/Random;)I
    .registers 2

    const/4 p1, 0x4

    return p1
.end method
