###### Class defpackage.eo (eo)
.class public Leo;
.super Luu;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 9
    sget-object v0, Lln;->e:Lln;

    invoke-direct {p0, p1, p2, v0}, Luu;-><init>(IILln;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Random;)I
    .registers 3

    .line 13
    sget-object p1, Luu;->x:Luu;

    iget p1, p1, Luu;->bn:I

    return p1
.end method
