###### Class defpackage.bz (bz)
.class public Lbz;
.super Lyw;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lyw;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public a(Liz;Lfd;Lgs;)Liz;
    .registers 4

    .line 12
    invoke-super {p0, p1, p2, p3}, Lyw;->a(Liz;Lfd;Lgs;)Liz;

    .line 13
    new-instance p1, Liz;

    sget-object p2, Lgm;->C:Lgm;

    invoke-direct {p1, p2}, Liz;-><init>(Lgm;)V

    return-object p1
.end method
