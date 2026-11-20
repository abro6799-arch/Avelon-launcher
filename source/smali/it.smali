###### Class defpackage.it (it)
.class public Lit;
.super Ldw;
.source "SourceFile"


# instance fields
.field public a:Lmq;

.field public b:Llw;

.field private c:Lfd;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lix;Lfd;III)V
    .registers 15

    .line 26
    invoke-direct {p0}, Ldw;-><init>()V

    .line 20
    new-instance v0, Lmq;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, v1}, Lmq;-><init>(Ldw;II)V

    iput-object v0, p0, Lit;->a:Lmq;

    .line 21
    new-instance v0, Lwl;

    invoke-direct {v0}, Lwl;-><init>()V

    iput-object v0, p0, Lit;->b:Llw;

    .line 27
    iput-object p2, p0, Lit;->c:Lfd;

    .line 28
    iput p3, p0, Lit;->h:I

    .line 29
    iput p4, p0, Lit;->i:I

    .line 30
    iput p5, p0, Lit;->j:I

    .line 31
    new-instance p2, Lyv;

    iget-object v3, p1, Lix;->d:Lgs;

    iget-object v4, p0, Lit;->a:Lmq;

    iget-object v5, p0, Lit;->b:Llw;

    const/4 v6, 0x0

    const/16 v7, 0x7c

    const/16 v8, 0x23

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lyv;-><init>(Lgs;Llw;Llw;III)V

    invoke-virtual {p0, p2}, Lit;->a(Lgp;)V

    const/4 p2, 0x0

    move p3, p2

    :goto_30
    if-ge p3, v1, :cond_50

    move p4, p2

    :goto_33
    if-ge p4, v1, :cond_4d

    .line 35
    new-instance p5, Lgp;

    iget-object v0, p0, Lit;->a:Lmq;

    mul-int/lit8 v2, p3, 0x3

    add-int/2addr v2, p4

    mul-int/lit8 v3, p4, 0x12

    add-int/lit8 v3, v3, 0x1e

    mul-int/lit8 v4, p3, 0x12

    add-int/lit8 v4, v4, 0x11

    invoke-direct {p5, v0, v2, v3, v4}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, p5}, Lit;->a(Lgp;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_33

    :cond_4d
    add-int/lit8 p3, p3, 0x1

    goto :goto_30

    :cond_50
    move p3, p2

    :goto_51
    const/16 p4, 0x9

    if-ge p3, v1, :cond_72

    move p5, p2

    :goto_56
    if-ge p5, p4, :cond_6f

    .line 41
    new-instance v0, Lgp;

    mul-int/lit8 v2, p3, 0x9

    add-int/2addr v2, p5

    add-int/2addr v2, p4

    mul-int/lit8 v3, p5, 0x12

    add-int/lit8 v3, v3, 0x8

    mul-int/lit8 v4, p3, 0x12

    add-int/lit8 v4, v4, 0x54

    invoke-direct {v0, p1, v2, v3, v4}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, v0}, Lit;->a(Lgp;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_56

    :cond_6f
    add-int/lit8 p3, p3, 0x1

    goto :goto_51

    :cond_72
    :goto_72
    if-ge p2, p4, :cond_85

    .line 45
    new-instance p3, Lgp;

    mul-int/lit8 p5, p2, 0x12

    add-int/lit8 p5, p5, 0x8

    const/16 v0, 0x8e

    invoke-direct {p3, p1, p2, p5, v0}, Lgp;-><init>(Llw;III)V

    invoke-virtual {p0, p3}, Lit;->a(Lgp;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_72

    .line 48
    :cond_85
    iget-object p1, p0, Lit;->a:Lmq;

    invoke-virtual {p0, p1}, Lit;->a(Llw;)V

    return-void
.end method


# virtual methods
.method public a(I)Liz;
    .registers 10

    .line 85
    iget-object v0, p0, Lit;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgp;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 86
    invoke-virtual {v0}, Lgp;->b()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 87
    invoke-virtual {v0}, Lgp;->a()Liz;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Liz;->k()Liz;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0xa

    if-nez p1, :cond_24

    const/4 p1, 0x1

    .line 91
    invoke-virtual {p0, v2, v5, v4, p1}, Lit;->a(Liz;IIZ)V

    goto :goto_3a

    :cond_24
    const/4 v6, 0x0

    const/16 v7, 0x25

    if-lt p1, v5, :cond_2f

    if-ge p1, v7, :cond_2f

    .line 93
    invoke-virtual {p0, v2, v7, v4, v6}, Lit;->a(Liz;IIZ)V

    goto :goto_3a

    :cond_2f
    if-lt p1, v7, :cond_37

    if-ge p1, v4, :cond_37

    .line 95
    invoke-virtual {p0, v2, v5, v7, v6}, Lit;->a(Liz;IIZ)V

    goto :goto_3a

    .line 97
    :cond_37
    invoke-virtual {p0, v2, v5, v4, v6}, Lit;->a(Liz;IIZ)V

    .line 99
    :goto_3a
    iget p1, v2, Liz;->a:I

    if-nez p1, :cond_42

    .line 100
    invoke-virtual {v0, v1}, Lgp;->c(Liz;)V

    goto :goto_45

    .line 102
    :cond_42
    invoke-virtual {v0}, Lgp;->c()V

    .line 104
    :goto_45
    iget p1, v2, Liz;->a:I

    iget v4, v3, Liz;->a:I

    if-eq p1, v4, :cond_50

    .line 105
    invoke-virtual {v0, v2}, Lgp;->a(Liz;)V

    move-object v1, v3

    nop

    :cond_50
    return-object v1
.end method

.method public a(Lgs;)V
    .registers 4

    .line 65
    invoke-super {p0, p1}, Ldw;->a(Lgs;)V

    .line 66
    iget-object v0, p0, Lit;->c:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1d

    .line 69
    iget-object v1, p0, Lit;->a:Lmq;

    invoke-virtual {v1, v0}, Lmq;->f_(I)Liz;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 71
    invoke-virtual {p1, v1}, Lgs;->a(Liz;)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method

.method public a(Llw;)V
    .registers 4

    .line 61
    iget-object p1, p0, Lit;->b:Llw;

    invoke-static {}, Lhk;->a()Lhk;

    move-result-object v0

    iget-object v1, p0, Lit;->a:Lmq;

    invoke-virtual {v0, v1}, Lhk;->a(Lmq;)Liz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Llw;->a(ILiz;)V

    return-void
.end method

.method public b(Lgs;)Z
    .registers 14

    .line 77
    iget-object v0, p0, Lit;->c:Lfd;

    iget v1, p0, Lit;->h:I

    iget v2, p0, Lit;->i:I

    iget v3, p0, Lit;->j:I

    invoke-virtual {v0, v1, v2, v3}, Lfd;->a(III)I

    move-result v0

    sget-object v1, Luu;->az:Luu;

    iget v1, v1, Luu;->bn:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_14

    return v2

    .line 78
    :cond_14
    iget v0, p0, Lit;->h:I

    int-to-double v0, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double v6, v0, v3

    iget v0, p0, Lit;->i:I

    int-to-double v0, v0

    add-double v8, v0, v3

    iget v0, p0, Lit;->j:I

    int-to-double v0, v0

    add-double v10, v0, v3

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Lgs;->g(DDD)D

    move-result-wide v0

    const-wide/high16 v3, 0x4050000000000000L    # 64.0

    cmpl-double p1, v0, v3

    if-lez p1, :cond_31

    return v2

    :cond_31
    const/4 p1, 0x1

    return p1
.end method
