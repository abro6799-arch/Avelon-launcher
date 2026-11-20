###### Class defpackage.qg (qg)
.class final Lqg;
.super Lba;
.source "SourceFile"


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 323
    iput p1, p0, Lqg;->a:I

    invoke-direct {p0}, Lba;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 329
    iget v0, p0, Lqg;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 2

    .line 323
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lqg;->a(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/util/List;)Z
    .registers 3

    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lqg;->a:I

    if-le p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public b(Ljava/util/List;)Lgu;
    .registers 3

    .line 333
    iget v0, p0, Lqg;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgu;

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 323
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lqg;->b(Ljava/util/List;)Lgu;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "an element at index ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lqg;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
