###### Class defpackage.ao (ao)
.class public final Lao;
.super Lad;
.source "SourceFile"


# static fields
.field private static final a:Lml;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lel;

    invoke-direct {v0}, Lel;-><init>()V

    sput-object v0, Lao;->a:Lml;

    return-void
.end method

.method private constructor <init>(Lmz;[Ljava/lang/Object;Lqe;)V
    .registers 4

    .line 27
    invoke-static {p1, p2, p3}, Lao;->b(Lmz;[Ljava/lang/Object;Lqe;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lad;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static a(Lmz;[Ljava/lang/Object;Lqe;)Lao;
    .registers 4

    .line 23
    new-instance v0, Lao;

    invoke-direct {v0, p0, p1, p2}, Lao;-><init>(Lmz;[Ljava/lang/Object;Lqe;)V

    return-object v0
.end method

.method private static a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v1, :cond_2b

    aget-object v5, p0, v4

    if-nez v2, :cond_14

    const-string v2, "."

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_14
    instance-of v2, v5, Ljava/lang/String;

    if-eqz v2, :cond_24

    const-string v2, "\""

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 45
    :cond_24
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_27
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    goto :goto_9

    .line 48
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lmz;[Ljava/lang/Object;Lqe;)Ljava/lang/String;
    .registers 5

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to find "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmz;->a:Lyp;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmz;->b:Ljava/util/List;

    invoke-static {p0}, Lmz;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] while resolving ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lao;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lao;->a:Lml;

    invoke-interface {p0, p2}, Lml;->a(Lqe;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
