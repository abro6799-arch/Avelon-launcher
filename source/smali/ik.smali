###### Class defpackage.ik (ik)
.class public Lik;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Li;

.field private b:Ljava/util/List;

.field private c:Li;

.field private d:Ljava/util/Map;

.field private e:Lnet/minecraft/client/Minecraft;

.field private f:Ljava/io/File;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/minecraft/client/Minecraft;Ljava/io/File;)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lik;->b:Ljava/util/List;

    .line 10
    new-instance v0, Lpa;

    invoke-direct {v0}, Lpa;-><init>()V

    iput-object v0, p0, Lik;->c:Li;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lik;->d:Ljava/util/Map;

    .line 20
    iput-object p1, p0, Lik;->e:Lnet/minecraft/client/Minecraft;

    .line 21
    new-instance v0, Ljava/io/File;

    const-string v1, "texturepacks"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lik;->f:Ljava/io/File;

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2e

    iget-object p2, p0, Lik;->f:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 23
    :cond_2e
    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object p1, p1, Lkv;->l:Ljava/lang/String;

    iput-object p1, p0, Lik;->g:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lik;->a()V

    .line 25
    iget-object p1, p0, Lik;->a:Li;

    invoke-virtual {p1}, Li;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 10

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lik;->a:Li;

    .line 44
    iget-object v1, p0, Lik;->c:Li;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v1, p0, Lik;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lik;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 46
    iget-object v1, p0, Lik;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 47
    array-length v2, v1

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_9d

    aget-object v4, v1, v3

    .line 48
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    :try_start_65
    iget-object v6, p0, Lik;->d:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 53
    new-instance v6, Lvp;

    invoke-direct {v6, v4}, Lvp;-><init>(Ljava/io/File;)V

    .line 54
    iput-object v5, v6, Li;->d:Ljava/lang/String;

    .line 55
    iget-object v4, p0, Lik;->d:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v4, p0, Lik;->e:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v6, v4}, Li;->a(Lnet/minecraft/client/Minecraft;)V

    .line 58
    :cond_7e
    iget-object v4, p0, Lik;->d:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li;

    .line 59
    iget-object v5, v4, Li;->a:Ljava/lang/String;

    iget-object v6, p0, Lik;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 60
    iput-object v4, p0, Lik;->a:Li;

    .line 62
    :cond_92
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_95} :catch_96

    goto :goto_9a

    :catch_96
    move-exception v4

    .line 64
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_9a
    :goto_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 70
    :cond_9d
    iget-object v1, p0, Lik;->a:Li;

    if-nez v1, :cond_a5

    iget-object v1, p0, Lik;->c:Li;

    iput-object v1, p0, Lik;->a:Li;

    .line 72
    :cond_a5
    iget-object v1, p0, Lik;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 73
    iget-object v1, p0, Lik;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li;

    .line 74
    iget-object v3, p0, Lik;->e:Lnet/minecraft/client/Minecraft;

    invoke-virtual {v2, v3}, Li;->b(Lnet/minecraft/client/Minecraft;)V

    .line 75
    iget-object v3, p0, Lik;->d:Ljava/util/Map;

    iget-object v2, v2, Li;->d:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    .line 78
    :cond_c9
    iput-object v0, p0, Lik;->b:Ljava/util/List;

    return-void
.end method

.method public a(Li;)Z
    .registers 3

    .line 29
    iget-object v0, p0, Lik;->a:Li;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_6
    invoke-virtual {v0}, Li;->b()V

    .line 32
    iget-object v0, p1, Li;->a:Ljava/lang/String;

    iput-object v0, p0, Lik;->g:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lik;->a:Li;

    .line 34
    iget-object p1, p0, Lik;->e:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    iget-object v0, p0, Lik;->g:Ljava/lang/String;

    iput-object v0, p1, Lkv;->l:Ljava/lang/String;

    .line 35
    iget-object p1, p0, Lik;->e:Lnet/minecraft/client/Minecraft;

    iget-object p1, p1, Lnet/minecraft/client/Minecraft;->z:Lkv;

    invoke-virtual {p1}, Lkv;->b()V

    .line 36
    iget-object p1, p0, Lik;->a:Li;

    invoke-virtual {p1}, Li;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public b()Ljava/util/List;
    .registers 3

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lik;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
