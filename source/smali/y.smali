###### Class defpackage.y (y)
.class final Ly;
.super Ljava/util/ArrayList;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 3

    .line 78
    iput-object p1, p0, Ly;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgu;

    .line 80
    invoke-virtual {p0, v0}, Ly;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_19
    return-void
.end method
