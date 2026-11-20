###### Class defpackage.bm (bm)
.class public Lbm;
.super Ldw;
.source "SourceFile"


# instance fields
.field private a:Lsk;

.field private b:I

.field private c:I

.field private h:I


# direct methods
.method public constructor <init>(Lix;Lsk;)V
    .registers 14

    .line 21
    invoke-direct {p0}, Ldw;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lbm;->b:I

    .line 39
    iput v0, p0, Lbm;->c:I

    .line 40
    iput v0, p0, Lbm;->h:I

    .line 22
    iput-object p2, p0, Lbm;->a:Lsk;

    .line 24
    new-instance v1, Lgp;

    const/16 v2, 0x11

    const/16 v3, 0x38

    invoke-direct {v1, p2, v0, v3, v2}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, v1}, Lbm;->a(Lgp;)V

    .line 25
    new-instance v1, Lgp;

    const/4 v2, 0x1

    const/16 v4, 0x35

    invoke-direct {v1, p2, v2, v3, v4}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, v1}, Lbm;->a(Lgp;)V

    .line 26
    new-instance v1, Lvq;

    iget-object v6, p1, Lix;->d:Lgs;

    const/4 v8, 0x2

    const/16 v9, 0x74

    const/16 v10, 0x23

    move-object v5, v1

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lvq;-><init>(Lgs;Llw;III)V

    invoke-virtual {p0, v1}, Lbm;->a(Lgp;)V

    move p2, v0

    :goto_35
    const/4 v1, 0x3

    const/16 v2, 0x9

    if-ge p2, v1, :cond_57

    move v1, v0

    :goto_3b
    if-ge v1, v2, :cond_54

    .line 30
    new-instance v3, Lgp;

    mul-int/lit8 v4, p2, 0x9

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    mul-int/lit8 v5, v1, 0x12

    add-int/lit8 v5, v5, 0x8

    mul-int/lit8 v6, p2, 0x12

    add-int/lit8 v6, v6, 0x54

    invoke-direct {v3, p1, v4, v5, v6}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, v3}, Lbm;->a(Lgp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_54
    add-int/lit8 p2, p2, 0x1

    goto :goto_35

    :cond_57
    :goto_57
    if-ge v0, v2, :cond_6a

    .line 34
    new-instance p2, Lgp;

    mul-int/lit8 v1, v0, 0x12

    add-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8e

    invoke-direct {p2, p1, v0, v1, v3}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, p2}, Lbm;->a(Lgp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_6a
    return-void
.end method


# virtual methods
.method public a(I)Liz;
    .registers 10

    .line 83
    iget-object v0, p0, Lbm;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgp;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 84
    invoke-virtual {v0}, Lgp;->b()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 85
    invoke-virtual {v0}, Lgp;->a()Liz;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Liz;->k()Liz;

    move-result-object v3

    const/4 v4, 0x2

    const/16 v5, 0x27

    const/4 v6, 0x3

    if-ne p1, v4, :cond_24

    const/4 p1, 0x1

    .line 89
    invoke-virtual {p0, v2, v6, v5, p1}, Lbm;->a(Liz;IIZ)V

    goto :goto_3a

    :cond_24
    const/4 v4, 0x0

    const/16 v7, 0x1e

    if-lt p1, v6, :cond_2f

    if-ge p1, v7, :cond_2f

    .line 91
    invoke-virtual {p0, v2, v7, v5, v4}, Lbm;->a(Liz;IIZ)V

    goto :goto_3a

    :cond_2f
    if-lt p1, v7, :cond_37

    if-ge p1, v5, :cond_37

    .line 93
    invoke-virtual {p0, v2, v6, v7, v4}, Lbm;->a(Liz;IIZ)V

    goto :goto_3a

    .line 95
    :cond_37
    invoke-virtual {p0, v2, v6, v5, v4}, Lbm;->a(Liz;IIZ)V

    .line 97
    :goto_3a
    iget p1, v2, Liz;->a:I

    if-nez p1, :cond_42

    .line 98
    invoke-virtual {v0, v1}, Lgp;->c(Liz;)V

    goto :goto_45

    .line 100
    :cond_42
    invoke-virtual {v0}, Lgp;->c()V

    .line 102
    :goto_45
    iget p1, v2, Liz;->a:I

    iget v4, v3, Liz;->a:I

    if-eq p1, v4, :cond_50

    .line 103
    invoke-virtual {v0, v2}, Lgp;->a(Liz;)V

    move-object v1, v3

    nop

    :cond_50
    return-object v1
.end method

.method public a()V
    .registers 6

    .line 50
    invoke-super {p0}, Ldw;->a()V

    const/4 v0, 0x0

    move v1, v0

    .line 52
    :goto_5
    iget-object v2, p0, Lbm;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 53
    iget-object v2, p0, Lbm;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lec;

    .line 54
    iget v3, p0, Lbm;->b:I

    iget-object v4, p0, Lbm;->a:Lsk;

    iget v4, v4, Lsk;->c:I

    if-eq v3, v4, :cond_24

    .line 55
    iget-object v3, p0, Lbm;->a:Lsk;

    iget v3, v3, Lsk;->c:I

    invoke-interface {v2, p0, v0, v3}, Lec;->a(Ldw;II)V

    .line 57
    :cond_24
    iget v3, p0, Lbm;->c:I

    iget-object v4, p0, Lbm;->a:Lsk;

    iget v4, v4, Lsk;->a:I

    if-eq v3, v4, :cond_34

    .line 58
    iget-object v3, p0, Lbm;->a:Lsk;

    iget v3, v3, Lsk;->a:I

    const/4 v4, 0x1

    invoke-interface {v2, p0, v4, v3}, Lec;->a(Ldw;II)V

    .line 60
    :cond_34
    iget v3, p0, Lbm;->h:I

    iget-object v4, p0, Lbm;->a:Lsk;

    iget v4, v4, Lsk;->b:I

    if-eq v3, v4, :cond_44

    .line 61
    iget-object v3, p0, Lbm;->a:Lsk;

    iget v3, v3, Lsk;->b:I

    const/4 v4, 0x2

    invoke-interface {v2, p0, v4, v3}, Lec;->a(Ldw;II)V

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 65
    :cond_47
    iget-object v0, p0, Lbm;->a:Lsk;

    iget v0, v0, Lsk;->c:I

    iput v0, p0, Lbm;->b:I

    .line 66
    iget-object v0, p0, Lbm;->a:Lsk;

    iget v0, v0, Lsk;->a:I

    iput v0, p0, Lbm;->c:I

    .line 67
    iget-object v0, p0, Lbm;->a:Lsk;

    iget v0, v0, Lsk;->b:I

    iput v0, p0, Lbm;->h:I

    return-void
.end method

.method public a(II)V
    .registers 4

    if-nez p1, :cond_6

    .line 71
    iget-object v0, p0, Lbm;->a:Lsk;

    iput p2, v0, Lsk;->c:I

    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 72
    iget-object v0, p0, Lbm;->a:Lsk;

    iput p2, v0, Lsk;->a:I

    :cond_d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    .line 73
    iget-object p1, p0, Lbm;->a:Lsk;

    iput p2, p1, Lsk;->b:I

    :cond_14
    return-void
.end method

.method public b(Lgs;)Z
    .registers 3

    .line 77
    iget-object v0, p0, Lbm;->a:Lsk;

    invoke-virtual {v0, p1}, Lsk;->a_(Lgs;)Z

    move-result p1

    return p1
.end method
