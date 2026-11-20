###### Class defpackage.oe (oe)
.class final Loe;
.super Lqe;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lqe;-><init>()V

    .line 22
    invoke-static {p1}, Loe;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Loe;->a:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 2

    .line 78
    new-instance v0, Ly;

    invoke-direct {v0, p0}, Ly;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public a()Lat;
    .registers 2

    .line 26
    sget-object v0, Lat;->b:Lat;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to get text on a JsonNode without text."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Ljava/util/Map;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to get fields on a JsonNode without fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ljava/util/List;
    .registers 3

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Loe;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 58
    :cond_11
    check-cast p1, Loe;

    .line 59
    iget-object v0, p0, Loe;->a:Ljava/util/List;

    iget-object p1, p1, Loe;->a:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 64
    iget-object v0, p0, Loe;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonArray elements:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Loe;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
