###### Class defpackage.sk (sk)
.class public Lsk;
.super Low;
.source "SourceFile"

# interfaces
.implements Llw;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private i:[Liz;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Low;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Liz;

    .line 15
    iput-object v0, p0, Lsk;->i:[Liz;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lsk;->a:I

    .line 17
    iput v0, p0, Lsk;->b:I

    .line 18
    iput v0, p0, Lsk;->c:I

    return-void
.end method

.method private a(Liz;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 167
    :cond_4
    invoke-virtual {p1}, Liz;->a()Lgm;

    move-result-object p1

    iget p1, p1, Lgm;->bf:I

    const/16 v1, 0x100

    if-ge p1, v1, :cond_1b

    .line 169
    sget-object v1, Luu;->m:[Luu;

    aget-object v1, v1, p1

    iget-object v1, v1, Luu;->bA:Lln;

    sget-object v2, Lln;->d:Lln;

    if-ne v1, v2, :cond_1b

    const/16 p1, 0x12c

    return p1

    .line 173
    :cond_1b
    sget-object v1, Lgm;->B:Lgm;

    iget v1, v1, Lgm;->bf:I

    const/16 v2, 0x64

    if-ne p1, v1, :cond_24

    return v2

    .line 177
    :cond_24
    sget-object v1, Lgm;->k:Lgm;

    iget v1, v1, Lgm;->bf:I

    if-ne p1, v1, :cond_2d

    const/16 p1, 0x640

    return p1

    .line 179
    :cond_2d
    sget-object v1, Lgm;->aw:Lgm;

    iget v1, v1, Lgm;->bf:I

    if-ne p1, v1, :cond_36

    const/16 p1, 0x4e20

    return p1

    .line 181
    :cond_36
    sget-object v1, Luu;->z:Luu;

    iget v1, v1, Luu;->bn:I

    if-ne p1, v1, :cond_3d

    return v2

    :cond_3d
    return v0
.end method

.method private l()Z
    .registers 7

    .line 144
    iget-object v0, p0, Lsk;->i:[Liz;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_8

    return v1

    .line 145
    :cond_8
    invoke-static {}, Ley;->a()Ley;

    move-result-object v0

    iget-object v2, p0, Lsk;->i:[Liz;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Liz;->a()Lgm;

    move-result-object v2

    iget v2, v2, Lgm;->bf:I

    invoke-virtual {v0, v2}, Ley;->a(I)Liz;

    move-result-object v0

    if-nez v0, :cond_1d

    return v1

    .line 147
    :cond_1d
    iget-object v2, p0, Lsk;->i:[Liz;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v4, 0x1

    if-nez v2, :cond_26

    return v4

    .line 148
    :cond_26
    invoke-virtual {v2, v0}, Liz;->a(Liz;)Z

    move-result v2

    if-nez v2, :cond_2d

    return v1

    .line 149
    :cond_2d
    iget-object v2, p0, Lsk;->i:[Liz;

    aget-object v2, v2, v3

    iget v2, v2, Liz;->a:I

    invoke-virtual {p0}, Lsk;->d()I

    move-result v5

    if-ge v2, v5, :cond_4a

    iget-object v2, p0, Lsk;->i:[Liz;

    aget-object v2, v2, v3

    iget v2, v2, Liz;->a:I

    iget-object v5, p0, Lsk;->i:[Liz;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Liz;->c()I

    move-result v5

    if-ge v2, v5, :cond_4a

    return v4

    .line 150
    :cond_4a
    iget-object v2, p0, Lsk;->i:[Liz;

    aget-object v2, v2, v3

    iget v2, v2, Liz;->a:I

    invoke-virtual {v0}, Liz;->c()I

    move-result v0

    if-ge v2, v0, :cond_57

    return v4

    :cond_57
    return v1
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 21
    iget-object v0, p0, Lsk;->i:[Liz;

    array-length v0, v0

    return v0
.end method

.method public a(II)Liz;
    .registers 5

    .line 29
    iget-object v0, p0, Lsk;->i:[Liz;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 30
    iget v0, v0, Liz;->a:I

    if-gt v0, p2, :cond_12

    .line 31
    iget-object p2, p0, Lsk;->i:[Liz;

    aget-object v0, p2, p1

    .line 32
    aput-object v1, p2, p1

    return-object v0

    .line 35
    :cond_12
    iget-object v0, p0, Lsk;->i:[Liz;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Liz;->a(I)Liz;

    move-result-object p2

    .line 36
    iget-object v0, p0, Lsk;->i:[Liz;

    aget-object v0, v0, p1

    iget v0, v0, Liz;->a:I

    if-nez v0, :cond_26

    iget-object v0, p0, Lsk;->i:[Liz;

    aput-object v1, v0, p1

    :cond_26
    return-object p2

    :cond_27
    return-object v1
.end method

.method public a(ILiz;)V
    .registers 4

    .line 44
    iget-object v0, p0, Lsk;->i:[Liz;

    aput-object p2, v0, p1

    if-eqz p2, :cond_14

    .line 45
    iget p1, p2, Liz;->a:I

    invoke-virtual {p0}, Lsk;->d()I

    move-result v0

    if-le p1, v0, :cond_14

    invoke-virtual {p0}, Lsk;->d()I

    move-result p1

    iput p1, p2, Liz;->a:I

    :cond_14
    return-void
.end method

.method public a(Lnu;)V
    .registers 8

    .line 54
    invoke-super {p0, p1}, Low;->a(Lnu;)V

    const-string v0, "Items"

    .line 55
    invoke-virtual {p1, v0}, Lnu;->l(Ljava/lang/String;)Lsp;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lsk;->a()I

    move-result v1

    new-array v1, v1, [Liz;

    iput-object v1, p0, Lsk;->i:[Liz;

    const/4 v1, 0x0

    .line 57
    :goto_12
    invoke-virtual {v0}, Lsp;->c()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 58
    invoke-virtual {v0, v1}, Lsp;->a(I)Lij;

    move-result-object v2

    check-cast v2, Lnu;

    const-string v3, "Slot"

    .line 59
    invoke-virtual {v2, v3}, Lnu;->c(Ljava/lang/String;)B

    move-result v3

    if-ltz v3, :cond_32

    .line 60
    iget-object v4, p0, Lsk;->i:[Liz;

    array-length v5, v4

    if-ge v3, v5, :cond_32

    new-instance v5, Liz;

    invoke-direct {v5, v2}, Liz;-><init>(Lnu;)V

    aput-object v5, v4, v3

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_35
    const-string v0, "BurnTime"

    .line 63
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    iput v0, p0, Lsk;->a:I

    const-string v0, "CookTime"

    .line 64
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result p1

    iput p1, p0, Lsk;->c:I

    .line 65
    iget-object p1, p0, Lsk;->i:[Liz;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lsk;->a(Liz;)I

    move-result p1

    iput p1, p0, Lsk;->b:I

    return-void
.end method

.method public a_(Lgs;)Z
    .registers 15

    .line 187
    iget-object v0, p0, Lsk;->d:Lfd;

    iget v1, p0, Lsk;->e:I

    iget v2, p0, Lsk;->f:I

    iget v3, p0, Lsk;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lfd;->b(III)Low;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_10

    return v1

    .line 188
    :cond_10
    iget v0, p0, Lsk;->e:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double v7, v2, v4

    iget v0, p0, Lsk;->f:I

    int-to-double v2, v0

    add-double v9, v2, v4

    iget v0, p0, Lsk;->g:I

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

.method public b(I)I
    .registers 3

    .line 90
    iget v0, p0, Lsk;->c:I

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xc8

    return v0
.end method

.method public b(Lnu;)V
    .registers 7

    .line 69
    invoke-super {p0, p1}, Low;->b(Lnu;)V

    .line 70
    iget v0, p0, Lsk;->a:I

    int-to-short v0, v0

    const-string v1, "BurnTime"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 71
    iget v0, p0, Lsk;->c:I

    int-to-short v0, v0

    const-string v1, "CookTime"

    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;S)V

    .line 72
    new-instance v0, Lsp;

    invoke-direct {v0}, Lsp;-><init>()V

    const/4 v1, 0x0

    .line 74
    :goto_19
    iget-object v2, p0, Lsk;->i:[Liz;

    array-length v3, v2

    if-ge v1, v3, :cond_3a

    .line 75
    aget-object v2, v2, v1

    if-eqz v2, :cond_37

    .line 76
    new-instance v2, Lnu;

    invoke-direct {v2}, Lnu;-><init>()V

    const-string v3, "Slot"

    int-to-byte v4, v1

    .line 77
    invoke-virtual {v2, v3, v4}, Lnu;->a(Ljava/lang/String;B)V

    .line 78
    iget-object v3, p0, Lsk;->i:[Liz;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Liz;->a(Lnu;)Lnu;

    .line 79
    invoke-virtual {v0, v2}, Lsp;->a(Lij;)V

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_3a
    const-string v1, "Items"

    .line 82
    invoke-virtual {p1, v1, v0}, Lnu;->a(Ljava/lang/String;Lij;)V

    return-void
.end method

.method public b()Z
    .registers 2

    .line 99
    iget v0, p0, Lsk;->a:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public c(I)I
    .registers 3

    .line 94
    iget v0, p0, Lsk;->b:I

    if-nez v0, :cond_8

    const/16 v0, 0xc8

    iput v0, p0, Lsk;->b:I

    .line 95
    :cond_8
    iget v0, p0, Lsk;->a:I

    mul-int/2addr v0, p1

    iget p1, p0, Lsk;->b:I

    div-int/2addr v0, p1

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "Furnace"

    return-object v0
.end method

.method public d()I
    .registers 2

    const/16 v0, 0x40

    return v0
.end method

.method public f_(I)Liz;
    .registers 3

    .line 25
    iget-object v0, p0, Lsk;->i:[Liz;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public k()V
    .registers 6

    .line 155
    invoke-direct {p0}, Lsk;->l()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 157
    :cond_7
    invoke-static {}, Ley;->a()Ley;

    move-result-object v0

    iget-object v1, p0, Lsk;->i:[Liz;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Liz;->a()Lgm;

    move-result-object v1

    iget v1, v1, Lgm;->bf:I

    invoke-virtual {v0, v1}, Ley;->a(I)Liz;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lsk;->i:[Liz;

    const/4 v3, 0x2

    aget-object v4, v1, v3

    if-nez v4, :cond_28

    invoke-virtual {v0}, Liz;->k()Liz;

    move-result-object v0

    aput-object v0, v1, v3

    goto :goto_38

    .line 159
    :cond_28
    iget v1, v4, Liz;->c:I

    iget v0, v0, Liz;->c:I

    if-ne v1, v0, :cond_38

    iget-object v0, p0, Lsk;->i:[Liz;

    aget-object v0, v0, v3

    iget v1, v0, Liz;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Liz;->a:I

    .line 161
    :cond_38
    :goto_38
    iget-object v0, p0, Lsk;->i:[Liz;

    aget-object v0, v0, v2

    iget v1, v0, Liz;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Liz;->a:I

    .line 162
    iget-object v0, p0, Lsk;->i:[Liz;

    aget-object v0, v0, v2

    iget v0, v0, Liz;->a:I

    if-gtz v0, :cond_4f

    iget-object v0, p0, Lsk;->i:[Liz;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    :cond_4f
    return-void
.end method

.method public n_()V
    .registers 7

    .line 103
    iget v0, p0, Lsk;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    if-lez v0, :cond_e

    sub-int/2addr v0, v2

    .line 106
    iput v0, p0, Lsk;->a:I

    .line 111
    :cond_e
    iget-object v0, p0, Lsk;->d:Lfd;

    iget-boolean v0, v0, Lfd;->B:Z

    if-nez v0, :cond_7f

    .line 112
    iget v0, p0, Lsk;->a:I

    if-nez v0, :cond_46

    invoke-direct {p0}, Lsk;->l()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 113
    iget-object v0, p0, Lsk;->i:[Liz;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lsk;->a(Liz;)I

    move-result v0

    iput v0, p0, Lsk;->a:I

    iput v0, p0, Lsk;->b:I

    if-lez v0, :cond_46

    .line 116
    iget-object v0, p0, Lsk;->i:[Liz;

    aget-object v0, v0, v2

    if-eqz v0, :cond_44

    .line 117
    iget v4, v0, Liz;->a:I

    sub-int/2addr v4, v2

    iput v4, v0, Liz;->a:I

    .line 118
    iget-object v0, p0, Lsk;->i:[Liz;

    aget-object v0, v0, v2

    iget v0, v0, Liz;->a:I

    if-nez v0, :cond_44

    iget-object v0, p0, Lsk;->i:[Liz;

    const/4 v4, 0x0

    aput-object v4, v0, v2

    :cond_44
    move v0, v2

    goto :goto_47

    :cond_46
    move v0, v1

    .line 123
    :goto_47
    invoke-virtual {p0}, Lsk;->b()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-direct {p0}, Lsk;->l()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 124
    iget v4, p0, Lsk;->c:I

    add-int/2addr v4, v2

    iput v4, p0, Lsk;->c:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_65

    .line 126
    iput v1, p0, Lsk;->c:I

    .line 127
    invoke-virtual {p0}, Lsk;->k()V

    move v0, v2

    goto :goto_65

    .line 131
    :cond_63
    iput v1, p0, Lsk;->c:I

    .line 134
    :cond_65
    :goto_65
    iget v4, p0, Lsk;->a:I

    if-lez v4, :cond_6b

    move v5, v2

    goto :goto_6c

    :cond_6b
    move v5, v1

    :goto_6c
    if-eq v3, v5, :cond_7e

    if-lez v4, :cond_71

    move v1, v2

    .line 136
    :cond_71
    iget-object v0, p0, Lsk;->d:Lfd;

    iget v3, p0, Lsk;->e:I

    iget v4, p0, Lsk;->f:I

    iget v5, p0, Lsk;->g:I

    invoke-static {v1, v0, v3, v4, v5}, Ltc;->a(ZLfd;III)V

    move v1, v2

    goto :goto_7f

    :cond_7e
    move v1, v0

    :cond_7f
    :goto_7f
    if-eqz v1, :cond_84

    .line 140
    invoke-virtual {p0}, Lsk;->y_()V

    :cond_84
    return-void
.end method
