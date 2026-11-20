###### Class defpackage.tt (tt)
.class public Ltt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldt;


# instance fields
.field private final a:Liz;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Liz;Ljava/util/List;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Ltt;->a:Liz;

    .line 15
    iput-object p2, p0, Ltt;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 54
    iget-object v0, p0, Ltt;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Lmq;)Z
    .registers 12

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltt;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    const/4 v3, 0x3

    if-ge v2, v3, :cond_4b

    move v4, v1

    :goto_d
    if-ge v4, v3, :cond_48

    .line 28
    invoke-virtual {p1, v4, v2}, Lmq;->b(II)Liz;

    move-result-object v5

    if-eqz v5, :cond_45

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Liz;

    .line 33
    iget v8, v5, Liz;->c:I

    iget v9, v7, Liz;->c:I

    if-ne v8, v9, :cond_19

    invoke-virtual {v7}, Liz;->i()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3c

    invoke-virtual {v5}, Liz;->i()I

    move-result v8

    invoke-virtual {v7}, Liz;->i()I

    move-result v9

    if-ne v8, v9, :cond_19

    .line 35
    :cond_3c
    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_42

    :cond_41
    move v5, v1

    :goto_42
    if-nez v5, :cond_45

    return v1

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 46
    :cond_4b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public b()Liz;
    .registers 2

    .line 19
    iget-object v0, p0, Ltt;->a:Liz;

    return-object v0
.end method

.method public b(Lmq;)Liz;
    .registers 2

    .line 50
    iget-object p1, p0, Ltt;->a:Liz;

    invoke-virtual {p1}, Liz;->k()Liz;

    move-result-object p1

    return-object p1
.end method
