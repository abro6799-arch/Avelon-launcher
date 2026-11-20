###### Class defpackage.yd (yd)
.class public Lyd;
.super Lvr;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lvr;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lwk;)V
    .registers 4

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lvr;-><init>(ILjava/lang/String;Lwk;)V

    return-void
.end method


# virtual methods
.method public g()Lvr;
    .registers 2

    .line 15
    invoke-super {p0}, Lvr;->g()Lvr;

    .line 17
    sget-object v0, Ljl;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
