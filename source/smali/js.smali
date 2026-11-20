###### Class defpackage.js (js)
.class public Ljs;
.super Low;
.source "SourceFile"

# interfaces
.implements Llw;


# instance fields
.field private a:[Liz;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Low;-><init>()V

    const/16 v0, 0x24

    new-array v0, v0, [Liz;

    .line 10
    iput-object v0, p0, Ljs;->a:[Liz;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x1b

    return v0
.end method

.method public a(II)Liz;
    .registers 5

    .line 21
    iget-object v0, p0, Ljs;->a:[Liz;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 22
    iget v0, v0, Liz;->a:I

    if-gt v0, p2, :cond_15

    .line 23
    iget-object p2, p0, Ljs;->a:[Liz;

    aget-object v0, p2, p1

    .line 24
    aput-object v1, p2, p1

    .line 25
    invoke-virtual {p0}, Ljs;->y_()V

    return-object v0

    .line 28
    :cond_15
    iget-object v0, p0, Ljs;->a:[Liz;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Liz;->a(I)Liz;

    move-result-object p2

    .line 29
    iget-object v0, p0, Ljs;->a:[Liz;

    aget-object v0, v0, p1

    iget v0, v0, Liz;->a:I

    if-nez v0, :cond_29

    iget-object v0, p0, Ljs;->a:[Liz;

    aput-object v1, v0, p1

    .line 30
    :cond_29
    invoke-virtual {p0}, Ljs;->y_()V

    return-object p2

    :cond_2d
    return-object v1
.end method

.method public a(ILiz;)V
    .registers 4

    .line 38
    iget-object v0, p0, Ljs;->a:[Liz;

    aput-object p2, v0, p1

    if-eqz p2, :cond_14

    .line 39
    iget p1, p2, Liz;->a:I

    invoke-virtual {p0}, Ljs;->d()I

    move-result v0

    if-le p1, v0, :cond_14

    invoke-virtual {p0}, Ljs;->d()I

    move-result p1

    iput p1, p2, Liz;->a:I

    .line 40
    :cond_14
    invoke-virtual {p0}, Ljs;->y_()V

    return-void
.end method

.method public a(Lnu;)V
    .registers 7

    .line 49
    invoke-super {p0, p1}, Low;->a(Lnu;)V

    const-string v0, "Items"

    .line 50
    invoke-virtual {p1, v0}, Lnu;->l(Ljava/lang/String;)Lsp;

    move-result-object p1

    .line 51
    invoke-virtual {p0}, Ljs;->a()I

    move-result v0

    new-array v0, v0, [Liz;

    iput-object v0, p0, Ljs;->a:[Liz;

    const/4 v0, 0x0

    .line 52
    :goto_12
    invoke-virtual {p1}, Lsp;->c()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 53
    invoke-virtual {p1, v0}, Lsp;->a(I)Lij;

    move-result-object v1

    check-cast v1, Lnu;

    const-string v2, "Slot"

    .line 54
    invoke-virtual {v1, v2}, Lnu;->c(Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-ltz v2, :cond_34

    .line 55
    iget-object v3, p0, Ljs;->a:[Liz;

    array-length v4, v3

    if-ge v2, v4, :cond_34

    new-instance v4, Liz;

    invoke-direct {v4, v1}, Liz;-><init>(Lnu;)V

    aput-object v4, v3, v2

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_37
    return-void
.end method

.method public a_(Lgs;)Z
    .registers 15

    .line 82
    iget-object v0, p0, Ljs;->d:Lfd;

    iget v1, p0, Ljs;->e:I

    iget v2, p0, Ljs;->f:I

    iget v3, p0, Ljs;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lfd;->b(III)Low;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_10

    return v1

    .line 83
    :cond_10
    iget v0, p0, Ljs;->e:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double v7, v2, v4

    iget v0, p0, Ljs;->f:I

    int-to-double v2, v0

    add-double v9, v2, v4

    iget v0, p0, Ljs;->g:I

    int-to-double v2, v0

    add-double v11, v2, v4

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Lgs;->g(DDD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4050000000000000L    # 64.0

    cmpl-double p1, v2, v4

    if-lez p1, :cond_2d

    return v1

    :cond_2d
    const/4 p1, 0x1

    return p1
.end method

.method public b(Lnu;)V
    .registers 7

    .line 60
    invoke-super {p0, p1}, Low;->b(Lnu;)V

    .line 61
    new-instance v0, Lsp;

    invoke-direct {v0}, Lsp;-><init>()V

    const/4 v1, 0x0

    .line 63
    :goto_9
    iget-object v2, p0, Ljs;->a:[Liz;

    array-length v3, v2

    if-ge v1, v3, :cond_2a

    .line 64
    aget-object v2, v2, v1

    if-eqz v2, :cond_27

    .line 65
    new-instance v2, Lnu;

    invoke-direct {v2}, Lnu;-><init>()V

    const-string v3, "Slot"

    int-to-byte v4, v1

    .line 66
    invoke-virtual {v2, v3, v4}, Lnu;->a(Ljava/lang/String;B)V

    .line 67
    iget-object v3, p0, Ljs;->a:[Liz;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Liz;->a(Lnu;)Lnu;

    .line 68
    invoke-virtual {v0, v2}, Lsp;->a(Lij;)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2a
    const-string v1, "Items"

    .line 71
    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Lij;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "Chest"

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method public f_(I)Liz;
    .registers 3

    .line 17
    iget-object v0, p0, Ljs;->a:[Liz;

    aget-object p1, v0, p1

    return-object p1
.end method
