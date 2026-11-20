###### Class defpackage.qi (qi)
.class final Lqi;
.super Lba;
.source "SourceFile"


# instance fields
.field final synthetic a:Lqa;


# direct methods
.method constructor <init>(Lqa;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lqi;->a:Lqa;

    invoke-direct {p0}, Lba;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lqi;->a:Lqa;

    invoke-virtual {v2}, Lqa;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 2

    .line 294
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lqi;->a(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/util/Map;)Z
    .registers 3

    .line 296
    iget-object v0, p0, Lqi;->a:Lqa;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/util/Map;)Lgu;
    .registers 3

    .line 304
    iget-object v0, p0, Lqi;->a:Lqa;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgu;

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 294
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lqi;->b(Ljava/util/Map;)Lgu;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a field called [\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lqi;->a:Lqa;

    invoke-virtual {v1}, Lqa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
