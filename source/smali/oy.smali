###### Class defpackage.oy (oy)
.class Loy;
.super Ljava/util/HashMap;
.source "SourceFile"


# instance fields
.field final synthetic a:Lsx;


# direct methods
.method constructor <init>(Lsx;)V
    .registers 4

    .line 64
    iput-object p1, p0, Loy;->a:Lsx;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 65
    invoke-static {p1}, Lsx;->a(Lsx;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpn;

    .line 66
    invoke-virtual {v0}, Lpn;->b()Lqa;

    move-result-object v1

    invoke-virtual {v0}, Lpn;->c()Lgu;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Loy;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_25
    return-void
.end method
