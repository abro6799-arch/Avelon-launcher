###### Class defpackage.lj (lj)
.class final Llj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Let;


# instance fields
.field private final a:Ljava/io/PushbackReader;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Llj;->b:I

    const/4 v1, 0x1

    .line 23
    iput v1, p0, Llj;->c:I

    .line 24
    iput-boolean v0, p0, Llj;->d:Z

    .line 27
    new-instance v0, Ljava/io/PushbackReader;

    invoke-direct {v0, p1}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Llj;->a:Ljava/io/PushbackReader;

    return-void
.end method

.method private a(I)V
    .registers 5

    const/16 v0, 0xd

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_10

    .line 57
    iput v1, p0, Llj;->b:I

    .line 58
    iget p1, p0, Llj;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Llj;->c:I

    .line 59
    iput-boolean v2, p0, Llj;->d:Z

    goto :goto_27

    :cond_10
    const/16 v0, 0xa

    if-ne v0, p1, :cond_20

    .line 61
    iget-boolean p1, p0, Llj;->d:Z

    if-nez p1, :cond_20

    .line 62
    iput v1, p0, Llj;->b:I

    .line 63
    iget p1, p0, Llj;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Llj;->c:I

    goto :goto_25

    .line 65
    :cond_20
    iget p1, p0, Llj;->b:I

    add-int/2addr p1, v2

    iput p1, p0, Llj;->b:I

    .line 67
    :goto_25
    iput-boolean v1, p0, Llj;->d:Z

    :goto_27
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 72
    iget v0, p0, Llj;->b:I

    return v0
.end method

.method public a(C)V
    .registers 3

    .line 31
    iget v0, p0, Llj;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Llj;->b:I

    if-gez v0, :cond_b

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Llj;->b:I

    .line 33
    :cond_b
    iget-object v0, p0, Llj;->a:Ljava/io/PushbackReader;

    invoke-virtual {v0, p1}, Ljava/io/PushbackReader;->unread(I)V

    return-void
.end method

.method public a([C)V
    .registers 3

    .line 37
    iget v0, p0, Llj;->b:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Llj;->b:I

    if-gez v0, :cond_b

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Llj;->b:I

    :cond_b
    return-void
.end method

.method public b()I
    .registers 2

    .line 76
    iget v0, p0, Llj;->c:I

    return v0
.end method

.method public b([C)I
    .registers 6

    .line 48
    iget-object v0, p0, Llj;->a:Ljava/io/PushbackReader;

    invoke-virtual {v0, p1}, Ljava/io/PushbackReader;->read([C)I

    move-result v0

    .line 49
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-char v3, p1, v2

    .line 50
    invoke-direct {p0, v3}, Llj;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return v0
.end method

.method public c()I
    .registers 2

    .line 42
    iget-object v0, p0, Llj;->a:Ljava/io/PushbackReader;

    invoke-virtual {v0}, Ljava/io/PushbackReader;->read()I

    move-result v0

    .line 43
    invoke-direct {p0, v0}, Llj;->a(I)V

    return v0
.end method
