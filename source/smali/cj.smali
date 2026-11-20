###### Class defpackage.cj (cj)
.class public Lcj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Z

.field private volatile b:Ljava/util/Map;

.field private volatile c:Ljava/util/Map;

.field private d:Lxi;

.field private e:Ljava/io/File;

.field private f:Ljava/io/File;

.field private g:Ljava/io/File;

.field private h:Ljava/io/File;

.field private i:Ljava/io/File;

.field private j:Ljava/io/File;

.field private k:Lgr;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Lgr;Lxi;Ljava/io/File;)V
    .registers 13

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcj;->a:Z

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcj;->b:Ljava/util/Map;

    .line 24
    iput-object v1, p0, Lcj;->c:Ljava/util/Map;

    .line 32
    iput v0, p0, Lcj;->l:I

    iput v0, p0, Lcj;->m:I

    .line 35
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stats_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_unsent.dat"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcj;->e:Ljava/io/File;

    .line 36
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".dat"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcj;->f:Ljava/io/File;

    .line 38
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_unsent.old"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcj;->i:Ljava/io/File;

    .line 39
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".old"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcj;->j:Ljava/io/File;

    .line 41
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_unsent.tmp"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcj;->g:Ljava/io/File;

    .line 42
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcj;->h:Ljava/io/File;

    .line 44
    iget-object v0, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_157

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcj;->e:Ljava/io/File;

    invoke-direct {p0, p3, v0, v1}, Lcj;->a(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcj;->f:Ljava/io/File;

    invoke-direct {p0, p3, v0, v1}, Lcj;->a(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcj;->i:Ljava/io/File;

    invoke-direct {p0, p3, v0, v1}, Lcj;->a(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcj;->j:Ljava/io/File;

    invoke-direct {p0, p3, v0, v1}, Lcj;->a(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcj;->g:Ljava/io/File;

    invoke-direct {p0, p3, v0, v1}, Lcj;->a(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lgr;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcj;->h:Ljava/io/File;

    invoke-direct {p0, p3, v0, v1}, Lcj;->a(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    .line 55
    :cond_157
    iput-object p2, p0, Lcj;->d:Lxi;

    .line 56
    iput-object p1, p0, Lcj;->k:Lgr;

    .line 58
    iget-object p1, p0, Lcj;->e:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_170

    .line 59
    iget-object p1, p0, Lcj;->e:Ljava/io/File;

    iget-object p3, p0, Lcj;->g:Ljava/io/File;

    iget-object v0, p0, Lcj;->i:Ljava/io/File;

    invoke-direct {p0, p1, p3, v0}, Lcj;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lxi;->a(Ljava/util/Map;)V

    .line 61
    :cond_170
    invoke-virtual {p0}, Lcj;->a()V

    return-void
.end method

.method static synthetic a(Lcj;)Ljava/util/Map;
    .registers 1

    .line 17
    iget-object p0, p0, Lcj;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lcj;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/util/Map;
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcj;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcj;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 17
    iput-object p1, p0, Lcj;->b:Ljava/util/Map;

    return-object p1
.end method

.method private a(Ljava/io/File;)Ljava/util/Map;
    .registers 5

    const/4 v0, 0x0

    .line 85
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_2f
    .catchall {:try_start_1 .. :try_end_b} :catchall_2d

    .line 87
    :try_start_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    :goto_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 92
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lxi;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_2b
    .catchall {:try_start_b .. :try_end_22} :catchall_3f

    .line 97
    :try_start_22
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2a
    return-object p1

    :catch_2b
    move-exception p1

    goto :goto_31

    :catchall_2d
    move-exception p1

    goto :goto_41

    :catch_2f
    move-exception p1

    move-object v1, v0

    .line 94
    :goto_31
    :try_start_31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3f

    if-eqz v1, :cond_3e

    .line 97
    :try_start_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    :goto_3e
    return-object v0

    :catchall_3f
    move-exception p1

    move-object v0, v1

    :goto_41
    if-eqz v0, :cond_4b

    .line 97
    :try_start_43
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    :cond_4b
    :goto_4b
    throw p1
.end method

.method private a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/util/Map;
    .registers 5

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 73
    invoke-direct {p0, p1}, Lcj;->a(Ljava/io/File;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 74
    :cond_b
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 75
    invoke-direct {p0, p3}, Lcj;->a(Ljava/io/File;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 76
    :cond_16
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 77
    invoke-direct {p0, p2}, Lcj;->a(Ljava/io/File;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcj;Ljava/util/Map;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 5

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcj;->a(Ljava/util/Map;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 67
    invoke-virtual {v0, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1a
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 8

    .line 139
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 141
    :try_start_b
    iget-object v1, p0, Lcj;->k:Lgr;

    iget-object v1, v1, Lgr;->b:Ljava/lang/String;

    const-string v2, "local"

    invoke-static {v1, v2, p1}, Lxi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_31

    .line 143
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 146
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 147
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 149
    :cond_24
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 150
    invoke-virtual {p2, p4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 152
    :cond_2d
    invoke-virtual {p3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void

    :catchall_31
    move-exception p1

    .line 143
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    throw p1
.end method

.method static synthetic a(Lcj;Z)Z
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcj;->a:Z

    return p1
.end method

.method static synthetic b(Lcj;)Ljava/io/File;
    .registers 1

    .line 17
    iget-object p0, p0, Lcj;->f:Ljava/io/File;

    return-object p0
.end method

.method static synthetic c(Lcj;)Ljava/io/File;
    .registers 1

    .line 17
    iget-object p0, p0, Lcj;->h:Ljava/io/File;

    return-object p0
.end method

.method static synthetic d(Lcj;)Ljava/io/File;
    .registers 1

    .line 17
    iget-object p0, p0, Lcj;->j:Ljava/io/File;

    return-object p0
.end method

.method static synthetic e(Lcj;)Ljava/io/File;
    .registers 1

    .line 17
    iget-object p0, p0, Lcj;->e:Ljava/io/File;

    return-object p0
.end method

.method static synthetic f(Lcj;)Ljava/io/File;
    .registers 1

    .line 17
    iget-object p0, p0, Lcj;->g:Ljava/io/File;

    return-object p0
.end method

.method static synthetic g(Lcj;)Ljava/io/File;
    .registers 1

    .line 17
    iget-object p0, p0, Lcj;->i:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 173
    iget-boolean v0, p0, Lcj;->a:Z

    if-nez v0, :cond_14

    const/16 v0, 0x64

    .line 174
    iput v0, p0, Lcj;->l:I

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcj;->a:Z

    .line 176
    new-instance v0, Lvk;

    invoke-direct {v0, p0}, Lvk;-><init>(Lcj;)V

    invoke-virtual {v0}, Lvk;->start()V

    return-void

    .line 173
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get stats from server while StatsSyncher is busy!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/util/Map;)V
    .registers 3

    .line 200
    iget-boolean v0, p0, Lcj;->a:Z

    if-nez v0, :cond_14

    const/16 v0, 0x64

    .line 201
    iput v0, p0, Lcj;->l:I

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcj;->a:Z

    .line 203
    new-instance v0, Lvj;

    invoke-direct {v0, p0, p1}, Lvj;-><init>(Lcj;Ljava/util/Map;)V

    invoke-virtual {v0}, Lvj;->start()V

    return-void

    .line 200
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t save stats while StatsSyncher is busy!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/util/Map;)V
    .registers 6

    const/16 v0, 0x1e

    .line 261
    :goto_2
    iget-boolean v1, p0, Lcj;->a:Z

    if-eqz v1, :cond_15

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_15

    const-wide/16 v1, 0x64

    .line 263
    :try_start_c
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_2

    :catch_10
    move-exception v1

    .line 265
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_15
    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcj;->a:Z

    const/4 v0, 0x0

    .line 271
    :try_start_19
    iget-object v1, p0, Lcj;->e:Ljava/io/File;

    iget-object v2, p0, Lcj;->g:Ljava/io/File;

    iget-object v3, p0, Lcj;->i:Ljava/io/File;

    invoke-direct {p0, p1, v1, v2, v3}, Lcj;->a(Ljava/util/Map;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_25
    .catchall {:try_start_19 .. :try_end_22} :catchall_23

    goto :goto_29

    :catchall_23
    move-exception p1

    goto :goto_2c

    :catch_25
    move-exception p1

    .line 273
    :try_start_26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_23

    .line 275
    :goto_29
    iput-boolean v0, p0, Lcj;->a:Z

    return-void

    :goto_2c
    iput-boolean v0, p0, Lcj;->a:Z

    throw p1
.end method

.method public b()Z
    .registers 2

    .line 280
    iget v0, p0, Lcj;->l:I

    if-gtz v0, :cond_f

    iget-boolean v0, p0, Lcj;->a:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcj;->c:Ljava/util/Map;

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x1

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 4

    .line 290
    iget v0, p0, Lcj;->l:I

    if-lez v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcj;->l:I

    .line 291
    :cond_8
    iget v0, p0, Lcj;->m:I

    if-lez v0, :cond_10

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcj;->m:I

    .line 293
    :cond_10
    iget-object v0, p0, Lcj;->c:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 294
    iget-object v0, p0, Lcj;->d:Lxi;

    iget-object v2, p0, Lcj;->c:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lxi;->c(Ljava/util/Map;)V

    .line 295
    iput-object v1, p0, Lcj;->c:Ljava/util/Map;

    .line 298
    :cond_1e
    iget-object v0, p0, Lcj;->b:Ljava/util/Map;

    if-eqz v0, :cond_2b

    .line 299
    iget-object v0, p0, Lcj;->d:Lxi;

    iget-object v2, p0, Lcj;->b:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lxi;->b(Ljava/util/Map;)V

    .line 300
    iput-object v1, p0, Lcj;->b:Ljava/util/Map;

    :cond_2b
    return-void
.end method
