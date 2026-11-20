###### Class defpackage.mq (mq)
.class public Lmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llw;


# instance fields
.field private a:[Liz;

.field private b:I

.field private c:Ldw;


# direct methods
.method public constructor <init>(Ldw;II)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/2addr p3, p2

    .line 14
    new-array p3, p3, [Liz;

    iput-object p3, p0, Lmq;->a:[Liz;

    .line 15
    iput-object p1, p0, Lmq;->c:Ldw;

    .line 16
    iput p2, p0, Lmq;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 20
    iget-object v0, p0, Lmq;->a:[Liz;

    array-length v0, v0

    return v0
.end method

.method public a(II)Liz;
    .registers 5

    .line 43
    iget-object v0, p0, Lmq;->a:[Liz;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 44
    iget v0, v0, Liz;->a:I

    if-gt v0, p2, :cond_17

    .line 45
    iget-object p2, p0, Lmq;->a:[Liz;

    aget-object v0, p2, p1

    .line 46
    aput-object v1, p2, p1

    .line 47
    iget-object p1, p0, Lmq;->c:Ldw;

    invoke-virtual {p1, p0}, Ldw;->a(Llw;)V

    return-object v0

    .line 50
    :cond_17
    iget-object v0, p0, Lmq;->a:[Liz;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Liz;->a(I)Liz;

    move-result-object p2

    .line 51
    iget-object v0, p0, Lmq;->a:[Liz;

    aget-object v0, v0, p1

    iget v0, v0, Liz;->a:I

    if-nez v0, :cond_2b

    iget-object v0, p0, Lmq;->a:[Liz;

    aput-object v1, v0, p1

    .line 52
    :cond_2b
    iget-object p1, p0, Lmq;->c:Ldw;

    invoke-virtual {p1, p0}, Ldw;->a(Llw;)V

    return-object p2

    :cond_31
    return-object v1
.end method

.method public a(ILiz;)V
    .registers 4

    .line 60
    iget-object v0, p0, Lmq;->a:[Liz;

    aput-object p2, v0, p1

    .line 61
    iget-object p1, p0, Lmq;->c:Ldw;

    invoke-virtual {p1, p0}, Ldw;->a(Llw;)V

    return-void
.end method

.method public a_(Lgs;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public b(II)Liz;
    .registers 4

    if-ltz p1, :cond_e

    .line 31
    iget v0, p0, Lmq;->b:I

    if-lt p1, v0, :cond_7

    goto :goto_e

    :cond_7
    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    .line 35
    invoke-virtual {p0, p1}, Lmq;->f_(I)Liz;

    move-result-object p1

    return-object p1

    :cond_e
    :goto_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "Crafting"

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method public f_(I)Liz;
    .registers 3

    .line 24
    invoke-virtual {p0}, Lmq;->a()I

    move-result v0

    if-lt p1, v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_8
    iget-object v0, p0, Lmq;->a:[Liz;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public y_()V
    .registers 1

    return-void
.end method
