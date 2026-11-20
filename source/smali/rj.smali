###### Class defpackage.rj (rj)
.class public Lrj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lrj;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/io/File;II)Lqj;
    .registers 7

    const-string v0, "r."

    const-class v1, Lrj;

    monitor-enter v1

    .line 43
    :try_start_5
    new-instance v2, Ljava/io/File;

    const-string v3, "region"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    new-instance p0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 p1, p1, 0x5

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p1, p2, 0x5

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".mcr"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    sget-object p1, Lrj;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/Reference;

    if-eqz p2, :cond_42

    .line 49
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lqj;
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_65

    if-eqz p2, :cond_42

    .line 51
    monitor-exit v1

    return-object p2

    .line 55
    :cond_42
    :try_start_42
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_4b

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 59
    :cond_4b
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    const/16 v0, 0x100

    if-lt p2, v0, :cond_56

    .line 60
    invoke-static {}, Lrj;->a()V

    .line 63
    :cond_56
    new-instance p2, Lqj;

    invoke-direct {p2, p0}, Lqj;-><init>(Ljava/io/File;)V

    .line 64
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_42 .. :try_end_63} :catchall_65

    .line 65
    monitor-exit v1

    return-object p2

    :catchall_65
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized a()V
    .registers 3

    const-class v0, Lrj;

    monitor-enter v0

    .line 69
    :try_start_3
    sget-object v1, Lrj;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_31

    .line 71
    :try_start_19
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqj;

    if-eqz v2, :cond_d

    .line 73
    invoke-virtual {v2}, Lqj;->b()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_24} :catch_25
    .catchall {:try_start_19 .. :try_end_24} :catchall_31

    goto :goto_d

    :catch_25
    move-exception v2

    .line 76
    :try_start_26
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 79
    :cond_2a
    sget-object v1, Lrj;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_31

    .line 80
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/io/File;II)I
    .registers 3

    .line 83
    invoke-static {p0, p1, p2}, Lrj;->a(Ljava/io/File;II)Lqj;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lqj;->a()I

    move-result p0

    return p0
.end method

.method public static c(Ljava/io/File;II)Ljava/io/DataInputStream;
    .registers 3

    .line 88
    invoke-static {p0, p1, p2}, Lrj;->a(Ljava/io/File;II)Lqj;

    move-result-object p0

    and-int/lit8 p1, p1, 0x1f

    and-int/lit8 p2, p2, 0x1f

    .line 89
    invoke-virtual {p0, p1, p2}, Lqj;->a(II)Ljava/io/DataInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/io/File;II)Ljava/io/DataOutputStream;
    .registers 3

    .line 93
    invoke-static {p0, p1, p2}, Lrj;->a(Ljava/io/File;II)Lqj;

    move-result-object p0

    and-int/lit8 p1, p1, 0x1f

    and-int/lit8 p2, p2, 0x1f

    .line 94
    invoke-virtual {p0, p1, p2}, Lqj;->b(II)Ljava/io/DataOutputStream;

    move-result-object p0

    return-object p0
.end method
