###### Class defpackage.nu (nu)
.class public Lnu;
.super Lij;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lij;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnu;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()B
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method a(Ljava/io/DataInput;)V
    .registers 5

    .line 22
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 24
    :goto_5
    invoke-static {p1}, Lij;->b(Ljava/io/DataInput;)Lij;

    move-result-object v0

    invoke-virtual {v0}, Lij;->a()B

    move-result v1

    if-eqz v1, :cond_19

    .line 25
    iget-object v1, p0, Lnu;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lij;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_19
    return-void
.end method

.method a(Ljava/io/DataOutput;)V
    .registers 4

    .line 15
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lij;

    .line 16
    invoke-static {v1, p1}, Lij;->a(Lij;Ljava/io/DataOutput;)V

    goto :goto_a

    :cond_1a
    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public a(Ljava/lang/String;B)V
    .registers 5

    .line 42
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    new-instance v1, Lqp;

    invoke-direct {v1, p2}, Lqp;-><init>(B)V

    invoke-virtual {v1, p1}, Lqp;->a(Ljava/lang/String;)Lij;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;D)V
    .registers 6

    .line 62
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    new-instance v1, Lsz;

    invoke-direct {v1, p2, p3}, Lsz;-><init>(D)V

    invoke-virtual {v1, p1}, Lsz;->a(Ljava/lang/String;)Lij;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;F)V
    .registers 5

    .line 58
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    new-instance v1, Lp;

    invoke-direct {v1, p2}, Lp;-><init>(F)V

    invoke-virtual {v1, p1}, Lp;->a(Ljava/lang/String;)Lij;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5

    .line 50
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    new-instance v1, Lpp;

    invoke-direct {v1, p2}, Lpp;-><init>(I)V

    invoke-virtual {v1, p1}, Lpp;->a(Ljava/lang/String;)Lij;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 6

    .line 54
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    new-instance v1, Lmi;

    invoke-direct {v1, p2, p3}, Lmi;-><init>(J)V

    invoke-virtual {v1, p1}, Lmi;->a(Ljava/lang/String;)Lij;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lij;)V
    .registers 4

    .line 38
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-virtual {p2, p1}, Lij;->a(Ljava/lang/String;)Lij;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 66
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    new-instance v1, Lxb;

    invoke-direct {v1, p2}, Lxb;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lxb;->a(Ljava/lang/String;)Lij;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lnu;)V
    .registers 4

    .line 74
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-virtual {p2, p1}, Lnu;->a(Ljava/lang/String;)Lij;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;S)V
    .registers 5

    .line 46
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    new-instance v1, Lul;

    invoke-direct {v1, p2}, Lul;-><init>(S)V

    invoke-virtual {v1, p1}, Lul;->a(Ljava/lang/String;)Lij;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 3

    .line 78
    invoke-virtual {p0, p1, p2}, Lnu;->a(Ljava/lang/String;B)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .registers 5

    .line 70
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    new-instance v1, Lhn;

    invoke-direct {v1, p2}, Lhn;-><init>([B)V

    invoke-virtual {v1, p1}, Lhn;->a(Ljava/lang/String;)Lij;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    .line 86
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)B
    .registers 3

    .line 90
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 91
    :cond_a
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqp;

    iget-byte p1, p1, Lqp;->a:B

    return p1
.end method

.method public c()Ljava/util/Collection;
    .registers 2

    .line 30
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)S
    .registers 3

    .line 95
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 96
    :cond_a
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lul;

    iget-short p1, p1, Lul;->a:S

    return p1
.end method

.method public e(Ljava/lang/String;)I
    .registers 3

    .line 100
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 101
    :cond_a
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpp;

    iget p1, p1, Lpp;->a:I

    return p1
.end method

.method public f(Ljava/lang/String;)J
    .registers 4

    .line 105
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    .line 106
    :cond_b
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmi;

    iget-wide v0, p1, Lmi;->a:J

    return-wide v0
.end method

.method public g(Ljava/lang/String;)F
    .registers 3

    .line 110
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 111
    :cond_a
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp;

    iget p1, p1, Lp;->a:F

    return p1
.end method

.method public h(Ljava/lang/String;)D
    .registers 4

    .line 115
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    .line 116
    :cond_b
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsz;

    iget-wide v0, p1, Lsz;->a:D

    return-wide v0
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 120
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string p1, ""

    return-object p1

    .line 121
    :cond_b
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxb;

    iget-object p1, p1, Lxb;->a:Ljava/lang/String;

    return-object p1
.end method

.method public j(Ljava/lang/String;)[B
    .registers 3

    .line 125
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    .line 126
    :cond_c
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhn;

    iget-object p1, p1, Lhn;->a:[B

    return-object p1
.end method

.method public k(Ljava/lang/String;)Lnu;
    .registers 3

    .line 130
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance p1, Lnu;

    invoke-direct {p1}, Lnu;-><init>()V

    return-object p1

    .line 131
    :cond_e
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnu;

    return-object p1
.end method

.method public l(Ljava/lang/String;)Lsp;
    .registers 3

    .line 136
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance p1, Lsp;

    invoke-direct {p1}, Lsp;-><init>()V

    return-object p1

    .line 137
    :cond_e
    iget-object v0, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsp;

    return-object p1
.end method

.method public m(Ljava/lang/String;)Z
    .registers 2

    .line 141
    invoke-virtual {p0, p1}, Lnu;->c(Ljava/lang/String;)B

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnu;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
