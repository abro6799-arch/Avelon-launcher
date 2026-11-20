###### Class defpackage.rb (rb)
.class public Lrb;
.super Lkd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 11
    invoke-direct {p0}, Lkd;-><init>()V

    .line 13
    iget-object v0, p0, Lrb;->t:Ljava/util/List;

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

    const/4 v0, 0x5

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_d

    .line 19
    new-instance p1, Lk;

    invoke-direct {p1}, Lk;-><init>()V

    return-object p1

    :cond_d
    const/4 v0, 0x3

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-nez p1, :cond_1a

    .line 22
    new-instance p1, Lih;

    invoke-direct {p1}, Lih;-><init>()V

    return-object p1

    .line 24
    :cond_1a
    new-instance p1, Lyh;

    invoke-direct {p1}, Lyh;-><init>()V

    return-object p1
.end method
