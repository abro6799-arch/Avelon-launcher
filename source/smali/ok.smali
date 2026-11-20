###### Class defpackage.ok (ok)
.class public Lok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcl;


# instance fields
.field private a:Ljava/util/Set;

.field private b:Llm;

.field private c:Lcl;

.field private d:Lbf;

.field private e:Ljava/util/Map;

.field private f:Ljava/util/List;

.field private g:Lfd;


# direct methods
.method public constructor <init>(Lfd;Lbf;Lcl;)V
    .registers 7

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lok;->a:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lok;->e:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lok;->f:Ljava/util/List;

    .line 29
    new-instance v0, Lli;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lli;-><init>(Lfd;[BII)V

    iput-object v0, p0, Lok;->b:Llm;

    .line 31
    iput-object p1, p0, Lok;->g:Lfd;

    .line 32
    iput-object p2, p0, Lok;->d:Lbf;

    .line 33
    iput-object p3, p0, Lok;->c:Lcl;

    return-void
.end method

.method private a(Llm;)V
    .registers 4

    .line 115
    iget-object v0, p0, Lok;->d:Lbf;

    if-nez v0, :cond_5

    return-void

    .line 117
    :cond_5
    :try_start_5
    iget-object v1, p0, Lok;->g:Lfd;

    invoke-interface {v0, v1, p1}, Lbf;->b(Lfd;Llm;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-void
.end method

.method private b(Llm;)V
    .registers 4

    .line 124
    iget-object v0, p0, Lok;->d:Lbf;

    if-nez v0, :cond_5

    return-void

    .line 126
    :cond_5
    :try_start_5
    iget-object v0, p0, Lok;->g:Lfd;

    invoke-virtual {v0}, Lfd;->t()J

    move-result-wide v0

    iput-wide v0, p1, Llm;->r:J

    .line 127
    iget-object v0, p0, Lok;->d:Lbf;

    iget-object v1, p0, Lok;->g:Lfd;

    invoke-interface {v0, v1, p1}, Lbf;->a(Lfd;Llm;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_19
    return-void
.end method

.method private d(II)Llm;
    .registers 7

    .line 101
    iget-object v0, p0, Lok;->d:Lbf;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 103
    :cond_6
    :try_start_6
    iget-object v2, p0, Lok;->g:Lfd;

    invoke-interface {v0, v2, p1, p2}, Lbf;->a(Lfd;II)Llm;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 105
    iget-object p2, p0, Lok;->g:Lfd;

    invoke-virtual {p2}, Lfd;->t()J

    move-result-wide v2

    iput-wide v2, p1, Llm;->r:J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    :cond_16
    return-object p1

    :catch_17
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public a(Lcl;II)V
    .registers 6

    .line 134
    invoke-virtual {p0, p2, p3}, Lok;->b(II)Llm;

    move-result-object v0

    .line 135
    iget-boolean v1, v0, Llm;->n:Z

    if-nez v1, :cond_15

    const/4 v1, 0x1

    .line 136
    iput-boolean v1, v0, Llm;->n:Z

    .line 137
    iget-object v1, p0, Lok;->c:Lcl;

    if-eqz v1, :cond_15

    .line 138
    invoke-interface {v1, p1, p2, p3}, Lcl;->a(Lcl;II)V

    .line 139
    invoke-virtual {v0}, Llm;->g()V

    :cond_15
    return-void
.end method

.method public a()Z
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x64

    if-ge v0, v1, :cond_3c

    .line 167
    iget-object v1, p0, Lok;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    .line 168
    iget-object v1, p0, Lok;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 170
    iget-object v2, p0, Lok;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llm;

    .line 171
    invoke-virtual {v2}, Llm;->f()V

    .line 172
    invoke-direct {p0, v2}, Lok;->b(Llm;)V

    .line 173
    invoke-direct {p0, v2}, Lok;->a(Llm;)V

    .line 174
    iget-object v3, p0, Lok;->a:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 176
    iget-object v3, p0, Lok;->e:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lok;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_3c
    iget-object v0, p0, Lok;->d:Lbf;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lbf;->a()V

    .line 183
    :cond_43
    iget-object v0, p0, Lok;->c:Lcl;

    invoke-interface {v0}, Lcl;->a()Z

    move-result v0

    return v0
.end method

.method public a(II)Z
    .registers 4

    .line 37
    iget-object v0, p0, Lok;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Lyy;->a(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a(ZLyb;)Z
    .registers 7

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    .line 148
    :goto_3
    iget-object v2, p0, Lok;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 149
    iget-object v2, p0, Lok;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llm;

    if-eqz p1, :cond_1c

    .line 150
    iget-boolean v3, v2, Llm;->p:Z

    if-nez v3, :cond_1c

    invoke-direct {p0, v2}, Lok;->a(Llm;)V

    .line 151
    :cond_1c
    invoke-virtual {v2, p1}, Llm;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 152
    invoke-direct {p0, v2}, Lok;->b(Llm;)V

    .line 153
    iput-boolean p2, v2, Llm;->o:Z

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_30

    if-nez p1, :cond_30

    return p2

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_33
    const/4 p2, 0x1

    if-eqz p1, :cond_3e

    .line 159
    iget-object p1, p0, Lok;->d:Lbf;

    if-nez p1, :cond_3b

    return p2

    .line 160
    :cond_3b
    invoke-interface {p1}, Lbf;->b()V

    :cond_3e
    return p2
.end method

.method public b(II)Llm;
    .registers 5

    .line 88
    iget-object v0, p0, Lok;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Lyy;->a(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llm;

    if-nez v0, :cond_17

    .line 92
    invoke-virtual {p0, p1, p2}, Lok;->c(II)Llm;

    move-result-object p1

    return-object p1

    :cond_17
    return-object v0
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerChunkCache: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lok;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Drop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lok;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(II)Llm;
    .registers 8

    .line 51
    invoke-static {p1, p2}, Lyy;->a(II)I

    move-result v0

    .line 52
    iget-object v1, p0, Lok;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-object v1, p0, Lok;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llm;

    if-nez v1, :cond_d0

    .line 56
    invoke-direct {p0, p1, p2}, Lok;->d(II)Llm;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 58
    iget-object v1, p0, Lok;->c:Lcl;

    if-nez v1, :cond_28

    .line 59
    iget-object v1, p0, Lok;->b:Llm;

    goto :goto_2c

    .line 61
    :cond_28
    invoke-interface {v1, p1, p2}, Lcl;->b(II)Llm;

    move-result-object v1

    .line 66
    :cond_2c
    :goto_2c
    iget-object v2, p0, Lok;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lok;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_42

    .line 70
    invoke-virtual {v1}, Llm;->d()V

    .line 71
    invoke-virtual {v1}, Llm;->e()V

    .line 74
    :cond_42
    iget-boolean v0, v1, Llm;->n:Z

    if-nez v0, :cond_5f

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v0, v2}, Lok;->a(II)Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-virtual {p0, p1, v2}, Lok;->a(II)Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-virtual {p0, v0, p2}, Lok;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0, p0, p1, p2}, Lok;->a(Lcl;II)V

    :cond_5f
    add-int/lit8 v0, p1, -0x1

    .line 75
    invoke-virtual {p0, v0, p2}, Lok;->a(II)Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-virtual {p0, v0, p2}, Lok;->b(II)Llm;

    move-result-object v2

    iget-boolean v2, v2, Llm;->n:Z

    if-nez v2, :cond_86

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v0, v2}, Lok;->a(II)Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-virtual {p0, p1, v2}, Lok;->a(II)Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-virtual {p0, v0, p2}, Lok;->a(II)Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-virtual {p0, p0, v0, p2}, Lok;->a(Lcl;II)V

    :cond_86
    add-int/lit8 v2, p2, -0x1

    .line 76
    invoke-virtual {p0, p1, v2}, Lok;->a(II)Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-virtual {p0, p1, v2}, Lok;->b(II)Llm;

    move-result-object v3

    iget-boolean v3, v3, Llm;->n:Z

    if-nez v3, :cond_ad

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3, v2}, Lok;->a(II)Z

    move-result v4

    if-eqz v4, :cond_ad

    invoke-virtual {p0, p1, v2}, Lok;->a(II)Z

    move-result v4

    if-eqz v4, :cond_ad

    invoke-virtual {p0, v3, p2}, Lok;->a(II)Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-virtual {p0, p0, p1, v2}, Lok;->a(Lcl;II)V

    .line 77
    :cond_ad
    invoke-virtual {p0, v0, v2}, Lok;->a(II)Z

    move-result v3

    if-eqz v3, :cond_d0

    invoke-virtual {p0, v0, v2}, Lok;->b(II)Llm;

    move-result-object v3

    iget-boolean v3, v3, Llm;->n:Z

    if-nez v3, :cond_d0

    invoke-virtual {p0, v0, v2}, Lok;->a(II)Z

    move-result v3

    if-eqz v3, :cond_d0

    invoke-virtual {p0, p1, v2}, Lok;->a(II)Z

    move-result p1

    if-eqz p1, :cond_d0

    invoke-virtual {p0, v0, p2}, Lok;->a(II)Z

    move-result p1

    if-eqz p1, :cond_d0

    invoke-virtual {p0, p0, v0, v2}, Lok;->a(Lcl;II)V

    :cond_d0
    return-object v1
.end method
