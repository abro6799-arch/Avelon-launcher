###### Class defpackage.iu (iu)
.class public Liu;
.super Lhm;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:B

.field public e:B

.field public f:[B

.field public g:I

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field private j:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 106
    invoke-direct {p0, p1}, Lhm;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x4000

    new-array p1, p1, [B

    .line 99
    iput-object p1, p0, Liu;->f:[B

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Liu;->h:Ljava/util/List;

    .line 102
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Liu;->j:Ljava/util/Map;

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Liu;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(III)V
    .registers 7

    .line 193
    invoke-super {p0}, Lhm;->a()V

    const/4 v0, 0x0

    .line 194
    :goto_4
    iget-object v1, p0, Liu;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 195
    iget-object v1, p0, Liu;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsi;

    .line 196
    iget-object v2, v1, Lsi;->b:[I

    aget v2, v2, p1

    if-ltz v2, :cond_20

    iget-object v2, v1, Lsi;->b:[I

    aget v2, v2, p1

    if-le v2, p2, :cond_24

    :cond_20
    iget-object v2, v1, Lsi;->b:[I

    aput p2, v2, p1

    .line 197
    :cond_24
    iget-object v2, v1, Lsi;->c:[I

    aget v2, v2, p1

    if-ltz v2, :cond_30

    iget-object v2, v1, Lsi;->c:[I

    aget v2, v2, p1

    if-ge v2, p3, :cond_34

    :cond_30
    iget-object v1, v1, Lsi;->c:[I

    aput p3, v1, p1

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_37
    return-void
.end method

.method public a(Lgs;Liz;)V
    .registers 14

    .line 149
    iget-object v0, p0, Liu;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 150
    new-instance v0, Lsi;

    invoke-direct {v0, p0, p1}, Lsi;-><init>(Liu;Lgs;)V

    .line 151
    iget-object v1, p0, Liu;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Liu;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_17
    iget-object v0, p0, Liu;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 156
    :goto_1d
    iget-object v1, p0, Liu;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_cc

    .line 157
    iget-object v1, p0, Liu;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsi;

    .line 159
    iget-object v2, v1, Lsi;->a:Lgs;

    iget-boolean v2, v2, Lgs;->be:Z

    if-nez v2, :cond_bc

    iget-object v2, v1, Lsi;->a:Lgs;

    iget-object v2, v2, Lgs;->c:Lix;

    invoke-virtual {v2, p2}, Lix;->c(Liz;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto/16 :goto_bc

    .line 163
    :cond_3f
    iget-object v2, v1, Lsi;->a:Lgs;

    iget-wide v2, v2, Lgs;->aM:D

    iget v4, p0, Liu;->b:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iget-byte v3, p0, Liu;->e:B

    const/4 v4, 0x1

    shl-int v3, v4, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 164
    iget-object v3, v1, Lsi;->a:Lgs;

    iget-wide v5, v3, Lgs;->aO:D

    iget v3, p0, Liu;->c:I

    int-to-double v7, v3

    sub-double/2addr v5, v7

    double-to-float v3, v5

    iget-byte v5, p0, Liu;->e:B

    shl-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/16 v4, -0x40

    int-to-float v4, v4

    cmpl-float v5, v2, v4

    if-ltz v5, :cond_c8

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_c8

    const/16 v4, 0x40

    int-to-float v4, v4

    cmpg-float v5, v2, v4

    if-gtz v5, :cond_c8

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_c8

    const/4 v7, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    float-to-double v5, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v8

    double-to-int v2, v5

    int-to-byte v2, v2

    mul-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v3, v8

    double-to-int v3, v3

    int-to-byte v3, v3

    .line 171
    iget v4, p1, Lgs;->aS:F

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v4, v8

    double-to-int v4, v4

    int-to-byte v4, v4

    .line 172
    iget-byte v5, p0, Liu;->d:B

    if-gez v5, :cond_a4

    .line 173
    iget v4, p0, Liu;->g:I

    div-int/lit8 v4, v4, 0xa

    mul-int v5, v4, v4

    const v6, 0x209a771

    mul-int/2addr v5, v6

    mul-int/lit8 v4, v4, 0x79

    add-int/2addr v5, v4

    shr-int/lit8 v4, v5, 0xf

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    :cond_a4
    move v10, v4

    .line 176
    iget-object v1, v1, Lsi;->a:Lgs;

    iget v1, v1, Lgs;->m:I

    iget-byte v4, p0, Liu;->d:B

    if-ne v1, v4, :cond_c8

    .line 177
    iget-object v1, p0, Liu;->i:Ljava/util/List;

    new-instance v4, Lax;

    move-object v5, v4

    move-object v6, p0

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v10}, Lax;-><init>(Liu;BBBB)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c8

    .line 160
    :cond_bc
    :goto_bc
    iget-object v2, p0, Liu;->j:Ljava/util/Map;

    iget-object v3, v1, Lsi;->a:Lgs;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v2, p0, Liu;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_c8
    :goto_c8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1d

    :cond_cc
    return-void
.end method

.method public a(Lnu;)V
    .registers 14

    const-string v0, "dimension"

    .line 110
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Liu;->d:B

    const-string v0, "xCenter"

    .line 111
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Liu;->b:I

    const-string v0, "zCenter"

    .line 112
    invoke-virtual {p1, v0}, Lnu;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Liu;->c:I

    const-string v0, "scale"

    .line 113
    invoke-virtual {p1, v0}, Lnu;->c(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Liu;->e:B

    const/4 v1, 0x0

    if-gez v0, :cond_25

    .line 114
    iput-byte v1, p0, Liu;->e:B

    .line 115
    :cond_25
    iget-byte v0, p0, Liu;->e:B

    const/4 v2, 0x4

    if-le v0, v2, :cond_2c

    iput-byte v2, p0, Liu;->e:B

    :cond_2c
    const-string v0, "width"

    .line 117
    invoke-virtual {p1, v0}, Lnu;->d(Ljava/lang/String;)S

    move-result v0

    const-string v2, "height"

    .line 118
    invoke-virtual {p1, v2}, Lnu;->d(Ljava/lang/String;)S

    move-result v2

    const-string v3, "colors"

    const/16 v4, 0x80

    if-ne v0, v4, :cond_47

    if-ne v2, v4, :cond_47

    .line 120
    invoke-virtual {p1, v3}, Lnu;->j(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Liu;->f:[B

    goto :goto_7f

    .line 122
    :cond_47
    invoke-virtual {p1, v3}, Lnu;->j(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v3, 0x4000

    new-array v3, v3, [B

    .line 123
    iput-object v3, p0, Liu;->f:[B

    rsub-int v3, v0, 0x80

    .line 124
    div-int/lit8 v3, v3, 0x2

    rsub-int v5, v2, 0x80

    .line 125
    div-int/lit8 v5, v5, 0x2

    move v6, v1

    :goto_5a
    if-ge v6, v2, :cond_7f

    add-int v7, v6, v5

    if-gez v7, :cond_63

    if-lt v7, v4, :cond_63

    goto :goto_7c

    :cond_63
    move v8, v1

    :goto_64
    if-ge v8, v0, :cond_7c

    add-int v9, v8, v3

    if-gez v9, :cond_6d

    if-lt v9, v4, :cond_6d

    goto :goto_79

    .line 132
    :cond_6d
    iget-object v10, p0, Liu;->f:[B

    mul-int/lit16 v11, v7, 0x80

    add-int/2addr v9, v11

    mul-int v11, v6, v0

    add-int/2addr v11, v8

    aget-byte v11, p1, v11

    aput-byte v11, v10, v9

    :goto_79
    add-int/lit8 v8, v8, 0x1

    goto :goto_64

    :cond_7c
    :goto_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    :cond_7f
    :goto_7f
    return-void
.end method

.method public a([B)V
    .registers 13

    const/4 v0, 0x0

    .line 202
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_28

    .line 203
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    .line 204
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 205
    :goto_f
    array-length v3, p1

    add-int/lit8 v3, v3, -0x3

    if-ge v0, v3, :cond_24

    .line 206
    iget-object v3, p0, Liu;->f:[B

    add-int v4, v0, v2

    mul-int/lit16 v4, v4, 0x80

    add-int/2addr v4, v1

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, p1, v5

    aput-byte v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 208
    :cond_24
    invoke-virtual {p0}, Liu;->a()V

    goto :goto_58

    :cond_28
    if-ne v1, v2, :cond_58

    .line 211
    iget-object v1, p0, Liu;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 212
    :goto_2f
    array-length v1, p1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_58

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v3, v1, 0x1

    .line 213
    aget-byte v3, p1, v3

    rem-int/lit8 v4, v3, 0x10

    int-to-byte v7, v4

    add-int/lit8 v4, v1, 0x2

    .line 214
    aget-byte v8, p1, v4

    add-int/lit8 v1, v1, 0x3

    .line 215
    aget-byte v9, p1, v1

    .line 216
    div-int/lit8 v3, v3, 0x10

    int-to-byte v10, v3

    .line 217
    iget-object v1, p0, Liu;->i:Ljava/util/List;

    new-instance v3, Lax;

    move-object v5, v3

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lax;-><init>(Liu;BBBB)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_58
    :goto_58
    return-void
.end method

.method public b(Lnu;)V
    .registers 4

    const-string v0, "dimension"

    .line 139
    iget-byte v1, p0, Liu;->d:B

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;B)V

    const-string v0, "xCenter"

    .line 140
    iget v1, p0, Liu;->b:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "zCenter"

    .line 141
    iget v1, p0, Liu;->c:I

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;I)V

    const-string v0, "scale"

    .line 142
    iget-byte v1, p0, Liu;->e:B

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;B)V

    const-string v0, "width"

    const/16 v1, 0x80

    .line 143
    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;S)V

    const-string v0, "height"

    .line 144
    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;S)V

    const-string v0, "colors"

    .line 145
    iget-object v1, p0, Liu;->f:[B

    invoke-virtual {p1, v0, v1}, Lnu;->a(Ljava/lang/String;[B)V

    return-void
.end method
