###### Class defpackage.kx (kx)
.class public Lkx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcl;


# instance fields
.field a:I

.field b:I

.field private c:Llm;

.field private d:Lcl;

.field private e:Lbf;

.field private f:[Llm;

.field private g:Lfd;

.field private h:Llm;

.field private i:I

.field private j:I


# direct methods
.method private a(Llm;)V
    .registers 4

    .line 119
    iget-object v0, p0, Lkx;->e:Lbf;

    if-nez v0, :cond_5

    return-void

    .line 121
    :cond_5
    :try_start_5
    iget-object v1, p0, Lkx;->g:Lfd;

    invoke-interface {v0, v1, p1}, Lbf;->b(Lfd;Llm;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-void
.end method

.method private b(Llm;)V
    .registers 4

    .line 128
    iget-object v0, p0, Lkx;->e:Lbf;

    if-nez v0, :cond_5

    return-void

    .line 130
    :cond_5
    :try_start_5
    iget-object v0, p0, Lkx;->g:Lfd;

    invoke-virtual {v0}, Lfd;->t()J

    move-result-wide v0

    iput-wide v0, p1, Llm;->r:J

    .line 131
    iget-object v0, p0, Lkx;->e:Lbf;

    iget-object v1, p0, Lkx;->g:Lfd;

    invoke-interface {v0, v1, p1}, Lbf;->a(Lfd;Llm;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_19
    return-void
.end method

.method private f(II)Llm;
    .registers 5

    .line 105
    iget-object v0, p0, Lkx;->e:Lbf;

    if-nez v0, :cond_7

    iget-object p1, p0, Lkx;->c:Llm;

    return-object p1

    .line 107
    :cond_7
    :try_start_7
    iget-object v1, p0, Lkx;->g:Lfd;

    invoke-interface {v0, v1, p1, p2}, Lbf;->a(Lfd;II)Llm;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 109
    iget-object p2, p0, Lkx;->g:Lfd;

    invoke-virtual {p2}, Lfd;->t()J

    move-result-wide v0

    iput-wide v0, p1, Llm;->r:J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    :cond_17
    return-object p1

    :catch_18
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    iget-object p1, p0, Lkx;->c:Llm;

    return-object p1
.end method


# virtual methods
.method public a(Lcl;II)V
    .registers 6

    .line 138
    invoke-virtual {p0, p2, p3}, Lkx;->b(II)Llm;

    move-result-object v0

    .line 139
    iget-boolean v1, v0, Llm;->n:Z

    if-nez v1, :cond_15

    const/4 v1, 0x1

    .line 140
    iput-boolean v1, v0, Llm;->n:Z

    .line 141
    iget-object v1, p0, Lkx;->d:Lcl;

    if-eqz v1, :cond_15

    .line 142
    invoke-interface {v1, p1, p2, p3}, Lcl;->a(Lcl;II)V

    .line 143
    invoke-virtual {v0}, Llm;->g()V

    :cond_15
    return-void
.end method

.method public a()Z
    .registers 2

    .line 185
    iget-object v0, p0, Lkx;->e:Lbf;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lbf;->a()V

    .line 186
    :cond_7
    iget-object v0, p0, Lkx;->d:Lcl;

    invoke-interface {v0}, Lcl;->a()Z

    move-result v0

    return v0
.end method

.method public a(II)Z
    .registers 7

    .line 43
    invoke-virtual {p0, p1, p2}, Lkx;->e(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 45
    :cond_8
    iget v0, p0, Lkx;->a:I

    const/4 v2, 0x1

    if-ne p1, v0, :cond_16

    iget v0, p0, Lkx;->b:I

    if-ne p2, v0, :cond_16

    iget-object v0, p0, Lkx;->h:Llm;

    if-eqz v0, :cond_16

    return v2

    :cond_16
    and-int/lit8 v0, p1, 0x1f

    and-int/lit8 v3, p2, 0x1f

    mul-int/lit8 v3, v3, 0x20

    add-int/2addr v0, v3

    .line 51
    iget-object v3, p0, Lkx;->f:[Llm;

    aget-object v0, v3, v0

    if-eqz v0, :cond_2e

    iget-object v3, p0, Lkx;->c:Llm;

    if-eq v0, v3, :cond_2d

    invoke-virtual {v0, p1, p2}, Llm;->a(II)Z

    move-result p1

    if-eqz p1, :cond_2e

    :cond_2d
    move v1, v2

    :cond_2e
    return v1
.end method

.method public a(ZLyb;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_19

    move v1, v0

    move v2, v1

    .line 154
    :goto_5
    iget-object v3, p0, Lkx;->f:[Llm;

    array-length v4, v3

    if-ge v1, v4, :cond_1a

    .line 155
    aget-object v3, v3, v1

    if-eqz v3, :cond_16

    invoke-virtual {v3, p1}, Llm;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_16

    add-int/lit8 v2, v2, 0x1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    move v2, v0

    :cond_1a
    move v1, v0

    move v3, v1

    move v4, v3

    .line 161
    :goto_1d
    iget-object v5, p0, Lkx;->f:[Llm;

    array-length v6, v5

    if-ge v1, v6, :cond_63

    .line 162
    aget-object v5, v5, v1

    if-eqz v5, :cond_60

    if-eqz p1, :cond_33

    .line 163
    iget-boolean v5, v5, Llm;->p:Z

    if-nez v5, :cond_33

    iget-object v5, p0, Lkx;->f:[Llm;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lkx;->a(Llm;)V

    .line 164
    :cond_33
    iget-object v5, p0, Lkx;->f:[Llm;

    aget-object v5, v5, v1

    invoke-virtual {v5, p1}, Llm;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 165
    iget-object v5, p0, Lkx;->f:[Llm;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lkx;->b(Llm;)V

    .line 166
    iget-object v5, p0, Lkx;->f:[Llm;

    aget-object v5, v5, v1

    iput-boolean v0, v5, Llm;->o:Z

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_52

    if-nez p1, :cond_52

    return v0

    :cond_52
    if-eqz p2, :cond_60

    add-int/lit8 v4, v4, 0x1

    .line 169
    rem-int/lit8 v5, v4, 0xa

    if-nez v5, :cond_60

    mul-int/lit8 v5, v4, 0x64

    .line 170
    div-int/2addr v5, v2

    invoke-interface {p2, v5}, Lyb;->a(I)V

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_63
    const/4 p2, 0x1

    if-eqz p1, :cond_6e

    .line 178
    iget-object p1, p0, Lkx;->e:Lbf;

    if-nez p1, :cond_6b

    return p2

    .line 179
    :cond_6b
    invoke-interface {p1}, Lbf;->b()V

    :cond_6e
    return p2
.end method

.method public b(II)Llm;
    .registers 8

    .line 59
    iget v0, p0, Lkx;->a:I

    if-ne p1, v0, :cond_d

    iget v0, p0, Lkx;->b:I

    if-ne p2, v0, :cond_d

    iget-object v0, p0, Lkx;->h:Llm;

    if-eqz v0, :cond_d

    return-object v0

    .line 62
    :cond_d
    iget-object v0, p0, Lkx;->g:Lfd;

    iget-boolean v0, v0, Lfd;->y:Z

    if-nez v0, :cond_1c

    invoke-virtual {p0, p1, p2}, Lkx;->e(II)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p1, p0, Lkx;->c:Llm;

    return-object p1

    :cond_1c
    and-int/lit8 v0, p1, 0x1f

    and-int/lit8 v1, p2, 0x1f

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    .line 66
    invoke-virtual {p0, p1, p2}, Lkx;->a(II)Z

    move-result v1

    if-nez v1, :cond_f6

    .line 67
    iget-object v1, p0, Lkx;->f:[Llm;

    aget-object v1, v1, v0

    if-eqz v1, :cond_40

    .line 68
    invoke-virtual {v1}, Llm;->f()V

    .line 69
    iget-object v1, p0, Lkx;->f:[Llm;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lkx;->b(Llm;)V

    .line 70
    iget-object v1, p0, Lkx;->f:[Llm;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lkx;->a(Llm;)V

    .line 73
    :cond_40
    invoke-direct {p0, p1, p2}, Lkx;->f(II)Llm;

    move-result-object v1

    if-nez v1, :cond_54

    .line 75
    iget-object v1, p0, Lkx;->d:Lcl;

    if-nez v1, :cond_4d

    .line 76
    iget-object v1, p0, Lkx;->c:Llm;

    goto :goto_54

    .line 78
    :cond_4d
    invoke-interface {v1, p1, p2}, Lcl;->b(II)Llm;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Llm;->i()V

    .line 83
    :cond_54
    :goto_54
    iget-object v2, p0, Lkx;->f:[Llm;

    aput-object v1, v2, v0

    .line 84
    invoke-virtual {v1}, Llm;->d()V

    .line 86
    iget-object v1, p0, Lkx;->f:[Llm;

    aget-object v1, v1, v0

    if-eqz v1, :cond_64

    .line 87
    invoke-virtual {v1}, Llm;->e()V

    .line 90
    :cond_64
    iget-object v1, p0, Lkx;->f:[Llm;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Llm;->n:Z

    if-nez v1, :cond_85

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v1, v2}, Lkx;->a(II)Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-virtual {p0, p1, v2}, Lkx;->a(II)Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-virtual {p0, v1, p2}, Lkx;->a(II)Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-virtual {p0, p0, p1, p2}, Lkx;->a(Lcl;II)V

    :cond_85
    add-int/lit8 v1, p1, -0x1

    .line 91
    invoke-virtual {p0, v1, p2}, Lkx;->a(II)Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-virtual {p0, v1, p2}, Lkx;->b(II)Llm;

    move-result-object v2

    iget-boolean v2, v2, Llm;->n:Z

    if-nez v2, :cond_ac

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v1, v2}, Lkx;->a(II)Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-virtual {p0, p1, v2}, Lkx;->a(II)Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-virtual {p0, v1, p2}, Lkx;->a(II)Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-virtual {p0, p0, v1, p2}, Lkx;->a(Lcl;II)V

    :cond_ac
    add-int/lit8 v2, p2, -0x1

    .line 92
    invoke-virtual {p0, p1, v2}, Lkx;->a(II)Z

    move-result v3

    if-eqz v3, :cond_d3

    invoke-virtual {p0, p1, v2}, Lkx;->b(II)Llm;

    move-result-object v3

    iget-boolean v3, v3, Llm;->n:Z

    if-nez v3, :cond_d3

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3, v2}, Lkx;->a(II)Z

    move-result v4

    if-eqz v4, :cond_d3

    invoke-virtual {p0, p1, v2}, Lkx;->a(II)Z

    move-result v4

    if-eqz v4, :cond_d3

    invoke-virtual {p0, v3, p2}, Lkx;->a(II)Z

    move-result v3

    if-eqz v3, :cond_d3

    invoke-virtual {p0, p0, p1, v2}, Lkx;->a(Lcl;II)V

    .line 93
    :cond_d3
    invoke-virtual {p0, v1, v2}, Lkx;->a(II)Z

    move-result v3

    if-eqz v3, :cond_f6

    invoke-virtual {p0, v1, v2}, Lkx;->b(II)Llm;

    move-result-object v3

    iget-boolean v3, v3, Llm;->n:Z

    if-nez v3, :cond_f6

    invoke-virtual {p0, v1, v2}, Lkx;->a(II)Z

    move-result v3

    if-eqz v3, :cond_f6

    invoke-virtual {p0, p1, v2}, Lkx;->a(II)Z

    move-result v3

    if-eqz v3, :cond_f6

    invoke-virtual {p0, v1, p2}, Lkx;->a(II)Z

    move-result v3

    if-eqz v3, :cond_f6

    invoke-virtual {p0, p0, v1, v2}, Lkx;->a(Lcl;II)V

    .line 98
    :cond_f6
    iput p1, p0, Lkx;->a:I

    .line 99
    iput p2, p0, Lkx;->b:I

    .line 100
    iget-object p1, p0, Lkx;->f:[Llm;

    aget-object p1, p1, v0

    iput-object p1, p0, Lkx;->h:Llm;

    return-object p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChunkCache: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkx;->f:[Llm;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(II)Llm;
    .registers 3

    .line 55
    invoke-virtual {p0, p1, p2}, Lkx;->b(II)Llm;

    move-result-object p1

    return-object p1
.end method

.method public d(II)V
    .registers 3

    .line 33
    iput p1, p0, Lkx;->i:I

    .line 34
    iput p2, p0, Lkx;->j:I

    return-void
.end method

.method public e(II)Z
    .registers 6

    .line 39
    iget v0, p0, Lkx;->i:I

    add-int/lit8 v1, v0, -0xf

    if-lt p1, v1, :cond_16

    iget v1, p0, Lkx;->j:I

    add-int/lit8 v2, v1, -0xf

    if-lt p2, v2, :cond_16

    add-int/lit8 v0, v0, 0xf

    if-gt p1, v0, :cond_16

    add-int/lit8 v1, v1, 0xf

    if-gt p2, v1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method
