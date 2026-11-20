###### Class defpackage.vo (vo)
.class Lvo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lpc;

.field private b:Lfd;

.field private c:I

.field private d:I

.field private e:I

.field private final f:Z

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lpc;Lfd;III)V
    .registers 6

    .line 25
    iput-object p1, p0, Lvo;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lvo;->g:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lvo;->b:Lfd;

    .line 27
    iput p3, p0, Lvo;->c:I

    .line 28
    iput p4, p0, Lvo;->d:I

    .line 29
    iput p5, p0, Lvo;->e:I

    .line 31
    invoke-virtual {p2, p3, p4, p5}, Lfd;->a(III)I

    move-result p1

    .line 32
    invoke-virtual {p2, p3, p4, p5}, Lfd;->e(III)I

    move-result p2

    .line 33
    sget-object p3, Luu;->m:[Luu;

    aget-object p1, p3, p1

    check-cast p1, Lpc;

    invoke-static {p1}, Lpc;->a(Lpc;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lvo;->f:Z

    and-int/lit8 p2, p2, -0x9

    goto :goto_31

    :cond_2e
    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lvo;->f:Z

    .line 39
    :goto_31
    invoke-direct {p0, p2}, Lvo;->a(I)V

    return-void
.end method

.method static synthetic a(Lvo;)I
    .registers 1

    .line 19
    invoke-direct {p0}, Lvo;->b()I

    move-result p0

    return p0
.end method

.method private a(Lwf;)Lvo;
    .registers 9

    .line 97
    iget-object v0, p0, Lvo;->b:Lfd;

    iget v1, p1, Lwf;->a:I

    iget v2, p1, Lwf;->b:I

    iget v3, p1, Lwf;->c:I

    invoke-static {v0, v1, v2, v3}, Lpc;->h(Lfd;III)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lvo;

    iget-object v2, p0, Lvo;->a:Lpc;

    iget-object v3, p0, Lvo;->b:Lfd;

    iget v4, p1, Lwf;->a:I

    iget v5, p1, Lwf;->b:I

    iget v6, p1, Lwf;->c:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lvo;-><init>(Lpc;Lfd;III)V

    return-object v0

    .line 98
    :cond_1f
    iget-object v0, p0, Lvo;->b:Lfd;

    iget v1, p1, Lwf;->a:I

    iget v2, p1, Lwf;->b:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p1, Lwf;->c:I

    invoke-static {v0, v1, v2, v3}, Lpc;->h(Lfd;III)Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Lvo;

    iget-object v2, p0, Lvo;->a:Lpc;

    iget-object v3, p0, Lvo;->b:Lfd;

    iget v4, p1, Lwf;->a:I

    iget v1, p1, Lwf;->b:I

    add-int/lit8 v5, v1, 0x1

    iget v6, p1, Lwf;->c:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lvo;-><init>(Lpc;Lfd;III)V

    return-object v0

    .line 99
    :cond_42
    iget-object v0, p0, Lvo;->b:Lfd;

    iget v1, p1, Lwf;->a:I

    iget v2, p1, Lwf;->b:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p1, Lwf;->c:I

    invoke-static {v0, v1, v2, v3}, Lpc;->h(Lfd;III)Z

    move-result v0

    if-eqz v0, :cond_65

    new-instance v0, Lvo;

    iget-object v2, p0, Lvo;->a:Lpc;

    iget-object v3, p0, Lvo;->b:Lfd;

    iget v4, p1, Lwf;->a:I

    iget v1, p1, Lwf;->b:I

    add-int/lit8 v5, v1, -0x1

    iget v6, p1, Lwf;->c:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lvo;-><init>(Lpc;Lfd;III)V

    return-object v0

    :cond_65
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .registers 7

    const/4 v0, 0x0

    .line 79
    :goto_1
    iget-object v1, p0, Lvo;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 80
    iget-object v1, p0, Lvo;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwf;

    invoke-direct {p0, v1}, Lvo;->a(Lwf;)Lvo;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 81
    invoke-direct {v1, p0}, Lvo;->b(Lvo;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_2f

    .line 84
    :cond_1e
    iget-object v2, p0, Lvo;->g:Ljava/util/List;

    new-instance v3, Lwf;

    iget v4, v1, Lvo;->c:I

    iget v5, v1, Lvo;->d:I

    iget v1, v1, Lvo;->e:I

    invoke-direct {v3, v4, v5, v1}, Lwf;-><init>(III)V

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 82
    :cond_2f
    :goto_2f
    iget-object v1, p0, Lvo;->g:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3a
    return-void
.end method

.method private a(I)V
    .registers 7

    .line 44
    iget-object v0, p0, Lvo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    if-nez p1, :cond_2c

    .line 46
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    sub-int/2addr v4, v0

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    add-int/2addr v4, v0

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18b

    :cond_2c
    if-ne p1, v0, :cond_52

    .line 49
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    sub-int/2addr v2, v0

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    add-int/2addr v2, v0

    iget v0, p0, Lvo;->d:I

    iget v3, p0, Lvo;->e:I

    invoke-direct {v1, v2, v0, v3}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18b

    :cond_52
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7a

    .line 52
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    sub-int/2addr v2, v0

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    add-int/2addr v2, v0

    iget v3, p0, Lvo;->d:I

    add-int/2addr v3, v0

    iget v0, p0, Lvo;->e:I

    invoke-direct {v1, v2, v3, v0}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18b

    :cond_7a
    const/4 v1, 0x3

    if-ne p1, v1, :cond_a2

    .line 55
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    sub-int/2addr v2, v0

    iget v3, p0, Lvo;->d:I

    add-int/2addr v3, v0

    iget v4, p0, Lvo;->e:I

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    add-int/2addr v2, v0

    iget v0, p0, Lvo;->d:I

    iget v3, p0, Lvo;->e:I

    invoke-direct {v1, v2, v0, v3}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18b

    :cond_a2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_ca

    .line 58
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    iget v3, p0, Lvo;->d:I

    add-int/2addr v3, v0

    iget v4, p0, Lvo;->e:I

    sub-int/2addr v4, v0

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    add-int/2addr v4, v0

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18b

    :cond_ca
    const/4 v1, 0x5

    if-ne p1, v1, :cond_f2

    .line 61
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    sub-int/2addr v4, v0

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    iget v3, p0, Lvo;->d:I

    add-int/2addr v3, v0

    iget v4, p0, Lvo;->e:I

    add-int/2addr v4, v0

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18b

    :cond_f2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_118

    .line 64
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    add-int/2addr v2, v0

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    add-int/2addr v4, v0

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18b

    :cond_118
    const/4 v1, 0x7

    if-ne p1, v1, :cond_13e

    .line 67
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    sub-int/2addr v2, v0

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    add-int/2addr v4, v0

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18b

    :cond_13e
    const/16 v1, 0x8

    if-ne p1, v1, :cond_165

    .line 70
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    sub-int/2addr v2, v0

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    sub-int/2addr v4, v0

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18b

    :cond_165
    const/16 v1, 0x9

    if-ne p1, v1, :cond_18b

    .line 73
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    add-int/2addr v2, v0

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p0, Lvo;->c:I

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    sub-int/2addr v4, v0

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(III)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18b
    :goto_18b
    return-void
.end method

.method private a(III)Z
    .registers 7

    .line 90
    iget-object v0, p0, Lvo;->b:Lfd;

    invoke-static {v0, p1, p2, p3}, Lpc;->h(Lfd;III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 91
    :cond_a
    iget-object v0, p0, Lvo;->b:Lfd;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, p1, v2, p3}, Lpc;->h(Lfd;III)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 92
    :cond_15
    iget-object v0, p0, Lvo;->b:Lfd;

    sub-int/2addr p2, v1

    invoke-static {v0, p1, p2, p3}, Lpc;->h(Lfd;III)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method private b()I
    .registers 5

    .line 127
    iget v0, p0, Lvo;->c:I

    iget v1, p0, Lvo;->d:I

    iget v2, p0, Lvo;->e:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lvo;->a(III)Z

    move-result v0

    .line 128
    iget v1, p0, Lvo;->c:I

    iget v2, p0, Lvo;->d:I

    iget v3, p0, Lvo;->e:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lvo;->a(III)Z

    move-result v1

    if-eqz v1, :cond_1c

    add-int/lit8 v0, v0, 0x1

    .line 129
    :cond_1c
    iget v1, p0, Lvo;->c:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lvo;->d:I

    iget v3, p0, Lvo;->e:I

    invoke-direct {p0, v1, v2, v3}, Lvo;->a(III)Z

    move-result v1

    if-eqz v1, :cond_2c

    add-int/lit8 v0, v0, 0x1

    .line 130
    :cond_2c
    iget v1, p0, Lvo;->c:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lvo;->d:I

    iget v3, p0, Lvo;->e:I

    invoke-direct {p0, v1, v2, v3}, Lvo;->a(III)Z

    move-result v1

    if-eqz v1, :cond_3c

    add-int/lit8 v0, v0, 0x1

    :cond_3c
    return v0
.end method

.method private b(III)Z
    .registers 7

    const/4 p2, 0x0

    move v0, p2

    .line 114
    :goto_2
    iget-object v1, p0, Lvo;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 115
    iget-object v1, p0, Lvo;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwf;

    .line 117
    iget v2, v1, Lwf;->a:I

    if-ne v2, p1, :cond_1c

    iget v1, v1, Lwf;->c:I

    if-ne v1, p3, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1f
    return p2
.end method

.method private b(Lvo;)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 104
    :goto_2
    iget-object v2, p0, Lvo;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 105
    iget-object v2, p0, Lvo;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwf;

    .line 106
    iget v3, v2, Lwf;->a:I

    iget v4, p1, Lvo;->c:I

    if-ne v3, v4, :cond_20

    iget v2, v2, Lwf;->c:I

    iget v3, p1, Lvo;->e:I

    if-ne v2, v3, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return v0
.end method

.method private c(III)Z
    .registers 5

    .line 193
    new-instance v0, Lwf;

    invoke-direct {v0, p1, p2, p3}, Lwf;-><init>(III)V

    invoke-direct {p0, v0}, Lvo;->a(Lwf;)Lvo;

    move-result-object p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    return p1

    .line 195
    :cond_d
    invoke-direct {p1}, Lvo;->a()V

    .line 196
    invoke-direct {p1, p0}, Lvo;->c(Lvo;)Z

    move-result p1

    return p1
.end method

.method private c(Lvo;)Z
    .registers 6

    .line 136
    invoke-direct {p0, p1}, Lvo;->b(Lvo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 137
    :cond_8
    iget-object v0, p0, Lvo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_13

    return v3

    .line 140
    :cond_13
    iget-object v0, p0, Lvo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    return v1

    .line 144
    :cond_1c
    iget-object v0, p0, Lvo;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwf;

    .line 145
    iget p1, p1, Lvo;->d:I

    iget v2, p0, Lvo;->d:I

    if-ne p1, v2, :cond_2c

    iget p1, v0, Lwf;->b:I

    :cond_2c
    return v1
.end method

.method private d(Lvo;)V
    .registers 10

    .line 151
    iget-object v0, p0, Lvo;->g:Ljava/util/List;

    new-instance v1, Lwf;

    iget v2, p1, Lvo;->c:I

    iget v3, p1, Lvo;->d:I

    iget p1, p1, Lvo;->e:I

    invoke-direct {v1, v2, v3, p1}, Lwf;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget p1, p0, Lvo;->c:I

    iget v0, p0, Lvo;->d:I

    iget v1, p0, Lvo;->e:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lvo;->b(III)Z

    move-result p1

    .line 154
    iget v0, p0, Lvo;->c:I

    iget v1, p0, Lvo;->d:I

    iget v3, p0, Lvo;->e:I

    add-int/2addr v3, v2

    invoke-direct {p0, v0, v1, v3}, Lvo;->b(III)Z

    move-result v0

    .line 155
    iget v1, p0, Lvo;->c:I

    sub-int/2addr v1, v2

    iget v3, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    invoke-direct {p0, v1, v3, v4}, Lvo;->b(III)Z

    move-result v1

    .line 156
    iget v3, p0, Lvo;->c:I

    add-int/2addr v3, v2

    iget v4, p0, Lvo;->d:I

    iget v5, p0, Lvo;->e:I

    invoke-direct {p0, v3, v4, v5}, Lvo;->b(III)Z

    move-result v3

    const/4 v4, 0x0

    if-nez p1, :cond_45

    if-eqz v0, :cond_43

    goto :goto_45

    :cond_43
    const/4 v5, -0x1

    goto :goto_46

    :cond_45
    :goto_45
    move v5, v4

    :goto_46
    if-nez v1, :cond_4a

    if-eqz v3, :cond_4b

    :cond_4a
    move v5, v2

    .line 167
    :cond_4b
    iget-boolean v6, p0, Lvo;->f:Z

    const/16 v7, 0x8

    if-nez v6, :cond_76

    if-eqz v0, :cond_5a

    if-eqz v3, :cond_5a

    if-nez p1, :cond_5a

    if-nez v1, :cond_5a

    const/4 v5, 0x6

    :cond_5a
    if-eqz v0, :cond_63

    if-eqz v1, :cond_63

    if-nez p1, :cond_63

    if-nez v3, :cond_63

    const/4 v5, 0x7

    :cond_63
    if-eqz p1, :cond_6c

    if-eqz v1, :cond_6c

    if-nez v0, :cond_6c

    if-nez v3, :cond_6c

    move v5, v7

    :cond_6c
    if-eqz p1, :cond_76

    if-eqz v3, :cond_76

    if-nez v0, :cond_76

    if-nez v1, :cond_76

    const/16 v5, 0x9

    :cond_76
    if-nez v5, :cond_9a

    .line 174
    iget-object p1, p0, Lvo;->b:Lfd;

    iget v0, p0, Lvo;->c:I

    iget v1, p0, Lvo;->d:I

    add-int/2addr v1, v2

    iget v3, p0, Lvo;->e:I

    sub-int/2addr v3, v2

    invoke-static {p1, v0, v1, v3}, Lpc;->h(Lfd;III)Z

    move-result p1

    if-eqz p1, :cond_89

    const/4 v5, 0x4

    .line 175
    :cond_89
    iget-object p1, p0, Lvo;->b:Lfd;

    iget v0, p0, Lvo;->c:I

    iget v1, p0, Lvo;->d:I

    add-int/2addr v1, v2

    iget v3, p0, Lvo;->e:I

    add-int/2addr v3, v2

    invoke-static {p1, v0, v1, v3}, Lpc;->h(Lfd;III)Z

    move-result p1

    if-eqz p1, :cond_9a

    const/4 v5, 0x5

    :cond_9a
    if-ne v5, v2, :cond_be

    .line 178
    iget-object p1, p0, Lvo;->b:Lfd;

    iget v0, p0, Lvo;->c:I

    add-int/2addr v0, v2

    iget v1, p0, Lvo;->d:I

    add-int/2addr v1, v2

    iget v3, p0, Lvo;->e:I

    invoke-static {p1, v0, v1, v3}, Lpc;->h(Lfd;III)Z

    move-result p1

    if-eqz p1, :cond_ad

    const/4 v5, 0x2

    .line 179
    :cond_ad
    iget-object p1, p0, Lvo;->b:Lfd;

    iget v0, p0, Lvo;->c:I

    sub-int/2addr v0, v2

    iget v1, p0, Lvo;->d:I

    add-int/2addr v1, v2

    iget v2, p0, Lvo;->e:I

    invoke-static {p1, v0, v1, v2}, Lpc;->h(Lfd;III)Z

    move-result p1

    if-eqz p1, :cond_be

    const/4 v5, 0x3

    :cond_be
    if-gez v5, :cond_c1

    goto :goto_c2

    :cond_c1
    move v4, v5

    .line 185
    :goto_c2
    iget-boolean p1, p0, Lvo;->f:Z

    if-eqz p1, :cond_d4

    .line 186
    iget-object p1, p0, Lvo;->b:Lfd;

    iget v0, p0, Lvo;->c:I

    iget v1, p0, Lvo;->d:I

    iget v2, p0, Lvo;->e:I

    invoke-virtual {p1, v0, v1, v2}, Lfd;->e(III)I

    move-result p1

    and-int/2addr p1, v7

    or-int/2addr v4, p1

    .line 189
    :cond_d4
    iget-object p1, p0, Lvo;->b:Lfd;

    iget v0, p0, Lvo;->c:I

    iget v1, p0, Lvo;->d:I

    iget v2, p0, Lvo;->e:I

    invoke-virtual {p1, v0, v1, v2, v4}, Lfd;->d(IIII)V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .registers 16

    .line 200
    iget v0, p0, Lvo;->c:I

    iget v1, p0, Lvo;->d:I

    iget v2, p0, Lvo;->e:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lvo;->c(III)Z

    move-result v0

    .line 201
    iget v1, p0, Lvo;->c:I

    iget v2, p0, Lvo;->d:I

    iget v4, p0, Lvo;->e:I

    add-int/2addr v4, v3

    invoke-direct {p0, v1, v2, v4}, Lvo;->c(III)Z

    move-result v1

    .line 202
    iget v2, p0, Lvo;->c:I

    sub-int/2addr v2, v3

    iget v4, p0, Lvo;->d:I

    iget v5, p0, Lvo;->e:I

    invoke-direct {p0, v2, v4, v5}, Lvo;->c(III)Z

    move-result v2

    .line 203
    iget v4, p0, Lvo;->c:I

    add-int/2addr v4, v3

    iget v5, p0, Lvo;->d:I

    iget v6, p0, Lvo;->e:I

    invoke-direct {p0, v4, v5, v6}, Lvo;->c(III)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez v0, :cond_33

    if-eqz v1, :cond_39

    :cond_33
    if-nez v2, :cond_39

    if-nez v4, :cond_39

    move v7, v5

    goto :goto_3a

    :cond_39
    move v7, v6

    :goto_3a
    if-nez v2, :cond_3e

    if-eqz v4, :cond_43

    :cond_3e
    if-nez v0, :cond_43

    if-nez v1, :cond_43

    move v7, v3

    .line 210
    :cond_43
    iget-boolean v8, p0, Lvo;->f:Z

    const/16 v9, 0x9

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/16 v12, 0x8

    if-nez v8, :cond_71

    if-eqz v1, :cond_56

    if-eqz v4, :cond_56

    if-nez v0, :cond_56

    if-nez v2, :cond_56

    move v7, v11

    :cond_56
    if-eqz v1, :cond_5f

    if-eqz v2, :cond_5f

    if-nez v0, :cond_5f

    if-nez v4, :cond_5f

    move v7, v10

    :cond_5f
    if-eqz v0, :cond_68

    if-eqz v2, :cond_68

    if-nez v1, :cond_68

    if-nez v4, :cond_68

    move v7, v12

    :cond_68
    if-eqz v0, :cond_71

    if-eqz v4, :cond_71

    if-nez v1, :cond_71

    if-nez v2, :cond_71

    move v7, v9

    :cond_71
    if-ne v7, v6, :cond_b3

    if-nez v0, :cond_77

    if-eqz v1, :cond_78

    :cond_77
    move v7, v5

    :cond_78
    if-nez v2, :cond_7c

    if-eqz v4, :cond_7d

    :cond_7c
    move v7, v3

    :cond_7d
    if-nez v8, :cond_b3

    if-eqz p1, :cond_9b

    if-eqz v1, :cond_86

    if-eqz v4, :cond_86

    goto :goto_87

    :cond_86
    move v11, v7

    :goto_87
    if-eqz v2, :cond_8c

    if-eqz v1, :cond_8c

    goto :goto_8d

    :cond_8c
    move v10, v11

    :goto_8d
    if-eqz v4, :cond_92

    if-eqz v0, :cond_92

    goto :goto_93

    :cond_92
    move v9, v10

    :goto_93
    if-eqz v0, :cond_99

    if-eqz v2, :cond_99

    move v11, v12

    goto :goto_b4

    :cond_99
    move v11, v9

    goto :goto_b4

    :cond_9b
    if-eqz v0, :cond_a0

    if-eqz v2, :cond_a0

    move v7, v12

    :cond_a0
    if-eqz v4, :cond_a5

    if-eqz v0, :cond_a5

    goto :goto_a6

    :cond_a5
    move v9, v7

    :goto_a6
    if-eqz v2, :cond_ab

    if-eqz v1, :cond_ab

    goto :goto_ac

    :cond_ab
    move v10, v9

    :goto_ac
    if-eqz v1, :cond_b1

    if-eqz v4, :cond_b1

    goto :goto_b4

    :cond_b1
    move v11, v10

    goto :goto_b4

    :cond_b3
    move v11, v7

    :goto_b4
    if-nez v11, :cond_d8

    .line 236
    iget-object p1, p0, Lvo;->b:Lfd;

    iget v0, p0, Lvo;->c:I

    iget v1, p0, Lvo;->d:I

    add-int/2addr v1, v3

    iget v2, p0, Lvo;->e:I

    sub-int/2addr v2, v3

    invoke-static {p1, v0, v1, v2}, Lpc;->h(Lfd;III)Z

    move-result p1

    if-eqz p1, :cond_c7

    const/4 v11, 0x4

    .line 237
    :cond_c7
    iget-object p1, p0, Lvo;->b:Lfd;

    iget v0, p0, Lvo;->c:I

    iget v1, p0, Lvo;->d:I

    add-int/2addr v1, v3

    iget v2, p0, Lvo;->e:I

    add-int/2addr v2, v3

    invoke-static {p1, v0, v1, v2}, Lpc;->h(Lfd;III)Z

    move-result p1

    if-eqz p1, :cond_d8

    const/4 v11, 0x5

    :cond_d8
    if-ne v11, v3, :cond_fc

    .line 240
    iget-object p1, p0, Lvo;->b:Lfd;

    iget v0, p0, Lvo;->c:I

    add-int/2addr v0, v3

    iget v1, p0, Lvo;->d:I

    add-int/2addr v1, v3

    iget v2, p0, Lvo;->e:I

    invoke-static {p1, v0, v1, v2}, Lpc;->h(Lfd;III)Z

    move-result p1

    if-eqz p1, :cond_eb

    const/4 v11, 0x2

    .line 241
    :cond_eb
    iget-object p1, p0, Lvo;->b:Lfd;

    iget v0, p0, Lvo;->c:I

    sub-int/2addr v0, v3

    iget v1, p0, Lvo;->d:I

    add-int/2addr v1, v3

    iget v2, p0, Lvo;->e:I

    invoke-static {p1, v0, v1, v2}, Lpc;->h(Lfd;III)Z

    move-result p1

    if-eqz p1, :cond_fc

    const/4 v11, 0x3

    :cond_fc
    if-gez v11, :cond_ff

    move v11, v5

    .line 246
    :cond_ff
    invoke-direct {p0, v11}, Lvo;->a(I)V

    .line 249
    iget-boolean p1, p0, Lvo;->f:Z

    if-eqz p1, :cond_114

    .line 250
    iget-object p1, p0, Lvo;->b:Lfd;

    iget v0, p0, Lvo;->c:I

    iget v1, p0, Lvo;->d:I

    iget v2, p0, Lvo;->e:I

    invoke-virtual {p1, v0, v1, v2}, Lfd;->e(III)I

    move-result p1

    and-int/2addr p1, v12

    or-int/2addr v11, p1

    :cond_114
    if-nez p2, :cond_124

    .line 253
    iget-object p1, p0, Lvo;->b:Lfd;

    iget p2, p0, Lvo;->c:I

    iget v0, p0, Lvo;->d:I

    iget v1, p0, Lvo;->e:I

    invoke-virtual {p1, p2, v0, v1}, Lfd;->e(III)I

    move-result p1

    if-eq p1, v11, :cond_155

    .line 254
    :cond_124
    iget-object p1, p0, Lvo;->b:Lfd;

    iget p2, p0, Lvo;->c:I

    iget v0, p0, Lvo;->d:I

    iget v1, p0, Lvo;->e:I

    invoke-virtual {p1, p2, v0, v1, v11}, Lfd;->d(IIII)V

    .line 255
    :goto_12f
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_155

    .line 256
    iget-object p1, p0, Lvo;->g:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwf;

    invoke-direct {p0, p1}, Lvo;->a(Lwf;)Lvo;

    move-result-object p1

    if-nez p1, :cond_146

    goto :goto_152

    .line 258
    :cond_146
    invoke-direct {p1}, Lvo;->a()V

    .line 260
    invoke-direct {p1, p0}, Lvo;->c(Lvo;)Z

    move-result p2

    if-eqz p2, :cond_152

    .line 261
    invoke-direct {p1, p0}, Lvo;->d(Lvo;)V

    :cond_152
    :goto_152
    add-int/lit8 v5, v5, 0x1

    goto :goto_12f

    :cond_155
    return-void
.end method
