###### Class defpackage.ka (ka)
.class public final Lka;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljt;
    .registers 3

    .line 323
    new-instance v0, Ljt;

    new-instance v1, Lqg;

    invoke-direct {v1, p0}, Lqg;-><init>(I)V

    invoke-direct {v0, v1}, Ljt;-><init>(Lyp;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljt;
    .registers 1

    .line 290
    invoke-static {p0}, Lol;->a(Ljava/lang/String;)Lqa;

    move-result-object p0

    invoke-static {p0}, Lka;->a(Lqa;)Ljt;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljt;Ljt;)Ljt;
    .registers 4

    .line 364
    new-instance v0, Ljt;

    new-instance v1, Lj;

    invoke-direct {v1, p0, p1}, Lj;-><init>(Ljt;Ljt;)V

    invoke-direct {v0, v1}, Ljt;-><init>(Lyp;)V

    return-object v0
.end method

.method public static a(Lqa;)Ljt;
    .registers 3

    .line 294
    new-instance v0, Ljt;

    new-instance v1, Lqi;

    invoke-direct {v1, p0}, Lqi;-><init>(Lqa;)V

    invoke-direct {v0, v1}, Ljt;-><init>(Lyp;)V

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljt;
    .registers 3

    .line 38
    new-instance v0, Ljt;

    new-instance v1, Lkk;

    invoke-direct {v1}, Lkk;-><init>()V

    invoke-direct {v0, v1}, Ljt;-><init>(Lyp;)V

    invoke-static {p0, v0}, Lka;->a([Ljava/lang/Object;Ljt;)Ljt;

    move-result-object p0

    return-object p0
.end method

.method private static a([Ljava/lang/Object;Ljt;)Ljt;
    .registers 5

    .line 349
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_64

    .line 350
    aget-object v1, p0, v0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1a

    .line 351
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lka;->b(I)Ljt;

    move-result-object v1

    invoke-static {v1, p1}, Lka;->a(Ljt;Ljt;)Ljt;

    move-result-object p1

    goto :goto_28

    .line 352
    :cond_1a
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 353
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lka;->b(Ljava/lang/String;)Ljt;

    move-result-object v1

    invoke-static {v1, p1}, Lka;->a(Ljt;Ljt;)Ljt;

    move-result-object p1

    :goto_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 355
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Element ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] of path elements ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] was of illegal type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]; only Integer and String are valid."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_64
    return-object p1
.end method

.method public static b(I)Ljt;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 344
    invoke-static {v0}, Lka;->b([Ljava/lang/Object;)Ljt;

    move-result-object v0

    invoke-static {p0}, Lka;->a(I)Ljt;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljt;->a(Ljt;)Ljt;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljt;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 319
    invoke-static {v0}, Lka;->c([Ljava/lang/Object;)Ljt;

    move-result-object v0

    invoke-static {p0}, Lka;->a(Ljava/lang/String;)Ljt;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljt;->a(Ljt;)Ljt;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b([Ljava/lang/Object;)Ljt;
    .registers 3

    .line 193
    new-instance v0, Ljt;

    new-instance v1, Lkf;

    invoke-direct {v1}, Lkf;-><init>()V

    invoke-direct {v0, v1}, Ljt;-><init>(Lyp;)V

    invoke-static {p0, v0}, Lka;->a([Ljava/lang/Object;Ljt;)Ljt;

    move-result-object p0

    return-object p0
.end method

.method public static varargs c([Ljava/lang/Object;)Ljt;
    .registers 3

    .line 241
    new-instance v0, Ljt;

    new-instance v1, Lqf;

    invoke-direct {v1}, Lqf;-><init>()V

    invoke-direct {v0, v1}, Ljt;-><init>(Lyp;)V

    invoke-static {p0, v0}, Lka;->a([Ljava/lang/Object;Ljt;)Ljt;

    move-result-object p0

    return-object p0
.end method
