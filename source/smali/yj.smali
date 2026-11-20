###### Class defpackage.yj (yj)
.class public Lyj;
.super Lkd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lkd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Random;)Lpg;
    .registers 3

    const/4 v0, 0x3

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-nez p1, :cond_d

    .line 16
    new-instance p1, Lih;

    invoke-direct {p1}, Lih;-><init>()V

    return-object p1

    .line 18
    :cond_d
    new-instance p1, Lyh;

    invoke-direct {p1}, Lyh;-><init>()V

    return-object p1
.end method
