###### Class defpackage.ll (ll)
.class public Lll;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lll;

.field public static b:D

.field public static c:D

.field public static d:D


# instance fields
.field public e:Lji;

.field public f:Lfd;

.field public g:Lls;

.field public h:F

.field public i:F

.field public j:D

.field public k:D

.field public l:D

.field private m:Ljava/util/Map;

.field private n:Lsj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lll;

    invoke-direct {v0}, Lll;-><init>()V

    sput-object v0, Lll;->a:Lll;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lll;->m:Ljava/util/Map;

    .line 31
    const-class v1, Lyk;

    new-instance v2, Lpo;

    invoke-direct {v2}, Lpo;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lll;->m:Ljava/util/Map;

    const-class v1, Lcy;

    new-instance v2, Lag;

    invoke-direct {v2}, Lag;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lll;->m:Ljava/util/Map;

    const-class v1, Luk;

    new-instance v2, Lhy;

    invoke-direct {v2}, Lhy;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lll;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lje;

    .line 44
    invoke-virtual {v1, p0}, Lje;->a(Lll;)V

    goto :goto_36

    :cond_46
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lje;
    .registers 4

    .line 50
    iget-object v0, p0, Lll;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lje;

    if-nez v0, :cond_1b

    .line 51
    const-class v1, Low;

    if-eq p1, v1, :cond_1b

    .line 52
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lll;->a(Ljava/lang/Class;)Lje;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lll;->m:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-object v0
.end method

.method public a()Lsj;
    .registers 2

    .line 116
    iget-object v0, p0, Lll;->n:Lsj;

    return-object v0
.end method

.method public a(Lfd;)V
    .registers 4

    .line 99
    iput-object p1, p0, Lll;->f:Lfd;

    .line 101
    iget-object v0, p0, Lll;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lje;

    if-eqz v1, :cond_c

    .line 103
    invoke-virtual {v1, p1}, Lje;->a(Lfd;)V

    goto :goto_c

    :cond_1e
    return-void
.end method

.method public a(Lfd;Lji;Lsj;Lls;F)V
    .registers 12

    .line 68
    iget-object v0, p0, Lll;->f:Lfd;

    if-eq v0, p1, :cond_7

    .line 69
    invoke-virtual {p0, p1}, Lll;->a(Lfd;)V

    .line 71
    :cond_7
    iput-object p2, p0, Lll;->e:Lji;

    .line 72
    iput-object p4, p0, Lll;->g:Lls;

    .line 73
    iput-object p3, p0, Lll;->n:Lsj;

    .line 75
    iget p1, p4, Lls;->aU:F

    iget p2, p4, Lls;->aS:F

    iget p3, p4, Lls;->aU:F

    sub-float/2addr p2, p3

    mul-float/2addr p2, p5

    add-float/2addr p1, p2

    iput p1, p0, Lll;->h:F

    .line 76
    iget p1, p4, Lls;->aV:F

    iget p2, p4, Lls;->aT:F

    iget p3, p4, Lls;->aV:F

    sub-float/2addr p2, p3

    mul-float/2addr p2, p5

    add-float/2addr p1, p2

    iput p1, p0, Lll;->i:F

    .line 78
    iget-wide p1, p4, Lls;->bl:D

    iget-wide v0, p4, Lls;->aM:D

    iget-wide v2, p4, Lls;->bl:D

    sub-double/2addr v0, v2

    float-to-double v2, p5

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    iput-wide p1, p0, Lll;->j:D

    .line 79
    iget-wide p1, p4, Lls;->bm:D

    iget-wide v0, p4, Lls;->aN:D

    iget-wide v4, p4, Lls;->bm:D

    sub-double/2addr v0, v4

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    iput-wide p1, p0, Lll;->k:D

    .line 80
    iget-wide p1, p4, Lls;->bn:D

    iget-wide v0, p4, Lls;->aO:D

    iget-wide p3, p4, Lls;->bn:D

    sub-double/2addr v0, p3

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    iput-wide p1, p0, Lll;->l:D

    return-void
.end method

.method public a(Low;DDDF)V
    .registers 18

    .line 92
    invoke-virtual {p0, p1}, Lll;->b(Low;)Lje;

    move-result-object v0

    if-eqz v0, :cond_f

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    move/from16 v8, p8

    .line 94
    invoke-virtual/range {v0 .. v8}, Lje;->a(Low;DDDF)V

    :cond_f
    return-void
.end method

.method public a(Low;F)V
    .registers 16

    .line 84
    iget-wide v1, p0, Lll;->j:D

    iget-wide v3, p0, Lll;->k:D

    iget-wide v5, p0, Lll;->l:D

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Low;->a(DDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x40b0000000000000L    # 4096.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3b

    .line 85
    iget-object v0, p0, Lll;->f:Lfd;

    iget v1, p1, Low;->e:I

    iget v2, p1, Low;->f:I

    iget v3, p1, Low;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lfd;->c(III)F

    move-result v0

    .line 86
    invoke-static {v0, v0, v0}, Lorg/lwjgl/opengl/GL11;->glColor3f(FFF)V

    .line 87
    iget v0, p1, Low;->e:I

    int-to-double v0, v0

    sget-wide v2, Lll;->b:D

    sub-double v6, v0, v2

    iget v0, p1, Low;->f:I

    int-to-double v0, v0

    sget-wide v2, Lll;->c:D

    sub-double v8, v0, v2

    iget v0, p1, Low;->g:I

    int-to-double v0, v0

    sget-wide v2, Lll;->d:D

    sub-double v10, v0, v2

    move-object v4, p0

    move-object v5, p1

    move v12, p2

    invoke-virtual/range {v4 .. v12}, Lll;->a(Low;DDDF)V

    :cond_3b
    return-void
.end method

.method public a(Low;)Z
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Lll;->b(Low;)Lje;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public b(Low;)Lje;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 64
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lll;->a(Ljava/lang/Class;)Lje;

    move-result-object p1

    return-object p1
.end method
