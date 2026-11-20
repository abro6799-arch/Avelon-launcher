###### Class defpackage.cd (cd)
.class public Lcd;
.super Ldw;
.source "SourceFile"


# instance fields
.field private a:Llw;

.field private b:I


# direct methods
.method public constructor <init>(Llw;Llw;)V
    .registers 12

    .line 11
    invoke-direct {p0}, Ldw;-><init>()V

    .line 12
    iput-object p2, p0, Lcd;->a:Llw;

    .line 13
    invoke-interface {p2}, Llw;->a()I

    move-result v0

    const/16 v1, 0x9

    div-int/2addr v0, v1

    iput v0, p0, Lcd;->b:I

    add-int/lit8 v0, v0, -0x4

    mul-int/lit8 v0, v0, 0x12

    const/4 v2, 0x0

    move v3, v2

    .line 17
    :goto_14
    iget v4, p0, Lcd;->b:I

    if-ge v3, v4, :cond_34

    move v4, v2

    :goto_19
    if-ge v4, v1, :cond_31

    .line 19
    new-instance v5, Lgp;

    mul-int/lit8 v6, v3, 0x9

    add-int/2addr v6, v4

    mul-int/lit8 v7, v4, 0x12

    add-int/lit8 v7, v7, 0x8

    mul-int/lit8 v8, v3, 0x12

    add-int/lit8 v8, v8, 0x12

    invoke-direct {v5, p2, v6, v7, v8}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, v5}, Lcd;->a(Lgp;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_34
    move p2, v2

    :goto_35
    const/4 v3, 0x3

    if-ge p2, v3, :cond_56

    move v3, v2

    :goto_39
    if-ge v3, v1, :cond_53

    .line 25
    new-instance v4, Lgp;

    mul-int/lit8 v5, p2, 0x9

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    mul-int/lit8 v6, v3, 0x12

    add-int/lit8 v6, v6, 0x8

    mul-int/lit8 v7, p2, 0x12

    add-int/lit8 v7, v7, 0x67

    add-int/2addr v7, v0

    invoke-direct {v4, p1, v5, v6, v7}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, v4}, Lcd;->a(Lgp;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_53
    add-int/lit8 p2, p2, 0x1

    goto :goto_35

    :cond_56
    :goto_56
    if-ge v2, v1, :cond_69

    .line 29
    new-instance p2, Lgp;

    mul-int/lit8 v3, v2, 0x12

    add-int/lit8 v3, v3, 0x8

    add-int/lit16 v4, v0, 0xa1

    invoke-direct {p2, p1, v2, v3, v4}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, p2}, Lcd;->a(Lgp;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_69
    return-void
.end method


# virtual methods
.method public a(I)Liz;
    .registers 8

    .line 40
    iget-object v0, p0, Lcd;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgp;

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 41
    invoke-virtual {v0}, Lgp;->b()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 42
    invoke-virtual {v0}, Lgp;->a()Liz;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Liz;->k()Liz;

    move-result-object v3

    .line 45
    iget v4, p0, Lcd;->b:I

    mul-int/lit8 v5, v4, 0x9

    if-ge p1, v5, :cond_2c

    mul-int/lit8 v4, v4, 0x9

    .line 46
    iget-object p1, p0, Lcd;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v4, p1, v5}, Lcd;->a(Liz;IIZ)V

    goto :goto_32

    :cond_2c
    mul-int/lit8 v4, v4, 0x9

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, v2, p1, v4, p1}, Lcd;->a(Liz;IIZ)V

    .line 50
    :goto_32
    iget p1, v2, Liz;->a:I

    if-nez p1, :cond_3a

    .line 51
    invoke-virtual {v0, v1}, Lgp;->c(Liz;)V

    goto :goto_3d

    .line 53
    :cond_3a
    invoke-virtual {v0}, Lgp;->c()V

    :goto_3d
    move-object v1, v3

    :cond_3e
    return-object v1
.end method

.method public b(Lgs;)Z
    .registers 3

    .line 34
    iget-object v0, p0, Lcd;->a:Llw;

    invoke-interface {v0, p1}, Llw;->a_(Lgs;)Z

    move-result p1

    return p1
.end method
