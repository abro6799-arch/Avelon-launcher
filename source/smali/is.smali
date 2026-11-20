###### Class defpackage.is (is)
.class public Lis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldt;


# instance fields
.field public final a:I

.field private b:I

.field private c:I

.field private d:[Liz;

.field private e:Liz;


# direct methods
.method public constructor <init>(II[Liz;Liz;)V
    .registers 6

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget v0, p4, Liz;->c:I

    iput v0, p0, Lis;->a:I

    .line 14
    iput p1, p0, Lis;->b:I

    .line 15
    iput p2, p0, Lis;->c:I

    .line 16
    iput-object p3, p0, Lis;->d:[Liz;

    .line 17
    iput-object p4, p0, Lis;->e:Liz;

    return-void
.end method

.method private a(Lmq;IIZ)Z
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_5e

    move v4, v0

    :goto_7
    if-ge v4, v2, :cond_5b

    sub-int v5, v1, p2

    sub-int v6, v4, p3

    if-ltz v5, :cond_2c

    if-ltz v6, :cond_2c

    .line 40
    iget v7, p0, Lis;->b:I

    if-ge v5, v7, :cond_2c

    iget v8, p0, Lis;->c:I

    if-ge v6, v8, :cond_2c

    if-eqz p4, :cond_25

    .line 41
    iget-object v8, p0, Lis;->d:[Liz;

    sub-int v5, v7, v5

    sub-int/2addr v5, v3

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    aget-object v5, v8, v5

    goto :goto_2d

    .line 42
    :cond_25
    iget-object v8, p0, Lis;->d:[Liz;

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    aget-object v5, v8, v5

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    .line 44
    :goto_2d
    invoke-virtual {p1, v1, v4}, Lmq;->b(II)Liz;

    move-result-object v6

    if-nez v6, :cond_36

    if-nez v5, :cond_36

    goto :goto_58

    :cond_36
    if-nez v6, :cond_3a

    if-nez v5, :cond_3e

    :cond_3a
    if-eqz v6, :cond_3f

    if-nez v5, :cond_3f

    :cond_3e
    return v0

    .line 51
    :cond_3f
    iget v7, v5, Liz;->c:I

    iget v8, v6, Liz;->c:I

    if-eq v7, v8, :cond_46

    return v0

    .line 54
    :cond_46
    invoke-virtual {v5}, Liz;->i()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_58

    invoke-virtual {v5}, Liz;->i()I

    move-result v5

    invoke-virtual {v6}, Liz;->i()I

    move-result v6

    if-eq v5, v6, :cond_58

    return v0

    :cond_58
    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5e
    return v3
.end method


# virtual methods
.method public a()I
    .registers 3

    .line 67
    iget v0, p0, Lis;->b:I

    iget v1, p0, Lis;->c:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public a(Lmq;)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 25
    :goto_2
    iget v2, p0, Lis;->b:I

    rsub-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_24

    move v2, v0

    .line 26
    :goto_9
    iget v3, p0, Lis;->c:I

    rsub-int/lit8 v3, v3, 0x3

    if-gt v2, v3, :cond_21

    const/4 v3, 0x1

    .line 27
    invoke-direct {p0, p1, v1, v2, v3}, Lis;->a(Lmq;IIZ)Z

    move-result v4

    if-eqz v4, :cond_17

    return v3

    .line 28
    :cond_17
    invoke-direct {p0, p1, v1, v2, v0}, Lis;->a(Lmq;IIZ)Z

    move-result v4

    if-eqz v4, :cond_1e

    return v3

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    return v0
.end method

.method public b()Liz;
    .registers 2

    .line 21
    iget-object v0, p0, Lis;->e:Liz;

    return-object v0
.end method

.method public b(Lmq;)Liz;
    .registers 5

    .line 63
    new-instance p1, Liz;

    iget-object v0, p0, Lis;->e:Liz;

    iget v0, v0, Liz;->c:I

    iget-object v1, p0, Lis;->e:Liz;

    iget v1, v1, Liz;->a:I

    iget-object v2, p0, Lis;->e:Liz;

    invoke-virtual {v2}, Liz;->i()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Liz;-><init>(III)V

    return-object p1
.end method
