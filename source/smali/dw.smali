###### Class defpackage.dw (dw)
.class public abstract Ldw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:S

.field private b:Ljava/util/Set;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:I

.field protected g:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldw;->d:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldw;->e:Ljava/util/List;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Ldw;->f:I

    .line 20
    iput-short v0, p0, Ldw;->a:S

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldw;->g:Ljava/util/List;

    .line 248
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldw;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(I)Liz;
    .registers 3

    .line 84
    iget-object v0, p0, Ldw;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgp;

    if-eqz p1, :cond_f

    .line 86
    invoke-virtual {p1}, Lgp;->a()Liz;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IIZLgs;)Liz;
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    if-ne p2, v0, :cond_170

    .line 94
    :cond_6
    iget-object v2, p4, Lgs;->c:Lix;

    const/16 v3, -0x3e7

    if-ne p1, v3, :cond_3a

    .line 96
    invoke-virtual {v2}, Lix;->i()Liz;

    move-result-object p3

    if-eqz p3, :cond_170

    if-ne p1, v3, :cond_170

    if-nez p2, :cond_20

    .line 99
    invoke-virtual {v2}, Lix;->i()Liz;

    move-result-object p1

    invoke-virtual {p4, p1}, Lgs;->a(Liz;)V

    .line 100
    invoke-virtual {v2, v1}, Lix;->b(Liz;)V

    :cond_20
    if-ne p2, v0, :cond_170

    .line 103
    invoke-virtual {v2}, Lix;->i()Liz;

    move-result-object p1

    invoke-virtual {p1, v0}, Liz;->a(I)Liz;

    move-result-object p1

    invoke-virtual {p4, p1}, Lgs;->a(Liz;)V

    .line 104
    invoke-virtual {v2}, Lix;->i()Liz;

    move-result-object p1

    iget p1, p1, Liz;->a:I

    if-nez p1, :cond_170

    invoke-virtual {v2, v1}, Lix;->b(Liz;)V

    goto/16 :goto_170

    :cond_3a
    if-eqz p3, :cond_66

    .line 110
    invoke-virtual {p0, p1}, Ldw;->a(I)Liz;

    move-result-object v0

    if-eqz v0, :cond_170

    .line 112
    iget v1, v0, Liz;->a:I

    .line 113
    invoke-virtual {v0}, Liz;->k()Liz;

    move-result-object v0

    .line 115
    iget-object v2, p0, Ldw;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgp;

    if-eqz v2, :cond_63

    .line 117
    invoke-virtual {v2}, Lgp;->a()Liz;

    move-result-object v3

    if-eqz v3, :cond_63

    .line 118
    invoke-virtual {v2}, Lgp;->a()Liz;

    move-result-object v2

    iget v2, v2, Liz;->a:I

    if-ge v2, v1, :cond_63

    .line 119
    invoke-virtual {p0, p1, p2, p3, p4}, Ldw;->a(IIZLgs;)Liz;

    :cond_63
    move-object v1, v0

    goto/16 :goto_170

    .line 124
    :cond_66
    iget-object p3, p0, Ldw;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgp;

    if-eqz p1, :cond_170

    .line 126
    invoke-virtual {p1}, Lgp;->c()V

    .line 127
    invoke-virtual {p1}, Lgp;->a()Liz;

    move-result-object p3

    .line 128
    invoke-virtual {v2}, Lix;->i()Liz;

    move-result-object p4

    if-eqz p3, :cond_82

    .line 131
    invoke-virtual {p3}, Liz;->k()Liz;

    move-result-object v3

    goto :goto_83

    :cond_82
    move-object v3, v1

    :goto_83
    if-nez p3, :cond_ab

    if-eqz p4, :cond_16f

    .line 135
    invoke-virtual {p1, p4}, Lgp;->b(Liz;)Z

    move-result p3

    if-eqz p3, :cond_16f

    if-nez p2, :cond_91

    .line 136
    iget v0, p4, Liz;->a:I

    .line 137
    :cond_91
    invoke-virtual {p1}, Lgp;->d()I

    move-result p2

    if-le v0, p2, :cond_9b

    .line 138
    invoke-virtual {p1}, Lgp;->d()I

    move-result v0

    .line 140
    :cond_9b
    invoke-virtual {p4, v0}, Liz;->a(I)Liz;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgp;->c(Liz;)V

    .line 141
    iget p1, p4, Liz;->a:I

    if-nez p1, :cond_16f

    .line 142
    invoke-virtual {v2, v1}, Lix;->b(Liz;)V

    goto/16 :goto_16f

    :cond_ab
    if-nez p4, :cond_ce

    if-nez p2, :cond_b2

    .line 148
    iget p2, p3, Liz;->a:I

    goto :goto_b7

    :cond_b2
    iget p2, p3, Liz;->a:I

    add-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    .line 149
    :goto_b7
    invoke-virtual {p1, p2}, Lgp;->a(I)Liz;

    move-result-object p2

    .line 151
    invoke-virtual {v2, p2}, Lix;->b(Liz;)V

    .line 152
    iget p2, p3, Liz;->a:I

    if-nez p2, :cond_c5

    .line 153
    invoke-virtual {p1, v1}, Lgp;->c(Liz;)V

    .line 155
    :cond_c5
    invoke-virtual {v2}, Lix;->i()Liz;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgp;->a(Liz;)V

    goto/16 :goto_16f

    .line 156
    :cond_ce
    invoke-virtual {p1, p4}, Lgp;->b(Liz;)Z

    move-result v4

    if-eqz v4, :cond_130

    .line 158
    iget v4, p3, Liz;->c:I

    iget v5, p4, Liz;->c:I

    if-ne v4, v5, :cond_121

    invoke-virtual {p3}, Liz;->f()Z

    move-result v4

    if-eqz v4, :cond_eb

    invoke-virtual {p3}, Liz;->i()I

    move-result v4

    invoke-virtual {p4}, Liz;->i()I

    move-result v5

    if-eq v4, v5, :cond_eb

    goto :goto_121

    :cond_eb
    if-nez p2, :cond_ef

    .line 167
    iget v0, p4, Liz;->a:I

    .line 168
    :cond_ef
    invoke-virtual {p1}, Lgp;->d()I

    move-result p2

    iget v4, p3, Liz;->a:I

    sub-int/2addr p2, v4

    if-le v0, p2, :cond_100

    .line 169
    invoke-virtual {p1}, Lgp;->d()I

    move-result p1

    iget p2, p3, Liz;->a:I

    sub-int v0, p1, p2

    .line 171
    :cond_100
    invoke-virtual {p4}, Liz;->c()I

    move-result p1

    iget p2, p3, Liz;->a:I

    sub-int/2addr p1, p2

    if-le v0, p1, :cond_111

    .line 172
    invoke-virtual {p4}, Liz;->c()I

    move-result p1

    iget p2, p3, Liz;->a:I

    sub-int v0, p1, p2

    .line 174
    :cond_111
    invoke-virtual {p4, v0}, Liz;->a(I)Liz;

    .line 175
    iget p1, p4, Liz;->a:I

    if-nez p1, :cond_11b

    .line 176
    invoke-virtual {v2, v1}, Lix;->b(Liz;)V

    .line 178
    :cond_11b
    iget p1, p3, Liz;->a:I

    add-int/2addr p1, v0

    iput p1, p3, Liz;->a:I

    goto :goto_16f

    .line 160
    :cond_121
    :goto_121
    iget p2, p4, Liz;->a:I

    invoke-virtual {p1}, Lgp;->d()I

    move-result v0

    if-gt p2, v0, :cond_16f

    .line 162
    invoke-virtual {p1, p4}, Lgp;->c(Liz;)V

    .line 163
    invoke-virtual {v2, p3}, Lix;->b(Liz;)V

    goto :goto_16f

    .line 182
    :cond_130
    iget p2, p3, Liz;->c:I

    iget v4, p4, Liz;->c:I

    if-ne p2, v4, :cond_16f

    invoke-virtual {p4}, Liz;->c()I

    move-result p2

    if-le p2, v0, :cond_16f

    invoke-virtual {p3}, Liz;->f()Z

    move-result p2

    if-eqz p2, :cond_14c

    invoke-virtual {p3}, Liz;->i()I

    move-result p2

    invoke-virtual {p4}, Liz;->i()I

    move-result v0

    if-ne p2, v0, :cond_16f

    .line 183
    :cond_14c
    iget p2, p3, Liz;->a:I

    if-lez p2, :cond_16f

    .line 184
    iget v0, p4, Liz;->a:I

    add-int/2addr v0, p2

    invoke-virtual {p4}, Liz;->c()I

    move-result v4

    if-gt v0, v4, :cond_16f

    .line 185
    iget v0, p4, Liz;->a:I

    add-int/2addr v0, p2

    iput v0, p4, Liz;->a:I

    .line 186
    invoke-virtual {p3, p2}, Liz;->a(I)Liz;

    .line 187
    iget p2, p3, Liz;->a:I

    if-nez p2, :cond_168

    invoke-virtual {p1, v1}, Lgp;->c(Liz;)V

    .line 188
    :cond_168
    invoke-virtual {v2}, Lix;->i()Liz;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgp;->a(Liz;)V

    :cond_16f
    :goto_16f
    move-object v1, v3

    :cond_170
    :goto_170
    return-object v1
.end method

.method public a(Lix;)S
    .registers 2

    .line 232
    iget-short p1, p0, Ldw;->a:S

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    iput-short p1, p0, Ldw;->a:S

    return p1
.end method

.method public a()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 56
    :goto_2
    iget-object v2, p0, Ldw;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 57
    iget-object v2, p0, Ldw;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgp;

    invoke-virtual {v2}, Lgp;->a()Liz;

    move-result-object v2

    .line 58
    iget-object v3, p0, Ldw;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liz;

    .line 59
    invoke-static {v3, v2}, Liz;->a(Liz;Liz;)Z

    move-result v3

    if-nez v3, :cond_48

    if-nez v2, :cond_28

    const/4 v2, 0x0

    goto :goto_2c

    .line 60
    :cond_28
    invoke-virtual {v2}, Liz;->k()Liz;

    move-result-object v2

    .line 61
    :goto_2c
    iget-object v3, p0, Ldw;->d:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v3, v0

    .line 62
    :goto_32
    iget-object v4, p0, Ldw;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_48

    .line 63
    iget-object v4, p0, Ldw;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lec;

    invoke-interface {v4, p0, v1, v2}, Lec;->a(Ldw;ILiz;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4b
    return-void
.end method

.method public a(II)V
    .registers 3

    return-void
.end method

.method public a(ILiz;)V
    .registers 3

    .line 219
    invoke-virtual {p0, p1}, Ldw;->b(I)Lgp;

    move-result-object p1

    invoke-virtual {p1, p2}, Lgp;->c(Liz;)V

    return-void
.end method

.method protected a(Lgp;)V
    .registers 3

    .line 25
    iget-object v0, p0, Ldw;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lgp;->a:I

    .line 26
    iget-object v0, p0, Ldw;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Ldw;->d:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lgs;)V
    .registers 4

    .line 203
    iget-object v0, p1, Lgs;->c:Lix;

    .line 204
    invoke-virtual {v0}, Lix;->i()Liz;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 205
    invoke-virtual {v0}, Lix;->i()Liz;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgs;->a(Liz;)V

    const/4 p1, 0x0

    .line 206
    invoke-virtual {v0, p1}, Lix;->b(Liz;)V

    :cond_13
    return-void
.end method

.method protected a(Liz;IIZ)V
    .registers 12

    if-eqz p4, :cond_5

    add-int/lit8 v0, p3, -0x1

    goto :goto_6

    :cond_5
    move v0, p2

    .line 269
    :goto_6
    invoke-virtual {p1}, Liz;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_75

    .line 270
    :goto_d
    iget v1, p1, Liz;->a:I

    if-lez v1, :cond_75

    if-nez p4, :cond_15

    if-lt v0, p3, :cond_19

    :cond_15
    if-eqz p4, :cond_75

    if-lt v0, p2, :cond_75

    .line 272
    :cond_19
    iget-object v1, p0, Ldw;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgp;

    .line 273
    invoke-virtual {v1}, Lgp;->a()Liz;

    move-result-object v3

    if-eqz v3, :cond_6d

    .line 274
    iget v4, v3, Liz;->c:I

    iget v5, p1, Liz;->c:I

    if-ne v4, v5, :cond_6d

    invoke-virtual {p1}, Liz;->f()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {p1}, Liz;->i()I

    move-result v4

    invoke-virtual {v3}, Liz;->i()I

    move-result v5

    if-ne v4, v5, :cond_6d

    .line 275
    :cond_3d
    iget v4, v3, Liz;->a:I

    iget v5, p1, Liz;->a:I

    add-int/2addr v4, v5

    .line 276
    invoke-virtual {p1}, Liz;->c()I

    move-result v5

    if-gt v4, v5, :cond_50

    .line 277
    iput v2, p1, Liz;->a:I

    .line 278
    iput v4, v3, Liz;->a:I

    .line 279
    invoke-virtual {v1}, Lgp;->c()V

    goto :goto_6d

    .line 280
    :cond_50
    iget v4, v3, Liz;->a:I

    invoke-virtual {p1}, Liz;->c()I

    move-result v5

    if-ge v4, v5, :cond_6d

    .line 281
    iget v4, p1, Liz;->a:I

    invoke-virtual {p1}, Liz;->c()I

    move-result v5

    iget v6, v3, Liz;->a:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, p1, Liz;->a:I

    .line 282
    invoke-virtual {p1}, Liz;->c()I

    move-result v4

    iput v4, v3, Liz;->a:I

    .line 283
    invoke-virtual {v1}, Lgp;->c()V

    :cond_6d
    :goto_6d
    if-eqz p4, :cond_72

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 296
    :cond_75
    iget v0, p1, Liz;->a:I

    if-lez v0, :cond_aa

    if-eqz p4, :cond_7e

    add-int/lit8 v0, p3, -0x1

    goto :goto_7f

    :cond_7e
    move v0, p2

    :goto_7f
    if-nez p4, :cond_83

    if-lt v0, p3, :cond_87

    :cond_83
    if-eqz p4, :cond_aa

    if-lt v0, p2, :cond_aa

    .line 303
    :cond_87
    iget-object v1, p0, Ldw;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgp;

    .line 304
    invoke-virtual {v1}, Lgp;->a()Liz;

    move-result-object v3

    if-nez v3, :cond_a2

    .line 307
    invoke-virtual {p1}, Liz;->k()Liz;

    move-result-object p2

    invoke-virtual {v1, p2}, Lgp;->c(Liz;)V

    .line 308
    invoke-virtual {v1}, Lgp;->c()V

    .line 309
    iput v2, p1, Liz;->a:I

    goto :goto_aa

    :cond_a2
    if-eqz p4, :cond_a7

    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    :cond_a7
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    :cond_aa
    :goto_aa
    return-void
.end method

.method public a(Llw;)V
    .registers 2

    .line 211
    invoke-virtual {p0}, Ldw;->a()V

    return-void
.end method

.method public a(S)V
    .registers 2

    return-void
.end method

.method public a([Liz;)V
    .registers 5

    const/4 v0, 0x0

    .line 223
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 224
    invoke-virtual {p0, v0}, Ldw;->b(I)Lgp;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lgp;->c(Liz;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public b(I)Lgp;
    .registers 3

    .line 80
    iget-object v0, p0, Ldw;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgp;

    return-object p1
.end method

.method public b(S)V
    .registers 2

    return-void
.end method

.method public abstract b(Lgs;)Z
.end method
