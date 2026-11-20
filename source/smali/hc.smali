###### Class defpackage.hc (hc)
.class public Lhc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lwt;

.field private b:Ljava/util/Map;

.field private c:Ljava/util/List;

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lwt;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhc;->b:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhc;->c:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhc;->d:Ljava/util/Map;

    .line 28
    iput-object p1, p0, Lhc;->a:Lwt;

    .line 29
    invoke-direct {p0}, Lhc;->b()V

    return-void
.end method

.method private a(Lhm;)V
    .registers 5

    .line 84
    iget-object v0, p0, Lhc;->a:Lwt;

    if-nez v0, :cond_5

    return-void

    .line 86
    :cond_5
    :try_start_5
    iget-object v1, p1, Lhm;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lwt;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 88
    new-instance v1, Lnu;

    invoke-direct {v1}, Lnu;-><init>()V

    .line 89
    invoke-virtual {p1, v1}, Lhm;->b(Lnu;)V

    .line 91
    new-instance p1, Lnu;

    invoke-direct {p1}, Lnu;-><init>()V

    const-string v2, "data"

    .line 92
    invoke-virtual {p1, v2, v1}, Lnu;->a(Ljava/lang/String;Lnu;)V

    .line 94
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 95
    invoke-static {p1, v1}, Las;->a(Lnu;Ljava/io/OutputStream;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method private b()V
    .registers 5

    .line 105
    :try_start_0
    iget-object v0, p0, Lhc;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 106
    iget-object v0, p0, Lhc;->a:Lwt;

    if-nez v0, :cond_a

    return-void

    :cond_a
    const-string v1, "idcounts"

    .line 107
    invoke-interface {v0, v1}, Lwt;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 109
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 110
    invoke-static {v1}, Las;->a(Ljava/io/DataInput;)Lnu;

    move-result-object v0

    .line 111
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 113
    invoke-virtual {v0}, Lnu;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lij;

    .line 114
    instance-of v2, v1, Lul;

    if-eqz v2, :cond_31

    .line 115
    check-cast v1, Lul;

    .line 116
    invoke-virtual {v1}, Lul;->b()Ljava/lang/String;

    move-result-object v2

    .line 117
    iget-short v1, v1, Lul;->a:S

    .line 118
    iget-object v3, p0, Lhc;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_31

    :catch_53
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_57
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 7

    .line 128
    iget-object v0, p0, Lhc;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    .line 130
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_1b

    .line 132
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 135
    :goto_1b
    iget-object v1, p0, Lhc;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Lhc;->a:Lwt;

    if-nez p1, :cond_29

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1

    :cond_29
    :try_start_29
    const-string v1, "idcounts"

    .line 138
    invoke-interface {p1, v1}, Lwt;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_71

    .line 140
    new-instance v1, Lnu;

    invoke-direct {v1}, Lnu;-><init>()V

    .line 142
    iget-object v2, p0, Lhc;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    iget-object v4, p0, Lhc;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    .line 144
    invoke-virtual {v1, v3, v4}, Lnu;->a(Ljava/lang/String;S)V

    goto :goto_40

    .line 147
    :cond_5c
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 148
    invoke-static {v1, v2}, Las;->a(Lnu;Ljava/io/DataOutput;)V

    .line 149
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :cond_71
    :goto_71
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)Lhm;
    .registers 9

    const-string v0, "Failed to instantiate "

    .line 33
    iget-object v1, p0, Lhc;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhm;

    if-eqz v1, :cond_d

    return-object v1

    .line 36
    :cond_d
    iget-object v2, p0, Lhc;->a:Lwt;

    if-eqz v2, :cond_68

    .line 38
    :try_start_11
    invoke-interface {v2, p2}, Lwt;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_64

    if-eqz v3, :cond_68

    const/4 v3, 0x1

    :try_start_1e
    new-array v3, v3, [Ljava/lang/Class;

    .line 41
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhm;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_33} :catch_4d

    .line 46
    :try_start_33
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 47
    invoke-static {p1}, Las;->a(Ljava/io/InputStream;)Lnu;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    const-string p1, "data"

    .line 50
    invoke-virtual {v0, p1}, Lnu;->k(Ljava/lang/String;)Lnu;

    move-result-object p1

    invoke-virtual {v3, p1}, Lhm;->a(Lnu;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_48} :catch_4a

    move-object v1, v3

    goto :goto_68

    :catch_4a
    move-exception p1

    move-object v1, v3

    goto :goto_65

    :catch_4d
    move-exception v2

    .line 43
    :try_start_4e
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_64} :catch_64

    :catch_64
    move-exception p1

    .line 53
    :goto_65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_68
    :goto_68
    if-eqz v1, :cond_74

    .line 58
    iget-object p1, p0, Lhc;->b:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lhc;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_74
    return-object v1
.end method

.method public a()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 74
    :goto_2
    iget-object v2, p0, Lhc;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 75
    iget-object v2, p0, Lhc;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhm;

    .line 76
    invoke-virtual {v2}, Lhm;->b()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 77
    invoke-direct {p0, v2}, Lhc;->a(Lhm;)V

    .line 78
    invoke-virtual {v2, v0}, Lhm;->a(Z)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    return-void
.end method

.method public a(Ljava/lang/String;Lhm;)V
    .registers 5

    if-eqz p2, :cond_20

    .line 66
    iget-object v0, p0, Lhc;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 67
    iget-object v0, p0, Lhc;->c:Ljava/util/List;

    iget-object v1, p0, Lhc;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 69
    :cond_15
    iget-object v0, p0, Lhc;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lhc;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 65
    :cond_20
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t set null data"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
