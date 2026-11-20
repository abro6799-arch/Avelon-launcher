###### Class defpackage.uk (uk)
.class public Luk;
.super Low;
.source "SourceFile"


# static fields
.field private static m:Ljava/util/List;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private i:Z

.field private j:Z

.field private k:F

.field private l:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Luk;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Low;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .registers 6

    .line 28
    invoke-direct {p0}, Low;-><init>()V

    .line 29
    iput p1, p0, Luk;->a:I

    .line 30
    iput p2, p0, Luk;->b:I

    .line 31
    iput p3, p0, Luk;->c:I

    .line 32
    iput-boolean p4, p0, Luk;->i:Z

    .line 33
    iput-boolean p5, p0, Luk;->j:Z

    return-void
.end method

.method private a(FF)V
    .registers 11

    .line 90
    iget-boolean v0, p0, Luk;->i:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_8

    sub-float/2addr p1, v1

    goto :goto_a

    :cond_8
    sub-float p1, v1, p1

    :goto_a
    move v6, p1

    .line 97
    sget-object v0, Luu;->ad:Lut;

    iget-object v1, p0, Luk;->d:Lfd;

    iget v2, p0, Luk;->e:I

    iget v3, p0, Luk;->f:I

    iget v4, p0, Luk;->g:I

    iget v5, p0, Luk;->a:I

    iget v7, p0, Luk;->c:I

    invoke-virtual/range {v0 .. v7}, Lut;->a(Lfd;IIIIFI)Leq;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 100
    iget-object v0, p0, Luk;->d:Lfd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lfd;->b(Lsn;Leq;)Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 102
    sget-object v0, Luk;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    sget-object p1, Luk;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lsn;

    .line 106
    sget-object v0, Lwj;->b:[I

    iget v2, p0, Luk;->c:I

    aget v0, v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-double v2, v0

    sget-object v0, Lwj;->c:[I

    iget v4, p0, Luk;->c:I

    aget v0, v0, v4

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-double v4, v0

    sget-object v0, Lwj;->d:[I

    iget v6, p0, Luk;->c:I

    aget v0, v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-double v6, v0

    invoke-virtual/range {v1 .. v7}, Lsn;->b(DDD)V

    goto :goto_37

    .line 111
    :cond_63
    sget-object p1, Luk;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_68
    return-void
.end method


# virtual methods
.method public a(F)F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_7

    move p1, v0

    .line 60
    :cond_7
    iget v0, p0, Luk;->l:F

    iget v1, p0, Luk;->k:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public a()I
    .registers 2

    .line 37
    iget v0, p0, Luk;->a:I

    return v0
.end method

.method public a(Lnu;)V
    .registers 3

    .line 153
    invoke-super {p0, p1}, Low;->a(Lnu;)V

    const-string v0, "blockId"

    .line 155
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Luk;->a:I

    const-string v0, "blockData"

    .line 156
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Luk;->b:I

    const-string v0, "facing"

    .line 157
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Luk;->c:I

    const-string v0, "progress"

    .line 158
    invoke-virtual {p1, v0}, Lnu;->g(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Luk;->k:F

    iput v0, p0, Luk;->l:F

    const-string v0, "extending"

    .line 159
    invoke-virtual {p1, v0}, Lnu;->m(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Luk;->i:Z

    return-void
.end method

.method public b(F)F
    .registers 4

    .line 64
    iget-boolean v0, p0, Luk;->i:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_14

    .line 65
    invoke-virtual {p0, p1}, Luk;->a(F)F

    move-result p1

    sub-float/2addr p1, v1

    sget-object v0, Lwj;->b:[I

    iget v1, p0, Luk;->c:I

    aget v0, v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    return p1

    .line 67
    :cond_14
    invoke-virtual {p0, p1}, Luk;->a(F)F

    move-result p1

    sub-float/2addr v1, p1

    sget-object p1, Lwj;->b:[I

    iget v0, p0, Luk;->c:I

    aget p1, p1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    return v1
.end method

.method public b(Lnu;)V
    .registers 4

    .line 164
    invoke-super {p0, p1}, Low;->b(Lnu;)V

    const-string v0, "blockId"

    .line 166
    iget v1, p0, Luk;->a:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "blockData"

    .line 167
    iget v1, p0, Luk;->b:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "facing"

    .line 168
    iget v1, p0, Luk;->c:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "progress"

    .line 169
    iget v1, p0, Luk;->l:F

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;F)V

    const-string v0, "extending"

    .line 170
    iget-boolean v1, p0, Luk;->i:Z

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Luk;->i:Z

    return v0
.end method

.method public c(F)F
    .registers 4

    .line 72
    iget-boolean v0, p0, Luk;->i:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_14

    .line 73
    invoke-virtual {p0, p1}, Luk;->a(F)F

    move-result p1

    sub-float/2addr p1, v1

    sget-object v0, Lwj;->c:[I

    iget v1, p0, Luk;->c:I

    aget v0, v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    return p1

    .line 75
    :cond_14
    invoke-virtual {p0, p1}, Luk;->a(F)F

    move-result p1

    sub-float/2addr v1, p1

    sget-object p1, Lwj;->c:[I

    iget v0, p0, Luk;->c:I

    aget p1, p1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    return v1
.end method

.method public d(F)F
    .registers 4

    .line 80
    iget-boolean v0, p0, Luk;->i:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_14

    .line 81
    invoke-virtual {p0, p1}, Luk;->a(F)F

    move-result p1

    sub-float/2addr p1, v1

    sget-object v0, Lwj;->d:[I

    iget v1, p0, Luk;->c:I

    aget v0, v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    return p1

    .line 83
    :cond_14
    invoke-virtual {p0, p1}, Luk;->a(F)F

    move-result p1

    sub-float/2addr v1, p1

    sget-object p1, Lwj;->d:[I

    iget v0, p0, Luk;->c:I

    aget p1, p1, v0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    return v1
.end method

.method public d()I
    .registers 2

    .line 49
    iget v0, p0, Luk;->c:I

    return v0
.end method

.method public e()I
    .registers 2

    .line 41
    iget v0, p0, Luk;->b:I

    return v0
.end method

.method public k()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Luk;->j:Z

    return v0
.end method

.method public l()V
    .registers 9

    .line 117
    iget v0, p0, Luk;->l:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3b

    .line 118
    iput v1, p0, Luk;->k:F

    iput v1, p0, Luk;->l:F

    .line 119
    iget-object v0, p0, Luk;->d:Lfd;

    iget v1, p0, Luk;->e:I

    iget v2, p0, Luk;->f:I

    iget v3, p0, Luk;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lfd;->p(III)V

    .line 120
    invoke-virtual {p0}, Luk;->i()V

    .line 121
    iget-object v0, p0, Luk;->d:Lfd;

    iget v1, p0, Luk;->e:I

    iget v2, p0, Luk;->f:I

    iget v3, p0, Luk;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lfd;->a(III)I

    move-result v0

    sget-object v1, Luu;->ad:Lut;

    iget v1, v1, Lut;->bn:I

    if-ne v0, v1, :cond_3b

    .line 122
    iget-object v2, p0, Luk;->d:Lfd;

    iget v3, p0, Luk;->e:I

    iget v4, p0, Luk;->f:I

    iget v5, p0, Luk;->g:I

    iget v6, p0, Luk;->a:I

    iget v7, p0, Luk;->b:I

    invoke-virtual/range {v2 .. v7}, Lfd;->b(IIIII)Z

    :cond_3b
    return-void
.end method

.method public n_()V
    .registers 9

    .line 128
    iget v0, p0, Luk;->k:F

    iput v0, p0, Luk;->l:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_3f

    const/high16 v0, 0x3e800000    # 0.25f

    .line 131
    invoke-direct {p0, v1, v0}, Luk;->a(FF)V

    .line 132
    iget-object v0, p0, Luk;->d:Lfd;

    iget v1, p0, Luk;->e:I

    iget v2, p0, Luk;->f:I

    iget v3, p0, Luk;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lfd;->p(III)V

    .line 133
    invoke-virtual {p0}, Luk;->i()V

    .line 134
    iget-object v0, p0, Luk;->d:Lfd;

    iget v1, p0, Luk;->e:I

    iget v2, p0, Luk;->f:I

    iget v3, p0, Luk;->g:I

    invoke-virtual {v0, v1, v2, v3}, Lfd;->a(III)I

    move-result v0

    sget-object v1, Luu;->ad:Lut;

    iget v1, v1, Lut;->bn:I

    if-ne v0, v1, :cond_3e

    .line 135
    iget-object v2, p0, Luk;->d:Lfd;

    iget v3, p0, Luk;->e:I

    iget v4, p0, Luk;->f:I

    iget v5, p0, Luk;->g:I

    iget v6, p0, Luk;->a:I

    iget v7, p0, Luk;->b:I

    invoke-virtual/range {v2 .. v7}, Lfd;->b(IIIII)Z

    :cond_3e
    return-void

    :cond_3f
    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, v0

    .line 139
    iput v2, p0, Luk;->k:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_4a

    .line 141
    iput v1, p0, Luk;->k:F

    .line 144
    :cond_4a
    iget-boolean v1, p0, Luk;->i:Z

    if-eqz v1, :cond_58

    .line 145
    iget v1, p0, Luk;->k:F

    sub-float v0, v1, v0

    const/high16 v2, 0x3d800000    # 0.0625f

    add-float/2addr v0, v2

    invoke-direct {p0, v1, v0}, Luk;->a(FF)V

    :cond_58
    return-void
.end method
