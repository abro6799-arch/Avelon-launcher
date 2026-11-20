###### Class defpackage.ed (ed)
.class public final Led;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Led;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Llb;)Led;
    .registers 3

    .line 34
    iget-object v0, p0, Led;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lqe;
    .registers 4

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 41
    iget-object v1, p0, Led;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llb;

    .line 42
    invoke-interface {v2}, Llb;->b()Lgu;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 44
    :cond_1f
    invoke-static {v0}, Lol;->a(Ljava/lang/Iterable;)Lqe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Lgu;
    .registers 2

    .line 19
    invoke-virtual {p0}, Led;->a()Lqe;

    move-result-object v0

    return-object v0
.end method
