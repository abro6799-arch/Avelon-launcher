###### Class defpackage.gu (gu)
.class public abstract Lgu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljt;Lgu;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 302
    :try_start_0
    invoke-virtual {p1, p2}, Ljt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Lmz; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    .line 304
    filled-new-array {p2}, [Lgu;

    move-result-object p2

    invoke-static {p2}, Lol;->a([Lgu;)Lqe;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lao;->a(Lmz;[Ljava/lang/Object;Lqe;)Lao;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public abstract a()Lat;
.end method

.method public final varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 129
    invoke-static {p1}, Lka;->a([Ljava/lang/Object;)Ljt;

    move-result-object v0

    invoke-direct {p0, v0, p0, p1}, Lgu;->a(Ljt;Lgu;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final varargs b([Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    .line 276
    invoke-static {p1}, Lka;->b([Ljava/lang/Object;)Ljt;

    move-result-object v0

    invoke-direct {p0, v0, p0, p1}, Lgu;->a(Ljt;Lgu;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public abstract c()Ljava/util/Map;
.end method

.method public abstract d()Ljava/util/List;
.end method
