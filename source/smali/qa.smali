###### Class defpackage.qa (qa)
.class public final Lqa;
.super Lgu;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Lgu;-><init>()V

    if-eqz p1, :cond_8

    .line 27
    iput-object p1, p0, Lqa;->a:Ljava/lang/String;

    return-void

    .line 25
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Attempt to construct a JsonString with a null value."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lqa;)I
    .registers 3

    .line 82
    iget-object v0, p0, Lqa;->a:Ljava/lang/String;

    iget-object p1, p1, Lqa;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()Lat;
    .registers 2

    .line 31
    sget-object v0, Lat;->c:Lat;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lqa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to get fields on a JsonNode without fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 19
    check-cast p1, Lqa;

    invoke-virtual {p0, p1}, Lqa;->a(Lqa;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/util/List;
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to get elements on a JsonNode without elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 63
    :cond_11
    check-cast p1, Lqa;

    .line 64
    iget-object v0, p0, Lqa;->a:Ljava/lang/String;

    iget-object p1, p1, Lqa;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 69
    iget-object v0, p0, Lqa;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonStringNode value:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lqa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
