###### Class defpackage.g (g)
.class public Lg;
.super Lkd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 11
    invoke-direct {p0}, Lkd;-><init>()V

    .line 13
    iget-object v0, p0, Lg;->t:Ljava/util/List;

    new-instance v1, Lbj;

    const-class v2, Lgi;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lbj;-><init>(Ljava/lang/Class;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Random;)Lpg;
    .registers 3

    const/4 v0, 0x3

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-nez p1, :cond_d

    .line 19
    new-instance p1, Lpw;

    invoke-direct {p1}, Lpw;-><init>()V

    return-object p1

    .line 21
    :cond_d
    new-instance p1, Lws;

    invoke-direct {p1}, Lws;-><init>()V

    return-object p1
.end method
