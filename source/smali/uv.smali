###### Class defpackage.uv (uv)
.class public Luv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcl;


# instance fields
.field private a:Llm;

.field private b:Ljava/util/Map;

.field private c:Ljava/util/List;

.field private d:Lfd;


# direct methods
.method public constructor <init>(Lfd;)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luv;->b:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luv;->c:Ljava/util/List;

    .line 46
    new-instance v0, Lli;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lli;-><init>(Lfd;[BII)V

    iput-object v0, p0, Luv;->a:Llm;

    .line 48
    iput-object p1, p0, Luv;->d:Lfd;

    return-void
.end method


# virtual methods
.method public a(Lcl;II)V
    .registers 4

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a(II)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public a(ZLyb;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public b(II)Llm;
    .registers 4

    .line 82
    new-instance v0, Lyy;

    invoke-direct {v0, p1, p2}, Lyy;-><init>(II)V

    .line 84
    iget-object p1, p0, Luv;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llm;

    if-nez p1, :cond_11

    .line 86
    iget-object p1, p0, Luv;->a:Llm;

    :cond_11
    return-object p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiplayerChunkCache: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Luv;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(II)Llm;
    .registers 7

    .line 68
    new-instance v0, Lyy;

    invoke-direct {v0, p1, p2}, Lyy;-><init>(II)V

    const v1, 0x8000

    new-array v1, v1, [B

    .line 72
    new-instance v2, Llm;

    iget-object v3, p0, Luv;->d:Lfd;

    invoke-direct {v2, v3, v1, p1, p2}, Llm;-><init>(Lfd;[BII)V

    .line 73
    iget-object p1, v2, Llm;->f:Lwi;

    iget-object p1, p1, Lwi;->a:[B

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([BB)V

    .line 74
    iget-object p1, p0, Luv;->b:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, v2, Llm;->c:Z

    return-object v2
.end method

.method public d(II)V
    .registers 6

    .line 58
    invoke-virtual {p0, p1, p2}, Luv;->b(II)Llm;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Llm;->h()Z

    move-result v1

    if-nez v1, :cond_d

    .line 60
    invoke-virtual {v0}, Llm;->f()V

    .line 63
    :cond_d
    iget-object v1, p0, Luv;->b:Ljava/util/Map;

    new-instance v2, Lyy;

    invoke-direct {v2, p1, p2}, Lyy;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Luv;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
