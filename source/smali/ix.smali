###### Class defpackage.ix (ix)
.class public Lix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llw;


# instance fields
.field public a:[Liz;

.field public b:[Liz;

.field public c:I

.field public d:Lgs;

.field public e:Z

.field private f:Liz;


# direct methods
.method public constructor <init>(Lgs;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x24

    new-array v0, v0, [Liz;

    .line 17
    iput-object v0, p0, Lix;->a:[Liz;

    const/4 v0, 0x4

    new-array v0, v0, [Liz;

    .line 18
    iput-object v0, p0, Lix;->b:[Liz;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lix;->c:I

    .line 23
    iput-boolean v0, p0, Lix;->e:Z

    .line 26
    iput-object p1, p0, Lix;->d:Lgs;

    return-void
.end method

.method private d(Liz;)I
    .registers 5

    const/4 v0, 0x0

    .line 49
    :goto_1
    iget-object v1, p0, Lix;->a:[Liz;

    array-length v2, v1

    if-ge v0, v2, :cond_52

    .line 50
    aget-object v1, v1, v0

    if-eqz v1, :cond_4f

    iget v1, v1, Liz;->c:I

    iget v2, p1, Liz;->c:I

    if-ne v1, v2, :cond_4f

    iget-object v1, p0, Lix;->a:[Liz;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Liz;->d()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lix;->a:[Liz;

    aget-object v1, v1, v0

    iget v1, v1, Liz;->a:I

    iget-object v2, p0, Lix;->a:[Liz;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Liz;->c()I

    move-result v2

    if-ge v1, v2, :cond_4f

    iget-object v1, p0, Lix;->a:[Liz;

    aget-object v1, v1, v0

    iget v1, v1, Liz;->a:I

    invoke-virtual {p0}, Lix;->d()I

    move-result v2

    if-ge v1, v2, :cond_4f

    iget-object v1, p0, Lix;->a:[Liz;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Liz;->f()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lix;->a:[Liz;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Liz;->i()I

    move-result v1

    invoke-virtual {p1}, Liz;->i()I

    move-result v2

    if-ne v1, v2, :cond_4f

    :cond_4e
    return v0

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_52
    const/4 p1, -0x1

    return p1
.end method

.method private e(Liz;)I
    .registers 8

    .line 119
    iget v0, p1, Liz;->c:I

    .line 120
    iget v1, p1, Liz;->a:I

    .line 122
    invoke-direct {p0, p1}, Lix;->d(Liz;)I

    move-result v2

    if-gez v2, :cond_e

    .line 123
    invoke-direct {p0}, Lix;->j()I

    move-result v2

    :cond_e
    if-gez v2, :cond_11

    return v1

    .line 125
    :cond_11
    iget-object v3, p0, Lix;->a:[Liz;

    aget-object v4, v3, v2

    if-nez v4, :cond_23

    .line 126
    new-instance v4, Liz;

    const/4 v5, 0x0

    invoke-virtual {p1}, Liz;->i()I

    move-result p1

    invoke-direct {v4, v0, v5, p1}, Liz;-><init>(III)V

    aput-object v4, v3, v2

    .line 130
    :cond_23
    iget-object p1, p0, Lix;->a:[Liz;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Liz;->c()I

    move-result p1

    iget-object v0, p0, Lix;->a:[Liz;

    aget-object v0, v0, v2

    iget v0, v0, Liz;->a:I

    sub-int/2addr p1, v0

    if-le v1, p1, :cond_44

    .line 131
    iget-object p1, p0, Lix;->a:[Liz;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Liz;->c()I

    move-result p1

    iget-object v0, p0, Lix;->a:[Liz;

    aget-object v0, v0, v2

    iget v0, v0, Liz;->a:I

    sub-int/2addr p1, v0

    goto :goto_45

    :cond_44
    move p1, v1

    .line 133
    :goto_45
    invoke-virtual {p0}, Lix;->d()I

    move-result v0

    iget-object v3, p0, Lix;->a:[Liz;

    aget-object v3, v3, v2

    iget v3, v3, Liz;->a:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_5d

    .line 134
    invoke-virtual {p0}, Lix;->d()I

    move-result p1

    iget-object v0, p0, Lix;->a:[Liz;

    aget-object v0, v0, v2

    iget v0, v0, Liz;->a:I

    sub-int/2addr p1, v0

    :cond_5d
    if-nez p1, :cond_60

    return v1

    :cond_60
    sub-int/2addr v1, p1

    .line 140
    iget-object v0, p0, Lix;->a:[Liz;

    aget-object v0, v0, v2

    iget v3, v0, Liz;->a:I

    add-int/2addr v3, p1

    iput v3, v0, Liz;->a:I

    .line 141
    iget-object p1, p0, Lix;->a:[Liz;

    aget-object p1, p1, v2

    const/4 v0, 0x5

    iput v0, p1, Liz;->b:I

    return v1
.end method

.method private f(I)I
    .registers 5

    const/4 v0, 0x0

    .line 42
    :goto_1
    iget-object v1, p0, Lix;->a:[Liz;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 43
    aget-object v1, v1, v0

    if-eqz v1, :cond_f

    iget v1, v1, Liz;->c:I

    if-ne v1, p1, :cond_f

    return v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 p1, -0x1

    return p1
.end method

.method private j()I
    .registers 4

    const/4 v0, 0x0

    .line 59
    :goto_1
    iget-object v1, p0, Lix;->a:[Liz;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 60
    aget-object v1, v1, v0

    if-nez v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public a(Luu;)F
    .registers 4

    .line 222
    iget-object v0, p0, Lix;->a:[Liz;

    iget v1, p0, Lix;->c:I

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Liz;->a(Luu;)F

    move-result p1

    mul-float/2addr v1, p1

    :cond_f
    return v1
.end method

.method public a()I
    .registers 2

    .line 261
    iget-object v0, p0, Lix;->a:[Liz;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public a(Lsn;)I
    .registers 3

    .line 283
    iget v0, p0, Lix;->c:I

    invoke-virtual {p0, v0}, Lix;->f_(I)Liz;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 284
    invoke-virtual {v0, p1}, Liz;->a(Lsn;)I

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x1

    return p1
.end method

.method public a(II)Liz;
    .registers 6

    .line 190
    iget-object v0, p0, Lix;->a:[Liz;

    .line 191
    array-length v1, v0

    if-lt p1, v1, :cond_a

    .line 192
    iget-object v1, p0, Lix;->b:[Liz;

    .line 193
    array-length v0, v0

    sub-int/2addr p1, v0

    move-object v0, v1

    .line 196
    :cond_a
    aget-object v1, v0, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 197
    iget v1, v1, Liz;->a:I

    if-gt v1, p2, :cond_18

    .line 198
    aget-object p2, v0, p1

    .line 199
    aput-object v2, v0, p1

    return-object p2

    .line 202
    :cond_18
    aget-object v1, v0, p1

    invoke-virtual {v1, p2}, Liz;->a(I)Liz;

    move-result-object p2

    .line 203
    aget-object v1, v0, p1

    iget v1, v1, Liz;->a:I

    if-nez v1, :cond_26

    aput-object v2, v0, p1

    :cond_26
    return-object p2

    :cond_27
    return-object v2
.end method

.method public a(Lsp;)Lsp;
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 227
    :goto_2
    iget-object v2, p0, Lix;->a:[Liz;

    array-length v3, v2

    const-string v4, "Slot"

    if-ge v1, v3, :cond_23

    .line 228
    aget-object v2, v2, v1

    if-eqz v2, :cond_20

    .line 229
    new-instance v2, Lnu;

    invoke-direct {v2}, Lnu;-><init>()V

    int-to-byte v3, v1

    .line 230
    invoke-virtual {v2, v4, v3}, Lnu;->a(Ljava/lang/String;B)V

    .line 231
    iget-object v3, p0, Lix;->a:[Liz;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Liz;->a(Lnu;)Lnu;

    .line 232
    invoke-virtual {p1, v2}, Lsp;->a(Lij;)V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 235
    :cond_23
    :goto_23
    iget-object v1, p0, Lix;->b:[Liz;

    array-length v2, v1

    if-ge v0, v2, :cond_44

    .line 236
    aget-object v1, v1, v0

    if-eqz v1, :cond_41

    .line 237
    new-instance v1, Lnu;

    invoke-direct {v1}, Lnu;-><init>()V

    add-int/lit8 v2, v0, 0x64

    int-to-byte v2, v2

    .line 238
    invoke-virtual {v1, v4, v2}, Lnu;->a(Ljava/lang/String;B)V

    .line 239
    iget-object v2, p0, Lix;->b:[Liz;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Liz;->a(Lnu;)Lnu;

    .line 240
    invoke-virtual {p1, v1}, Lsp;->a(Lij;)V

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_44
    return-object p1
.end method

.method public a(ILiz;)V
    .registers 5

    .line 211
    iget-object v0, p0, Lix;->a:[Liz;

    .line 212
    array-length v1, v0

    if-lt p1, v1, :cond_9

    .line 213
    array-length v0, v0

    sub-int/2addr p1, v0

    .line 214
    iget-object v0, p0, Lix;->b:[Liz;

    .line 217
    :cond_9
    aput-object p2, v0, p1

    return-void
.end method

.method public a(IZ)V
    .registers 3

    .line 66
    invoke-direct {p0, p1}, Lix;->f(I)I

    move-result p1

    if-ltz p1, :cond_c

    const/16 p2, 0x9

    if-ge p1, p2, :cond_c

    .line 68
    iput p1, p0, Lix;->c:I

    :cond_c
    return-void
.end method

.method public a(Liz;)Z
    .registers 7

    .line 169
    invoke-virtual {p1}, Liz;->g()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    .line 172
    :cond_8
    iget v0, p1, Liz;->a:I

    .line 173
    invoke-direct {p0, p1}, Lix;->e(Liz;)I

    move-result v3

    iput v3, p1, Liz;->a:I

    .line 174
    iget v3, p1, Liz;->a:I

    if-lez v3, :cond_18

    iget v3, p1, Liz;->a:I

    if-lt v3, v0, :cond_8

    .line 175
    :cond_18
    iget p1, p1, Liz;->a:I

    if-ge p1, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1

    .line 178
    :cond_1f
    invoke-direct {p0}, Lix;->j()I

    move-result v0

    if-ltz v0, :cond_37

    .line 180
    iget-object v3, p0, Lix;->a:[Liz;

    invoke-static {p1}, Liz;->b(Liz;)Liz;

    move-result-object v4

    aput-object v4, v3, v0

    .line 182
    iget-object v3, p0, Lix;->a:[Liz;

    aget-object v0, v3, v0

    const/4 v3, 0x5

    iput v3, v0, Liz;->b:I

    .line 183
    iput v2, p1, Liz;->a:I

    return v1

    :cond_37
    return v2
.end method

.method public a_(Lgs;)Z
    .registers 8

    .line 391
    iget-object v0, p0, Lix;->d:Lgs;

    iget-boolean v0, v0, Lgs;->be:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 392
    :cond_8
    iget-object v0, p0, Lix;->d:Lgs;

    invoke-virtual {p1, v0}, Lgs;->g(Lsn;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4050000000000000L    # 64.0

    cmpl-double p1, v2, v4

    if-lez p1, :cond_15

    return v1

    :cond_15
    const/4 p1, 0x1

    return p1
.end method

.method public b()Liz;
    .registers 3

    .line 31
    iget v0, p0, Lix;->c:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_d

    if-ltz v0, :cond_d

    .line 32
    iget-object v1, p0, Lix;->a:[Liz;

    aget-object v0, v1, v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .registers 3

    if-lez p1, :cond_3

    const/4 p1, 0x1

    :cond_3
    if-gez p1, :cond_6

    const/4 p1, -0x1

    .line 83
    :cond_6
    iget v0, p0, Lix;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lix;->c:I

    .line 85
    :goto_b
    iget p1, p0, Lix;->c:I

    if-gez p1, :cond_14

    add-int/lit8 p1, p1, 0x9

    .line 86
    iput p1, p0, Lix;->c:I

    goto :goto_b

    .line 87
    :cond_14
    :goto_14
    iget p1, p0, Lix;->c:I

    const/16 v0, 0x9

    if-lt p1, v0, :cond_1f

    add-int/lit8 p1, p1, -0x9

    .line 88
    iput p1, p0, Lix;->c:I

    goto :goto_14

    :cond_1f
    return-void
.end method

.method public b(Liz;)V
    .registers 3

    .line 382
    iput-object p1, p0, Lix;->f:Liz;

    .line 383
    iget-object v0, p0, Lix;->d:Lgs;

    invoke-virtual {v0, p1}, Lgs;->b(Liz;)V

    return-void
.end method

.method public b(Lsp;)V
    .registers 8

    const/16 v0, 0x24

    new-array v0, v0, [Liz;

    .line 247
    iput-object v0, p0, Lix;->a:[Liz;

    const/4 v0, 0x4

    new-array v0, v0, [Liz;

    .line 248
    iput-object v0, p0, Lix;->b:[Liz;

    const/4 v0, 0x0

    .line 249
    :goto_c
    invoke-virtual {p1}, Lsp;->c()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 250
    invoke-virtual {p1, v0}, Lsp;->a(I)Lij;

    move-result-object v1

    check-cast v1, Lnu;

    const-string v2, "Slot"

    .line 251
    invoke-virtual {v1, v2}, Lnu;->c(Ljava/lang/String;)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 252
    new-instance v3, Liz;

    invoke-direct {v3, v1}, Liz;-><init>(Lnu;)V

    .line 253
    invoke-virtual {v3}, Liz;->a()Lgm;

    move-result-object v1

    if-eqz v1, :cond_42

    if-ltz v2, :cond_34

    .line 254
    iget-object v1, p0, Lix;->a:[Liz;

    array-length v4, v1

    if-ge v2, v4, :cond_34

    aput-object v3, v1, v2

    :cond_34
    const/16 v1, 0x64

    if-lt v2, v1, :cond_42

    .line 255
    iget-object v4, p0, Lix;->b:[Liz;

    array-length v5, v4

    add-int/2addr v5, v1

    if-ge v2, v5, :cond_42

    add-int/lit8 v2, v2, -0x64

    aput-object v3, v4, v2

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_45
    return-void
.end method

.method public b(Luu;)Z
    .registers 3

    .line 289
    iget-object v0, p1, Luu;->bA:Lln;

    invoke-virtual {v0}, Lln;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 291
    :cond_a
    iget v0, p0, Lix;->c:I

    invoke-virtual {p0, v0}, Lix;->f_(I)Liz;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 292
    invoke-virtual {v0, p1}, Liz;->b(Luu;)Z

    move-result p1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "Inventory"

    return-object v0
.end method

.method public c(I)Z
    .registers 5

    .line 155
    invoke-direct {p0, p1}, Lix;->f(I)I

    move-result p1

    if-gez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 157
    :cond_8
    iget-object v0, p0, Lix;->a:[Liz;

    aget-object v0, v0, p1

    iget v1, v0, Liz;->a:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Liz;->a:I

    if-gtz v1, :cond_19

    iget-object v0, p0, Lix;->a:[Liz;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_19
    return v2
.end method

.method public c(Liz;)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 397
    :goto_2
    iget-object v2, p0, Lix;->b:[Liz;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_16

    .line 398
    aget-object v2, v2, v1

    if-eqz v2, :cond_13

    invoke-virtual {v2, p1}, Liz;->c(Liz;)Z

    move-result v2

    if-eqz v2, :cond_13

    return v4

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    move v1, v0

    .line 400
    :goto_17
    iget-object v2, p0, Lix;->a:[Liz;

    array-length v3, v2

    if-ge v1, v3, :cond_2a

    .line 401
    aget-object v2, v2, v1

    if-eqz v2, :cond_27

    invoke-virtual {v2, p1}, Liz;->c(Liz;)Z

    move-result v2

    if-eqz v2, :cond_27

    return v4

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2a
    return v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method public d(I)Liz;
    .registers 3

    .line 297
    iget-object v0, p0, Lix;->b:[Liz;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public e()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 147
    :goto_2
    iget-object v2, p0, Lix;->a:[Liz;

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 148
    aget-object v2, v2, v1

    if-eqz v2, :cond_1b

    .line 149
    iget-object v3, p0, Lix;->d:Lgs;

    iget-object v3, v3, Lgs;->aI:Lfd;

    iget-object v4, p0, Lix;->d:Lgs;

    iget v5, p0, Lix;->c:I

    if-ne v5, v1, :cond_17

    const/4 v5, 0x1

    goto :goto_18

    :cond_17
    move v5, v0

    :goto_18
    invoke-virtual {v2, v3, v4, v1, v5}, Liz;->a(Lfd;Lsn;IZ)V

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    return-void
.end method

.method public e(I)V
    .registers 5

    const/4 v0, 0x0

    .line 323
    :goto_1
    iget-object v1, p0, Lix;->b:[Liz;

    array-length v2, v1

    if-ge v0, v2, :cond_34

    .line 324
    aget-object v1, v1, v0

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Liz;->a()Lgm;

    move-result-object v1

    instance-of v1, v1, Lwa;

    if-eqz v1, :cond_31

    .line 325
    iget-object v1, p0, Lix;->b:[Liz;

    aget-object v1, v1, v0

    iget-object v2, p0, Lix;->d:Lgs;

    invoke-virtual {v1, p1, v2}, Liz;->a(ILsn;)V

    .line 326
    iget-object v1, p0, Lix;->b:[Liz;

    aget-object v1, v1, v0

    iget v1, v1, Liz;->a:I

    if-nez v1, :cond_31

    .line 327
    iget-object v1, p0, Lix;->b:[Liz;

    aget-object v1, v1, v0

    iget-object v2, p0, Lix;->d:Lgs;

    invoke-virtual {v1, v2}, Liz;->a(Lgs;)V

    .line 328
    iget-object v1, p0, Lix;->b:[Liz;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_34
    return-void
.end method

.method public f()I
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 304
    :goto_5
    iget-object v5, p0, Lix;->b:[Liz;

    array-length v6, v5

    if-ge v1, v6, :cond_3a

    .line 305
    aget-object v5, v5, v1

    if-eqz v5, :cond_37

    invoke-virtual {v5}, Liz;->a()Lgm;

    move-result-object v5

    instance-of v5, v5, Lwa;

    if-eqz v5, :cond_37

    .line 306
    iget-object v5, p0, Lix;->b:[Liz;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Liz;->j()I

    move-result v5

    .line 307
    iget-object v6, p0, Lix;->b:[Liz;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Liz;->h()I

    move-result v6

    sub-int v6, v5, v6

    add-int/2addr v4, v6

    add-int/2addr v2, v5

    .line 313
    iget-object v5, p0, Lix;->b:[Liz;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Liz;->a()Lgm;

    move-result-object v5

    check-cast v5, Lwa;

    iget v5, v5, Lwa;->bl:I

    add-int/2addr v3, v5

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3a
    if-nez v2, :cond_3d

    return v0

    :cond_3d
    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v4

    .line 319
    div-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    return v3
.end method

.method public f_(I)Liz;
    .registers 4

    .line 265
    iget-object v0, p0, Lix;->a:[Liz;

    .line 266
    array-length v1, v0

    if-lt p1, v1, :cond_9

    .line 267
    array-length v0, v0

    sub-int/2addr p1, v0

    .line 268
    iget-object v0, p0, Lix;->b:[Liz;

    .line 271
    :cond_9
    aget-object p1, v0, p1

    return-object p1
.end method

.method public g()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 335
    :goto_2
    iget-object v2, p0, Lix;->a:[Liz;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v3, :cond_19

    .line 336
    aget-object v2, v2, v1

    if-eqz v2, :cond_16

    .line 337
    iget-object v3, p0, Lix;->d:Lgs;

    invoke-virtual {v3, v2, v5}, Lgs;->a(Liz;Z)V

    .line 338
    iget-object v2, p0, Lix;->a:[Liz;

    aput-object v4, v2, v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 341
    :cond_19
    :goto_19
    iget-object v1, p0, Lix;->b:[Liz;

    array-length v2, v1

    if-ge v0, v2, :cond_2e

    .line 342
    aget-object v1, v1, v0

    if-eqz v1, :cond_2b

    .line 343
    iget-object v2, p0, Lix;->d:Lgs;

    invoke-virtual {v2, v1, v5}, Lgs;->a(Liz;Z)V

    .line 344
    iget-object v1, p0, Lix;->b:[Liz;

    aput-object v4, v1, v0

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2e
    return-void
.end method

.method public i()Liz;
    .registers 2

    .line 387
    iget-object v0, p0, Lix;->f:Liz;

    return-object v0
.end method

.method public y_()V
    .registers 2

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lix;->e:Z

    return-void
.end method
