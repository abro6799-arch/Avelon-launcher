###### Class defpackage.qo (qo)
.class public Lqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llw;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:[Liz;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lqo;->a:Ljava/lang/String;

    .line 17
    iput p2, p0, Lqo;->b:I

    .line 18
    new-array p1, p2, [Liz;

    iput-object p1, p0, Lqo;->c:[Liz;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 58
    iget v0, p0, Lqo;->b:I

    return v0
.end method

.method public a(II)Liz;
    .registers 5

    .line 35
    iget-object v0, p0, Lqo;->c:[Liz;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 36
    iget v0, v0, Liz;->a:I

    if-gt v0, p2, :cond_15

    .line 37
    iget-object p2, p0, Lqo;->c:[Liz;

    aget-object v0, p2, p1

    .line 38
    aput-object v1, p2, p1

    .line 39
    invoke-virtual {p0}, Lqo;->y_()V

    return-object v0

    .line 42
    :cond_15
    iget-object v0, p0, Lqo;->c:[Liz;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Liz;->a(I)Liz;

    move-result-object p2

    .line 43
    iget-object v0, p0, Lqo;->c:[Liz;

    aget-object v0, v0, p1

    iget v0, v0, Liz;->a:I

    if-nez v0, :cond_29

    iget-object v0, p0, Lqo;->c:[Liz;

    aput-object v1, v0, p1

    .line 44
    :cond_29
    invoke-virtual {p0}, Lqo;->y_()V

    return-object p2

    :cond_2d
    return-object v1
.end method

.method public a(ILiz;)V
    .registers 4

    .line 52
    iget-object v0, p0, Lqo;->c:[Liz;

    aput-object p2, v0, p1

    if-eqz p2, :cond_14

    .line 53
    iget p1, p2, Liz;->a:I

    invoke-virtual {p0}, Lqo;->d()I

    move-result v0

    if-le p1, v0, :cond_14

    invoke-virtual {p0}, Lqo;->d()I

    move-result p1

    iput p1, p2, Liz;->a:I

    .line 54
    :cond_14
    invoke-virtual {p0}, Lqo;->y_()V

    return-void
.end method

.method public a_(Lgs;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lqo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method public f_(I)Liz;
    .registers 3

    .line 31
    iget-object v0, p0, Lqo;->c:[Liz;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public y_()V
    .registers 3

    .line 70
    iget-object v0, p0, Lqo;->d:Ljava/util/List;

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lqo;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 71
    iget-object v1, p0, Lqo;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhv;

    invoke-interface {v1, p0}, Lhv;->a(Lqo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method
