###### Class defpackage.lt (lt)
.class final Llt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwg;


# instance fields
.field private final a:Ljava/util/Stack;

.field private b:Llb;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Llt;->a:Ljava/util/Stack;

    return-void
.end method

.method private a(Llb;)V
    .registers 3

    .line 106
    iget-object v0, p0, Llt;->b:Llb;

    if-nez v0, :cond_7

    .line 107
    iput-object p1, p0, Llt;->b:Llb;

    goto :goto_a

    .line 109
    :cond_7
    invoke-direct {p0, p1}, Llt;->b(Llb;)V

    :goto_a
    return-void
.end method

.method private b(Llb;)V
    .registers 3

    .line 114
    iget-object v0, p0, Llt;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpu;

    invoke-interface {v0, p1}, Lpu;->a(Llb;)V

    return-void
.end method


# virtual methods
.method a()Lqe;
    .registers 2

    .line 27
    iget-object v0, p0, Llt;->b:Llb;

    invoke-interface {v0}, Llb;->b()Lgu;

    move-result-object v0

    check-cast v0, Lqe;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 69
    invoke-static {}, Lpn;->a()Lpn;

    move-result-object v0

    invoke-static {p1}, Lte;->b(Ljava/lang/String;)Lf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lpn;->a(Llb;)Lpn;

    move-result-object p1

    .line 70
    iget-object v0, p0, Llt;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpu;

    invoke-interface {v0, p1}, Lpu;->a(Lpn;)V

    .line 71
    iget-object v0, p0, Llt;->a:Ljava/util/Stack;

    new-instance v1, Lnc;

    invoke-direct {v1, p0, p1}, Lnc;-><init>(Llt;Lpn;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 86
    invoke-static {p1}, Lte;->a(Ljava/lang/String;)Llb;

    move-result-object p1

    invoke-direct {p0, p1}, Llt;->b(Llb;)V

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 94
    invoke-static {p1}, Lte;->b(Ljava/lang/String;)Lf;

    move-result-object p1

    invoke-direct {p0, p1}, Llt;->b(Llb;)V

    return-void
.end method

.method public d()V
    .registers 4

    .line 35
    invoke-static {}, Lte;->e()Led;

    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Llt;->a(Llb;)V

    .line 37
    iget-object v1, p0, Llt;->a:Ljava/util/Stack;

    new-instance v2, Lna;

    invoke-direct {v2, p0, v0}, Lna;-><init>(Llt;Led;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e()V
    .registers 2

    .line 48
    iget-object v0, p0, Llt;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public f()V
    .registers 4

    .line 52
    invoke-static {}, Lte;->d()Lsx;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Llt;->a(Llb;)V

    .line 54
    iget-object v1, p0, Llt;->a:Ljava/util/Stack;

    new-instance v2, Lmy;

    invoke-direct {v2, p0, v0}, Lmy;-><init>(Llt;Lsx;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g()V
    .registers 2

    .line 65
    iget-object v0, p0, Llt;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public h()V
    .registers 2

    .line 82
    iget-object v0, p0, Llt;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public i()V
    .registers 2

    .line 90
    invoke-static {}, Lte;->b()Llb;

    move-result-object v0

    invoke-direct {p0, v0}, Llt;->b(Llb;)V

    return-void
.end method

.method public j()V
    .registers 2

    .line 98
    invoke-static {}, Lte;->c()Llb;

    move-result-object v0

    invoke-direct {p0, v0}, Llt;->b(Llb;)V

    return-void
.end method

.method public k()V
    .registers 2

    .line 102
    invoke-static {}, Lte;->a()Llb;

    move-result-object v0

    invoke-direct {p0, v0}, Llt;->b(Llb;)V

    return-void
.end method
