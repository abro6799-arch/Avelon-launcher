###### Class defpackage.qf (qf)
.class final Lqf;
.super Lba;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 241
    invoke-direct {p0}, Lba;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "A short form object"

    return-object v0
.end method

.method public a(Lgu;)Z
    .registers 3

    .line 243
    sget-object v0, Lat;->a:Lat;

    invoke-virtual {p1}, Lgu;->a()Lat;

    move-result-object p1

    if-ne v0, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 2

    .line 241
    check-cast p1, Lgu;

    invoke-virtual {p0, p1}, Lqf;->a(Lgu;)Z

    move-result p1

    return p1
.end method

.method public b(Lgu;)Ljava/util/Map;
    .registers 2

    .line 251
    invoke-virtual {p1}, Lgu;->c()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 241
    check-cast p1, Lgu;

    invoke-virtual {p0, p1}, Lqf;->b(Lgu;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "an object"

    return-object v0
.end method
