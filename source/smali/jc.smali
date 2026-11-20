###### Class defpackage.jc (jc)
.class public Ljc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;

.field private static b:Ljava/util/Map;

.field private static c:Ljava/util/Map;

.field private static d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljc;->a:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljc;->b:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljc;->c:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljc;->d:Ljava/util/Map;

    .line 27
    const-class v0, Lsl;

    const-string v1, "Arrow"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 28
    const-class v0, Lby;

    const-string v1, "Snowball"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 29
    const-class v0, Lhl;

    const-string v1, "Item"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 30
    const-class v0, Lqv;

    const-string v1, "Painting"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 32
    const-class v0, Lls;

    const-string v1, "Mob"

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 33
    const-class v0, Lgz;

    const-string v1, "Monster"

    const/16 v2, 0x31

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 35
    const-class v0, Lgb;

    const-string v1, "Creeper"

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 36
    const-class v0, Lfr;

    const-string v1, "Skeleton"

    const/16 v2, 0x33

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 37
    const-class v0, Lcn;

    const-string v1, "Spider"

    const/16 v2, 0x34

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 38
    const-class v0, Lnt;

    const-string v1, "Giant"

    const/16 v2, 0x35

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 39
    const-class v0, Luz;

    const-string v1, "Zombie"

    const/16 v2, 0x36

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 40
    const-class v0, Luw;

    const-string v1, "Slime"

    const/16 v2, 0x37

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 41
    const-class v0, Lbp;

    const-string v1, "Ghast"

    const/16 v2, 0x38

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 42
    const-class v0, Lya;

    const-string v1, "PigZombie"

    const/16 v2, 0x39

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 44
    const-class v0, Lwh;

    const-string v1, "Pig"

    const/16 v2, 0x5a

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 45
    const-class v0, Ldl;

    const-string v1, "Sheep"

    const/16 v2, 0x5b

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 46
    const-class v0, Lbx;

    const-string v1, "Cow"

    const/16 v2, 0x5c

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 47
    const-class v0, Lww;

    const-string v1, "Chicken"

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 48
    const-class v0, Lxt;

    const-string v1, "Squid"

    const/16 v2, 0x5e

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 49
    const-class v0, Lgi;

    const-string v1, "Wolf"

    const/16 v2, 0x5f

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 51
    const-class v0, Lqw;

    const-string v1, "PrimedTnt"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 52
    const-class v0, Lju;

    const-string v1, "FallingSand"

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 54
    const-class v0, Lyl;

    const-string v1, "Minecart"

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 55
    const-class v0, Lfz;

    const-string v1, "Boat"

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Ljc;->a(Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lsn;)I
    .registers 2

    .line 104
    sget-object v0, Ljc;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static a(ILfd;)Lsn;
    .registers 7

    const/4 v0, 0x0

    .line 90
    :try_start_1
    sget-object v1, Ljc;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_2b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 91
    const-class v3, Lfd;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsn;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_27

    move-object v0, p1

    goto :goto_2b

    :catch_27
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    :goto_2b
    if-eqz v0, :cond_2e

    goto :goto_41

    .line 98
    :cond_2e
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping Entity with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_41
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lfd;)Lsn;
    .registers 6

    const/4 v0, 0x0

    .line 61
    :try_start_1
    sget-object v1, Ljc;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    if-eqz p0, :cond_27

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 62
    const-class v2, Lfd;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsn;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_23

    move-object v0, p0

    goto :goto_27

    :catch_23
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_27
    :goto_27
    return-object v0
.end method

.method public static a(Lnu;Lfd;)Lsn;
    .registers 8

    const-string v0, "id"

    const/4 v1, 0x0

    .line 73
    :try_start_3
    sget-object v2, Ljc;->a:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lnu;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-eqz v2, :cond_2d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 74
    const-class v4, Lfd;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsn;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_29

    move-object v1, p1

    goto :goto_2d

    :catch_29
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2d
    :goto_2d
    if-eqz v1, :cond_33

    .line 80
    invoke-virtual {v1, p0}, Lsn;->e(Lnu;)V

    goto :goto_4a

    .line 82
    :cond_33
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping Entity with id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnu;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4a
    return-object v1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;I)V
    .registers 4

    .line 20
    sget-object v0, Ljc;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Ljc;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object p1, Ljc;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object p1, Ljc;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Lsn;)Ljava/lang/String;
    .registers 2

    .line 108
    sget-object v0, Ljc;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
