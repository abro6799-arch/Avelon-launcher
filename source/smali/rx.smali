###### Class defpackage.rx (rx)
.class public Lrx;
.super Lgm;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lgm;-><init>(I)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lrx;->a(Z)Lgm;

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lrx;->e(I)Lgm;

    return-void
.end method


# virtual methods
.method public a(Liz;)Ljava/lang/String;
    .registers 3

    .line 18
    invoke-virtual {p1}, Liz;->i()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    const-string p1, "item.charcoal"

    return-object p1

    :cond_a
    const-string p1, "item.coal"

    return-object p1
.end method
