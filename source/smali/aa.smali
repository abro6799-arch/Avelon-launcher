###### Class defpackage.aa (aa)
.class public Laa;
.super Ldw;
.source "SourceFile"


# instance fields
.field public a:Lmq;

.field public b:Llw;

.field public c:Z


# direct methods
.method public constructor <init>(Lix;)V
    .registers 3

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, p1, v0}, Laa;-><init>(Lix;Z)V

    return-void
.end method

.method public constructor <init>(Lix;Z)V
    .registers 12

    .line 29
    invoke-direct {p0}, Ldw;-><init>()V

    .line 21
    new-instance v0, Lmq;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v1}, Lmq;-><init>(Ldw;II)V

    iput-object v0, p0, Laa;->a:Lmq;

    .line 22
    new-instance v0, Lwl;

    invoke-direct {v0}, Lwl;-><init>()V

    iput-object v0, p0, Laa;->b:Llw;

    .line 30
    iput-boolean p2, p0, Laa;->c:Z

    .line 31
    new-instance p2, Lyv;

    iget-object v3, p1, Lix;->d:Lgs;

    iget-object v4, p0, Laa;->a:Lmq;

    iget-object v5, p0, Laa;->b:Llw;

    const/4 v6, 0x0

    const/16 v7, 0x90

    const/16 v8, 0x24

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lyv;-><init>(Lgs;Llw;Llw;III)V

    invoke-virtual {p0, p2}, Laa;->a(Lgp;)V

    const/4 p2, 0x0

    move v0, p2

    :goto_2a
    if-ge v0, v1, :cond_4a

    move v2, p2

    :goto_2d
    if-ge v2, v1, :cond_47

    .line 35
    new-instance v3, Lgp;

    iget-object v4, p0, Laa;->a:Lmq;

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    mul-int/lit8 v6, v2, 0x12

    add-int/lit8 v6, v6, 0x58

    mul-int/lit8 v7, v0, 0x12

    add-int/lit8 v7, v7, 0x1a

    invoke-direct {v3, v4, v5, v6, v7}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, v3}, Laa;->a(Lgp;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_4a
    move v0, p2

    :goto_4b
    const/4 v1, 0x4

    if-ge v0, v1, :cond_6b

    .line 41
    new-instance v1, Lpv;

    invoke-virtual {p1}, Lix;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v5, v2, v0

    const/16 v6, 0x8

    mul-int/lit8 v2, v0, 0x12

    add-int/lit8 v7, v2, 0x8

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v8, v0

    invoke-direct/range {v2 .. v8}, Lpv;-><init>(Laa;Llw;IIII)V

    invoke-virtual {p0, v1}, Laa;->a(Lgp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_6b
    move v0, p2

    :goto_6c
    const/4 v1, 0x3

    const/16 v2, 0x9

    if-ge v0, v1, :cond_8e

    move v1, p2

    :goto_72
    if-ge v1, v2, :cond_8b

    .line 59
    new-instance v3, Lgp;

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    mul-int/lit8 v5, v1, 0x12

    add-int/lit8 v5, v5, 0x8

    mul-int/lit8 v6, v0, 0x12

    add-int/lit8 v6, v6, 0x54

    invoke-direct {v3, p1, v4, v5, v6}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, v3}, Laa;->a(Lgp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    :cond_8e
    :goto_8e
    if-ge p2, v2, :cond_a1

    .line 63
    new-instance v0, Lgp;

    mul-int/lit8 v1, p2, 0x12

    add-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8e

    invoke-direct {v0, p1, p2, v1, v3}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, v0}, Laa;->a(Lgp;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_8e

    .line 66
    :cond_a1
    iget-object p1, p0, Laa;->a:Lmq;

    invoke-virtual {p0, p1}, Laa;->a(Llw;)V

    return-void
.end method


# virtual methods
.method public a(I)Liz;
    .registers 10

    .line 103
    iget-object v0, p0, Laa;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgp;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 104
    invoke-virtual {v0}, Lgp;->b()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 105
    invoke-virtual {v0}, Lgp;->a()Liz;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Liz;->k()Liz;

    move-result-object v3

    const/16 v4, 0x2d

    const/16 v5, 0x9

    if-nez p1, :cond_24

    const/4 p1, 0x1

    .line 109
    invoke-virtual {p0, v2, v5, v4, p1}, Laa;->a(Liz;IIZ)V

    goto :goto_3a

    :cond_24
    const/4 v6, 0x0

    const/16 v7, 0x24

    if-lt p1, v5, :cond_2f

    if-ge p1, v7, :cond_2f

    .line 111
    invoke-virtual {p0, v2, v7, v4, v6}, Laa;->a(Liz;IIZ)V

    goto :goto_3a

    :cond_2f
    if-lt p1, v7, :cond_37

    if-ge p1, v4, :cond_37

    .line 113
    invoke-virtual {p0, v2, v5, v7, v6}, Laa;->a(Liz;IIZ)V

    goto :goto_3a

    .line 115
    :cond_37
    invoke-virtual {p0, v2, v5, v4, v6}, Laa;->a(Liz;IIZ)V

    .line 117
    :goto_3a
    iget p1, v2, Liz;->a:I

    if-nez p1, :cond_42

    .line 118
    invoke-virtual {v0, v1}, Lgp;->c(Liz;)V

    goto :goto_45

    .line 120
    :cond_42
    invoke-virtual {v0}, Lgp;->c()V

    .line 122
    :goto_45
    iget p1, v2, Liz;->a:I

    iget v4, v3, Liz;->a:I

    if-eq p1, v4, :cond_50

    .line 123
    invoke-virtual {v0, v2}, Lgp;->a(Liz;)V

    move-object v1, v3

    nop

    :cond_50
    return-object v1
.end method

.method public a(Lgs;)V
    .registers 5

    .line 86
    invoke-super {p0, p1}, Ldw;->a(Lgs;)V

    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1b

    .line 88
    iget-object v1, p0, Laa;->a:Lmq;

    invoke-virtual {v1, v0}, Lmq;->f_(I)Liz;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 90
    invoke-virtual {p1, v1}, Lgs;->a(Liz;)V

    .line 91
    iget-object v1, p0, Laa;->a:Lmq;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lmq;->a(ILiz;)V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1b
    return-void
.end method

.method public a(Llw;)V
    .registers 4

    .line 82
    iget-object p1, p0, Laa;->b:Llw;

    invoke-static {}, Lhk;->a()Lhk;

    move-result-object v0

    iget-object v1, p0, Laa;->a:Lmq;

    invoke-virtual {v0, v1}, Lhk;->a(Lmq;)Liz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Llw;->a(ILiz;)V

    return-void
.end method

.method public b(Lgs;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
