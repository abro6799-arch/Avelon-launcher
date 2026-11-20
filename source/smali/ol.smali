###### Class defpackage.ol (ol)
.class public final Lol;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lgu;
    .registers 1

    .line 27
    sget-object v0, Lvn;->a:Lvn;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lqa;
    .registers 2

    .line 39
    new-instance v0, Lqa;

    invoke-direct {v0, p0}, Lqa;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Lqe;
    .registers 2

    .line 55
    new-instance v0, Loe;

    invoke-direct {v0, p0}, Loe;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Lqe;
    .registers 2

    .line 63
    new-instance v0, Lkr;

    invoke-direct {v0, p0}, Lkr;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static varargs a([Lgu;)Lqe;
    .registers 1

    .line 59
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lol;->a(Ljava/lang/Iterable;)Lqe;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lgu;
    .registers 1

    .line 31
    sget-object v0, Lvn;->b:Lvn;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lgu;
    .registers 2

    .line 43
    new-instance v0, Lja;

    invoke-direct {v0, p0}, Lja;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Lgu;
    .registers 1

    .line 35
    sget-object v0, Lvn;->c:Lvn;

    return-object v0
.end method
