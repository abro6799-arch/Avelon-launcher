###### Class defpackage.mz (mz)
.class public final Lmz;
.super Lad;
.source "SourceFile"


# instance fields
.field final a:Lyp;

.field final b:Ljava/util/List;


# direct methods
.method private constructor <init>(Lyp;Ljava/util/List;)V
    .registers 5

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to match any JSON node at ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lmz;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lad;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lmz;->a:Lyp;

    .line 48
    iput-object p2, p0, Lmz;->b:Ljava/util/List;

    return-void
.end method

.method static a(Lmz;Ljt;)Lad;
    .registers 4

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lmz;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance p1, Lmz;

    iget-object p0, p0, Lmz;->a:Lyp;

    invoke-direct {p1, p0, v0}, Lmz;-><init>(Lyp;Ljava/util/List;)V

    return-object p1
.end method

.method static a(Lyp;)Lad;
    .registers 3

    .line 21
    new-instance v0, Lmz;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v0, p0, v1}, Lmz;-><init>(Lyp;Ljava/util/List;)V

    return-object v0
.end method

.method static a(Ljava/util/List;)Ljava/lang/String;
    .registers 4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_24

    .line 55
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljt;

    invoke-virtual {v2}, Ljt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_21

    const-string v2, "."

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 60
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Lmz;Ljt;)Lad;
    .registers 3

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 36
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance p1, Lmz;

    iget-object p0, p0, Lmz;->a:Lyp;

    invoke-direct {p1, p0, v0}, Lmz;-><init>(Lyp;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonNodeDoesNotMatchJsonNodeSelectorException{failedNode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmz;->a:Lyp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", failPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmz;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
