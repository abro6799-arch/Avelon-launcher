###### Class defpackage.ow (ow)
.class public Low;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;

.field private static b:Ljava/util/Map;


# instance fields
.field public d:Lfd;

.field public e:I

.field public f:I

.field public g:I

.field protected h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Low;->a:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Low;->b:Ljava/util/Map;

    .line 23
    const-class v0, Lsk;

    const-string v1, "Furnace"

    invoke-static {v0, v1}, Low;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 24
    const-class v0, Ljs;

    const-string v1, "Chest"

    invoke-static {v0, v1}, Low;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 25
    const-class v0, Leg;

    const-string v1, "RecordPlayer"

    invoke-static {v0, v1}, Low;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 26
    const-class v0, Laz;

    const-string v1, "Trap"

    invoke-static {v0, v1}, Low;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 27
    const-class v0, Lyk;

    const-string v1, "Sign"

    invoke-static {v0, v1}, Low;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 28
    const-class v0, Lcy;

    const-string v1, "MobSpawner"

    invoke-static {v0, v1}, Low;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 29
    const-class v0, Ltn;

    const-string v1, "Music"

    invoke-static {v0, v1}, Low;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 30
    const-class v0, Luk;

    const-string v1, "Piston"

    invoke-static {v0, v1}, Low;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4

    .line 17
    sget-object v0, Low;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 18
    sget-object v0, Low;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Low;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 17
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lnu;)Low;
    .registers 6

    const-string v0, "id"

    const/4 v1, 0x0

    .line 60
    :try_start_3
    sget-object v2, Low;->a:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lnu;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-eqz v2, :cond_1d

    .line 61
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Low;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_19

    move-object v1, v2

    goto :goto_1d

    :catch_19
    move-exception v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1d
    :goto_1d
    if-eqz v1, :cond_23

    .line 66
    invoke-virtual {v1, p0}, Low;->a(Lnu;)V

    goto :goto_3a

    .line 68
    :cond_23
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skipping TileEntity with id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnu;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3a
    return-object v1
.end method


# virtual methods
.method public a(DDD)D
    .registers 11

    .line 88
    iget v0, p0, Low;->e:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    sub-double/2addr v0, p1

    .line 89
    iget p1, p0, Low;->f:I

    int-to-double p1, p1

    add-double/2addr p1, v2

    sub-double/2addr p1, p3

    .line 90
    iget p3, p0, Low;->g:I

    int-to-double p3, p3

    add-double/2addr p3, v2

    sub-double/2addr p3, p5

    mul-double/2addr v0, v0

    mul-double/2addr p1, p1

    add-double/2addr v0, p1

    mul-double/2addr p3, p3

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public a(Lnu;)V
    .registers 3

    const-string v0, "x"

    .line 38
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Low;->e:I

    const-string v0, "y"

    .line 39
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Low;->f:I

    const-string v0, "z"

    .line 40
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Low;->g:I

    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    .line 44
    sget-object v0, Low;->b:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_29

    const-string v1, "id"

    .line 48
    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x"

    .line 49
    iget v1, p0, Low;->e:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "y"

    .line 50
    iget v1, p0, Low;->f:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "z"

    .line 51
    iget v1, p0, Low;->g:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    return-void

    .line 46
    :cond_29
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is missing a mapping! This is a bug!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()I
    .registers 5

    .line 74
    iget-object v0, p0, Low;->d:Lfd;

    iget v1, p0, Low;->e:I

    iget v2, p0, Low;->f:I

    iget v3, p0, Low;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lfd;->e(III)I

    move-result v0

    return v0
.end method

.method public f()Luu;
    .registers 6

    .line 95
    sget-object v0, Luu;->m:[Luu;

    iget-object v1, p0, Low;->d:Lfd;

    iget v2, p0, Low;->e:I

    iget v3, p0, Low;->f:I

    iget v4, p0, Low;->g:I

    invoke-virtual {v1, v2, v3, v4}, Lfd;->a(III)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public g()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Low;->h:Z

    return v0
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Low;->h:Z

    return-void
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Low;->h:Z

    return-void
.end method

.method public n_()V
    .registers 1

    return-void
.end method

.method public y_()V
    .registers 5

    .line 82
    iget-object v0, p0, Low;->d:Lfd;

    if-eqz v0, :cond_d

    .line 83
    iget v1, p0, Low;->e:I

    iget v2, p0, Low;->f:I

    iget v3, p0, Low;->g:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lfd;->b(IIILow;)V

    :cond_d
    return-void
.end method
